// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: merckgroup.com:user:data_path_dmac:1.01
// IP Revision: 1

(* X_CORE_INFO = "data_path_dmac,Vivado 2020.2.2" *)
(* CHECK_LICENSE_TYPE = "top_data_path_dmac_0_0,data_path_dmac,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module top_data_path_dmac_0_0 (
  ilamaxi_arready,
  ilamaxi_arvalid,
  ilamaxi_rready,
  ilamaxi_rvalid,
  ilamaxi_rlast,
  ilamaxi_awready,
  ilamaxi_awvalid,
  ilamaxi_wready,
  ilamaxi_wvalid,
  ilamaxi_wlast,
  ilamaxi_bvalid,
  ilamaxi_bready,
  ilamaxi_bresp,
  ilamaxi_araddr,
  ilamaxi_awaddr,
  ilamaxi_arlen,
  ilamaxi_awlen,
  ilamaxi_rdata,
  ilamaxi_wdata,
  ila_tx_ready,
  ila_tx_valid,
  ila_tx_prog_empty,
  ila_rx_ready,
  ila_rx_valid,
  ila_rx_fifo_data_ready,
  ila_tx_data,
  ila_rx_data,
  ila_read_state,
  ila_read_bresp,
  ila_tx_fifo_wren,
  ila_read_active,
  ila_read_burst_count,
  ila_read_index,
  ila_read_ddr_occupation,
  ila_read_burst_tick_ack,
  ila_read_access_tick_ack,
  ila_read_ddr_has_data,
  ila_read_ddr_full,
  ila_write_state,
  ila_write_bresp,
  ila_rx_fifo_rden,
  ila_write_active,
  ila_write_burst_counter,
  ila_write_index,
  ila_write_ddr_occupation,
  ila_write_burst_tick_ack,
  ila_write_access_tick_ack,
  ila_write_ddr_has_space,
  ila_write_ddr_full,
  aclk,
  aresetn,
  write_enable,
  write_busy,
  write_base_address,
  write_burst_count,
  write_burst_len,
  write_ddr_size,
  write_bresp,
  write_burst_tick,
  write_total_burst_count,
  write_current_burst_address,
  write_access_size_bytes,
  write_access_tick,
  write_overflow_ins,
  write_overflow_count,
  read_enable,
  read_busy,
  read_base_address,
  read_burst_count,
  read_burst_len,
  read_ddr_size,
  read_burst_tick,
  read_total_burst_count,
  read_current_burst_address,
  read_access_size_bytes,
  read_access_tick,
  read_underflow_ins,
  read_underflow_count,
  s_axis_rx_tdata,
  s_axis_rx_tvalid,
  s_axis_rx_tready,
  rx_fifo_data_ready,
  m_axis_tx_tdata,
  m_axis_tx_tvalid,
  m_axis_tx_tready,
  tx_fifo_has_space,
  tx_fifo_empty,
  m_axi_awaddr,
  m_axi_awlen,
  m_axi_awsize,
  m_axi_awburst,
  m_axi_awvalid,
  m_axi_awready,
  m_axi_awlock,
  m_axi_awcache,
  m_axi_awprot,
  m_axi_awqos,
  m_axi_wdata,
  m_axi_wlast,
  m_axi_wvalid,
  m_axi_wready,
  m_axi_wstrb,
  m_axi_bresp,
  m_axi_bvalid,
  m_axi_bready,
  m_axi_araddr,
  m_axi_arlen,
  m_axi_arsize,
  m_axi_arburst,
  m_axi_arvalid,
  m_axi_arready,
  m_axi_arlock,
  m_axi_arcache,
  m_axi_arprot,
  m_axi_arqos,
  m_axi_rdata,
  m_axi_rresp,
  m_axi_rlast,
  m_axi_rvalid,
  m_axi_rready
);

