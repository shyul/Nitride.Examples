`timescale 1 ns / 1 ps

module data_path_regs # (

	parameter integer DEFAULT_WRITE_ADDRESS = 'h10000000,
	parameter integer DEFAULT_READ_ADDRESS = 'h20000000,
	parameter integer DEFAULT_BURST_COUNT = 8,
	parameter integer DEFAULT_BURST_LEN = 16,

	) (

	output reg [47:0]		write_base_address,
	output reg [31:0]		write_burst_count,
	output reg [8:0]		write_burst_len,

	output reg [47:0]		read_base_address,
	output reg [31:0]		read_burst_count, // burst_count * (burst_len * 16 bytes), unit is bytes, round up against (burst_len * 16 bytes)
	output reg [8:0]		read_burst_len,



	// =============================================
	// =============================================
	
	input logic				aclk, // Global Clock Signal.
	input logic				aresetn, // Global Reset Singal. This Signal is Active Low

	// ********************************************
	// ********************************************
	// ************ Slave AXI for CSR *************
	// ********************************************
	// ********************************************
 
	// ***** Slave Write Address (AW) Channel *****
	input logic [5:0]		s_axi_awaddr, // 8 bit aligned address (issued by master, acceped by Slave)
	input logic [2:0]		s_axi_awprot, // Protection type, indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
	input logic				s_axi_awvalid, // Write address valid. This signal indicates that the master signaling valid write address and control information.
	output reg				s_axi_awready, // Write address ready. This signal indicates that the slave is ready to accept an address and associated control signals.
	// ============================================

	// ******* Slave Write Data (W) Channel *******
	input logic [31:0]		s_axi_wdata, // Write data (issued by master, acceped by Slave) 
	input logic [3:0]  		s_axi_wstrb, // Write strobes, indicates which byte lanes hold valid data. There is one write strobe bit for each eight bits of the write data bus.
	input logic				s_axi_wvalid, // valid, indicates that valid write data and strobes are available.
	output reg 				s_axi_wready, // Write ready. This signal indicates that the slave can accept the write data.
	// ============================================

	// ***** Slave Write Response (B) Channel *****
	output reg [1:0]		s_axi_bresp, // This signal indicates the status of the write transaction.
	output reg				s_axi_bvalid, // Write response valid. This signal indicates that the channel is signaling a valid write response.
	input logic				s_axi_bready, // Response ready. This signal indicates that the master can accept a write response.
	// ============================================

	// ****** Slave Read Address (AR) Channel ******
	input logic [5:0]		s_axi_araddr, // Read address (issued by master, acceped by Slave)
	input logic [2:0]		s_axi_arprot, // Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
	input logic				s_axi_arvalid, // Read address valid. This signal indicates that the channel is signaling valid read address and control information.
	output reg				s_axi_arready, // Read address ready. This signal indicates that the slave is ready to accept an address and associated control signals.
	// =============================================

	// ****** Slave Read Data (R) Channel ********
	output reg [31:0]		s_axi_rdata, // Read data (issued by slave)
	output reg [1:0]		s_axi_rresp, // Read response. This signal indicates the status of the read transfer.
	output reg							s_axi_rvalid, // Read valid. This signal indicates that the channel is signaling the required read data.
	input logic							s_axi_rready // Read ready. This signal indicates that the master can accept the read data and response information.
	// ===========================================

);

wire	clk = aclk; //aclk;
wire	rst_n = aresetn; //aresetn;

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
		read_burst_count <= DEFAULT_BURST_COUNT;
		read_burst_len <= DEFAULT_BURST_LEN;

		single_write_trigger <= 1'b0;
		single_read_trigger <= 1'b0;
		loop_read_enable <= 1'b0;

	end else begin
		if (s_axi_reg_write_enable && s_axi_wstrb == 4'b1111) begin
			case(s_awaddr[5:2])

				4'h0: read_base_address[31:0] <= s_axi_wdata;
				4'h1: read_base_address[47:32] <= s_axi_wdata[15:0];
				4'h2: read_burst_count <= s_axi_wdata;
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
				4'h2: s_axi_rdata <= read_burst_count;
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

endmodule : data_path_regs
