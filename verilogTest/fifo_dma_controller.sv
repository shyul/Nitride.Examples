`timescale 1 ns / 1 ps

module fifo_dma_controller # (

	parameter integer DEFAULT_WRITE_ADDRESS = 'h10000000,
	parameter integer DEFAULT_READ_ADDRESS = 'h20000000,
	parameter integer DEFAULT_TRANSFER_SIZE = 65536,
	parameter integer DEFAULT_BURST_COUNT = 8,
	parameter integer DEFAULT_BURST_LEN = 16,
	parameter integer ID_WIDTH = 1 // Thread ID Width

	) (

	// ****************** ILA IO *******************

	output logic			ila_single_read, ila_m_arready, ila_m_arvalid, ila_m_rready, ila_m_rvalid, ila_m_rlast,
	output logic			ila_single_write, ila_m_awready, ila_m_awvalid, ila_m_wready, ila_m_wvalid, ila_m_wlast, ila_m_bvalid, ila_m_bready,
	output logic [1:0]		ila_m_bresp,
	output logic [47:0]		ila_m_araddr, ila_m_awaddr,
	output logic [7:0]		ila_m_arlen, ila_m_awlen,
	output logic [127:0]	ila_m_rdata, ila_m_wdata,

	output logic			ila_tx_ready, ila_tx_valid, ila_tx_prog_empty,
	output logic			ila_rx_ready, ila_rx_valid, ila_rx_prog_full,
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
	
	input logic							aclk, // Global Clock Signal.
	input logic							aresetn, // Global Reset Singal. This Signal is Active Low

	// ***** Master Write Address (AW) Channel *****
	output reg [47:0]					m_axi_awaddr, // Master Interface Write Address
	output logic [7:0]					m_axi_awlen, // Burst length. The burst length gives the exact number of transfers in a burst
	output logic [2:0]					m_axi_awsize, // Burst size. This signal indicates the size of each transfer in the burst
	output logic [1:0]					m_axi_awburst, // Burst type. The burst type and the size information, determine how the address for each transfer within the burst is calculated.
	output reg							m_axi_awvalid, // Write address valid. This signal indicates that the channel is signaling valid write address and control information.
	input logic							m_axi_awready, // Write address ready. This signal indicates that the slave is ready to accept an address and associated control signals
	// [NO USE]=====================================
	output logic [ID_WIDTH-1:0]			m_axi_awid, // [NO USE] Master Interface Write Address ID
	output logic						m_axi_awlock, // [NO USE] Lock type. Provides additional information about the atomic characteristics of the transfer.
	output logic [3:0]					m_axi_awcache, // [FIXED 4'b0010] Memory type. This signal indicates how transactions are required to progress through a system.
	output logic [2:0]					m_axi_awprot, // [NO USE] Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
	output logic [3:0]					m_axi_awqos, // [NO USE] Quality of Service, QoS identifier sent for each write transaction.
	// =============================================

	// ******* Master Write Data (W) Channel *******
	output logic [127:0]				m_axi_wdata,
	output reg							m_axi_wlast, // Write last. This signal indicates the last transfer in a write burst.
	output logic						m_axi_wvalid, // Write valid. This signal indicates that valid write data and strobes are available
	input logic							m_axi_wready, // Write ready. This signal indicates that the slave can accept the write data.
	// [NO USE]=====================================
	output logic [15:0]					m_axi_wstrb, // [FIXED 'b1111] Write strobes. This signal indicates which byte lanes hold valid data. There is one write strobe bit for each eight bits of the write data bus.
	
	// =============================================

	// ***** Master Write Response (B) Channel *****
	input logic [1:0]					m_axi_bresp, // Write response. This signal indicates the status of the write transaction.
	input logic							m_axi_bvalid, // Write response valid. This signal indicates that the channel is signaling a valid write response.
	output reg							m_axi_bready, // Response ready. This signal indicates that the master can accept a write response.
	// [NO USE]=====================================
	input logic [ID_WIDTH-1:0]			m_axi_bid,
	// =============================================

	// ****** Master Read Address (AR) Channel ******
	output reg [47:0]					m_axi_araddr, // Read address. This signal indicates the initial address of a read burst transaction.
	output reg [7:0]					m_axi_arlen, // Burst length. The burst length gives the exact number of transfers in a burst
	output logic [2:0]					m_axi_arsize, // Burst size. This signal indicates the size of each transfer in the burst
	output logic [1:0]					m_axi_arburst, // Burst type. The burst type and the size information, determine how the address for each transfer within the burst is calculated.
	output reg							m_axi_arvalid, // Read address valid. This signal indicates that the channel is signaling valid read address and control information
	input logic							m_axi_arready, // Read address ready. This signal indicates that the slave is ready to accept an address and associated control signals
	// [NO USE]======================================
	output logic [ID_WIDTH-1:0]			m_axi_arid, // [NO USE]
	output logic						m_axi_arlock, // [NO USE] Lock type. Provides additional information about the atomic characteristics of the transfer.
	output logic [3:0]					m_axi_arcache, // [FIXED  4'b0010] Memory type. This signal indicates how transactions are required to progress through a system.
	output logic [2:0]					m_axi_arprot, // [NO USE] Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
	output logic [3:0]					m_axi_arqos, // [NO USE] Quality of Service, QoS identifier sent for each read transaction
	// ==============================================

	// ****** Master Read Data (R) Channel ********
	input logic [127:0]					m_axi_rdata, // Master Read Data
	input logic [1:0]					m_axi_rresp, // Read response. This signal indicates the status of the read transfer
	input logic							m_axi_rlast, // Read last. This signal indicates the last transfer in a read burst
	input logic							m_axi_rvalid, // Read valid. This signal indicates that the channel is signaling the required read data.
	output reg							m_axi_rready, // Read ready. This signal indicates that the master can accept the read data and response information.
	// [NO USE]====================================
	input logic [ID_WIDTH-1:0]			m_axi_rid, // [NO USE] Read ID tag. This signal is the identification tag for the read data group of signals generated by the slave.
	// ============================================


	// ********************************************
	// ********************************************
	// ************ RX (Write Ch) FIFO ************
	// ********************************************
	// ********************************************

	input logic	[127:0]					s_axis_rx_tdata, // No need strb, because extra sample can be ignore by later analysis. Or use stream mode.
	input logic							s_axis_rx_tvalid,
	output logic						s_axis_rx_tready,

	input logic							rx_fifo_prog_full,

	// ********************************************
	// ********************************************
	// ************* TX (Read Ch) FIFO ************
	// ********************************************
	// ********************************************

	output logic [127:0]				m_axis_tx_tdata,
	output reg [15:0]					m_axis_tx_tstrb, // Need strb to precisely control the sample length.
	output logic						m_axis_tx_tvalid,
	input logic							m_axis_tx_tready,

	input logic							tx_fifo_prog_empty,

	// ********************************************
	// ********************************************
	// ************ Slave AXI for CSR *************
	// ********************************************
	// ********************************************
 
	// ***** Slave Write Address (AW) Channel *****
	input logic [5:0]					s_axi_awaddr, // 8 bit aligned address (issued by master, acceped by Slave)
	input logic [2:0]					s_axi_awprot, // Protection type, indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
	input logic							s_axi_awvalid, // Write address valid. This signal indicates that the master signaling valid write address and control information.
	output reg							s_axi_awready, // Write address ready. This signal indicates that the slave is ready to accept an address and associated control signals.
	// ============================================

	// ******* Slave Write Data (W) Channel *******
	input logic [31:0]					s_axi_wdata, // Write data (issued by master, acceped by Slave) 
	input logic [3:0]   				s_axi_wstrb, // Write strobes, indicates which byte lanes hold valid data. There is one write strobe bit for each eight bits of the write data bus.
	input logic							s_axi_wvalid, // valid, indicates that valid write data and strobes are available.
	output reg 							s_axi_wready, // Write ready. This signal indicates that the slave can accept the write data.
	// ============================================

	// ***** Slave Write Response (B) Channel *****
	output reg [1:0]					s_axi_bresp, // This signal indicates the status of the write transaction.
	output reg							s_axi_bvalid, // Write response valid. This signal indicates that the channel is signaling a valid write response.
	input logic							s_axi_bready, // Response ready. This signal indicates that the master can accept a write response.
	// ============================================

	// ****** Slave Read Address (AR) Channel ******
	input logic [5:0]					s_axi_araddr, // Read address (issued by master, acceped by Slave)
	input logic [2:0]					s_axi_arprot, // Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
	input logic							s_axi_arvalid, // Read address valid. This signal indicates that the channel is signaling valid read address and control information.
	output reg							s_axi_arready, // Read address ready. This signal indicates that the slave is ready to accept an address and associated control signals.
	// =============================================

	// ****** Slave Read Data (R) Channel ********
	output reg [31:0]					s_axi_rdata, // Read data (issued by slave)
	output reg [1:0]					s_axi_rresp, // Read response. This signal indicates the status of the read transfer.
	output reg							s_axi_rvalid, // Read valid. This signal indicates that the channel is signaling the required read data.
	input logic							s_axi_rready // Read ready. This signal indicates that the master can accept the read data and response information.
	// ===========================================
	
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

reg				stream_write_enable = 1'b0;
reg				stream_read_enable = 1'b0;

reg [31:0]		stream_write_next_address_offset = 0; // FIFO keyhole here
reg [31:0]		stream_read_next_address_offset = 0;  // FIFO keyhole here 

reg [31:0]		stream_write_buffer_size = 0; // base_address + buffer_size = upper bound
reg [31:0]		stream_read_buffer_size = 0;

reg				loop_read_enable = 1'b0;

// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************

reg [47:0]		write_base_address = DEFAULT_WRITE_ADDRESS;
reg [31:0]		write_burst_count = DEFAULT_BURST_COUNT; 
reg [8:0]		write_burst_len = DEFAULT_BURST_LEN;

wire [7:0]		write_burst_len_1 = write_burst_len - 1; // 15;
wire [7:0]		write_burst_len_2 = write_burst_len - 2; // 14;
wire [12:0]		write_burst_size_bytes = { write_burst_len, 4'b0000 }; //256;

assign	m_axi_awid = 'h0;
assign	m_axi_awlen	= write_burst_len_1;
assign	m_axi_awsize = 3'h4; //$clog2(DATA_BYTES_COUNT); //clogb2((DATA_WIDTH/8)-1); // Size should be DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used
assign	m_axi_awburst = 2'b01; // INCR burst type is usually used, except for keyhole bursts
assign	m_axi_awlock = 1'b0;
assign	m_axi_awcache = 4'b0010; // Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache.
assign	m_axi_awprot = 3'h0;
assign	m_axi_awqos	= 4'h0;
assign	m_axi_wstrb	= 16'hFFFF;

reg [2:0]	write_state = 0;

wire		rx_fifo_rden = (write_state == 3);
wire		write_busy = (write_state != 0) | single_write_trigger | single_write_ff2 | single_write_ff;

assign		s_axis_rx_tready = rx_fifo_rden ? m_axi_wready : 1'b0;
assign		m_axi_wvalid = rx_fifo_rden ? s_axis_rx_tvalid : 1'b0;
assign		m_axi_wdata = s_axis_rx_tdata;

reg [31:0]	write_burst_counter = 0;
reg [8:0]	write_index = 0;
wire		write_active = s_axis_rx_tready && m_axi_wvalid;
reg	[1:0]	write_bresp;

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
assign	ila_rx_prog_full = rx_fifo_prog_full;

assign	ila_write_state = write_state;
assign	ila_rx_fifo_rden = rx_fifo_rden;
assign	ila_write_busy = write_busy; // AXI_S_ reg indicator only...
assign	ila_write_burst_counter = write_burst_counter;
assign	ila_write_index = write_index;
assign	ila_write_active = write_active;
assign	ila_write_bresp = write_bresp;

// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************

reg [47:0]		read_base_address = DEFAULT_READ_ADDRESS;
reg [31:0]		read_transfer_size = DEFAULT_TRANSFER_SIZE; // burst_count * (burst_len * 16 bytes), unit is bytes, round up against (burst_len * 16 bytes)
reg [8:0]		read_burst_len = DEFAULT_BURST_LEN; // maximum burst len

wire [7:0]		read_burst_len_1 = read_burst_len - 1; // 15;
wire [7:0]		read_burst_len_2 = read_burst_len - 2; // 14;
wire [12:0]		read_burst_size_bytes = { read_burst_len, 4'b0000 }; //256;

assign	m_axi_arid = 'h0;
assign	m_axi_arsize = 3'h4; //$clog2(DATA_BYTES_COUNT); //clogb2((DATA_WIDTH/8)-1); //Size should be DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
assign	m_axi_arburst = 2'b01; // INCR burst type is usually used, except for keyhole bursts
assign	m_axi_arlock = 1'b0;
assign	m_axi_arcache = 4'b0010; // Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache.
assign	m_axi_arprot = 3'h0;
assign	m_axi_arqos = 4'h0;

reg [2:0]	read_state = 0;

wire		tx_fifo_wren = (read_state == 3);
wire		read_busy = (read_state != 0) | single_read_trigger | single_read_ff2 | single_read_ff;

assign		m_axi_rready = tx_fifo_wren ? m_axis_tx_tready : 1'b0;
assign		m_axis_tx_tvalid = tx_fifo_wren ? m_axi_rvalid : 1'b0;
assign		m_axis_tx_tdata = m_axi_rdata;

reg signed [32:0]	read_byte_remain = 0; //The burst counters are used to track the number of burst transfers of BURST_LEN burst length needed to transfer 2^MASTER_INDEX bytes of data.
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

// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************

// --------------------------------------------
// ***** Slave Write Address (AW) Channel *****
// --------------------------------------------

// Implement axi_awready generation
// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
// de-asserted when reset is low.

reg addr_write_enable = 1'b1;

always_ff @(posedge clk) begin
	if (!rst_n) begin
		s_axi_awready <= 1'b0;
		addr_write_enable <= 1'b1;
	end else begin    
		if (~s_axi_awready && s_axi_awvalid && s_axi_wvalid && addr_write_enable) begin
			// slave is ready to accept write address when 
			// there is a valid write address and write data
			// on the write address and data bus. This design 
			// expects no outstanding transactions. 
			s_axi_awready <= 1'b1;
			addr_write_enable <= 1'b0;
		end else if (s_axi_bready && s_axi_bvalid) begin
			addr_write_enable <= 1'b1;
			s_axi_awready <= 1'b0;
		end else begin
			s_axi_awready <= 1'b0;
		end
	end
end

// Implement s_awaddr latching
// This process is used to latch the address when both 
// S_AXI_AWVALID and S_AXI_WVALID are valid. 

reg [5:0] 	s_awaddr = 0;

always_ff @(posedge clk) begin
	if (!rst_n) begin
		s_awaddr <= 0;
	end else begin
		if (~s_axi_awready && s_axi_awvalid && s_axi_wvalid && addr_write_enable) begin
			s_awaddr <= s_axi_awaddr; // Write Address latching 
		end
	end
end

// ----------------------------------------
// ***** Slave Write Data (W) Channel *****
// ----------------------------------------

// Implement axi_wready generation
// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
// s_axi_awvalid and s_axi_wvalid are asserted. axi_wready is 
// de-asserted when reset is low. 

always_ff @(posedge clk) begin
	if (!rst_n) begin
		s_axi_wready <= 1'b0;
	end else begin
		if (~s_axi_wready && s_axi_wvalid && s_axi_awvalid && addr_write_enable) begin
			// slave is ready to accept write data when 
			// there is a valid write address and write data
			// on the write address and data bus. This design 
			// expects no outstanding transactions. 
			s_axi_wready <= 1'b1;
		end else begin
			s_axi_wready <= 1'b0;
		end
	end 
end  

// Implement memory mapped register select and write logic generation
// The write data is accepted and written to memory mapped registers when
// s_axi_awready, s_axi_wvalid, axi_wready and s_axi_wvalid are asserted. Write strobes are used to
// select byte enables of slave registers while writing.
// These registers are cleared when reset (active low) is applied.
// Slave register write enable is asserted when valid address and data are available
// and the slave is ready to accept the write address and write data.
//integer		byte_index;

wire	s_axi_reg_write_enable = s_axi_wready && s_axi_wvalid && s_axi_awready && s_axi_awvalid;

always_ff @(posedge clk) begin
	if (!rst_n) begin

		write_base_address <= DEFAULT_WRITE_ADDRESS;
		write_burst_count <= DEFAULT_BURST_COUNT;
		write_burst_len <= DEFAULT_BURST_LEN;

		read_base_address <= DEFAULT_READ_ADDRESS;
		read_transfer_size <= DEFAULT_TRANSFER_SIZE;
		read_burst_len <= DEFAULT_BURST_LEN;

		single_write_trigger <= 1'b0;
		single_read_trigger <= 1'b0;
		loop_read_enable <= 1'b0;

	end else begin
		if (s_axi_reg_write_enable && s_axi_wstrb == 4'b1111) begin
			case(s_awaddr[5:2])

				4'h0: read_base_address[31:0] <= s_axi_wdata;
				4'h1: read_base_address[47:32] <= s_axi_wdata[15:0];
				4'h2: read_transfer_size <= s_axi_wdata;
				4'h3: read_burst_len <= s_axi_wdata[8:0];

				4'h4: write_base_address[31:0] <= s_axi_wdata;
				4'h5: write_base_address[47:32] <= s_axi_wdata[15:0];
				4'h6: write_burst_count <= s_axi_wdata;
				4'h7: write_burst_len <= s_axi_wdata[8:0];

				4'h8: { single_write_trigger, single_read_trigger } <= s_axi_wdata[1:0];
				4'h9: loop_read_enable <= s_axi_wdata[0];

			endcase
		end

		else begin

			if (single_write_ff2 || single_write_trigger) single_write_trigger <= 1'b0;
			if (single_read_ff2 || single_read_trigger) single_read_trigger <= 1'b0;

		end 
	end
end

// --------------------------------------------
// ***** Slave Write Response (B) Channel *****
// --------------------------------------------

// Implement write response logic generation
// The write response and response valid signals are asserted by the slave 
// when axi_wready, s_axi_wvalid, axi_wready and s_axi_wvalid are asserted.  
// This marks the acceptance of address and indicates the status of 
// write transaction.

always_ff @(posedge clk) begin
	if (!rst_n) begin
		s_axi_bvalid <= 0;
		s_axi_bresp <= 0;
	end else begin    
		if (s_axi_awready && s_axi_awvalid && ~s_axi_bvalid && s_axi_wready && s_axi_wvalid) begin
			// indicates a valid write response is available
			s_axi_bvalid <= 1'b1;
			s_axi_bresp  <= 0; // 'ACK' response // work error responses t.b.d
		end else begin
			//check if bready is asserted while bvalid is high) 
			//(there is a possibility that bready is always asserted high)   
			if (s_axi_bready && s_axi_bvalid) begin
				s_axi_bvalid <= 1'b0; 
			end
		end
	end
end

// -------------------------------------------
// ***** Slave Read Address (AR) Channel *****
// -------------------------------------------

// Implement axi_arready generation
// axi_arready is asserted for one S_AXI_ACLK clock cycle when
// S_AXI_ARVALID is asserted. s_axi_awready is 
// de-asserted when reset (active low) is asserted. 
// The read address is also latched when S_AXI_ARVALID is 
// asserted. s_araddr is reset to zero on reset assertion.

reg [5:0] 		s_araddr = 0;

always_ff @(posedge clk) begin
	if (!rst_n) begin
		s_axi_arready <= 1'b0;
		s_araddr <= 0;
	end else begin    
		if (~s_axi_arready && s_axi_arvalid) begin
			s_axi_arready <= 1'b1; // indicates that the slave has acceped the valid read address
			s_araddr <= s_axi_araddr; // Read address latching
		end else begin
			s_axi_arready <= 1'b0;
		end
	end
end

// Implement axi_arvalid generation
// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
// data are available on the axi_rdata bus at this instance. The 
// assertion of axi_rvalid marks the validity of read data on the 
// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
// is deasserted on reset (active low). axi_rresp and axi_rdata are 
// cleared to zero on reset (active low).

// ------------------------------------------------------
// ***** Slave Read Data (and Response) (R) Channel *****
// ------------------------------------------------------

wire s_axi_reg_read_enable = s_axi_arready & s_axi_arvalid & ~s_axi_rvalid;

always_ff @(posedge clk) begin
	if (!rst_n) begin
		s_axi_rvalid <= 1'b0;
		s_axi_rresp <= 0;
	end else begin    
		//if (s_axi_arready && s_axi_arvalid && ~s_axi_rvalid) begin
		if (s_axi_reg_read_enable) begin
			// Valid read data is available at the read data bus
			s_axi_rvalid <= 1'b1;
			s_axi_rresp  <= 0; // 'OKAY' response
		end else if (s_axi_rvalid && s_axi_rready) begin
			// Read data is accepted by the master
			s_axi_rvalid <= 1'b0;
		end
	end
end

// Implement memory mapped register select and read logic generation
// Slave register read enable is asserted when valid address is available
// and the slave is ready to accept the read address.
// Output register or memory read data

always_ff @(posedge clk) begin
	if (!rst_n) begin
		s_axi_rdata <= 0;
	end else begin    
		// When there is a valid read address (S_AXI_ARVALID) with 
		// acceptance of read address by the slave (axi_arready), 
		// output the read dada 
		if (s_axi_reg_read_enable) begin

			case(s_araddr[5:2])

				4'h0: s_axi_rdata <= read_base_address[31:0];
				4'h1: s_axi_rdata <= { 16'b0, read_base_address[47:32] };
				4'h2: s_axi_rdata <= read_transfer_size;
				4'h3: s_axi_rdata <= { 23'b0, read_burst_len };

				4'h4: s_axi_rdata <= write_base_address[31:0];
				4'h5: s_axi_rdata <= { 16'b0, write_base_address[47:32] };
				4'h6: s_axi_rdata <= write_burst_count;
				4'h7: s_axi_rdata <= { 23'b0, write_burst_len };

				4'h8: s_axi_rdata <= { 30'b0, write_busy, read_busy };
				4'h9: s_axi_rdata <= { 31'b0, loop_read_enable };

			endcase
			
		end
	end
end

// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************

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

always_ff @(posedge clk) begin : proc_write_transfer
	if(~rst_n) begin

		write_state <= 0;
		m_axi_awaddr <= write_base_address;
		m_axi_awvalid <= 1'b0;
		write_index <= 0;
		m_axi_wlast <= 1'b0;
		write_burst_counter <= 0;
		m_axi_bready <= 1'b0;
		write_bresp <= 0;

	end else begin

		case(write_state)

			0: begin // IDLE State

				m_axi_awaddr <= write_base_address;
				m_axi_awvalid <= 1'b0;
				write_index <= 0;
				m_axi_wlast <= 1'b0;
				write_burst_counter <= 0;
				m_axi_bready <= 1'b0;

				if (single_write_pulse) begin 
					write_state <= 1;
                end
			end

			1: begin // Verify FIFO depth

				write_index <= 0;
				m_axi_wlast <= 1'b0;
				m_axi_bready <= 1'b0;
				write_bresp <= 0;

				if (rx_fifo_prog_full) begin 
					m_axi_awvalid <= 1'b1;
					write_state <= 2; 
				end else begin
					m_axi_awvalid <= 1'b0;
				end

			end

			2: begin // Write Address

				write_index <= 0;
				m_axi_wlast <= 1'b0;
				m_axi_bready <= 1'b0;

				if (m_axi_awready) begin // When it responses
					m_axi_awaddr <= m_axi_awaddr + write_burst_size_bytes; // Set address to the next one.
					m_axi_awvalid <= 1'b0;
					write_state <= 3; // Enter Burst Write
				end else begin
					m_axi_awvalid <= 1'b1;
				end

			end

			3: begin // Burst Write

				if (write_active && write_index < write_burst_len_1)  // Max possilbe write_index is 15;
					write_index <= write_index + 1;

				if (write_active)
					if ((write_index == write_burst_len_2 && write_burst_len > 1) || write_burst_len == 1)
						m_axi_wlast <= 1'b1;
					else if (m_axi_wlast) begin
						m_axi_wlast <= 1'b0;
						write_burst_counter <= write_burst_counter + 1;
						m_axi_bready <= 1'b1;
						write_state <= 4;
					end

			end

			4: begin // Write Response

				if (m_axi_bvalid) begin
					m_axi_bready <= 1'b0;
					write_bresp <= m_axi_bresp;

					if (write_burst_counter < write_burst_count && !m_axi_bresp[1])
						write_state <= 1;
					else
						write_state <= 0;
				end

			end

			default: begin

				m_axi_awaddr <= write_base_address;
				m_axi_awvalid <= 1'b0;
				write_index <= 0;
				m_axi_wlast <= 1'b0;
				write_burst_counter <= 0;
				m_axi_bready <= 1'b0;
				write_state <= 0;

			end

		endcase

	end
end : proc_write_transfer

// --------------------------------------------
// ***** Master Read Address (AR) Channel *****
// --------------------------------------------

// The Read Address Channel (AW) provides a similar function to the
// Write Address channel- to provide the tranfer qualifiers for the burst.

// In this example, the read address increments in the same
// manner as the write address channel.

//Read Address (AR)

always_ff @(posedge clk) begin : proc_read_transfer
	if(~rst_n) begin

		read_state <= 0;
		m_axi_araddr <= read_base_address;
		m_axi_arlen <= read_burst_len_1; //Burst LENgth is number of transaction beats, minus 1
		m_axi_arvalid <= 1'b0;
		read_index <= 0;
		read_byte_remain <= read_transfer_size;
		read_bresp <= 0;
		m_axis_tx_tstrb <= 16'hFFFF;
		//last_tx_tstrb <= 16'hFFFF;

	end else begin

		case(read_state)
			
			0: begin // IDLE State

				m_axi_araddr <= read_base_address;
				m_axi_arlen <= read_burst_len_1;
				m_axi_arvalid <= 1'b0;
				read_index <= 0;
				read_byte_remain <= read_transfer_size;
				read_bresp <= 0;
				m_axis_tx_tstrb <= 16'hFFFF;
		
				if (single_read_pulse) begin 
					read_state <= 1;
                end
			end

			1: begin // Check FIFO Prog Empty

				read_index <= 0;

				if (tx_fifo_prog_empty) begin 
					m_axi_arvalid <= 1'b1;
					read_state <= 2; 
				end else begin
					m_axi_arvalid <= 1'b0;
				end

			end

			2: begin // Read address

				read_index <= 0;

				if (m_axi_arready) begin // When it responses
					m_axi_araddr <= m_axi_araddr + read_burst_size_bytes; // Set address to the next one.
					m_axi_arvalid <= 1'b0;
					read_state <= 3; // Enter Burst Read
				end else begin
					m_axi_arvalid <= 1'b1;
				end	

			end

			3: begin // Burst Read, and check transfer size counter

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
end

endmodule : fifo_dma_controller
