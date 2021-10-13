//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
//Date        : Tue Oct 12 21:07:32 2021
//Host        : xu-pc running 64-bit major release  (build 9200)
//Command     : generate_target top_wrapper.bd
//Design      : top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_wrapper
   (aclk,
    aresetn,
    data_clk,
    data_format,
    data_in,
    data_ready,
    data_valid,
    data_write_state,
    fifo_prog_empty,
    fifo_prog_full,
    fifo_rd_data,
    fifo_rd_empty,
    fifo_rd_en,
    fifo_rd_rst_busy,
    fifo_rd_valid,
    fifo_srst,
    fifo_wr_data,
    fifo_wr_en,
    fifo_wr_full,
    fifo_wr_rst_busy,
    m_axis_rx_tdata,
    m_axis_rx_tready,
    m_axis_rx_tvalid,
    rx_enable,
    wr_data_buf);
  input aclk;
  input aresetn;
  input data_clk;
  input [2:0]data_format;
  input [127:0]data_in;
  output data_ready;
  input data_valid;
  output [7:0]data_write_state;
  output fifo_prog_empty;
  output fifo_prog_full;
  output [127:0]fifo_rd_data;
  output fifo_rd_empty;
  output fifo_rd_en;
  output fifo_rd_rst_busy;
  output fifo_rd_valid;
  output fifo_srst;
  output [127:0]fifo_wr_data;
  output fifo_wr_en;
  output fifo_wr_full;
  output fifo_wr_rst_busy;
  output [127:0]m_axis_rx_tdata;
  input m_axis_rx_tready;
  output m_axis_rx_tvalid;
  input rx_enable;
  output [119:0]wr_data_buf;

  wire aclk;
  wire aresetn;
  wire data_clk;
  wire [2:0]data_format;
  wire [127:0]data_in;
  wire data_ready;
  wire data_valid;
  wire [7:0]data_write_state;
  wire fifo_prog_empty;
  wire fifo_prog_full;
  wire [127:0]fifo_rd_data;
  wire fifo_rd_empty;
  wire fifo_rd_en;
  wire fifo_rd_rst_busy;
  wire fifo_rd_valid;
  wire fifo_srst;
  wire [127:0]fifo_wr_data;
  wire fifo_wr_en;
  wire fifo_wr_full;
  wire fifo_wr_rst_busy;
  wire [127:0]m_axis_rx_tdata;
  wire m_axis_rx_tready;
  wire m_axis_rx_tvalid;
  wire rx_enable;
  wire [119:0]wr_data_buf;

  top top_i
       (.aclk(aclk),
        .aresetn(aresetn),
        .data_clk(data_clk),
        .data_format(data_format),
        .data_in(data_in),
        .data_ready(data_ready),
        .data_valid(data_valid),
        .data_write_state(data_write_state),
        .fifo_prog_empty(fifo_prog_empty),
        .fifo_prog_full(fifo_prog_full),
        .fifo_rd_data(fifo_rd_data),
        .fifo_rd_empty(fifo_rd_empty),
        .fifo_rd_en(fifo_rd_en),
        .fifo_rd_rst_busy(fifo_rd_rst_busy),
        .fifo_rd_valid(fifo_rd_valid),
        .fifo_srst(fifo_srst),
        .fifo_wr_data(fifo_wr_data),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_full(fifo_wr_full),
        .fifo_wr_rst_busy(fifo_wr_rst_busy),
        .m_axis_rx_tdata(m_axis_rx_tdata),
        .m_axis_rx_tready(m_axis_rx_tready),
        .m_axis_rx_tvalid(m_axis_rx_tvalid),
        .rx_enable(rx_enable),
        .wr_data_buf(wr_data_buf));
endmodule
