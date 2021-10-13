//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
//Date        : Tue Oct 12 21:07:32 2021
//Host        : xu-pc running 64-bit major release  (build 9200)
//Command     : generate_target top.bd
//Design      : top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top.hwdef" *) 
module top
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF m_axis_rx, CLK_DOMAIN top_aclk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DATA_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DATA_CLK, CLK_DOMAIN top_data_clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input data_clk;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rx, CLK_DOMAIN top_aclk, FREQ_HZ 200000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [127:0]m_axis_rx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TREADY" *) input m_axis_rx_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TVALID" *) output m_axis_rx_tvalid;
  input rx_enable;
  output [119:0]wr_data_buf;

  wire aclk_1;
  wire aresetn_1;
  wire data_clk_1;
  wire [2:0]data_format_1;
  wire [127:0]data_in_1;
  wire data_valid_1;
  wire [127:0]fifo_generator_0_dout;
  wire fifo_generator_0_empty;
  wire fifo_generator_0_full;
  wire fifo_generator_0_prog_empty;
  wire fifo_generator_0_prog_full;
  wire fifo_generator_0_rd_rst_busy;
  wire fifo_generator_0_valid;
  wire fifo_generator_0_wr_rst_busy;
  wire rx_enable_1;
  wire rx_fifo_axis_0_data_ready;
  wire [7:0]rx_fifo_axis_0_data_write_state;
  wire rx_fifo_axis_0_fifo_rd_clk;
  wire rx_fifo_axis_0_fifo_rd_en;
  wire rx_fifo_axis_0_fifo_srst;
  wire rx_fifo_axis_0_fifo_wr_clk;
  wire [127:0]rx_fifo_axis_0_fifo_wr_data;
  wire rx_fifo_axis_0_fifo_wr_en;
  wire [127:0]rx_fifo_axis_0_m_axis_rx_TDATA;
  wire rx_fifo_axis_0_m_axis_rx_TREADY;
  wire rx_fifo_axis_0_m_axis_rx_TVALID;
  wire [119:0]rx_fifo_axis_0_wr_data_buf;

  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign data_clk_1 = data_clk;
  assign data_format_1 = data_format[2:0];
  assign data_in_1 = data_in[127:0];
  assign data_ready = rx_fifo_axis_0_data_ready;
  assign data_valid_1 = data_valid;
  assign data_write_state[7:0] = rx_fifo_axis_0_data_write_state;
  assign fifo_prog_empty = fifo_generator_0_prog_empty;
  assign fifo_prog_full = fifo_generator_0_prog_full;
  assign fifo_rd_data[127:0] = fifo_generator_0_dout;
  assign fifo_rd_empty = fifo_generator_0_empty;
  assign fifo_rd_en = rx_fifo_axis_0_fifo_rd_en;
  assign fifo_rd_rst_busy = fifo_generator_0_rd_rst_busy;
  assign fifo_rd_valid = fifo_generator_0_valid;
  assign fifo_srst = rx_fifo_axis_0_fifo_srst;
  assign fifo_wr_data[127:0] = rx_fifo_axis_0_fifo_wr_data;
  assign fifo_wr_en = rx_fifo_axis_0_fifo_wr_en;
  assign fifo_wr_full = fifo_generator_0_full;
  assign fifo_wr_rst_busy = fifo_generator_0_wr_rst_busy;
  assign m_axis_rx_tdata[127:0] = rx_fifo_axis_0_m_axis_rx_TDATA;
  assign m_axis_rx_tvalid = rx_fifo_axis_0_m_axis_rx_TVALID;
  assign rx_enable_1 = rx_enable;
  assign rx_fifo_axis_0_m_axis_rx_TREADY = m_axis_rx_tready;
  assign wr_data_buf[119:0] = rx_fifo_axis_0_wr_data_buf;
  top_fifo_generator_0_0 fifo_generator_0
       (.din(rx_fifo_axis_0_fifo_wr_data),
        .dout(fifo_generator_0_dout),
        .empty(fifo_generator_0_empty),
        .full(fifo_generator_0_full),
        .prog_empty(fifo_generator_0_prog_empty),
        .prog_full(fifo_generator_0_prog_full),
        .rd_clk(rx_fifo_axis_0_fifo_rd_clk),
        .rd_en(rx_fifo_axis_0_fifo_rd_en),
        .rd_rst_busy(fifo_generator_0_rd_rst_busy),
        .srst(rx_fifo_axis_0_fifo_srst),
        .valid(fifo_generator_0_valid),
        .wr_clk(rx_fifo_axis_0_fifo_wr_clk),
        .wr_en(rx_fifo_axis_0_fifo_wr_en),
        .wr_rst_busy(fifo_generator_0_wr_rst_busy));
  top_rx_fifo_axis_0_0 rx_fifo_axis_0
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .data_clk(data_clk_1),
        .data_format(data_format_1),
        .data_in(data_in_1),
        .data_ready(rx_fifo_axis_0_data_ready),
        .data_valid(data_valid_1),
        .fifo_prog_full(fifo_generator_0_prog_full),
        .fifo_rd_clk(rx_fifo_axis_0_fifo_rd_clk),
        .fifo_rd_data(fifo_generator_0_dout),
        .fifo_rd_empty(fifo_generator_0_empty),
        .fifo_rd_en(rx_fifo_axis_0_fifo_rd_en),
        .fifo_rd_rst_busy(fifo_generator_0_rd_rst_busy),
        .fifo_rd_valid(fifo_generator_0_valid),
        .fifo_srst(rx_fifo_axis_0_fifo_srst),
        .fifo_wr_clk(rx_fifo_axis_0_fifo_wr_clk),
        .fifo_wr_data(rx_fifo_axis_0_fifo_wr_data),
        .fifo_wr_en(rx_fifo_axis_0_fifo_wr_en),
        .fifo_wr_full(fifo_generator_0_full),
        .fifo_wr_rst_busy(fifo_generator_0_wr_rst_busy),
        .ila_data_write_state(rx_fifo_axis_0_data_write_state),
        .ila_wr_data_buf(rx_fifo_axis_0_wr_data_buf),
        .m_axis_rx_tdata(rx_fifo_axis_0_m_axis_rx_TDATA),
        .m_axis_rx_tready(rx_fifo_axis_0_m_axis_rx_TREADY),
        .m_axis_rx_tvalid(rx_fifo_axis_0_m_axis_rx_TVALID),
        .rx_enable(rx_enable_1));
endmodule
