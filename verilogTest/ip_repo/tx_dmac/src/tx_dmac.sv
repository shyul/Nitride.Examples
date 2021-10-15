`timescale 1 ns / 1 ps

module tx_dmac (

	// ****************** ILA IO *******************

	output logic			debug_arready, debug_arvalid, debug_rready, debug_rvalid, debug_rlast,
	output logic [47:0]		debug_araddr,
	output logic [7:0]		debug_arlen,
	output logic [127:0]	debug_rdata,

	output logic			debug_tx_ready, debug_tx_valid,
	output logic [127:0]	debug_tx_data,

	// =============================================
	// =============================================
	
	input logic				aclk, // Global Clock Signal.
	input logic				aresetn, // Global Reset Singal. This Signal is Active Low

	// =============== TX Read DDR =================

	input logic				read_enable,
	output logic			read_busy,
	input logic [47:0]		read_base_address, // = read_base_address + burst_count * (burst_len * 16 bytes (aka 128 bit))
	input logic [31:0]		read_burst_count, // burst_count * (burst_len * 16 bytes), unit is bytes, round up against (burst_len * 16 bytes)
	input logic [8:0]		read_burst_len, // 16 beats
	input logic [31:0]		read_ddr_size,
	output logic			tx_fifo_wren, 
	output logic			read_active,
	output reg [1:0]		read_bresp,
	output reg [2:0]		read_state,

	// Sync signals for Looping + DMA
	output reg [8:0]		read_index,
	output reg				read_burst_tick, // Interrup source: It ticks each time a burst is happened to notify the host the data is available in the memory.
	output reg [31:0]		read_total_burst_count,
	output reg [31:0]		read_current_burst_address,
	input logic [16:0]		read_access_size_bytes,
	input logic 			read_access_tick,
	output reg				read_burst_tick_ack, 
	output reg				read_access_tick_ack,
	output reg				read_underflow_ins,
	output reg [7:0]		read_underflow_count,
	output reg [31:0]		read_ddr_occupation,
	output logic			read_ddr_has_data,
	output logic			read_ddr_full,

	// ********************************************
	// ********************************************
	// ************* TX (Read Ch) FIFO ************
	// ********************************************
	// ********************************************

	output logic [127:0]	m_axis_tx_tdata,
	output logic			m_axis_tx_tvalid,
	input logic				m_axis_tx_tready,

	input logic				tx_fifo_has_space,
	input logic				tx_fifo_empty,

	// ****** Master Read Address (AR) Channel ******
	output reg [47:0]		m_axi_araddr, // Read address. This signal indicates the initial address of a read burst transaction.
	output logic [7:0]		m_axi_arlen, // Burst length. The burst length gives the exact number of transfers in a burst
	output reg				m_axi_arvalid, // Read address valid. This signal indicates that the channel is signaling valid read address and control information
	input logic				m_axi_arready, // Read address ready. This signal indicates that the slave is ready to accept an address and associated control signals

	// ****** Master Read Data (R) Channel ********
	input logic [127:0]		m_axi_rdata, // Master Read Data
	input logic [1:0]		m_axi_rresp, // Read response. This signal indicates the status of the read transfer
	input logic				m_axi_rlast, // Read last. This signal indicates the last transfer in a read burst
	input logic				m_axi_rvalid, // Read valid. This signal indicates that the channel is signaling the required read data.
	output reg				m_axi_rready // Read ready. This signal indicates that the master can accept the read data and response information.
);

wire	clk = aclk; //aclk;
wire	rst_n = aresetn; //aresetn;

// *****************************************************************
// *****************************************************************

wire [7:0]		read_burst_len_1 = read_burst_len - 1; // 15;
wire [7:0]		read_burst_len_2 = read_burst_len - 2; // 14;
wire [12:0]		read_burst_size_bytes = { read_burst_len, 4'b0000 }; //256;

assign		m_axi_arlen = read_burst_len_1;
assign		tx_fifo_wren = (read_state == 3);
assign		read_busy = (read_state != 0);

assign		m_axi_rready = tx_fifo_wren ? m_axis_tx_tready : 1'b0;
assign		m_axis_tx_tvalid = tx_fifo_wren ? m_axi_rvalid : 1'b0;
assign		m_axis_tx_tdata = m_axi_rdata;

reg [31:0]	read_burst_counter = 0;

assign		read_active = m_axi_rready && m_axis_tx_tvalid;

// *****************************************************************
// **************************** ILA ********************************

assign	debug_arready = m_axi_arready;
assign	debug_arvalid = m_axi_arvalid;
assign	debug_araddr = m_axi_araddr;
assign	debug_arlen = m_axi_arlen;

assign	debug_rready = m_axi_rready;
assign	debug_rvalid = m_axi_rvalid;
assign	debug_rdata = m_axi_rdata;
assign	debug_rlast = m_axi_rlast;

assign	debug_tx_ready = m_axis_tx_tready;
assign	debug_tx_valid = m_axis_tx_tvalid;
assign	debug_tx_data = m_axis_tx_tdata;










// *****************************************************************


 // make it self clear...
assign 		read_ddr_has_data = read_ddr_occupation > read_burst_size_bytes;
assign		read_ddr_full = read_ddr_occupation >= read_ddr_size;

always_ff @(posedge clk) begin : proc_read_ddr_occupation
	if(~rst_n) begin
		read_ddr_occupation <= 0;
		read_burst_tick_ack <= 1'b0;
		read_access_tick_ack <= 1'b0;

	end else begin
		if (read_burst_tick && ~read_burst_tick_ack && read_ddr_occupation >= read_burst_size_bytes) begin
			read_ddr_occupation <= read_ddr_occupation - read_burst_size_bytes; // 256 in this case.
			read_burst_tick_ack <= 1'b1;
		end else if (~read_burst_tick) begin
			read_burst_tick_ack <= 1'b0;
		end else if (read_access_tick && ~read_access_tick_ack) begin
			read_ddr_occupation <= read_ddr_occupation + read_access_size_bytes; // 65536 for the USB packet size.
			read_access_tick_ack <= 1'b1;
		end else if (~read_access_tick) begin
			read_access_tick_ack <= 1'b0;
		end
	end
end : proc_read_ddr_occupation

// 1. Single Shot -- no check FIFO and self completion
// 2. Dumb Loop -- no check FIFO
// 3. Stream -- check FIFO

// TX Source: 1. DDR (3 modes) / 2. BRAM (2 modes, low latency) / 3. DDS / 4. Pattern (for verification only)
// TX Trigger Source: 1. Register GPIO, 2. Timestamp, 3. External

// --------------------------------------------
// ***** Master Read Address (AR) Channel ***** TXTXTXTX
// --------------------------------------------

// The Read Address Channel (AW) provides a similar function to the
// Write Address channel- to provide the tranfer qualifiers for the burst.

// In this example, the read address increments in the same
// manner as the write address channel.

//Read Address (AR)

always_ff @(posedge clk) begin : proc_read
	if(~rst_n) begin

		read_state <= 0;
		m_axi_araddr <= read_base_address;
		m_axi_arvalid <= 1'b0;
		read_index <= 0;
		read_bresp <= 0;

		read_total_burst_count <= 0;
		read_burst_counter <= 0;
		read_burst_tick <= 1'b0;
		read_current_burst_address <= read_base_address[31:0];
		read_underflow_ins <= 1'b0;
		read_underflow_count <= 0;

	end else begin

		case(read_state)
			
			0: begin // IDLE State

				read_index <= 0;
				m_axi_arvalid <= 1'b0;
				m_axi_araddr <= read_base_address;
				read_current_burst_address <= read_base_address[31:0];
				read_burst_counter <= 0;
				read_burst_tick <= 1'b0;
				read_underflow_ins <= 1'b0;
				read_bresp <= 0;
				
				if (read_enable) begin 
					read_state <= 1;
				end else begin
					read_total_burst_count <= 0;
					read_underflow_count <= 0;
				end
			end

			1: begin // Check TX FIFO, and DDR psudo FIFO full/empty

				read_index <= 0;
				m_axi_arvalid <= 1'b0;
				read_burst_tick <= 1'b0;

				if (tx_fifo_has_space && read_ddr_has_data) begin
					m_axi_arvalid <= 1'b1;
					read_current_burst_address <= m_axi_araddr[31:0];
					read_state <= 2; 
				end else begin
					m_axi_arvalid <= 1'b0;
				end

				if (tx_fifo_empty & read_total_burst_count > 0) begin
					read_underflow_ins <= 1'b1;
					read_underflow_count <= read_underflow_count + 1;
				end else begin
					read_underflow_ins <= 1'b0;
				end
			end

			2: begin // Read address (AR)

				read_index <= 0;
				read_underflow_ins <= 1'b0;
				read_burst_tick <= 1'b0;

				if (m_axi_arready) begin // When it responses
					m_axi_arvalid <= 1'b0;
					m_axi_araddr <= m_axi_araddr + read_burst_size_bytes; // Set address to the next one.
					read_state <= 3; // Enter Burst Read
				end else begin
					m_axi_arvalid <= 1'b1;
				end

			end

			3: begin // Burst Read, and check transfer size counter (R)

				if (read_active && read_index < read_burst_len_1)
					read_index <= read_index + 1;

				if (read_active) begin
					read_bresp <= m_axi_rresp;
				end

				if (read_active && m_axi_rlast) begin
					read_burst_counter <= read_burst_counter + 1;
					read_total_burst_count <= read_total_burst_count + 1;
					read_burst_tick <= 1'b1;
					read_state <= 4;
				end else
					read_burst_tick <= 1'b0;

			end

			4: begin // Verify Byte Counter and Read Response and if it is looping

				read_index <= 0;
				read_underflow_ins <= 1'b0;
				read_burst_tick <= 1'b0;

				if (read_burst_counter < read_burst_count && !read_bresp[1] && read_enable) begin
					read_state <= 1;
				end else
					read_state <= 0;

			end

		endcase

	end
end : proc_read

endmodule : tx_dmac
