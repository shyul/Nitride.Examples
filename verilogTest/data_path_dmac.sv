`timescale 1 ns / 1 ps

module data_path_dmac (

	// ****************** ILA IO *******************

	output logic			ila_single_read, ila_m_arready, ila_m_arvalid, ila_m_rready, ila_m_rvalid, ila_m_rlast,
	output logic			ila_single_write, ila_m_awready, ila_m_awvalid, ila_m_wready, ila_m_wvalid, ila_m_wlast, ila_m_bvalid, ila_m_bready,
	output logic [1:0]		ila_m_bresp,
	output logic [47:0]		ila_m_araddr, ila_m_awaddr,
	output logic [7:0]		ila_m_arlen, ila_m_awlen,
	output logic [127:0]	ila_m_rdata, ila_m_wdata,

	output logic			ila_tx_ready, ila_tx_valid, ila_tx_prog_empty,
	output logic			ila_rx_ready, ila_rx_valid, ila_rx_fifo_data_ready,
	output logic [127:0]	ila_tx_data, ila_rx_data,
	output logic [15:0]		ila_tx_strb,

	output logic [2:0]		ila_read_state, 
	output logic [1:0]		ila_read_bresp,
	output logic			ila_tx_fifo_wren, ila_read_busy, ila_read_active,
	output logic [32:0]		ila_read_byte_remain,
	output logic [8:0]		ila_read_index,

	output logic [2:0]		ila_write_state, 
	output logic [1:0]		ila_write_bresp,
	output logic			ila_rx_fifo_rden, ila_write_busy, ila_write_active,
	output logic [31:0]		ila_write_burst_counter,
	output logic [8:0]		ila_write_index,

	// =============================================
	// =============================================
	
	input logic				aclk, // Global Clock Signal.
	input logic				aresetn, // Global Reset Singal. This Signal is Active Low

	// =============================================
	// ============== RX Write DDR =================

	input logic				write_enable,
	output logic			write_busy,
	input logic [47:0]		write_base_address,
	input logic [31:0]		write_burst_count,
	input logic [8:0]		write_burst_len,
	output reg	[1:0]		write_bresp,

	// Sync signals for Looping + DMA
	output logic			write_burst_tick_ins, // Interrup source: It ticks each time a burst is happened to notify the host the data is available in the memory.
	output reg [31:0]		write_total_burst_count,
	output reg [31:0]		write_current_burst_address,
	input logic [31:0]		write_current_access_start, // Set this register before any DMA read from DDR happens
	input logic [31:0]		write_current_access_stop, // Set this register before any DMA read from DDR happens, to protect this memory region. and generate overflow_ins, and calcuate a new burst_count at base address. (when jump happens, the count at base will -1)
	output reg				write_overflow_ins, // Interrup source: this interrupt will trigger if the packet is tread on. and send an update packet to notify the host for an updated timestamp.
	output reg [7:0]		write_overflow_count,

	// wire [47:0] write_current_access_start_address = { write_base_address[47:32], write_current_access_start }; // write_base_address + write_current_access_offset;
	// wire [47:0] write_current_access_stop_address = { write_base_address[47:32], write_current_access_stop }; //  write_base_address + write_current_access_offset + write_access_packet_length;

	// =============== TX Read DDR =================

	input logic				read_enable,
	output logic			read_busy,
	input logic [47:0]		read_base_address,
	input logic [31:0]		read_burst_count, // burst_count * (burst_len * 16 bytes), unit is bytes, round up against (burst_len * 16 bytes)
	input logic [8:0]		read_burst_len,

	// Sync signals for Looping + DMA
	output reg				read_burst_tick_ins, // Interrup source: It ticks each time a burst is happened to notify the host the data is available in the memory.
	output reg [31:0]		read_total_burst_count,
	output reg [31:0]		read_current_burst_address,
	input reg [31:0]		read_packet_burst_count, // empty = burst_count * ratio == packet_count && count != 0
	output reg				read_accept_new_packet,
	output reg				read_underflow_ins,
	output reg [7:0]		read_underflow_count,

	//input logic			w,	// Select the trigger source => Enable? Read-Write joint? Timestamp based? 
	// DAC Read datasource from DDR? or BRAM? or DDS? or Test Pattern? or DSP?


	output logic [47:0]		write_address, read_address, // Pointer for current accessed address block.
	output reg [63:0]		total_write_burst, total_read_burst, // Burst 		
	output logic			write_tick, read_tick, // Send a tick for each address block change.

	// ********************************************
	// ********************************************
	// ************ RX (Write Ch) FIFO ************
	// ********************************************
	// ********************************************

	input logic	[127:0]		s_axis_rx_tdata, // No need strb, because extra sample can be ignore by later analysis. Or use stream mode.
	input logic				s_axis_rx_tvalid,
	output logic			s_axis_rx_tready,

	input logic				rx_fifo_data_ready,

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

	// ***** Master Write Address (AW) Channel *****
	output reg [47:0]		m_axi_awaddr, // Master Interface Write Address
	output logic [7:0]		m_axi_awlen, // Burst length. The burst length gives the exact number of transfers in a burst
	output logic [2:0]		m_axi_awsize, // Burst size. This signal indicates the size of each transfer in the burst
	output logic [1:0]		m_axi_awburst, // Burst type. The burst type and the size information, determine how the address for each transfer within the burst is calculated.
	output reg				m_axi_awvalid, // Write address valid. This signal indicates that the channel is signaling valid write address and control information.
	input logic				m_axi_awready, // Write address ready. This signal indicates that the slave is ready to accept an address and associated control signals
	// [NO USE]=====================================
	//output logic [0:0]	m_axi_awid, // [NO USE] Master Interface Write Address ID
	output logic			m_axi_awlock, // [NO USE] Lock type. Provides additional information about the atomic characteristics of the transfer.
	output logic [3:0]		m_axi_awcache, // [FIXED 4'b0010] Memory type. This signal indicates how transactions are required to progress through a system.
	output logic [2:0]		m_axi_awprot, // [NO USE] Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
	output logic [3:0]		m_axi_awqos, // [NO USE] Quality of Service, QoS identifier sent for each write transaction.
	// =============================================

	// ******* Master Write Data (W) Channel *******
	output logic [127:0]	m_axi_wdata,
	output reg				m_axi_wlast, // Write last. This signal indicates the last transfer in a write burst.
	output logic			m_axi_wvalid, // Write valid. This signal indicates that valid write data and strobes are available
	input logic				m_axi_wready, // Write ready. This signal indicates that the slave can accept the write data.
	// [NO USE]=====================================
	output logic [15:0]		m_axi_wstrb, // [FIXED 'b1111] Write strobes. This signal indicates which byte lanes hold valid data. There is one write strobe bit for each eight bits of the write data bus.
	
	// =============================================

	// ***** Master Write Response (B) Channel *****
	input logic [1:0]		m_axi_bresp, // Write response. This signal indicates the status of the write transaction.
	input logic				m_axi_bvalid, // Write response valid. This signal indicates that the channel is signaling a valid write response.
	output reg				m_axi_bready, // Response ready. This signal indicates that the master can accept a write response.
	// [NO USE]=====================================
	//input logic [0:0]		m_axi_bid,
	// =============================================

	// ****** Master Read Address (AR) Channel ******
	output reg [47:0]		m_axi_araddr, // Read address. This signal indicates the initial address of a read burst transaction.
	output logic [7:0]		m_axi_arlen, // Burst length. The burst length gives the exact number of transfers in a burst
	output logic [2:0]		m_axi_arsize, // Burst size. This signal indicates the size of each transfer in the burst
	output logic [1:0]		m_axi_arburst, // Burst type. The burst type and the size information, determine how the address for each transfer within the burst is calculated.
	output reg				m_axi_arvalid, // Read address valid. This signal indicates that the channel is signaling valid read address and control information
	input logic				m_axi_arready, // Read address ready. This signal indicates that the slave is ready to accept an address and associated control signals
	// [NO USE]======================================
	//output logic [0:0]	m_axi_arid, // [NO USE]
	output logic			m_axi_arlock, // [NO USE] Lock type. Provides additional information about the atomic characteristics of the transfer.
	output logic [3:0]		m_axi_arcache, // [FIXED  4'b0010] Memory type. This signal indicates how transactions are required to progress through a system.
	output logic [2:0]		m_axi_arprot, // [NO USE] Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
	output logic [3:0]		m_axi_arqos, // [NO USE] Quality of Service, QoS identifier sent for each read transaction
	// ==============================================

	// ****** Master Read Data (R) Channel ********
	input logic [127:0]		m_axi_rdata, // Master Read Data
	input logic [1:0]		m_axi_rresp, // Read response. This signal indicates the status of the read transfer
	input logic				m_axi_rlast, // Read last. This signal indicates the last transfer in a read burst
	input logic				m_axi_rvalid, // Read valid. This signal indicates that the channel is signaling the required read data.
	output reg				m_axi_rready // Read ready. This signal indicates that the master can accept the read data and response information.
	// [NO USE]====================================
	//input logic [0:0]		m_axi_rid // [NO USE] Read ID tag. This signal is the identification tag for the read data group of signals generated by the slave.
	// ============================================
);

wire	clk = aclk; //aclk;
wire	rst_n = aresetn; //aresetn;

// *****************************************************************
// *****************************************************************
// *****************************************************************
// ******************  Initialize Transactions  ********************
// *****************************************************************
// *****************************************************************
// *****************************************************************

reg		single_write_trigger = 1'b0, single_write_ff = 1'b0, single_write_ff2 = 1'b0;
reg		single_read_trigger = 1'b0, single_read_ff = 1'b0, single_read_ff2 = 1'b0;

wire	single_write_pulse = (!single_write_ff2) && single_write_ff;
wire	rst_or_single_write_pulse = ((!rst_n) || single_write_pulse);
wire	single_read_pulse = (!single_read_ff2) && single_read_ff;
wire	rst_or_single_read_pulse = ((!rst_n) || single_read_pulse);

always_ff@(posedge clk) begin
	if (!rst_n) begin
		single_write_ff <= 1'b0;
		single_write_ff2 <= 1'b0;
		single_read_ff <= 1'b0;
		single_read_ff2 <= 1'b0;
	end else begin  
		single_write_ff <= single_write_trigger;
		single_write_ff2 <= single_write_ff;
		single_read_ff <= single_read_trigger;
		single_read_ff2 <= single_read_ff;
	end
end

// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************

wire [7:0]		write_burst_len_1 = write_burst_len - 1; // 15;
wire [7:0]		write_burst_len_2 = write_burst_len - 2; // 14;
wire [12:0]		write_burst_size_bytes = { write_burst_len, 4'b0000 }; //256;

//assign	m_axi_awid = 'h0;
assign	m_axi_awlen	= write_burst_len_1;
assign	m_axi_awsize = 3'h4; //$clog2(DATA_BYTES_COUNT); //clogb2((DATA_WIDTH/8)-1); // Size should be DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used
assign	m_axi_awburst = 2'b01; // INCR burst type is usually used, except for keyhole bursts
assign	m_axi_awlock = 1'b0;
assign	m_axi_awcache = 4'b0010; // Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache.
assign	m_axi_awprot = 3'h0;
assign	m_axi_awqos	= 4'h0;
assign	m_axi_wstrb	= 16'hFFFF;

reg [2:0]	write_state = 0;

wire		rx_fifo_rden = (write_state == 4);
wire		write_busy = (write_state != 0);

assign		s_axis_rx_tready = rx_fifo_rden ? m_axi_wready : 1'b0;
assign		m_axi_wvalid = rx_fifo_rden ? s_axis_rx_tvalid : 1'b0;
assign		m_axi_wdata = s_axis_rx_tdata;
assign		write_burst_tick_ins = m_axi_awvalid;

reg [31:0]	write_burst_counter = 0;
reg [8:0]	write_index = 0;
wire		write_active = s_axis_rx_tready && m_axi_wvalid;


// *****************************************************************
// **************************** ILA ********************************

assign	ila_single_write = single_write_pulse;

assign	ila_m_awready = m_axi_awready;
assign	ila_m_awvalid = m_axi_awvalid;
assign	ila_m_awaddr = m_axi_awaddr;
assign	ila_m_awlen = m_axi_awlen;

assign	ila_m_wready = m_axi_wready;
assign	ila_m_wvalid = m_axi_wvalid;
assign	ila_m_wdata = m_axi_wdata;
assign	ila_m_wlast = m_axi_wlast;

assign	ila_m_bvalid = m_axi_bvalid;
assign	ila_m_bready = m_axi_bready;
assign	ila_m_bresp = m_axi_bresp;

assign	ila_rx_ready = s_axis_rx_tready;
assign	ila_rx_valid = s_axis_rx_tvalid;
assign	ila_rx_data = s_axis_rx_tdata;
assign	ila_rx_fifo_data_ready = rx_fifo_data_ready;

assign	ila_write_state = write_state;
assign	ila_rx_fifo_rden = rx_fifo_rden;
assign	ila_write_busy = write_busy; // AXI_S_ reg indicator only...
assign	ila_write_burst_counter = write_burst_counter;
assign	ila_write_index = write_index;
assign	ila_write_active = write_active;
assign	ila_write_bresp = write_bresp;

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

		write_burst_counter <= 0;
		write_total_burst_count <= 0;
		write_burst_tick_ins <= 1'b0;
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
				write_overflow_ins <= 1'b0;
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
				m_axi_awvalid <= 1'b0;

				if (rx_fifo_data_ready) begin
					write_state <= 2;
				end 

			end

			2: begin // Verify if there is an access collision.

				write_index <= 0;
				m_axi_wlast <= 1'b0;
				m_axi_bready <= 1'b0;
				m_axi_awvalid <= 1'b1; // Strobe Address Here

				if(m_axi_awaddr[31:0] >= write_current_access_start && 
				m_axi_awaddr[31:0] < write_current_access_stop) begin // Check if the awaddr falls into the locked area
					m_axi_awaddr <= { m_axi_awaddr[47:32], write_current_access_stop };
					write_overflow_count <= write_overflow_count + 1;
					write_overflow_ins <= 1'b1;
				end else begin
					write_overflow_ins <= 1'b0;
				end

				write_state <= 3;
			end

			3: begin // Write Address (AW)

				write_index <= 0;
				m_axi_wlast <= 1'b0;
				m_axi_bready <= 1'b0;
				write_overflow_ins <= 1'b0;
				write_current_burst_address <= m_axi_awaddr[31:0];

				if (m_axi_awready) begin // When it responses
					m_axi_awvalid <= 1'b0;
					m_axi_awaddr <= m_axi_awaddr + write_burst_size_bytes; // Set address to the next one.
					write_state <= 4; // Enter Burst Write
				end else begin
					m_axi_awvalid <= 1'b1;
				end

			end

			4: begin // Burst Write Beats (W)

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
						write_state <= 5;
					end

			end

			5: begin // Write Response (B)

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

wire [7:0]		read_burst_len_1 = read_burst_len - 1; // 15;
wire [7:0]		read_burst_len_2 = read_burst_len - 2; // 14;
wire [12:0]		read_burst_size_bytes = { read_burst_len, 4'b0000 }; //256;

//assign	m_axi_arid = 'h0;
assign	m_axi_arlen = read_burst_len_1;
assign	m_axi_arsize = 3'h4; //$clog2(DATA_BYTES_COUNT); //clogb2((DATA_WIDTH/8)-1); //Size should be DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
assign	m_axi_arburst = 2'b01; // INCR burst type is usually used, except for keyhole bursts
assign	m_axi_arlock = 1'b0;
assign	m_axi_arcache = 4'b0010; // Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache.
assign	m_axi_arprot = 3'h0;
assign	m_axi_arqos = 4'h0;

reg [2:0]	read_state = 0;

wire		tx_fifo_wren = (read_state == ???);
wire		read_busy = (read_state != 0) | single_read_trigger | single_read_ff2 | single_read_ff;

assign		m_axi_rready = tx_fifo_wren ? m_axis_tx_tready : 1'b0;
assign		m_axis_tx_tvalid = tx_fifo_wren ? m_axi_rvalid : 1'b0;
assign		m_axis_tx_tdata = m_axi_rdata;

reg [31:0]	read_burst_counter = 0;
reg [8:0]	read_index = 0;
wire		read_active = m_axi_rready && m_axis_tx_tvalid;
reg	[1:0]	read_bresp;

// *****************************************************************
// **************************** ILA ********************************

assign	ila_single_read = single_read_pulse;

assign	ila_m_arready = m_axi_arready;
assign	ila_m_arvalid = m_axi_arvalid;
assign	ila_m_araddr = m_axi_araddr;
assign	ila_m_arlen = m_axi_arlen;

assign	ila_m_rready = m_axi_rready;
assign	ila_m_rvalid = m_axi_rvalid;
assign	ila_m_rdata = m_axi_rdata;
assign	ila_m_rlast = m_axi_rlast;

assign	ila_tx_ready = m_axis_tx_tready;
assign	ila_tx_valid = m_axis_tx_tvalid;
assign	ila_tx_data = m_axis_tx_tdata;
assign	ila_tx_strb = m_axis_tx_tstrb;
assign	ila_tx_prog_empty = tx_fifo_prog_empty;

assign	ila_read_state = read_state;
assign	ila_tx_fifo_wren = tx_fifo_wren;
assign	ila_read_busy = read_busy;
assign	ila_read_byte_remain = read_byte_remain;
assign	ila_read_index = read_index;
assign	ila_read_active = read_active;
assign	ila_read_bresp = read_bresp;

// --------------------------------------------
// ***** Master Read Address (AR) Channel *****
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

		read_burst_counter <= 0;
		read_total_burst_count <= 0;
		read_burst_tick_ins <= 1'b0;
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
				read_underflow_ins <= 1'b0;
				read_bresp <= 0;

				if (read_enable) begin 
					read_state <= 1;
				end else begin
					read_total_burst_count <= 0;
					read_underflow_count <= 0;
				end
			end

			1: begin // Check TX FIFO, and DDR psudo FIFO

				read_index <= 0;

				if (tx_fifo_has_space && read_in_pointer != read_out_pointer - 1) begin 
					m_axi_arvalid <= 1'b1;
					read_state <= 2; 
				end else begin
					m_axi_arvalid <= 1'b0;
				end

				if (tx_fifo_empty & read_total_burst_count > 0) begin
					read_underflow_ins <= 1'b1;
				end

			end

			2: begin // Read address (AR)

				read_index <= 0;
				read_underflow_ins <= 1'b0;

				if (m_axi_arready) begin // When it responses
					m_axi_araddr <= m_axi_araddr + read_burst_size_bytes; // Set address to the next one.
					m_axi_arvalid <= 1'b0;
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
					read_byte_remain <= read_byte_remain - 16;
				end

				if (read_byte_remain - 16 < 16) begin



					
				end

				if (read_active && m_axi_rlast) begin
					read_byte_remain <= read_byte_remain - read_burst_size_bytes;
					read_state <= 4;
				end

			end

			4: begin // Verify Byte Counter and Read Response and if it is looping

				if (read_byte_remain[32] || read_byte_remain == 0 || read_bresp[1]) begin
					read_state <= 0;
				end else if (read_byte_remain < read_burst_size_bytes) begin
					
					m_axi_arlen <= read_byte_remain[11:4];
					read_state <= 1;
					
					case (read_byte_remain[3:0])

						//4'b0000: last_tx_tstrb 
					endcase
					
				end else begin
					read_state <= 1;

				end

			end

		endcase

	end
end : proc_read

endmodule : data_path_dmac
