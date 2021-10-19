`timescale 1 ns / 1 ps

module fifo_dma_controller # (

	parameter integer ID_WIDTH = 1 // Thread ID Width

	) (

	// ******************* ILA IO *******************

	output logic [1:0]					exec_state,

	output logic [47:0]					ila_awaddr,
	
	output logic [1:0]					ila_bresp, 

	output logic [127:0] 				ila_rdata,
	output logic						ila_rlast, ila_rvalid, ila_rready,

	output logic [127:0] 				ila_wdata,
	output logic						ila_wlast, ila_wvalid, ila_wready,

	output reg [127:0] 					expected_rdata,			// = 'b1;
	output reg  						read_mismatch, // = 1'b0;
	output reg							error_reg, // = 0;
	// ==============================================

	// ************* Example design I/O *************
	//input logic							init_axi_txn, // Initiate AXI transactions
	output logic						ila_init_axi_txn, // Asserts when transaction is complete
	output reg							compare_done, // Asserts when transaction is complete
	output reg							error_out, // Asserts when error_out is detected
	// ==============================================

	// ************** Clock and Reset **************
	output logic						clk_out, // Global Clock Signal.
	//input logic						aresetn, // Global Reset Singal. This Signal is Active Low
	// =============================================
	
	input logic							aclk, // Global Clock Signal.
	input logic							aresetn, // Global Reset Singal. This Signal is Active Low

	// ***** Master Write Address (AW) Channel *****
	output logic [47:0]					m_axi_awaddr, // Master Interface Write Address
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
	output reg [127:0]					m_axi_wdata,
	output reg							m_axi_wlast, // Write last. This signal indicates the last transfer in a write burst.
	output reg							m_axi_wvalid, // Write valid. This signal indicates that valid write data and strobes are available
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
	output logic [47:0]					m_axi_araddr, // Read address. This signal indicates the initial address of a read burst transaction.
	output logic [7:0]					m_axi_arlen, // Burst length. The burst length gives the exact number of transfers in a burst
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
	// ********************************************
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

// -----------------------------------
// ***** Initialize Transactions *****
// -----------------------------------

reg		init_axi_txn = 0; // Initiate AXI transactions
reg		init_txn_ff = 0, init_txn_ff2 = 0;
wire	init_txn_pulse = (!init_txn_ff2) && init_txn_ff;
wire	rst_or_init_txn_pulse = ((!rst_n) || init_txn_pulse);

// Generate a pulse to initiate AXI transaction.
always_ff@(posedge clk) begin
	if (!rst_n) begin // Initiates AXI transaction delay
		init_txn_ff <= 1'b0;
		init_txn_ff2 <= 1'b0;
	end else begin  
		init_txn_ff <= init_axi_txn;
		init_txn_ff2 <= init_txn_ff;
	end
end


	// ********************************************
	// ********************************************
	// ********************************************
	// ********************************************
	// ********************************************




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

// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
reg [47:0]	base_address = 48'h10000000; //32'h40000000; // Base address of targeted slave



//localparam integer BASE_ADDRESS = 0; //32'h40000000
//wire [47:0]							base_address = BASE_ADDRESS; //32'h40000000; // Base address of targeted slave
reg [31:0]	transfer_size = 65536;

reg [31:0]	burst_num = 8;

//reg [3:0]	burst_len_select = 1;  // 0 = 8, 1 = 16, 2 = 32, 3 = 64, 4 = 128, 5 = 256;
reg [8:0]	burst_len = 16; //(8 << burst_len_select); // burst_len = 16; // (8 << burst_len_select)
reg [7:0]	burst_len_1 = 15;
reg [7:0]	burst_len_2 = 14;

reg [12:0]	burst_size_bytes = 256; //(8 << (burst_len_select + 4)); // 4096 maximum
//localparam integer BURST_BYTES_COUNT = BURST_LEN * 16;
//wire [12:0]	burst_size_bytes = BURST_BYTES_COUNT; // size of BURST_LEN length burst in bytes, Burst size in bytes
//localparam integer BURST_BYTES_INDEX_WIDTH = 12; //$clog2(BURST_BYTES_COUNT);

//m_axi_arlen <= 15;//(8 << burst_len_select)-1;
//m_axi_awlen <= 15;//(8 << burst_len_select)-1;

//localparam integer BURST_LEN = 16; // Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
//localparam integer BURST_INDEX_WIDTH = $clog2(BURST_LEN); //clogb2(BURST_LEN-1); // BURST_INDEX_WIDTH is the width of the index counter for number of write or read transaction.
//localparam integer MASTER_INDEX	= 12; // (2^12 = 4096, 4K boundary) // Burst length for transactions, in DATA_WIDTHs. Non-2^n lengths will eventually cause bursts across 4K address boundaries.
//localparam integer MASTER_BURSTS_REQ_INDEX_WIDTH = MASTER_INDEX-BURST_BYTES_INDEX_WIDTH; // total number of burst transfers is master length divided by burst length and burst size


//reg [31:0]			regs [15:0];

// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// *****************************************************************
// Implement memory mapped register select and write logic generation
// The write data is accepted and written to memory mapped registers when
// s_axi_awready, s_axi_wvalid, axi_wready and s_axi_wvalid are asserted. Write strobes are used to
// select byte enables of slave registers while writing.
// These registers are cleared when reset (active low) is applied.
// Slave register write enable is asserted when valid address and data are available
// and the slave is ready to accept the write address and write data.
//integer		byte_index;
wire		reg_write_enable = s_axi_wready && s_axi_wvalid && s_axi_awready && s_axi_awvalid;

always_ff @(posedge clk) begin
	if (!rst_n) begin
		base_address <= 48'h10000000;
		transfer_size <= 65536;
		burst_num <= 8;
		burst_len <= 16;
		burst_len_1 = 15;
		burst_len_2 = 14;
		burst_size_bytes <= 256;

		init_axi_txn <= 0;

        //for (byte_index = 0; byte_index < REGS_DEPTH; byte_index++)
            //regs[byte_index] <= 'hF;//regs_default_value[byte_index];
	end else begin
		if (reg_write_enable && s_axi_wstrb == 4'b1111) begin
			case(s_awaddr[5:2])

				4'h0: base_address[31:0] <= s_axi_wdata;
				4'h1: base_address[47:32] <= s_axi_wdata[15:0];
				4'h2: transfer_size <= s_axi_wdata;
				4'h3: burst_num <= s_axi_wdata;
				4'h4: burst_len <= s_axi_wdata[8:0];
				4'h5: burst_len_1 <= s_axi_wdata[7:0];
				4'h6: burst_len_2 <= s_axi_wdata[7:0];
				4'h7: burst_size_bytes <= s_axi_wdata[12:0];
				4'h8: init_axi_txn <= s_axi_wdata[0];

			endcase

			/*
			for (byte_index = 0; byte_index < STRB_WIDTH; byte_index++)
				if (s_axi_wstrb[byte_index]) begin

					regs[s_awaddr[ADDR_WIDTH-1:REGS_LSB]][(byte_index*8) +: 8] <= s_axi_wdata[(byte_index*8) +: 8];
				end*/
		end

		else if (init_txn_ff2 || init_axi_txn) init_axi_txn <= 1'b0;
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

wire reg_read_enable = s_axi_arready & s_axi_arvalid & ~s_axi_rvalid;

always_ff @(posedge clk) begin
	if (!rst_n) begin
		s_axi_rvalid <= 1'b0;
		s_axi_rresp <= 0;
	end else begin    
		//if (s_axi_arready && s_axi_arvalid && ~s_axi_rvalid) begin
		if (reg_read_enable) begin
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
		if (reg_read_enable) begin

			case(s_araddr[5:2])

				4'h0: s_axi_rdata <= base_address[31:0];// <= s_axi_wdata;
				4'h1: s_axi_rdata <= { 16'h0, base_address[47:32] };// <= s_axi_wdata[15:0];
				4'h2: s_axi_rdata <= transfer_size;// <= s_axi_wdata;
				4'h3: s_axi_rdata <= burst_num;// <= s_axi_wdata;
				4'h4: s_axi_rdata <= { 23'h0, burst_len };// <= s_axi_wdata[8:0];
				4'h5: s_axi_rdata <= { 24'h0, burst_len_1 };// <= s_axi_wdata[7:0];
				4'h6: s_axi_rdata <= { 24'h0, burst_len_2 };// <= s_axi_wdata[7:0];
				4'h7: s_axi_rdata <= { 19'h0, burst_size_bytes };// <= s_axi_wdata[12:0];
				4'h8: s_axi_rdata <= { 30'h0, error_out, ~compare_done }; //init_axi_txn <= (init_txn_ff2) ? 1'b0 : s_axi_wdata[0];
			endcase

			//s_axi_rdata <= regs[s_araddr[ADDR_WIDTH-1:REGS_LSB]]; // register read data
		end
	end
end


	// ********************************************
	// ********************************************
	// ********************************************
	// ********************************************
	// ********************************************
















assign ila_awaddr = m_awaddr;

assign ila_bresp = m_axi_bresp;

assign ila_wdata = m_axi_wdata;
assign ila_wlast = m_axi_wlast; // Write last. This signal indicates the last transfer in a write burst.
assign ila_wvalid = m_axi_wvalid; // Write valid. This signal indicates that valid write data and strobes are available
assign ila_wready =	m_axi_wready;

assign ila_rdata = m_axi_rdata;
assign ila_rlast = m_axi_rlast;
assign ila_rvalid = m_axi_rvalid;
assign ila_rready = m_axi_rready;

assign ila_init_axi_txn = init_axi_txn;
assign clk_out = aclk;






















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

assign	m_axi_awid = 'h0;
assign	m_axi_awlen	= burst_len_1; // Burst LENgth is number of transaction beats, minus 1
assign	m_axi_awsize = 3'h4; //$clog2(DATA_BYTES_COUNT); //clogb2((DATA_WIDTH/8)-1); // Size should be DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used
assign	m_axi_awburst = 2'b01; // INCR burst type is usually used, except for keyhole bursts
assign	m_axi_awlock = 1'b0;
assign	m_axi_awcache = 4'b0010; // Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache.
assign	m_axi_awprot = 3'h0;
assign	m_axi_awqos	= 4'h0;

wire	aw_ready_and_valid = (m_axi_awready && m_axi_awvalid);

reg [31:0]	write_burst_counter = 0;
reg			start_single_burst_write = 1'b0;
reg			burst_write_active = 1'b0;
reg			writes_done = 1'b0;

always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse) begin
		m_axi_awvalid <= 1'b0;
	end else if (~m_axi_awvalid && start_single_burst_write) begin // If previously not valid , start next transaction
		m_axi_awvalid <= 1'b1;
	end else if (aw_ready_and_valid) begin // Once asserted, VALIDs cannot be deasserted, so m_axi_awvalid must wait until transaction is accepted
		m_axi_awvalid <= 1'b0;
	end
end

reg [47:0] 	m_awaddr = 0;
assign	m_axi_awaddr = base_address + m_awaddr; //The AXI address is a concatenation of the target base address + active offset range

// Next address after AWREADY indicates previous address acceptance
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse) begin
		m_awaddr <= 'b0;
	end else if (aw_ready_and_valid) begin
		m_awaddr <= m_awaddr + burst_size_bytes;
	end
end

// write_burst_counter counter keeps track with the number of burst transaction initiated
// against the number of burst transactions the master needs to initiate
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse) begin
		write_burst_counter <= 'b0;
	end else if (aw_ready_and_valid) begin
		if (write_burst_counter < burst_num) begin //if (write_burst_counter[MASTER_BURSTS_REQ_INDEX_WIDTH] == 1'b0) begin // Use MSB as overflow detection. //write_burst_counter[MASTER_BURSTS_REQ_INDEX_WIDTH] <= 1'b1; // Reset the bit??
			write_burst_counter <= write_burst_counter + 1;
		end
	end
end

// Check for last write completion.
// This logic is to qualify the last write count with the final write
// response. This demonstrates how to confirm that a write has been
// committed.
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse)
		writes_done <= 1'b0;
	else if (m_axi_bvalid && (write_burst_counter == burst_num) && m_axi_bready) // else if (m_axi_bvalid && (write_burst_counter[MASTER_BURSTS_REQ_INDEX_WIDTH]) && m_axi_bready) // The writes_done should be associated with a bready response // else if (m_axi_bvalid && m_axi_bready && (write_burst_counter == {(MASTER_BURSTS_REQ_INDEX_WIDTH-1){1}}) && m_axi_wlast)
		writes_done <= 1'b1;
end

// -----------------------------------------
// ***** Master Write Data (W) Channel *****
// -----------------------------------------

// The write data will continually try to push write data across the interface.

// The amount of data accepted will depend on the AXI slave and the AXI
// Interconnect settings, such as if there are FIFOs enabled in interconnect.

// Note that there is no explicit timing relationship to the write address channel.
// The write channel has its own throttling flag, separate from the AW channel.

// Synchronization between the channels must be determined by the user.

// The simpliest but lowest performance would be to only issue one address write
// and write data burst at a time.

// In this example they are kept in sync by using the same address increment
// and burst sizes. Then the AW and W channels have their transactions measured
// with threshold counters as part of the user logic, to make sure neither 
// channel gets too far ahead of each other.

// All bursts are complete and aligned in this example

assign	m_axi_wstrb	= 16'hFFFF; //{(DATA_BYTES_COUNT){1'b1}};

reg [8:0]	write_index = 0; // reg [BURST_INDEX_WIDTH:0]	write_index = 0; // write beat count in a burst
wire		write_next = m_axi_wready & m_axi_wvalid; // Forward movement occurs when the write channel is valid and ready

// WVALID logic, similar to the m_axi_awvalid always block above
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse) begin
		m_axi_wvalid <= 1'b0; 
	end else if (~m_axi_wvalid && start_single_burst_write) begin  // If previously not valid, start next transaction
		m_axi_wvalid <= 1'b1;
	end else if (write_next && m_axi_wlast) // If WREADY and too many writes, throttle WVALID Once asserted, VALIDs cannot be deasserted, so WVALID must wait until burst is complete with WLAST
		m_axi_wvalid <= 1'b0;
end 

// WLAST generation on the MSB of a counter underflow WVALID logic, similar to the m_axi_awvalid always block above
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse) begin
		m_axi_wlast <= 1'b0;
	end else if (((write_index == burst_len_2 && burst_len >= 2) && write_next) || (burst_len == 1)) begin // m_axi_wlast is asserted when the write index count reaches the penultimate count to synchronize with the last write data when write_index is b1111 // else if (&(write_index[BURST_INDEX_WIDTH-1:1])&& ~write_index[0] && write_next)
		m_axi_wlast <= 1'b1;
	end else if (write_next) // Deassrt m_axi_wlast when the last write data has been accepted by the slave with a valid response
		m_axi_wlast <= 1'b0;
	else if (m_axi_wlast && burst_len == 1)
		m_axi_wlast <= 1'b0;
end

// Burst length counter. Uses extra counter register bit to indicate terminal count to reduce decode logic
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse || start_single_burst_write) begin
		write_index <= 0;
	end else if (write_next && (write_index != burst_len_1)) begin
		write_index <= write_index + 1;
	end
end

// Write Data Generator Data pattern is only a simple incrementing count from 0 for each burst
always_ff@(posedge clk) begin
	if (!rst_n)
		m_axi_wdata <= 'b1;
	else if (rst_or_init_txn_pulse)
		m_axi_wdata <= m_axi_wdata; //'b1;
	else if (write_next) // else if (write_next && m_axi_wlast) m_axi_wdata <= 'b0;
		m_axi_wdata <= m_axi_wdata + 1;
end

// ---------------------------------------------
// ***** Master Write Response (B) Channel *****
// ---------------------------------------------

//The write response channel provides feedback that the write has committed
//to memory. BREADY will occur when all of the data and the write address
//has arrived and been accepted by the slave.

//The write issuance (number of outstanding write addresses) is started by 
//the Address Write transfer, and is completed by a BREADY/BRESP.

//While negating BREADY will eventually throttle the AWREADY signal, 
//it is best not to throttle the whole data channel this way.

//The BRESP bit [1] is used indicate any errors from the interconnect or
//slave for the entire write burst. This example will capture the error 
//into the error_out output. 

wire	write_resp_error = m_axi_bready & m_axi_bvalid & m_axi_bresp[1]; // Flag any write response errors

always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse) begin
		m_axi_bready <= 1'b0;
	end else if (m_axi_bvalid && ~m_axi_bready) begin // accept/acknowledge bresp with m_axi_bready by the master when m_axi_bvalid is asserted by slave
		m_axi_bready <= 1'b1;
	end else if (m_axi_bready) begin // deassert after one clock cycle
		m_axi_bready <= 1'b0;
	end
end

// --------------------------------------------
// ***** Master Read Address (AR) Channel *****
// --------------------------------------------

// The Read Address Channel (AW) provides a similar function to the
// Write Address channel- to provide the tranfer qualifiers for the burst.

// In this example, the read address increments in the same
// manner as the write address channel.

//Read Address (AR)
reg [47:0]	m_araddr = 0;
assign	m_axi_arid = 'h0;
assign	m_axi_araddr = base_address + m_araddr;
assign	m_axi_arlen = burst_len_1; //Burst LENgth is number of transaction beats, minus 1
assign	m_axi_arsize = 3'h4; //$clog2(DATA_BYTES_COUNT); //clogb2((DATA_WIDTH/8)-1); //Size should be DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
assign	m_axi_arburst = 2'b01; // INCR burst type is usually used, except for keyhole bursts
assign	m_axi_arlock = 1'b0;
assign	m_axi_arcache = 4'b0010; // Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache.
assign	m_axi_arprot = 3'h0;
assign	m_axi_arqos = 4'h0;

wire	ar_ready_and_valid = (m_axi_arready && m_axi_arvalid);

reg [31:0]	read_burst_counter = 0; //The burst counters are used to track the number of burst transfers of BURST_LEN burst length needed to transfer 2^MASTER_INDEX bytes of data.
reg			start_single_burst_read = 1'b0;
reg			burst_read_active = 1'b0;
reg			reads_done = 1'b0;

reg [8:0]	read_index; //reg [BURST_INDEX_WIDTH:0]	read_index; //read beat count in a burst

always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse) begin
		m_axi_arvalid <= 1'b0;
	end else if (~m_axi_arvalid && start_single_burst_read) begin // If previously not valid , start next transaction
		m_axi_arvalid <= 1'b1;
	end else if (ar_ready_and_valid) begin
		m_axi_arvalid <= 1'b0;
	end
end

// Next address after ARREADY indicates previous address acceptance  
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse) begin
		m_araddr <= 'b0;
	end else if (ar_ready_and_valid) begin
		m_araddr <= m_araddr + burst_size_bytes;
	end
end

// read_burst_counter counter keeps track with the number of burst transaction initiated
// against the number of burst transactions the master needs to initiate
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse) begin
		read_burst_counter <= 'b0;
	end else if (ar_ready_and_valid) begin
		if (read_burst_counter < burst_num) begin //if (read_burst_counter[MASTER_BURSTS_REQ_INDEX_WIDTH] == 1'b0) begin
			read_burst_counter <= read_burst_counter + 1;
		end 
	end
end

// Check for last read completion.
// This logic is to qualify the last read count with the final read
// response. This demonstrates how to confirm that a read has been committed.
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse)
		reads_done <= 1'b0;
	else if (m_axi_rvalid && m_axi_rready && (read_index == burst_len_1) && (read_burst_counter == burst_num)) // else if (m_axi_rvalid && m_axi_rready && (read_index == burst_len_1) && (read_burst_counter[MASTER_BURSTS_REQ_INDEX_WIDTH])) // The reads_done should be associated with a rready response // else if (m_axi_bvalid && m_axi_bready && (write_burst_counter == {(MASTER_BURSTS_REQ_INDEX_WIDTH-1){1}}) && m_axi_wlast)
		reads_done <= 1'b1;
end

// -------------------------------------------------------
// ***** Master Read Data (and Response) (R) Channel *****
// -------------------------------------------------------

// The Read Data channel returns the results of the read request


wire		read_next = m_axi_rvalid && m_axi_rready; // Forward movement occurs when the channel is valid and ready
wire		read_resp_error = m_axi_rready & m_axi_rvalid & m_axi_rresp[1]; //Flag any read response errors

//&&&&&&&&&&&&&













// Burst length counter. Uses extra counter register bit to indicate terminal count to reduce decode logic
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse || start_single_burst_read) begin
		read_index <= 0;
	end else if (read_next && (read_index != burst_len_1)) begin // TODO: (read_index < burst_len_1)
		read_index <= read_index + 1;
	end
end

// *****
// In this example the data checker is always able to accept more data, so no need to throttle the RREADY signal
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse) begin
		m_axi_rready <= 1'b0;
	end else if (m_axi_rvalid) begin // accept/acknowledge rdata/rresp with m_axi_rready by the master when m_axi_rvalid is asserted by slave
		if (m_axi_rlast && m_axi_rready) begin
			m_axi_rready <= 1'b0;
		end else begin
			m_axi_rready <= 1'b1;
		end
	end
end



// *****
// Check received read data against data generator 
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse) begin
		read_mismatch <= 1'b0;
	end else if (read_next && (m_axi_rdata != expected_rdata)) begin // Only check data when RVALID is active
		read_mismatch <= 1'b1;
	end else
		read_mismatch <= 1'b0;
end

// *****
// Generate expected read data to check against actual read data
always_ff@(posedge clk) begin

	if (!rst_n)
		expected_rdata <= 'b1;
	//else if (rst_or_init_txn_pulse)
		//m_axi_wdata <= m_axi_wdata; //'b1;

	else if (rst_or_init_txn_pulse) // || m_axi_rlast)
		expected_rdata <= m_axi_rdata; //expected_rdata; //'b1;
	else if (m_axi_rvalid && m_axi_rready)
		expected_rdata <= expected_rdata + 1;
end

// *****
//----------------------------------
//   Example design error register
//----------------------------------
//Register and hold any data mismatches, or read/write interface errors 
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse) begin
		error_reg <= 1'b0;
	end else if (read_mismatch || write_resp_error || read_resp_error) begin
		error_reg <= 1'b1;
	end
end

// -------------------------------------
// ***** Example design throttling *****
// -------------------------------------

// For maximum port throughput, this user example code will try to allow
// each channel to run as independently and as quickly as possible.

// However, there are times when the flow of data needs to be throtted by
// the user application. This example application requires that data is
// not read before it is written and that the write channels do not
// advance beyond an arbitrary threshold (say to prevent an 
// overrun of the current read address by the write address).

// From AXI4 Specification, 13.13.1: "If a master requires ordering between
// read and write transactions, it must ensure that a response is received 
// for the previous transaction before issuing the next transaction."

// This example accomplishes this user application throttling through:
// -Reads wait for writes to fully complete
// -Address writes wait when not read + issued transaction counts pass 
// a parameterized threshold
// -Writes wait when a not read + active data burst count pass 
// a parameterized threshold





// Example State machine to initialize counter, initialize write transactions,
// initialize read transactions and comparison of read data with the 
// written data words.

enum reg [1:0] 
{
	IDLE = 2'b00, // This state initiates AXI4Lite transaction after the state machine changes state to INIT_WRITE when there is 0 to 1 transition on init_axi_txn
	INIT_WRITE = 2'b01, // This state initializes write transaction, once writes are done, the state machine changes state to INIT_READ
	INIT_READ = 2'b10, // This state initializes read transaction once reads are done, the state machine changes state to INIT_COMPARE
	INIT_COMPARE = 2'b11 // This state issues the status of comparison of the written data with the read data
} mst_exec_state;

assign exec_state = mst_exec_state;

// implement master command interface state machine
always_ff@(posedge clk) begin
	if (!rst_n) begin // All the signals are assigned default values under reset condition
		mst_exec_state <= IDLE;
		start_single_burst_write <= 1'b0;
		start_single_burst_read <= 1'b0;
		compare_done <= 1'b0;
		error_out <= 1'b0;
	end else begin

		// state transition
		case (mst_exec_state)

		// This state is responsible to wait for user defined C_M_START_COUNT number of clock cycles.
		IDLE:
			if (init_txn_pulse) begin
				mst_exec_state <= INIT_WRITE;
				error_out <= 1'b0;
				compare_done <= 1'b0;
			end else begin
				mst_exec_state <= IDLE;
			end

		// This state is responsible to issue start_single_write pulse to
		// initiate a write transaction. Write transactions will be
		// issued until burst_write_active signal is asserted.
		// write controller
		INIT_WRITE:
			if (writes_done) begin
				mst_exec_state <= INIT_READ;
			end else begin
				mst_exec_state  <= INIT_WRITE;
				if (~m_axi_awvalid && ~start_single_burst_write && ~burst_write_active) begin
					start_single_burst_write <= 1'b1;
				end else begin
					start_single_burst_write <= 1'b0; // Negate to generate a pulse
				end   
			end

		// This state is responsible to issue start_single_read pulse to
		// initiate a read transaction. Read transactions will be
		// issued until burst_read_active signal is asserted.
		// read controller
		INIT_READ:
			if (reads_done) begin
				mst_exec_state <= INIT_COMPARE;
			end else begin
				mst_exec_state  <= INIT_READ;
				if (~m_axi_arvalid && ~burst_read_active && ~start_single_burst_read) begin
					start_single_burst_read <= 1'b1;
				end else begin
					start_single_burst_read <= 1'b0; // Negate to generate a pulse
				end
			end

		// This state is responsible to issue the state of comparison
		// of written data with the read data. If no error flags are set,
		// compare_done signal will be asseted to indicate success.
		INIT_COMPARE:
			//if (~error_reg) 
			begin
				error_out <= error_reg;
				mst_exec_state <= IDLE;
				compare_done <= 1'b1;
			end

		default:
			begin
				mst_exec_state  <= IDLE;
			end

		endcase
	end
end //MASTER_EXECUTION_PROC

// burst_write_active signal is asserted when there is a burst write transaction
// is initiated by the assertion of start_single_burst_write. burst_write_active
// signal remains asserted until the burst write is accepted by the slave
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse)
		burst_write_active <= 1'b0;
	else if (start_single_burst_write) //The burst_write_active is asserted when a write burst transaction is initiated
		burst_write_active <= 1'b1;
	else if (m_axi_bvalid && m_axi_bready)
		burst_write_active <= 1'b0;
end

// burst_read_active signal is asserted when there is a burst write transaction
// is initiated by the assertion of start_single_burst_write. start_single_burst_read
// signal remains asserted until the burst read is accepted by the master
always_ff@(posedge clk) begin
	if (rst_or_init_txn_pulse)
		burst_read_active <= 1'b0;
	else if (start_single_burst_read) //The burst_write_active is asserted when a write burst transaction is initiated
		burst_read_active <= 1'b1;
	else if (m_axi_rvalid && m_axi_rready && m_axi_rlast)
		burst_read_active <= 1'b0;
end

endmodule : fifo_dma_controller
