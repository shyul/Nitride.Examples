`timescale 1 ns / 1 ps

module hpm_channel_splitter (

	// ***** Master Write Address (AW) Channel *****
	output logic [47:0]		hpm_awaddr, // Master Interface Write Address
	output logic [7:0]		hpm_awlen, // Burst length. The burst length gives the exact number of transfers in a burst
	output logic [2:0]		hpm_awsize, // Burst size. This signal indicates the size of each transfer in the burst
	output logic [1:0]		hpm_awburst, // Burst type. The burst type and the size information, determine how the address for each transfer within the burst is calculated.
	output logic			hpm_awvalid, // Write address valid. This signal indicates that the channel is signaling valid write address and control information.
	input logic				hpm_awready, // Write address ready. This signal indicates that the slave is ready to accept an address and associated control signals
	// [NO USE]=====================================
	output logic [0:0]		hpm_awid, // [NO USE] Master Interface Write Address ID
	output logic			hpm_awlock, // [NO USE] Lock type. Provides additional information about the atomic characteristics of the transfer.
	output logic [3:0]		hpm_awcache, // [FIXED 4'b0010] Memory type. This signal indicates how transactions are required to progress through a system.
	output logic [2:0]		hpm_awprot, // [NO USE] Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
	output logic [3:0]		hpm_awqos, // [NO USE] Quality of Service, QoS identifier sent for each write transaction.
	// =============================================

	// ******* Master Write Data (W) Channel *******
	output logic [127:0]	hpm_wdata,
	output logic			hpm_wlast, // Write last. This signal indicates the last transfer in a write burst.
	output logic			hpm_wvalid, // Write valid. This signal indicates that valid write data and strobes are available
	input logic				hpm_wready, // Write ready. This signal indicates that the slave can accept the write data.
	// [NO USE]=====================================
	output logic [15:0]		hpm_wstrb, // [FIXED 'b1111] Write strobes. This signal indicates which byte lanes hold valid data. There is one write strobe bit for each eight bits of the write data bus.
	
	// =============================================

	// ***** Master Write Response (B) Channel *****
	input logic [1:0]		hpm_bresp, // Write response. This signal indicates the status of the write transaction.
	input logic				hpm_bvalid, // Write response valid. This signal indicates that the channel is signaling a valid write response.
	output logic			hpm_bready, // Response ready. This signal indicates that the master can accept a write response.
	// [NO USE]=====================================
	input logic [0:0]		hpm_bid,
	// =============================================

	// ****** Master Read Address (AR) Channel ******
	output logic [47:0]		hpm_araddr, // Read address. This signal indicates the initial address of a read burst transaction.
	output logic [7:0]		hpm_arlen, // Burst length. The burst length gives the exact number of transfers in a burst
	output logic [2:0]		hpm_arsize, // Burst size. This signal indicates the size of each transfer in the burst
	output logic [1:0]		hpm_arburst, // Burst type. The burst type and the size information, determine how the address for each transfer within the burst is calculated.
	output logic			hpm_arvalid, // Read address valid. This signal indicates that the channel is signaling valid read address and control information
	input logic				hpm_arready, // Read address ready. This signal indicates that the slave is ready to accept an address and associated control signals
	// [NO USE]======================================
	output logic [0:0]		hpm_arid, // [NO USE]
	output logic			hpm_arlock, // [NO USE] Lock type. Provides additional information about the atomic characteristics of the transfer.
	output logic [3:0]		hpm_arcache, // [FIXED  4'b0010] Memory type. This signal indicates how transactions are required to progress through a system.
	output logic [2:0]		hpm_arprot, // [NO USE] Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
	output logic [3:0]		hpm_arqos, // [NO USE] Quality of Service, QoS identifier sent for each read transaction
	// ==============================================

	// ****** Master Read Data (R) Channel ********
	input logic [127:0]		hpm_rdata, // Master Read Data
	input logic [1:0]		hpm_rresp, // Read response. This signal indicates the status of the read transfer
	input logic				hpm_rlast, // Read last. This signal indicates the last transfer in a read burst
	input logic				hpm_rvalid, // Read valid. This signal indicates that the channel is signaling the required read data.
	output logic			hpm_rready, // Read ready. This signal indicates that the master can accept the read data and response information.
	// [NO USE]====================================
	input logic [0:0]		hpm_rid, // [NO USE] Read ID tag. This signal is the identification tag for the read data group of signals generated by the slave.
	// ============================================

	// =============================================
	// =============================================
	// =============================================

	// ***** Master Write Address (AW) Channel *****
	input logic [47:0]		rx_channel_awaddr, // Master Interface Write Address
	input logic [7:0]		rx_channel_awlen, // Burst length. The burst length gives the exact number of transfers in a burst
	input logic				rx_channel_awvalid, // Write address valid. This signal indicates that the channel is signaling valid write address and control information.
	output logic			rx_channel_awready, // Write address ready. This signal indicates that the slave is ready to accept an address and associated control signals

	// ******* Master Write Data (W) Channel *******
	input logic [127:0]		rx_channel_wdata,
	input logic				rx_channel_wlast, // Write last. This signal indicates the last transfer in a write burst.
	input logic				rx_channel_wvalid, // Write valid. This signal indicates that valid write data and strobes are available
	output logic			rx_channel_wready, // Write ready. This signal indicates that the slave can accept the write data.

	// ***** Master Write Response (B) Channel *****
	output logic [1:0]		rx_channel_bresp, // Write response. This signal indicates the status of the write transaction.
	output logic			rx_channel_bvalid, // Write response valid. This signal indicates that the channel is signaling a valid write response.
	input logic				rx_channel_bready, // Response ready. This signal indicates that the master can accept a write response.

	// =============================================
	// =============================================
	// =============================================

	input logic [47:0]		tx_channel_araddr, // Read address. This signal indicates the initial address of a read burst transaction.
	input logic [7:0]		tx_channel_arlen, // Burst length. The burst length gives the exact number of transfers in a burst
	input logic				tx_channel_arvalid, // Read address valid. This signal indicates that the channel is signaling valid read address and control information
	output logic			tx_channel_arready, // Read address ready. This signal indicates that the slave is ready to accept an address and associated control signals

	// ****** Master Read Data (R) Channel ********
	output logic [127:0]	tx_channel_rdata, // Master Read Data
	output logic [1:0]		tx_channel_rresp, // Read response. This signal indicates the status of the read transfer
	output logic			tx_channel_rlast, // Read last. This signal indicates the last transfer in a read burst
	output logic			tx_channel_rvalid, // Read valid. This signal indicates that the channel is signaling the required read data.
	input logic				tx_channel_rready // Read ready. This signal indicates that the master can accept the read data and response information.

);

assign	hpm_awid = 1'b0;
assign	hpm_awsize = 3'h4; //$clog2(DATA_BYTES_COUNT); //clogb2((DATA_WIDTH/8)-1); // Size should be DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used
assign	hpm_awburst = 2'b01; // INCR burst type is usually used, except for keyhole bursts
assign	hpm_awlock = 1'b0;
assign	hpm_awcache = 4'b0010; // Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache.
assign	hpm_awprot = 3'h0;
assign	hpm_awqos	= 4'h0;
assign 	hpm_awaddr = rx_channel_awaddr;
assign	hpm_awlen = rx_channel_awlen;
assign	hpm_awvalid = rx_channel_awvalid;
assign	rx_channel_awready = hpm_awready;

assign	hpm_wstrb = 16'hFFFF;
assign	hpm_wdata = rx_channel_wdata;
assign	hpm_wlast = rx_channel_wlast;
assign	hpm_wvalid = rx_channel_wvalid;
assign	rx_channel_wready =	hpm_wready;

assign	rx_channel_bresp = hpm_bresp;
assign	rx_channel_bvalid = hpm_bvalid;
assign	hpm_bready = rx_channel_bready;

assign	hpm_arid = 'h0;
assign	hpm_arsize = 3'h4; //$clog2(DATA_BYTES_COUNT); //clogb2((DATA_WIDTH/8)-1); //Size should be DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
assign	hpm_arburst = 2'b01; // INCR burst type is usually used, except for keyhole bursts
assign	hpm_arlock = 1'b0;
assign	hpm_arcache = 4'b0010; // Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache.
assign	hpm_arprot = 3'h0;
assign	hpm_arqos = 4'h0;
assign	hpm_araddr = tx_channel_araddr;
assign	hpm_arlen = tx_channel_arlen;
assign	hpm_arvalid	= tx_channel_arvalid, // Read address valid. This signal indicates that the channel is signaling valid read address and control information
assign	tx_channel_arready = hpm_arready;

assign	tx_channel_rdata = hpm_rdata;
assign	tx_channel_rresp = hpm_rresp;
assign	tx_channel_rlast = hpm_rlast;
assign	tx_channel_rvalid = hpm_rvalid;
assign	hpm_rready = tx_channel_rready;

endmodule : hpm_channel_splitter
