`timescale 1 ns / 1 ps

module rx_dmac (

	// Looping challenge: Buffer overflows due to slow USB 3.0 transfer to the host.

	// ****************** ILA IO *******************

	output logic			debug_awready, debug_awvalid, debug_wready, debug_wvalid, debug_wlast, debug_bvalid, debug_bready,
	output logic [1:0]		debug_bresp,
	output logic [47:0]		debug_awaddr,
	output logic [7:0]		debug_awlen,
	output logic [127:0]	debug_wdata,

	output logic			debug_rx_ready, debug_rx_valid, debug_rx_fifo_data_ready,
	output logic [127:0]	debug_rx_data,


	// =============================================
	// =============================================
	
	input logic				aclk, // Global Clock Signal.
	input logic				aresetn, // Global Reset Singal. This Signal is Active Low

	// =============================================
	// ============== RX Write DDR =================

	// ---- General Control ----

	input logic				write_enable,					// Keep the loop running when set
	output reg [2:0]		write_state,					// Used for more sophisiticated detection: burst_counter >= burst_count_set => write_enable == 1'b0
	output reg [1:0]		write_bresp,

	// -------- Buffer Setting -------- (from DDR to USB interface, OUT)

	input logic [47:0]		buffer_base_address,			// ** Setting ** Base address in the DDR
	input logic [31:0]		buffer_size,					// ** Setting ** Buffer size in the DDR, = burst_count_set * burst_length_set * 16 (128 bit data)

	input logic [16:0]		buffer_packet_size_bytes,		// ** Setting ** Size of each DMA transfer
	input logic 			buffer_packet_tick,				// ** Proc ** Strobe this bit after each (DMA) transfer from the Buffer
	output reg 				buffer_packet_tick_ack, 		// ** Proc ** clear buffer_packet_tick when this bit goes high. Non-self-clear bit

	output reg [31:0]		buffer_occupation,				// ** debug and status only **
	output logic			buffer_full,					// ** debug and status only **
	output logic			buffer_empty,					// ** Proc ** Check this bit before and DMA transfer. from PS side
	output reg				buffer_overflow, 				// ** debug and status only ** TODO: check how overflow recovers: 1. Tread over; 2. Stop until the full flag is cleared.
	output reg [31:0]		buffer_overflow_count,			// ** debug and status only ** Showing total amount of 

	// -------- Burst Setting --------

	input logic [31:0]		burst_count_set,				// ** Setting ** Total burst count
	input logic [8:0]		burst_length_set,				// ** Setting ** 16 beats by default, upto 256 beats

	output reg [31:0]		burst_count_total,				// ** debug and status only **
	output reg [31:0]		burst_counter,					// ** debug and status only **
	output reg [31:0]		burst_current_address,			// ** debug and status only **
	output reg				burst_tick, 					// ** debug and status only ** Tick each time before each burst starts, and buffer occupation will increase
	output reg 				burst_tick_ack,					// ** debug and status only **

	output reg [8:0]		burst_index,					// ** debug and status only **
	output logic			burst_write_active,				// ** debug and status only ** When set, one beat of data is strobed

	// ********************************************
	// ************ RX (Write Ch) FIFO ************
	// ********************************************

	input logic	[127:0]		s_axis_rx_tdata, // No need strb, because extra sample can be ignore by later analysis. Or use stream mode.
	input logic				s_axis_rx_tvalid,
	output logic			s_axis_rx_tready,
	input logic				rx_fifo_data_ready,

	// =============================================
	// ************ AXI Master ************
	// =============================================

	// ***** Master Write Address (AW) Channel *****
	output reg [47:0]		m_axi_awaddr, // Master Interface Write Address
	output logic [7:0]		m_axi_awlen, // Burst length. The burst length gives the exact number of transfers in a burst
	output reg				m_axi_awvalid, // Write address valid. This signal indicates that the channel is signaling valid write address and control information.
	input logic				m_axi_awready, // Write address ready. This signal indicates that the slave is ready to accept an address and associated control signals

	// ******* Master Write Data (W) Channel *******
	output logic [127:0]	m_axi_wdata,
	output reg				m_axi_wlast, // Write last. This signal indicates the last transfer in a write burst.
	output logic			m_axi_wvalid, // Write valid. This signal indicates that valid write data and strobes are available
	input logic				m_axi_wready, // Write ready. This signal indicates that the slave can accept the write data.

	// ***** Master Write Response (B) Channel *****
	input logic [1:0]		m_axi_bresp, // Write response. This signal indicates the status of the write transaction.
	input logic				m_axi_bvalid, // Write response valid. This signal indicates that the channel is signaling a valid write response.
	output reg				m_axi_bready // Response ready. This signal indicates that the master can accept a write response.
);

wire	clk = aclk;
wire	rst_n = aresetn;

// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************

wire [7:0]		burst_length_set_1 = burst_length_set - 1; // 15;
wire [7:0]		burst_length_set_2 = burst_length_set - 2; // 14;
wire [12:0]		write_burst_size_bytes = { burst_length_set, 4'b0000 }; //256;
assign			m_axi_awlen	= burst_length_set_1;

assign	burst_write_active = s_axis_rx_tready && m_axi_wvalid;

assign	s_axis_rx_tready = write_state == 3 ? m_axi_wready : 1'b0;
assign	m_axi_wvalid = write_state == 3 ? s_axis_rx_tvalid : 1'b0;
assign	m_axi_wdata = s_axis_rx_tdata;

assign	buffer_full = buffer_occupation > buffer_size - write_burst_size_bytes;
assign	buffer_empty = buffer_occupation < buffer_packet_size_bytes;

// ---------------------------------------------
// ***** Master Write Address (AW) Channel *****
// ---------------------------------------------

always_ff @(posedge clk) begin : proc_buffer_occupation
	if(~rst_n) begin
		buffer_occupation <= 0;
		burst_tick_ack <= 1'b0;
		buffer_packet_tick_ack <= 1'b0;
	end else begin
		if (burst_tick && ~burst_tick_ack) begin
			buffer_occupation <= buffer_occupation + write_burst_size_bytes; // 256 in this case.
			burst_tick_ack <= 1'b1;
		end else if (~burst_tick) begin
			burst_tick_ack <= 1'b0;
		end else if (buffer_packet_tick && ~buffer_packet_tick_ack && buffer_occupation >= buffer_packet_size_bytes) begin
			buffer_occupation <= buffer_occupation - buffer_packet_size_bytes; // 65536 maybe...
			buffer_packet_tick_ack <= 1'b1;
		end else if (~buffer_packet_tick) begin
			buffer_packet_tick_ack <= 1'b0;
		end
	end
end : proc_buffer_occupation

// ---------------------------------------------
// ***** Master Write Address (AW) Channel *****
// ---------------------------------------------

// The purpose of the write address channel is to request the address and 
// command information for the entire transaction.  It is a single beat
// of information.

// The AXI4 Write address channel in this example will continue to initiate
// write commands as fast as it is allowed by the slave/interconnect.
// The address will be incremented on each accepted address transaction,
// by burst_size_byte to point to the next address.

always_ff @(posedge clk) begin : proc_write
	if(~rst_n) begin

		write_state <= 0;
		write_bresp <= 0;
		buffer_overflow <= 1'b0;
		buffer_overflow_count <= 0;
		burst_count_total <= 0;
		burst_counter <= 0;
		burst_current_address <= buffer_base_address[31:0];
		burst_tick <= 1'b0;
		burst_index <= 0;
		m_axi_awaddr <= buffer_base_address;
		m_axi_awvalid <= 1'b0;
		m_axi_wlast <= 1'b0;
		m_axi_bready <= 1'b0;

	end else begin

		case(write_state)

			0: begin // IDLE, CHECK, AND RESET BASE ADDRESS State

				write_bresp <= 0;
				buffer_overflow <= 1'b0;
				burst_counter <= 0;
				burst_current_address <= buffer_base_address[31:0];
				burst_tick <= 1'b0;
				burst_index <= 0;
				m_axi_awaddr <= buffer_base_address;
				m_axi_awvalid <= 1'b0;
				m_axi_wlast <= 1'b0;
				m_axi_bready <= 1'b0;

				if (write_enable) begin 
					write_state <= 1;
				end else begin
					write_state <= 0;
					burst_count_total <= 0;
					buffer_overflow_count <= 0;
				end
			end

			1: begin // Verify FIFO depth, and strobe the address into AW

				burst_index <= 0;
				m_axi_wlast <= 1'b0;
				m_axi_bready <= 1'b0;

				if (rx_fifo_data_ready && !buffer_full) begin
					m_axi_awvalid <= 1'b1; // Strobe Address Here
					burst_tick <= 1'b1;
					burst_current_address <= m_axi_awaddr[31:0];
					write_state <= 2;
				end else begin
					m_axi_awvalid <= 1'b0;
					burst_tick <= 1'b0;
				end

				if (buffer_full & burst_count_total > 0) begin
					buffer_overflow <= 1'b1;
					buffer_overflow_count <= buffer_overflow_count + 1;
				end else begin
					buffer_overflow <= 1'b0;
				end

            end

			2: begin // Write Address (AW)

				burst_index <= 0;
				m_axi_wlast <= 1'b0;
				m_axi_bready <= 1'b0;
				buffer_overflow <= 1'b0;
				burst_tick <= 1'b0;

				if (m_axi_awready) begin // When it responses
					m_axi_awvalid <= 1'b0;
					m_axi_awaddr <= m_axi_awaddr + write_burst_size_bytes; // Set address to the next one.
					write_state <= 3; // Enter Burst Write
				end else begin
					m_axi_awvalid <= 1'b1;
				end

			end

			3: begin // Burst Write Beats (W)

				burst_tick <= 1'b0;

				if (burst_write_active && burst_index < burst_length_set_1)  // Max possilbe burst_index is 15;
					burst_index <= burst_index + 1;

				if (burst_write_active)
					if ((burst_index == burst_length_set_2 && burst_length_set > 1) || burst_length_set == 1)
						m_axi_wlast <= 1'b1;
					else if (m_axi_wlast) begin
						m_axi_wlast <= 1'b0;
						burst_counter <= burst_counter + 1;
						burst_count_total <= burst_count_total + 1;
						m_axi_bready <= 1'b1;
						write_state <= 4;
					end

			end

			4: begin // Write Response (B)

				burst_tick <= 1'b0;

				if (m_axi_bvalid) begin
					m_axi_bready <= 1'b0;
					write_bresp <= m_axi_bresp;

					if (burst_counter < burst_count_set && !m_axi_bresp[1] && write_enable) begin
						write_state <= 1;
					end else
						write_state <= 0;
				end

			end

			default: begin

				write_state <= 0;
				write_bresp <= 0;
				buffer_overflow <= 1'b0;
				buffer_overflow_count <= 0;
				burst_count_total <= 0;
				burst_counter <= 0;
				burst_current_address <= buffer_base_address[31:0];
				burst_tick <= 1'b0;
				burst_index <= 0;
				m_axi_awaddr <= buffer_base_address;
				m_axi_awvalid <= 1'b0;
				m_axi_wlast <= 1'b0;
				m_axi_bready <= 1'b0;

			end

		endcase

	end
end : proc_write

// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// **************************** ILA ********************************

assign	debug_awready = m_axi_awready;
assign	debug_awvalid = m_axi_awvalid;
assign	debug_awaddr = m_axi_awaddr;
assign	debug_awlen = m_axi_awlen;

assign	debug_wready = m_axi_wready;
assign	debug_wvalid = m_axi_wvalid;
assign	debug_wdata = m_axi_wdata;
assign	debug_wlast = m_axi_wlast;

assign	debug_bvalid = m_axi_bvalid;
assign	debug_bready = m_axi_bready;
assign	debug_bresp = m_axi_bresp;

assign	debug_rx_ready = s_axis_rx_tready;
assign	debug_rx_valid = s_axis_rx_tvalid;
assign	debug_rx_data = s_axis_rx_tdata;
assign	debug_rx_fifo_data_ready = rx_fifo_data_ready;

endmodule : rx_dmac
