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


// IP VLNV: merckgroup.com:user:rx_fifo_axis:1.02
// IP Revision: 1

(* X_CORE_INFO = "rx_fifo_axis,Vivado 2021.1.1" *)
(* CHECK_LICENSE_TYPE = "top_rx_fifo_axis_0_0,rx_fifo_axis,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module top_rx_fifo_axis_0_0 (
  aresetn,
  aclk,
  rx_enable,
  data_format,
  data_ready,
  data_clk,
  data_valid,
  data_in,
  m_axis_rx_tdata,
  m_axis_rx_tvalid,
  m_axis_rx_tready,
  fifo_srst,
  fifo_prog_full,
  fifo_rd_rst_busy,
  fifo_rd_clk,
  fifo_rd_data,
  fifo_rd_en,
  fifo_rd_empty,
  fifo_rd_valid,
  fifo_wr_rst_busy,
  fifo_wr_clk,
  fifo_wr_data,
  fifo_wr_en,
  fifo_wr_full,
  ila_data_write_state,
  ila_wr_data_buf
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_rx, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN top_aclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
input wire rx_enable;
input wire [2 : 0] data_format;
output wire data_ready;
input wire data_clk;
input wire data_valid;
input wire [127 : 0] data_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TDATA" *)
output wire [127 : 0] m_axis_rx_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TVALID" *)
output wire m_axis_rx_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rx, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN top_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TREADY" *)
input wire m_axis_rx_tready;
output wire fifo_srst;
input wire fifo_prog_full;
input wire fifo_rd_rst_busy;
output wire fifo_rd_clk;
input wire [127 : 0] fifo_rd_data;
output wire fifo_rd_en;
input wire fifo_rd_empty;
input wire fifo_rd_valid;
input wire fifo_wr_rst_busy;
output wire fifo_wr_clk;
output wire [127 : 0] fifo_wr_data;
output wire fifo_wr_en;
input wire fifo_wr_full;
output wire [7 : 0] ila_data_write_state;
output wire [119 : 0] ila_wr_data_buf;

  rx_fifo_axis inst (
    .aresetn(aresetn),
    .aclk(aclk),
    .rx_enable(rx_enable),
    .data_format(data_format),
    .data_ready(data_ready),
    .data_clk(data_clk),
    .data_valid(data_valid),
    .data_in(data_in),
    .m_axis_rx_tdata(m_axis_rx_tdata),
    .m_axis_rx_tvalid(m_axis_rx_tvalid),
    .m_axis_rx_tready(m_axis_rx_tready),
    .fifo_srst(fifo_srst),
    .fifo_prog_full(fifo_prog_full),
    .fifo_rd_rst_busy(fifo_rd_rst_busy),
    .fifo_rd_clk(fifo_rd_clk),
    .fifo_rd_data(fifo_rd_data),
    .fifo_rd_en(fifo_rd_en),
    .fifo_rd_empty(fifo_rd_empty),
    .fifo_rd_valid(fifo_rd_valid),
    .fifo_wr_rst_busy(fifo_wr_rst_busy),
    .fifo_wr_clk(fifo_wr_clk),
    .fifo_wr_data(fifo_wr_data),
    .fifo_wr_en(fifo_wr_en),
    .fifo_wr_full(fifo_wr_full),
    .ila_data_write_state(ila_data_write_state),
    .ila_wr_data_buf(ila_wr_data_buf)
  );
endmodule
