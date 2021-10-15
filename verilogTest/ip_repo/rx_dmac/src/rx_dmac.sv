`timescale 1 ns / 1 ps

module rx_dmac (

	// ****************** ILA IO *******************

	output logic			debug_awready, debug_awvalid, debug_wready, debug_wvalid, debug_wlast, debug_bvalid, debug_bready,
	output logic [1:0]		debug_bresp,
	output logic [47:0]		debug_awaddr,
	output logic [7:0]		debug_awlen,
	output logic [127:0]	debug_wdata,

	output logic			debug_rx_ready, debug_rx_valid, debug_rx_fifo_data_ready,
	output logic [127:0]	debug_rx_data,

	output logic [31:0]		ila_write_burst_counter,

	// =============================================
	// =============================================
	
	input logic				aclk, // Global Clock Signal.
	input logic				aresetn, // Global Reset Singal. This Signal is Active Low

	// =============================================
	// ============== RX Write DDR =================

	input logic				write_enable,
	output logic			write_busy, write_active,
	input logic [47:0]		write_base_address,
	input logic [31:0]		write_burst_count,
	input logic [8:0]		write_burst_len, // 16 beats
	input logic [31:0]		write_ddr_size,
	output reg [1:0]		write_bresp,
	output reg [2:0]		write_state,
	output reg [8:0]		write_index,
	// Sync signals for Looping + DMA
	output reg [31:0]		write_total_burst_count,
	output reg [31:0]		write_current_burst_address,
	input logic [16:0]		write_access_size_bytes,
	input logic 			write_access_tick,
	output reg 				write_access_tick_ack, // make it self clear...
	output reg				write_burst_tick, // Interrup source: It ticks each time a burst is happened to notify the host the data is available in the memory.
	output reg 				write_burst_tick_ack,
	output reg [31:0]		write_ddr_occupation,
	output logic			write_ddr_has_space,
	output logic			write_ddr_full,
	output reg				write_overflow_ins, // Interrup source: this interrupt will trigger if the packet is tread on. and send an update packet to notify the host for an updated timestamp.
	output reg [7:0]		write_overflow_count,

	// ********************************************
	// ********************************************
	// ************ RX (Write Ch) FIFO ************
	// ********************************************
	// ********************************************

	input logic	[127:0]		s_axis_rx_tdata, // No need strb, because extra sample can be ignore by later analysis. Or use stream mode.
	input logic				s_axis_rx_tvalid,
	output logic			s_axis_rx_tready,
	input logic				rx_fifo_data_ready,
	output logic			rx_fifo_rden,

	// =============================================
	// =============================================
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

wire	clk = aclk; //aclk;
wire	rst_n = aresetn; //aresetn;

// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************

wire [7:0]		write_burst_len_1 = write_burst_len - 1; // 15;
wire [7:0]		write_burst_len_2 = write_burst_len - 2; // 14;
wire [12:0]		write_burst_size_bytes = { write_burst_len, 4'b0000 }; //256;
assign			m_axi_awlen	= write_burst_len_1;

reg [31:0]		write_burst_counter = 0;

assign	rx_fifo_rden = (write_state == 3);
assign	write_busy = (write_state != 0);
assign	write_active = s_axis_rx_tready && m_axi_wvalid;

assign	s_axis_rx_tready = rx_fifo_rden ? m_axi_wready : 1'b0;
assign	m_axi_wvalid = rx_fifo_rden ? s_axis_rx_tvalid : 1'b0;
assign	m_axi_wdata = s_axis_rx_tdata;

assign	write_ddr_has_space = write_ddr_size - write_ddr_occupation > write_burst_size_bytes;
assign	write_ddr_full = write_ddr_occupation >= write_ddr_size;

// ---------------------------------------------
// ***** Master Write Address (AW) Channel *****
// ---------------------------------------------

always_ff @(posedge clk) begin : proc_write_ddr_occupation
	if(~rst_n) begin
		write_ddr_occupation <= 0;
		write_burst_tick_ack <= 1'b0;
		write_access_tick_ack <= 1'b0;
	end else begin
		if (write_burst_tick && ~write_burst_tick_ack) begin
			write_ddr_occupation <= write_ddr_occupation + write_burst_size_bytes; // 256 in this case.
			write_burst_tick_ack <= 1'b1;
		end else if (~write_burst_tick) begin
			write_burst_tick_ack <= 1'b0;
		end else if (write_access_tick && ~write_access_tick_ack && write_ddr_occupation >= write_access_size_bytes) begin
			write_ddr_occupation <= write_ddr_occupation - write_access_size_bytes; // 65536 maybe...
			write_access_tick_ack <= 1'b1;
		end else if (~write_access_tick) begin
			write_access_tick_ack <= 1'b0;
		end
	end
end : proc_write_ddr_occupation

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
		m_axi_awaddr <= write_base_address;
		m_axi_awvalid <= 1'b0;
		write_index <= 0;
		m_axi_wlast <= 1'b0;
		m_axi_bready <= 1'b0;
		write_bresp <= 0;

		write_total_burst_count <= 0;
		write_burst_counter <= 0;
		write_burst_tick <= 1'b0;
		write_current_burst_address <= write_base_address[31:0];
		write_overflow_ins <= 1'b0;
		write_overflow_count <= 0;

	end else begin

		case(write_state)

			0: begin // IDLE, CHECK, AND RESET BASE ADDRESS State

				write_index <= 0;
				m_axi_wlast <= 1'b0;
				m_axi_bready <= 1'b0;
				m_axi_awvalid <= 1'b0;
				m_axi_awaddr <= write_base_address;
				write_current_burst_address <= write_base_address[31:0];
				write_burst_counter <= 0; // Burst Counter in a single loop resets here.
				write_burst_tick <= 1'b0;
				write_overflow_ins <= 1'b0;
				write_overflow_count <= 0;
				write_bresp <= 0;

				if (write_enable) begin 
					write_state <= 1;
				end else begin
					write_total_burst_count <= 0;
					write_overflow_count <= 0;
				end
			end

			1: begin // Verify FIFO depth, and strobe the address into AW

				write_index <= 0;
				m_axi_wlast <= 1'b0;
				m_axi_bready <= 1'b0;

				if (rx_fifo_data_ready && write_ddr_has_space) begin
					m_axi_awvalid <= 1'b1; // Strobe Address Here
					write_burst_tick <= 1'b1;
					write_current_burst_address <= m_axi_awaddr[31:0];
					write_state <= 2;
				end else begin
					m_axi_awvalid <= 1'b0;
					write_burst_tick <= 1'b0;
				end

				if (write_ddr_full & write_total_burst_count > 0) begin
					write_overflow_ins <= 1'b1;
					write_overflow_count <= write_overflow_count + 1;
				end else begin
					write_overflow_ins <= 1'b0;
				end

            end

			2: begin // Write Address (AW)

				write_index <= 0;
				m_axi_wlast <= 1'b0;
				m_axi_bready <= 1'b0;
				write_overflow_ins <= 1'b0;
				write_burst_tick <= 1'b0;

				if (m_axi_awready) begin // When it responses
					m_axi_awvalid <= 1'b0;
					m_axi_awaddr <= m_axi_awaddr + write_burst_size_bytes; // Set address to the next one.
					write_state <= 3; // Enter Burst Write
				end else begin
					m_axi_awvalid <= 1'b1;
				end

			end

			3: begin // Burst Write Beats (W)

				write_burst_tick <= 1'b0;

				if (write_active && write_index < write_burst_len_1)  // Max possilbe write_index is 15;
					write_index <= write_index + 1;

				if (write_active)
					if ((write_index == write_burst_len_2 && write_burst_len > 1) || write_burst_len == 1)
						m_axi_wlast <= 1'b1;
					else if (m_axi_wlast) begin
						m_axi_wlast <= 1'b0;
						write_burst_counter <= write_burst_counter + 1;
						write_total_burst_count <= write_total_burst_count + 1;
						m_axi_bready <= 1'b1;
						write_state <= 4;
					end

			end

			4: begin // Write Response (B)

				write_burst_tick <= 1'b0;

				if (m_axi_bvalid) begin
					m_axi_bready <= 1'b0;
					write_bresp <= m_axi_bresp;

					if (write_burst_counter < write_burst_count && !m_axi_bresp[1] && write_enable) begin
						write_state <= 1;
					end else
						write_state <= 0;
				end

			end

			default: begin

				write_state <= 0;
				write_index <= 0;
				m_axi_wlast <= 1'b0;
				m_axi_bready <= 1'b0;
				m_axi_awvalid <= 1'b0;
				m_axi_awaddr <= write_base_address;
				write_current_burst_address <= write_base_address[31:0];
				write_burst_counter <= 0; // Burst Counter in a single loop resets here.
				write_overflow_ins <= 1'b0;
				write_total_burst_count <= 0;
				write_overflow_count <= 0;

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

assign	ila_write_burst_counter = write_burst_counter;

endmodule : rx_dmac
