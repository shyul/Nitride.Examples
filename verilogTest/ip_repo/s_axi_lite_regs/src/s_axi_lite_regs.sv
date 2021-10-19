`timescale 1ns / 1ps

module s_axi_lite_regs #(

	parameter integer ADDR_WIDTH = 6, // 8-bit aligned
	parameter integer DATA_WIDTH = 32,
	parameter integer DATA_BYTES_COUNT = (DATA_WIDTH/8),

	parameter integer REGS_LSB = $clog2(DATA_BYTES_COUNT),
	parameter integer REGS_WIDTH = ADDR_WIDTH-REGS_LSB,
	parameter integer REGS_DEPTH = 2 ** REGS_WIDTH

	) (

	// ********** Global Clock and Reset **********
	input logic							aclk, // Global Clock Signal.
	input logic							aresetn, // Global Reset Singal. This Signal is Active Low
	// ============================================
	
	// ***** Slave Write Address (AW) Channel *****
	input logic [ADDR_WIDTH-1:0]		s_axi_awaddr, // 8 bit aligned address (issued by master, acceped by Slave)
	input logic [2:0]					s_axi_awprot, // Protection type, indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
	input logic							s_axi_awvalid, // Write address valid. This signal indicates that the master signaling valid write address and control information.
	output reg							s_axi_awready, // Write address ready. This signal indicates that the slave is ready to accept an address and associated control signals.
	// ============================================

	// ******* Slave Write Data (W) Channel *******
	input logic [DATA_WIDTH-1:0]		s_axi_wdata, // Write data (issued by master, acceped by Slave) 
	input logic [DATA_BYTES_COUNT-1:0]	s_axi_wstrb, // Write strobes, indicates which byte lanes hold valid data. There is one write strobe bit for each eight bits of the write data bus.
	input logic							s_axi_wvalid, // valid, indicates that valid write data and strobes are available.
	output reg 							s_axi_wready, // Write ready. This signal indicates that the slave can accept the write data.
	// ============================================

	// ***** Slave Write Response (B) Channel *****
	output reg [1:0]					s_axi_bresp, // This signal indicates the status of the write transaction.
	output reg							s_axi_bvalid, // Write response valid. This signal indicates that the channel is signaling a valid write response.
	input logic							s_axi_bready, // Response ready. This signal indicates that the master can accept a write response.
	// ============================================

	// ****** Slave Read Address (AR) Channel ******
	input logic [ADDR_WIDTH-1:0]		s_axi_araddr, // Read address (issued by master, acceped by Slave)
	input logic [2:0]					s_axi_arprot, // Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
	input logic							s_axi_arvalid, // Read address valid. This signal indicates that the channel is signaling valid read address and control information.
	output reg							s_axi_arready, // Read address ready. This signal indicates that the slave is ready to accept an address and associated control signals.
	// =============================================

	// ****** Slave Read Data (R) Channel ********
	output reg [DATA_WIDTH-1:0]			s_axi_rdata, // Read data (issued by slave)
	output reg  [1:0]					s_axi_rresp, // Read response. This signal indicates the status of the read transfer.
	output reg							s_axi_rvalid, // Read valid. This signal indicates that the channel is signaling the required read data.
	input logic							s_axi_rready, // Read ready. This signal indicates that the master can accept the read data and response information.
	// ===========================================

	// Register group
	output reg [DATA_WIDTH-1:0]		regs [REGS_DEPTH-1:0],
	input logic [DATA_WIDTH-1:0]	regs_default_value [REGS_DEPTH-1:0]
);

localparam OKAY = 0'b00;
localparam EXOKAY = 0'b01;
localparam SLVERR = 0'b10;
localparam DECERR = 0'b11;

genvar i;

wire clk = aclk;
wire rst_n = aresetn;

// --------------------------------------------
// ***** Slave Write Address (AW) Channel *****
// --------------------------------------------

// Implement axi_awready generation
// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
// de-asserted when reset is low.

reg addr_write_enable = 1'b1;
reg [ADDR_WIDTH-1:0] 	axi_awaddr = 0;

wire	awvalid_and_wvalid_and_addr_write_enable = s_axi_awvalid && s_axi_wvalid && addr_write_enable;

always_ff @(posedge clk) begin
	if (!rst_n) begin
		s_axi_awready <= 1'b0;
		addr_write_enable <= 1'b1;
		axi_awaddr <= 0;
	end else begin    
		if (~s_axi_awready && awvalid_and_wvalid_and_addr_write_enable) begin
			// slave is ready to accept write address when 
			// there is a valid write address and write data
			// on the write address and data bus. This design 
			// expects no outstanding transactions. 
			s_axi_awready <= 1'b1;
			addr_write_enable <= 1'b0;
			axi_awaddr <= s_axi_awaddr; // Implement axi_awaddr latching: This process is used to latch the address when both S_AXI_AWVALID and S_AXI_WVALID are valid.
		end else if (s_axi_bready && s_axi_bvalid) begin
			addr_write_enable <= 1'b1;
			s_axi_awready <= 1'b0;
		end else begin
			s_axi_awready <= 1'b0;
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
		if (~s_axi_wready && awvalid_and_wvalid_and_addr_write_enable) begin
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

// Implement memory mapped register select and write logic generation
// The write data is accepted and written to memory mapped registers when
// s_axi_awready, s_axi_wvalid, axi_wready and s_axi_wvalid are asserted. Write strobes are used to
// select byte enables of slave registers while writing.
// These registers are cleared when reset (active low) is applied.
// Slave register write enable is asserted when valid address and data are available
// and the slave is ready to accept the write address and write data.
integer		byte_index;
wire		reg_write_enable = s_axi_awready && s_axi_awvalid && s_axi_wready && s_axi_wvalid;

always_ff @(posedge clk) begin
	if (!rst_n) begin
        for (byte_index = 0; byte_index < REGS_DEPTH; byte_index++)
            regs[byte_index] <= regs_default_value[byte_index];
	end else begin
		if (reg_write_enable) begin
			for (byte_index = 0; byte_index < DATA_BYTES_COUNT; byte_index++)
				if (s_axi_wstrb[byte_index]) begin
					regs[axi_awaddr[ADDR_WIDTH-1:REGS_LSB]][(byte_index*8) +: 8] <= s_axi_wdata[(byte_index*8) +: 8];
				end
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
		s_axi_bresp <= OKAY;
	end else begin    
		if (~s_axi_bvalid && reg_write_enable) begin
			s_axi_bvalid <= 1'b1; // indicates a valid write response is available
			s_axi_bresp  <= OKAY; // 'ACK' response // work error responses t.b.d
		end else begin
			if (s_axi_bready && s_axi_bvalid) begin //check if bready is asserted while bvalid is high) //(there is a possibility that bready is always asserted high) 
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
// asserted. axi_araddr is reset to zero on reset assertion.

reg [ADDR_WIDTH-1:0] 		axi_araddr = 0;

always_ff @(posedge clk) begin
	if (!rst_n) begin
		s_axi_arready <= 1'b0;
		axi_araddr <= 0;
	end else begin
		if (~s_axi_arready && s_axi_arvalid) begin
			s_axi_arready <= 1'b1; // indicates that the slave has acceped the valid read address
			axi_araddr <= s_axi_araddr; // Read address latching
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
		s_axi_rresp <= OKAY;
	end else begin    
		//if (s_axi_arready && s_axi_arvalid && ~s_axi_rvalid) begin
		if (reg_read_enable) begin
			// Valid read data is available at the read data bus
			s_axi_rvalid <= 1'b1;
			s_axi_rresp  <= OKAY; // 'OKAY' response
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
			s_axi_rdata <= regs[axi_araddr[ADDR_WIDTH-1:REGS_LSB]]; // register read data
		end
	end
end

endmodule : s_axi_lite_regs