output wire ilamaxi_arready;
output wire ilamaxi_arvalid;
output wire ilamaxi_rready;
output wire ilamaxi_rvalid;
output wire ilamaxi_rlast;
output wire ilamaxi_awready;
output wire ilamaxi_awvalid;
output wire ilamaxi_wready;
output wire ilamaxi_wvalid;
output wire ilamaxi_wlast;
output wire ilamaxi_bvalid;
output wire ilamaxi_bready;
output wire [1 : 0] ilamaxi_bresp;
output wire [47 : 0] ilamaxi_araddr;
output wire [47 : 0] ilamaxi_awaddr;
output wire [7 : 0] ilamaxi_arlen;
output wire [7 : 0] ilamaxi_awlen;
output wire [127 : 0] ilamaxi_rdata;
output wire [127 : 0] ilamaxi_wdata;
output wire ila_tx_ready;
output wire ila_tx_valid;
output wire ila_tx_prog_empty;
output wire ila_rx_ready;
output wire ila_rx_valid;
output wire ila_rx_fifo_data_ready;
output wire [127 : 0] ila_tx_data;
output wire [127 : 0] ila_rx_data;
output wire [2 : 0] ila_read_state;
output wire [1 : 0] ila_read_bresp;
output wire ila_tx_fifo_wren;
output wire ila_read_active;
output wire [32 : 0] ila_read_burst_count;
output wire [8 : 0] ila_read_index;
output wire [31 : 0] ila_read_ddr_occupation;
output wire ila_read_burst_tick_ack;
output wire ila_read_access_tick_ack;
output wire ila_read_ddr_has_data;
output wire ila_read_ddr_full;
output wire [2 : 0] ila_write_state;
output wire [1 : 0] ila_write_bresp;
output wire ila_rx_fifo_rden;
output wire ila_write_active;
output wire [31 : 0] ila_write_burst_counter;
output wire [8 : 0] ila_write_index;
output wire [31 : 0] ila_write_ddr_occupation;
output wire ila_write_burst_tick_ack;
output wire ila_write_access_tick_ack;
output wire ila_write_ddr_has_space;
output wire ila_write_ddr_full;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_tx:s_axis_rx:m_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN top_aclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
input wire write_enable;
output wire write_busy;
input wire [47 : 0] write_base_address;
input wire [31 : 0] write_burst_count;
input wire [8 : 0] write_burst_len;
input wire [31 : 0] write_ddr_size;
output wire [1 : 0] write_bresp;
output wire write_burst_tick;
output wire [31 : 0] write_total_burst_count;
output wire [31 : 0] write_current_burst_address;
input wire [16 : 0] write_access_size_bytes;
input wire write_access_tick;
output wire write_overflow_ins;
output wire [7 : 0] write_overflow_count;
input wire read_enable;
output wire read_busy;
input wire [47 : 0] read_base_address;
input wire [31 : 0] read_burst_count;
input wire [8 : 0] read_burst_len;
input wire [31 : 0] read_ddr_size;
output wire read_burst_tick;
output wire [31 : 0] read_total_burst_count;
output wire [31 : 0] read_current_burst_address;
input wire [16 : 0] read_access_size_bytes;
input wire read_access_tick;
output wire read_underflow_ins;
output wire [7 : 0] read_underflow_count;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx TDATA" *)
input wire [127 : 0] s_axis_rx_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx TVALID" *)
input wire s_axis_rx_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rx, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN top_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx TREADY" *)
output wire s_axis_rx_tready;
input wire rx_fifo_data_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TDATA" *)
output wire [127 : 0] m_axis_tx_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TVALID" *)
output wire m_axis_tx_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_tx, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN top_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TREADY" *)
input wire m_axis_tx_tready;
input wire tx_fifo_has_space;
input wire tx_fifo_empty;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *)
output wire [47 : 0] m_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLEN" *)
output wire [7 : 0] m_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWSIZE" *)
output wire [2 : 0] m_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWBURST" *)
output wire [1 : 0] m_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *)
output wire m_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *)
input wire m_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLOCK" *)
output wire m_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWCACHE" *)
output wire [3 : 0] m_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *)
output wire [2 : 0] m_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWQOS" *)
output wire [3 : 0] m_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *)
output wire [127 : 0] m_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *)
output wire m_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *)
output wire m_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *)
input wire m_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *)
output wire [15 : 0] m_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *)
input wire [1 : 0] m_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *)
input wire m_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *)
output wire m_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *)
output wire [47 : 0] m_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLEN" *)
output wire [7 : 0] m_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARSIZE" *)
output wire [2 : 0] m_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARBURST" *)
output wire [1 : 0] m_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *)
output wire m_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *)
input wire m_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLOCK" *)
output wire m_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARCACHE" *)
output wire [3 : 0] m_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *)
output wire [2 : 0] m_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARQOS" *)
output wire [3 : 0] m_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *)
input wire [127 : 0] m_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *)
input wire [1 : 0] m_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RLAST" *)
input wire m_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *)
input wire m_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 48, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN top_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BI\
TS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *)
output wire m_axi_rready;

  data_path_dmac inst (
    .ilamaxi_arready(ilamaxi_arready),
    .ilamaxi_arvalid(ilamaxi_arvalid),
    .ilamaxi_rready(ilamaxi_rready),
    .ilamaxi_rvalid(ilamaxi_rvalid),
    .ilamaxi_rlast(ilamaxi_rlast),
    .ilamaxi_awready(ilamaxi_awready),
    .ilamaxi_awvalid(ilamaxi_awvalid),
    .ilamaxi_wready(ilamaxi_wready),
    .ilamaxi_wvalid(ilamaxi_wvalid),
    .ilamaxi_wlast(ilamaxi_wlast),
    .ilamaxi_bvalid(ilamaxi_bvalid),
    .ilamaxi_bready(ilamaxi_bready),
    .ilamaxi_bresp(ilamaxi_bresp),
    .ilamaxi_araddr(ilamaxi_araddr),
    .ilamaxi_awaddr(ilamaxi_awaddr),
    .ilamaxi_arlen(ilamaxi_arlen),
    .ilamaxi_awlen(ilamaxi_awlen),
    .ilamaxi_rdata(ilamaxi_rdata),
    .ilamaxi_wdata(ilamaxi_wdata),
    .ila_tx_ready(ila_tx_ready),
    .ila_tx_valid(ila_tx_valid),
    .ila_tx_prog_empty(ila_tx_prog_empty),
    .ila_rx_ready(ila_rx_ready),
    .ila_rx_valid(ila_rx_valid),
    .ila_rx_fifo_data_ready(ila_rx_fifo_data_ready),
    .ila_tx_data(ila_tx_data),
    .ila_rx_data(ila_rx_data),
    .ila_read_state(ila_read_state),
    .ila_read_bresp(ila_read_bresp),
    .ila_tx_fifo_wren(ila_tx_fifo_wren),
    .ila_read_active(ila_read_active),
    .ila_read_burst_count(ila_read_burst_count),
    .ila_read_index(ila_read_index),
    .ila_read_ddr_occupation(ila_read_ddr_occupation),
    .ila_read_burst_tick_ack(ila_read_burst_tick_ack),
    .ila_read_access_tick_ack(ila_read_access_tick_ack),
    .ila_read_ddr_has_data(ila_read_ddr_has_data),
    .ila_read_ddr_full(ila_read_ddr_full),
    .ila_write_state(ila_write_state),
    .ila_write_bresp(ila_write_bresp),
    .ila_rx_fifo_rden(ila_rx_fifo_rden),
    .ila_write_active(ila_write_active),
    .ila_write_burst_counter(ila_write_burst_counter),
    .ila_write_index(ila_write_index),
    .ila_write_ddr_occupation(ila_write_ddr_occupation),
    .ila_write_burst_tick_ack(ila_write_burst_tick_ack),
    .ila_write_access_tick_ack(ila_write_access_tick_ack),
    .ila_write_ddr_has_space(ila_write_ddr_has_space),
    .ila_write_ddr_full(ila_write_ddr_full),
    .aclk(aclk),
    .aresetn(aresetn),
    .write_enable(write_enable),
    .write_busy(write_busy),
    .write_base_address(write_base_address),
    .write_burst_count(write_burst_count),
    .write_burst_len(write_burst_len),
    .write_ddr_size(write_ddr_size),
    .write_bresp(write_bresp),
    .write_burst_tick(write_burst_tick),
    .write_total_burst_count(write_total_burst_count),
    .write_current_burst_address(write_current_burst_address),
    .write_access_size_bytes(write_access_size_bytes),
    .write_access_tick(write_access_tick),
    .write_overflow_ins(write_overflow_ins),
    .write_overflow_count(write_overflow_count),
    .read_enable(read_enable),
    .read_busy(read_busy),
    .read_base_address(read_base_address),
    .read_burst_count(read_burst_count),
    .read_burst_len(read_burst_len),
    .read_ddr_size(read_ddr_size),
    .read_burst_tick(read_burst_tick),
    .read_total_burst_count(read_total_burst_count),
    .read_current_burst_address(read_current_burst_address),
    .read_access_size_bytes(read_access_size_bytes),
    .read_access_tick(read_access_tick),
    .read_underflow_ins(read_underflow_ins),
    .read_underflow_count(read_underflow_count),
    .s_axis_rx_tdata(s_axis_rx_tdata),
    .s_axis_rx_tvalid(s_axis_rx_tvalid),
    .s_axis_rx_tready(s_axis_rx_tready),
    .rx_fifo_data_ready(rx_fifo_data_ready),
    .m_axis_tx_tdata(m_axis_tx_tdata),
    .m_axis_tx_tvalid(m_axis_tx_tvalid),
    .m_axis_tx_tready(m_axis_tx_tready),
    .tx_fifo_has_space(tx_fifo_has_space),
    .tx_fifo_empty(tx_fifo_empty),
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awlen(m_axi_awlen),
    .m_axi_awsize(m_axi_awsize),
    .m_axi_awburst(m_axi_awburst),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awready(m_axi_awready),
    .m_axi_awlock(m_axi_awlock),
    .m_axi_awcache(m_axi_awcache),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awqos(m_axi_awqos),
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wlast(m_axi_wlast),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_wready(m_axi_wready),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_bresp(m_axi_bresp),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_bready(m_axi_bready),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arlen(m_axi_arlen),
    .m_axi_arsize(m_axi_arsize),
    .m_axi_arburst(m_axi_arburst),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_arready(m_axi_arready),
    .m_axi_arlock(m_axi_arlock),
    .m_axi_arcache(m_axi_arcache),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arqos(m_axi_arqos),
    .m_axi_rdata(m_axi_rdata),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rlast(m_axi_rlast),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_rready(m_axi_rready)
  );
endmodule
