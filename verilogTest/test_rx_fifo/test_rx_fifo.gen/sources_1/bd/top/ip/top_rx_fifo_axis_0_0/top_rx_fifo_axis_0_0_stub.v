// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
// Date        : Tue Oct 12 20:32:26 2021
// Host        : xu-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/uxli/Documents/Tidalloft/tungsten-grid-dev/unit_test/fifo_dma_controller_test/test_rx_fifo/test_rx_fifo.gen/sources_1/bd/top/ip/top_rx_fifo_axis_0_0/top_rx_fifo_axis_0_0_stub.v
// Design      : top_rx_fifo_axis_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3cg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rx_fifo_axis,Vivado 2021.1.1" *)
module top_rx_fifo_axis_0_0(aresetn, aclk, rx_enable, data_format, 
  data_ready, data_clk, data_valid, data_in, m_axis_rx_tdata, m_axis_rx_tvalid, 
  m_axis_rx_tready, fifo_srst, fifo_prog_full, fifo_rd_rst_busy, fifo_rd_clk, fifo_rd_data, 
  fifo_rd_en, fifo_rd_empty, fifo_rd_valid, fifo_wr_rst_busy, fifo_wr_clk, fifo_wr_data, 
  fifo_wr_en, fifo_wr_full, ila_data_write_state, ila_wr_data_buf)
/* synthesis syn_black_box black_box_pad_pin="aresetn,aclk,rx_enable,data_format[2:0],data_ready,data_clk,data_valid,data_in[127:0],m_axis_rx_tdata[127:0],m_axis_rx_tvalid,m_axis_rx_tready,fifo_srst,fifo_prog_full,fifo_rd_rst_busy,fifo_rd_clk,fifo_rd_data[127:0],fifo_rd_en,fifo_rd_empty,fifo_rd_valid,fifo_wr_rst_busy,fifo_wr_clk,fifo_wr_data[127:0],fifo_wr_en,fifo_wr_full,ila_data_write_state[7:0],ila_wr_data_buf[119:0]" */;
  input aresetn;
  input aclk;
  input rx_enable;
  input [2:0]data_format;
  output data_ready;
  input data_clk;
  input data_valid;
  input [127:0]data_in;
  output [127:0]m_axis_rx_tdata;
  output m_axis_rx_tvalid;
  input m_axis_rx_tready;
  output fifo_srst;
  input fifo_prog_full;
  input fifo_rd_rst_busy;
  output fifo_rd_clk;
  input [127:0]fifo_rd_data;
  output fifo_rd_en;
  input fifo_rd_empty;
  input fifo_rd_valid;
  input fifo_wr_rst_busy;
  output fifo_wr_clk;
  output [127:0]fifo_wr_data;
  output fifo_wr_en;
  input fifo_wr_full;
  output [7:0]ila_data_write_state;
  output [119:0]ila_wr_data_buf;
endmodule
