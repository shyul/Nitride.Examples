`timescale 1 ns / 1 ps

module tx_dmac (

	// ****************** ILA IO *******************

	output logic			ilamaxi_arready, ilamaxi_arvalid, ilamaxi_rready, ilamaxi_rvalid, ilamaxi_rlast,
	output logic [47:0]		ilamaxi_araddr,
	output logic [7:0]		ilamaxi_arlen,
	output logic [127:0]	ilamaxi_rdata,

	output logic			ila_tx_ready, ila_tx_valid,
	output logic [127:0]	ila_tx_data,

	output logic [2:0]		ila_read_state, 
	output logic [1:0]		ila_read_bresp,
	output logic			ila_tx_fifo_wren, ila_read_active,
	output logic [32:0]		ila_read_burst_count,
	output logic [8:0]		ila_read_index,
	output logic [31:0]		ila_read_ddr_occupation,
	output logic			ila_read_burst_tick_ack,
	output logic			ila_read_access_tick_ack,
	output logic			ila_read_ddr_has_data,
	output logic			ila_read_ddr_full,

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

	// Sync signals for Looping + DMA
	output reg				read_burst_tick, // Interrup source: It ticks each time a burst is happened to notify the host the data is available in the memory.
	output reg [31:0]		read_total_burst_count,
	output reg [31:0]		read_current_burst_address,
	input logic [16:0]		read_access_size_bytes,
	input logic 			read_access_tick,
	output reg				read_underflow_ins,
	output reg [7:0]		read_underflow_count,

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

reg [2:0]	read_state = 0;

wire		tx_fifo_wren = (read_state == 3);
assign		read_busy = (read_state != 0);

assign		m_axi_rready = tx_fifo_wren ? m_axis_tx_tready : 1'b0;
assign		m_axis_tx_tvalid = tx_fifo_wren ? m_axi_rvalid : 1'b0;
assign		m_axis_tx_tdata = m_axi_rdata;

reg [31:0]	read_burst_counter = 0;
reg [8:0]	read_index = 0;
wire		read_active = m_axi_rready && m_axis_tx_tvalid;
reg	[1:0]	read_bresp;

// *****************************************************************
// **************************** ILA ********************************

assign	ilamaxi_arready = m_axi_arready;
assign	ilamaxi_arvalid = m_axi_arvalid;
assign	ilamaxi_araddr = m_axi_araddr;
assign	ilamaxi_arlen = m_axi_arlen;

assign	ilamaxi_rready = m_axi_rready;
assign	ilamaxi_rvalid = m_axi_rvalid;
assign	ilamaxi_rdata = m_axi_rdata;
assign	ilamaxi_rlast = m_axi_rlast;

assign	ila_tx_ready = m_axis_tx_tready;
assign	ila_tx_valid = m_axis_tx_tvalid;
assign	ila_tx_data = m_axis_tx_tdata;

assign	ila_read_state = read_state;
assign	ila_tx_fifo_wren = tx_fifo_wren;
assign	ila_read_burst_count = read_burst_count;
assign	ila_read_index = read_index;
assign	ila_read_active = read_active;
assign	ila_read_bresp = read_bresp;

assign	ila_read_ddr_occupation = read_ddr_occupation;
assign	ila_read_burst_tick_ack = read_burst_tick_ack;
assign	ila_read_access_tick_ack = read_access_tick_ack;
assign	ila_read_ddr_has_data = read_ddr_has_data;
assign	ila_read_ddr_full = read_ddr_full;

// *****************************************************************

reg [31:0]	read_ddr_occupation = 0;
reg 		read_burst_tick_ack = 0, read_access_tick_ack = 0; // make it self clear...
wire 		read_ddr_has_data = read_ddr_occupation > read_burst_size_bytes;
wire		read_ddr_full = read_ddr_occupation >= read_ddr_size;

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
