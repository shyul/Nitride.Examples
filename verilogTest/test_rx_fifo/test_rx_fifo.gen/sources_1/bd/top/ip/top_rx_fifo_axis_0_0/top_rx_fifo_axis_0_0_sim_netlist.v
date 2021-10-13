// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
// Date        : Tue Oct 12 20:32:26 2021
// Host        : xu-pc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/uxli/Documents/Tidalloft/tungsten-grid-dev/unit_test/fifo_dma_controller_test/test_rx_fifo/test_rx_fifo.gen/sources_1/bd/top/ip/top_rx_fifo_axis_0_0/top_rx_fifo_axis_0_0_sim_netlist.v
// Design      : top_rx_fifo_axis_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_rx_fifo_axis_0_0,rx_fifo_axis,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "rx_fifo_axis,Vivado 2021.1.1" *) 
(* NotValidForBitStream *)
module top_rx_fifo_axis_0_0
   (aresetn,
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
    ila_wr_data_buf);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_rx, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN top_aclk, INSERT_VIP 0" *) input aclk;
  input rx_enable;
  input [2:0]data_format;
  output data_ready;
  input data_clk;
  input data_valid;
  input [127:0]data_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TDATA" *) output [127:0]m_axis_rx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TVALID" *) output m_axis_rx_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rx TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rx, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN top_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_rx_tready;
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

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire data_clk;
  wire [2:0]data_format;
  wire [127:0]data_in;
  wire data_ready;
  wire data_valid;
  wire fifo_prog_full;
  wire [127:0]fifo_rd_data;
  wire fifo_rd_empty;
  wire fifo_rd_en;
  wire fifo_rd_rst_busy;
  wire fifo_rd_valid;
  wire fifo_srst;
  wire [127:0]fifo_wr_data;
  wire fifo_wr_en;
  wire fifo_wr_rst_busy;
  wire [6:0]\^ila_data_write_state ;
  wire [119:0]ila_wr_data_buf;
  wire m_axis_rx_tready;
  wire rx_enable;

  assign fifo_rd_clk = aclk;
  assign fifo_wr_clk = data_in[0];
  assign ila_data_write_state[7] = \<const0> ;
  assign ila_data_write_state[6:0] = \^ila_data_write_state [6:0];
  assign m_axis_rx_tdata[127:0] = fifo_rd_data;
  assign m_axis_rx_tvalid = fifo_rd_valid;
  GND GND
       (.G(\<const0> ));
  top_rx_fifo_axis_0_0_rx_fifo_axis inst
       (.Q(\^ila_data_write_state ),
        .aclk(aclk),
        .aresetn(aresetn),
        .data_clk(data_clk),
        .data_format(data_format),
        .data_in(data_in),
        .data_ready(data_ready),
        .data_valid(data_valid),
        .fifo_prog_full(fifo_prog_full),
        .fifo_rd_empty(fifo_rd_empty),
        .fifo_rd_en(fifo_rd_en),
        .fifo_rd_rst_busy(fifo_rd_rst_busy),
        .fifo_srst(fifo_srst),
        .fifo_wr_data(fifo_wr_data),
        .fifo_wr_en(fifo_wr_en),
        .fifo_wr_rst_busy(fifo_wr_rst_busy),
        .ila_wr_data_buf(ila_wr_data_buf),
        .m_axis_rx_tready(m_axis_rx_tready),
        .rx_enable(rx_enable));
endmodule

(* ORIG_REF_NAME = "rx_fifo_axis" *) 
module top_rx_fifo_axis_0_0_rx_fifo_axis
   (Q,
    fifo_rd_en,
    ila_wr_data_buf,
    fifo_wr_data,
    fifo_srst,
    data_ready,
    fifo_wr_en,
    data_valid,
    aresetn,
    fifo_wr_rst_busy,
    data_in,
    m_axis_rx_tready,
    fifo_rd_empty,
    fifo_rd_rst_busy,
    fifo_prog_full,
    aclk,
    rx_enable,
    data_clk,
    data_format);
  output [6:0]Q;
  output fifo_rd_en;
  output [119:0]ila_wr_data_buf;
  output [127:0]fifo_wr_data;
  output fifo_srst;
  output data_ready;
  output fifo_wr_en;
  input data_valid;
  input aresetn;
  input fifo_wr_rst_busy;
  input [127:0]data_in;
  input m_axis_rx_tready;
  input fifo_rd_empty;
  input fifo_rd_rst_busy;
  input fifo_prog_full;
  input aclk;
  input rx_enable;
  input data_clk;
  input [2:0]data_format;

  wire [6:0]Q;
  wire aclk;
  wire aresetn;
  wire data_clk;
  wire [2:0]data_format;
  wire [127:0]data_in;
  wire data_ready;
  wire data_valid;
  wire \data_write_state[0]_i_1_n_0 ;
  wire \data_write_state[1]_i_1_n_0 ;
  wire \data_write_state[1]_i_2_n_0 ;
  wire \data_write_state[1]_i_3_n_0 ;
  wire \data_write_state[2]_i_1_n_0 ;
  wire \data_write_state[2]_i_2_n_0 ;
  wire \data_write_state[2]_i_3_n_0 ;
  wire \data_write_state[3]_i_1_n_0 ;
  wire \data_write_state[3]_i_2_n_0 ;
  wire \data_write_state[3]_i_3_n_0 ;
  wire \data_write_state[4]_i_1_n_0 ;
  wire \data_write_state[4]_i_2_n_0 ;
  wire \data_write_state[4]_i_3_n_0 ;
  wire \data_write_state[5]_i_1_n_0 ;
  wire \data_write_state[5]_i_2_n_0 ;
  wire \data_write_state[6]_i_1_n_0 ;
  wire \data_write_state[6]_i_2_n_0 ;
  wire \data_write_state[6]_i_3_n_0 ;
  wire \data_write_state[6]_i_4_n_0 ;
  wire \data_write_state[6]_i_5_n_0 ;
  wire fifo_prog_full;
  wire fifo_prog_full_ff;
  wire fifo_prog_full_ff2;
  wire fifo_rd_empty;
  wire fifo_rd_en;
  wire fifo_rd_en0__0;
  wire fifo_rd_en_i_1_n_0;
  wire fifo_rd_rst_busy;
  wire fifo_srst;
  wire [127:0]fifo_wr_data;
  wire \fifo_wr_data[0]_i_1_n_0 ;
  wire \fifo_wr_data[100]_i_1_n_0 ;
  wire \fifo_wr_data[100]_i_2_n_0 ;
  wire \fifo_wr_data[100]_i_3_n_0 ;
  wire \fifo_wr_data[101]_i_1_n_0 ;
  wire \fifo_wr_data[101]_i_2_n_0 ;
  wire \fifo_wr_data[101]_i_3_n_0 ;
  wire \fifo_wr_data[102]_i_1_n_0 ;
  wire \fifo_wr_data[102]_i_2_n_0 ;
  wire \fifo_wr_data[102]_i_3_n_0 ;
  wire \fifo_wr_data[103]_i_1_n_0 ;
  wire \fifo_wr_data[103]_i_2_n_0 ;
  wire \fifo_wr_data[103]_i_3_n_0 ;
  wire \fifo_wr_data[104]_i_1_n_0 ;
  wire \fifo_wr_data[104]_i_2_n_0 ;
  wire \fifo_wr_data[104]_i_3_n_0 ;
  wire \fifo_wr_data[105]_i_1_n_0 ;
  wire \fifo_wr_data[105]_i_2_n_0 ;
  wire \fifo_wr_data[105]_i_3_n_0 ;
  wire \fifo_wr_data[106]_i_1_n_0 ;
  wire \fifo_wr_data[106]_i_2_n_0 ;
  wire \fifo_wr_data[106]_i_3_n_0 ;
  wire \fifo_wr_data[107]_i_1_n_0 ;
  wire \fifo_wr_data[107]_i_2_n_0 ;
  wire \fifo_wr_data[107]_i_3_n_0 ;
  wire \fifo_wr_data[108]_i_1_n_0 ;
  wire \fifo_wr_data[108]_i_2_n_0 ;
  wire \fifo_wr_data[108]_i_3_n_0 ;
  wire \fifo_wr_data[109]_i_1_n_0 ;
  wire \fifo_wr_data[109]_i_2_n_0 ;
  wire \fifo_wr_data[109]_i_3_n_0 ;
  wire \fifo_wr_data[10]_i_1_n_0 ;
  wire \fifo_wr_data[110]_i_1_n_0 ;
  wire \fifo_wr_data[110]_i_2_n_0 ;
  wire \fifo_wr_data[110]_i_3_n_0 ;
  wire \fifo_wr_data[111]_i_1_n_0 ;
  wire \fifo_wr_data[111]_i_2_n_0 ;
  wire \fifo_wr_data[111]_i_3_n_0 ;
  wire \fifo_wr_data[112]_i_1_n_0 ;
  wire \fifo_wr_data[112]_i_2_n_0 ;
  wire \fifo_wr_data[112]_i_3_n_0 ;
  wire \fifo_wr_data[112]_i_4_n_0 ;
  wire \fifo_wr_data[113]_i_1_n_0 ;
  wire \fifo_wr_data[113]_i_2_n_0 ;
  wire \fifo_wr_data[113]_i_3_n_0 ;
  wire \fifo_wr_data[113]_i_4_n_0 ;
  wire \fifo_wr_data[114]_i_1_n_0 ;
  wire \fifo_wr_data[114]_i_2_n_0 ;
  wire \fifo_wr_data[114]_i_3_n_0 ;
  wire \fifo_wr_data[114]_i_4_n_0 ;
  wire \fifo_wr_data[115]_i_1_n_0 ;
  wire \fifo_wr_data[115]_i_2_n_0 ;
  wire \fifo_wr_data[115]_i_3_n_0 ;
  wire \fifo_wr_data[115]_i_4_n_0 ;
  wire \fifo_wr_data[116]_i_1_n_0 ;
  wire \fifo_wr_data[116]_i_2_n_0 ;
  wire \fifo_wr_data[116]_i_3_n_0 ;
  wire \fifo_wr_data[116]_i_4_n_0 ;
  wire \fifo_wr_data[117]_i_1_n_0 ;
  wire \fifo_wr_data[117]_i_2_n_0 ;
  wire \fifo_wr_data[117]_i_3_n_0 ;
  wire \fifo_wr_data[117]_i_4_n_0 ;
  wire \fifo_wr_data[118]_i_1_n_0 ;
  wire \fifo_wr_data[118]_i_2_n_0 ;
  wire \fifo_wr_data[118]_i_3_n_0 ;
  wire \fifo_wr_data[118]_i_4_n_0 ;
  wire \fifo_wr_data[119]_i_1_n_0 ;
  wire \fifo_wr_data[119]_i_2_n_0 ;
  wire \fifo_wr_data[119]_i_3_n_0 ;
  wire \fifo_wr_data[119]_i_4_n_0 ;
  wire \fifo_wr_data[11]_i_1_n_0 ;
  wire \fifo_wr_data[120]_i_1_n_0 ;
  wire \fifo_wr_data[120]_i_2_n_0 ;
  wire \fifo_wr_data[120]_i_3_n_0 ;
  wire \fifo_wr_data[120]_i_4_n_0 ;
  wire \fifo_wr_data[121]_i_1_n_0 ;
  wire \fifo_wr_data[121]_i_2_n_0 ;
  wire \fifo_wr_data[121]_i_3_n_0 ;
  wire \fifo_wr_data[121]_i_4_n_0 ;
  wire \fifo_wr_data[122]_i_1_n_0 ;
  wire \fifo_wr_data[122]_i_2_n_0 ;
  wire \fifo_wr_data[122]_i_3_n_0 ;
  wire \fifo_wr_data[122]_i_4_n_0 ;
  wire \fifo_wr_data[123]_i_1_n_0 ;
  wire \fifo_wr_data[123]_i_2_n_0 ;
  wire \fifo_wr_data[123]_i_3_n_0 ;
  wire \fifo_wr_data[123]_i_4_n_0 ;
  wire \fifo_wr_data[124]_i_1_n_0 ;
  wire \fifo_wr_data[124]_i_2_n_0 ;
  wire \fifo_wr_data[124]_i_3_n_0 ;
  wire \fifo_wr_data[124]_i_4_n_0 ;
  wire \fifo_wr_data[125]_i_1_n_0 ;
  wire \fifo_wr_data[125]_i_2_n_0 ;
  wire \fifo_wr_data[125]_i_3_n_0 ;
  wire \fifo_wr_data[125]_i_4_n_0 ;
  wire \fifo_wr_data[126]_i_1_n_0 ;
  wire \fifo_wr_data[126]_i_2_n_0 ;
  wire \fifo_wr_data[126]_i_3_n_0 ;
  wire \fifo_wr_data[126]_i_4_n_0 ;
  wire \fifo_wr_data[127]_i_10_n_0 ;
  wire \fifo_wr_data[127]_i_11_n_0 ;
  wire \fifo_wr_data[127]_i_12_n_0 ;
  wire \fifo_wr_data[127]_i_13_n_0 ;
  wire \fifo_wr_data[127]_i_14_n_0 ;
  wire \fifo_wr_data[127]_i_15_n_0 ;
  wire \fifo_wr_data[127]_i_16_n_0 ;
  wire \fifo_wr_data[127]_i_17_n_0 ;
  wire \fifo_wr_data[127]_i_18_n_0 ;
  wire \fifo_wr_data[127]_i_19_n_0 ;
  wire \fifo_wr_data[127]_i_1_n_0 ;
  wire \fifo_wr_data[127]_i_20_n_0 ;
  wire \fifo_wr_data[127]_i_21_n_0 ;
  wire \fifo_wr_data[127]_i_22_n_0 ;
  wire \fifo_wr_data[127]_i_23_n_0 ;
  wire \fifo_wr_data[127]_i_24_n_0 ;
  wire \fifo_wr_data[127]_i_2_n_0 ;
  wire \fifo_wr_data[127]_i_3_n_0 ;
  wire \fifo_wr_data[127]_i_4_n_0 ;
  wire \fifo_wr_data[127]_i_5_n_0 ;
  wire \fifo_wr_data[127]_i_6_n_0 ;
  wire \fifo_wr_data[127]_i_7_n_0 ;
  wire \fifo_wr_data[127]_i_8_n_0 ;
  wire \fifo_wr_data[127]_i_9_n_0 ;
  wire \fifo_wr_data[12]_i_1_n_0 ;
  wire \fifo_wr_data[13]_i_1_n_0 ;
  wire \fifo_wr_data[14]_i_1_n_0 ;
  wire \fifo_wr_data[15]_i_1_n_0 ;
  wire \fifo_wr_data[16]_i_1_n_0 ;
  wire \fifo_wr_data[17]_i_1_n_0 ;
  wire \fifo_wr_data[18]_i_1_n_0 ;
  wire \fifo_wr_data[19]_i_1_n_0 ;
  wire \fifo_wr_data[1]_i_1_n_0 ;
  wire \fifo_wr_data[20]_i_1_n_0 ;
  wire \fifo_wr_data[21]_i_1_n_0 ;
  wire \fifo_wr_data[22]_i_1_n_0 ;
  wire \fifo_wr_data[23]_i_1_n_0 ;
  wire \fifo_wr_data[24]_i_1_n_0 ;
  wire \fifo_wr_data[25]_i_1_n_0 ;
  wire \fifo_wr_data[26]_i_1_n_0 ;
  wire \fifo_wr_data[27]_i_1_n_0 ;
  wire \fifo_wr_data[28]_i_1_n_0 ;
  wire \fifo_wr_data[29]_i_1_n_0 ;
  wire \fifo_wr_data[2]_i_1_n_0 ;
  wire \fifo_wr_data[30]_i_1_n_0 ;
  wire \fifo_wr_data[31]_i_1_n_0 ;
  wire \fifo_wr_data[32]_i_1_n_0 ;
  wire \fifo_wr_data[33]_i_1_n_0 ;
  wire \fifo_wr_data[34]_i_1_n_0 ;
  wire \fifo_wr_data[35]_i_1_n_0 ;
  wire \fifo_wr_data[36]_i_1_n_0 ;
  wire \fifo_wr_data[37]_i_1_n_0 ;
  wire \fifo_wr_data[38]_i_1_n_0 ;
  wire \fifo_wr_data[39]_i_1_n_0 ;
  wire \fifo_wr_data[3]_i_1_n_0 ;
  wire \fifo_wr_data[40]_i_1_n_0 ;
  wire \fifo_wr_data[41]_i_1_n_0 ;
  wire \fifo_wr_data[42]_i_1_n_0 ;
  wire \fifo_wr_data[43]_i_1_n_0 ;
  wire \fifo_wr_data[44]_i_1_n_0 ;
  wire \fifo_wr_data[45]_i_1_n_0 ;
  wire \fifo_wr_data[46]_i_1_n_0 ;
  wire \fifo_wr_data[47]_i_1_n_0 ;
  wire \fifo_wr_data[48]_i_1_n_0 ;
  wire \fifo_wr_data[49]_i_1_n_0 ;
  wire \fifo_wr_data[4]_i_1_n_0 ;
  wire \fifo_wr_data[50]_i_1_n_0 ;
  wire \fifo_wr_data[51]_i_1_n_0 ;
  wire \fifo_wr_data[52]_i_1_n_0 ;
  wire \fifo_wr_data[53]_i_1_n_0 ;
  wire \fifo_wr_data[54]_i_1_n_0 ;
  wire \fifo_wr_data[55]_i_1_n_0 ;
  wire \fifo_wr_data[56]_i_1_n_0 ;
  wire \fifo_wr_data[57]_i_1_n_0 ;
  wire \fifo_wr_data[58]_i_1_n_0 ;
  wire \fifo_wr_data[59]_i_1_n_0 ;
  wire \fifo_wr_data[5]_i_1_n_0 ;
  wire \fifo_wr_data[60]_i_1_n_0 ;
  wire \fifo_wr_data[61]_i_1_n_0 ;
  wire \fifo_wr_data[62]_i_1_n_0 ;
  wire \fifo_wr_data[62]_i_2_n_0 ;
  wire \fifo_wr_data[63]_i_1_n_0 ;
  wire \fifo_wr_data[63]_i_2_n_0 ;
  wire \fifo_wr_data[63]_i_3_n_0 ;
  wire \fifo_wr_data[64]_i_1_n_0 ;
  wire \fifo_wr_data[64]_i_2_n_0 ;
  wire \fifo_wr_data[64]_i_3_n_0 ;
  wire \fifo_wr_data[65]_i_1_n_0 ;
  wire \fifo_wr_data[65]_i_2_n_0 ;
  wire \fifo_wr_data[65]_i_3_n_0 ;
  wire \fifo_wr_data[66]_i_1_n_0 ;
  wire \fifo_wr_data[66]_i_2_n_0 ;
  wire \fifo_wr_data[66]_i_3_n_0 ;
  wire \fifo_wr_data[67]_i_1_n_0 ;
  wire \fifo_wr_data[67]_i_2_n_0 ;
  wire \fifo_wr_data[67]_i_3_n_0 ;
  wire \fifo_wr_data[68]_i_1_n_0 ;
  wire \fifo_wr_data[68]_i_2_n_0 ;
  wire \fifo_wr_data[68]_i_3_n_0 ;
  wire \fifo_wr_data[69]_i_1_n_0 ;
  wire \fifo_wr_data[69]_i_2_n_0 ;
  wire \fifo_wr_data[69]_i_3_n_0 ;
  wire \fifo_wr_data[6]_i_1_n_0 ;
  wire \fifo_wr_data[70]_i_1_n_0 ;
  wire \fifo_wr_data[70]_i_2_n_0 ;
  wire \fifo_wr_data[70]_i_3_n_0 ;
  wire \fifo_wr_data[71]_i_1_n_0 ;
  wire \fifo_wr_data[71]_i_2_n_0 ;
  wire \fifo_wr_data[71]_i_3_n_0 ;
  wire \fifo_wr_data[72]_i_1_n_0 ;
  wire \fifo_wr_data[72]_i_2_n_0 ;
  wire \fifo_wr_data[72]_i_3_n_0 ;
  wire \fifo_wr_data[73]_i_1_n_0 ;
  wire \fifo_wr_data[73]_i_2_n_0 ;
  wire \fifo_wr_data[73]_i_3_n_0 ;
  wire \fifo_wr_data[74]_i_1_n_0 ;
  wire \fifo_wr_data[74]_i_2_n_0 ;
  wire \fifo_wr_data[74]_i_3_n_0 ;
  wire \fifo_wr_data[75]_i_1_n_0 ;
  wire \fifo_wr_data[75]_i_2_n_0 ;
  wire \fifo_wr_data[75]_i_3_n_0 ;
  wire \fifo_wr_data[76]_i_1_n_0 ;
  wire \fifo_wr_data[76]_i_2_n_0 ;
  wire \fifo_wr_data[76]_i_3_n_0 ;
  wire \fifo_wr_data[77]_i_1_n_0 ;
  wire \fifo_wr_data[77]_i_2_n_0 ;
  wire \fifo_wr_data[77]_i_3_n_0 ;
  wire \fifo_wr_data[78]_i_1_n_0 ;
  wire \fifo_wr_data[78]_i_2_n_0 ;
  wire \fifo_wr_data[78]_i_3_n_0 ;
  wire \fifo_wr_data[79]_i_1_n_0 ;
  wire \fifo_wr_data[79]_i_2_n_0 ;
  wire \fifo_wr_data[79]_i_3_n_0 ;
  wire \fifo_wr_data[7]_i_1_n_0 ;
  wire \fifo_wr_data[80]_i_1_n_0 ;
  wire \fifo_wr_data[80]_i_2_n_0 ;
  wire \fifo_wr_data[81]_i_1_n_0 ;
  wire \fifo_wr_data[81]_i_2_n_0 ;
  wire \fifo_wr_data[82]_i_1_n_0 ;
  wire \fifo_wr_data[82]_i_2_n_0 ;
  wire \fifo_wr_data[83]_i_1_n_0 ;
  wire \fifo_wr_data[83]_i_2_n_0 ;
  wire \fifo_wr_data[84]_i_1_n_0 ;
  wire \fifo_wr_data[84]_i_2_n_0 ;
  wire \fifo_wr_data[85]_i_1_n_0 ;
  wire \fifo_wr_data[85]_i_2_n_0 ;
  wire \fifo_wr_data[86]_i_1_n_0 ;
  wire \fifo_wr_data[86]_i_2_n_0 ;
  wire \fifo_wr_data[87]_i_1_n_0 ;
  wire \fifo_wr_data[87]_i_2_n_0 ;
  wire \fifo_wr_data[88]_i_1_n_0 ;
  wire \fifo_wr_data[88]_i_2_n_0 ;
  wire \fifo_wr_data[89]_i_1_n_0 ;
  wire \fifo_wr_data[89]_i_2_n_0 ;
  wire \fifo_wr_data[8]_i_1_n_0 ;
  wire \fifo_wr_data[90]_i_1_n_0 ;
  wire \fifo_wr_data[90]_i_2_n_0 ;
  wire \fifo_wr_data[91]_i_1_n_0 ;
  wire \fifo_wr_data[91]_i_2_n_0 ;
  wire \fifo_wr_data[92]_i_1_n_0 ;
  wire \fifo_wr_data[92]_i_2_n_0 ;
  wire \fifo_wr_data[93]_i_1_n_0 ;
  wire \fifo_wr_data[93]_i_2_n_0 ;
  wire \fifo_wr_data[94]_i_1_n_0 ;
  wire \fifo_wr_data[94]_i_2_n_0 ;
  wire \fifo_wr_data[95]_i_1_n_0 ;
  wire \fifo_wr_data[95]_i_2_n_0 ;
  wire \fifo_wr_data[95]_i_3_n_0 ;
  wire \fifo_wr_data[95]_i_4_n_0 ;
  wire \fifo_wr_data[95]_i_5_n_0 ;
  wire \fifo_wr_data[95]_i_6_n_0 ;
  wire \fifo_wr_data[96]_i_1_n_0 ;
  wire \fifo_wr_data[96]_i_2_n_0 ;
  wire \fifo_wr_data[96]_i_3_n_0 ;
  wire \fifo_wr_data[97]_i_1_n_0 ;
  wire \fifo_wr_data[97]_i_2_n_0 ;
  wire \fifo_wr_data[97]_i_3_n_0 ;
  wire \fifo_wr_data[98]_i_1_n_0 ;
  wire \fifo_wr_data[98]_i_2_n_0 ;
  wire \fifo_wr_data[98]_i_3_n_0 ;
  wire \fifo_wr_data[99]_i_1_n_0 ;
  wire \fifo_wr_data[99]_i_2_n_0 ;
  wire \fifo_wr_data[99]_i_3_n_0 ;
  wire \fifo_wr_data[9]_i_1_n_0 ;
  wire fifo_wr_en;
  wire fifo_wr_en_ff;
  wire fifo_wr_en_ff2;
  wire fifo_wr_en_i_10_n_0;
  wire fifo_wr_en_i_11_n_0;
  wire fifo_wr_en_i_1_n_0;
  wire fifo_wr_en_i_2_n_0;
  wire fifo_wr_en_i_3_n_0;
  wire fifo_wr_en_i_4_n_0;
  wire fifo_wr_en_i_5_n_0;
  wire fifo_wr_en_i_6_n_0;
  wire fifo_wr_en_i_7_n_0;
  wire fifo_wr_en_i_8_n_0;
  wire fifo_wr_en_i_9_n_0;
  wire fifo_wr_rst_busy;
  wire [119:0]ila_wr_data_buf;
  wire m_axis_rx_tready;
  wire rx_enable;
  wire \wr_data_buf[103]_i_1_n_0 ;
  wire \wr_data_buf[103]_i_2_n_0 ;
  wire \wr_data_buf[104]_i_1_n_0 ;
  wire \wr_data_buf[105]_i_1_n_0 ;
  wire \wr_data_buf[106]_i_1_n_0 ;
  wire \wr_data_buf[107]_i_1_n_0 ;
  wire \wr_data_buf[108]_i_1_n_0 ;
  wire \wr_data_buf[109]_i_1_n_0 ;
  wire \wr_data_buf[10]_i_1_n_0 ;
  wire \wr_data_buf[110]_i_1_n_0 ;
  wire \wr_data_buf[111]_i_1_n_0 ;
  wire \wr_data_buf[111]_i_2_n_0 ;
  wire \wr_data_buf[111]_i_3_n_0 ;
  wire \wr_data_buf[111]_i_4_n_0 ;
  wire \wr_data_buf[119]_i_1_n_0 ;
  wire \wr_data_buf[119]_i_2_n_0 ;
  wire \wr_data_buf[11]_i_1_n_0 ;
  wire \wr_data_buf[12]_i_1_n_0 ;
  wire \wr_data_buf[13]_i_1_n_0 ;
  wire \wr_data_buf[14]_i_1_n_0 ;
  wire \wr_data_buf[15]_i_1_n_0 ;
  wire \wr_data_buf[15]_i_2_n_0 ;
  wire \wr_data_buf[15]_i_3_n_0 ;
  wire \wr_data_buf[15]_i_4_n_0 ;
  wire \wr_data_buf[15]_i_5_n_0 ;
  wire \wr_data_buf[16]_i_1_n_0 ;
  wire \wr_data_buf[17]_i_1_n_0 ;
  wire \wr_data_buf[18]_i_1_n_0 ;
  wire \wr_data_buf[19]_i_1_n_0 ;
  wire \wr_data_buf[20]_i_1_n_0 ;
  wire \wr_data_buf[21]_i_1_n_0 ;
  wire \wr_data_buf[22]_i_1_n_0 ;
  wire \wr_data_buf[23]_i_1_n_0 ;
  wire \wr_data_buf[23]_i_2_n_0 ;
  wire \wr_data_buf[23]_i_3_n_0 ;
  wire \wr_data_buf[23]_i_4_n_0 ;
  wire \wr_data_buf[23]_i_5_n_0 ;
  wire \wr_data_buf[23]_i_6_n_0 ;
  wire \wr_data_buf[23]_i_7_n_0 ;
  wire \wr_data_buf[23]_i_8_n_0 ;
  wire \wr_data_buf[24]_i_1_n_0 ;
  wire \wr_data_buf[24]_i_2_n_0 ;
  wire \wr_data_buf[24]_i_3_n_0 ;
  wire \wr_data_buf[25]_i_1_n_0 ;
  wire \wr_data_buf[25]_i_2_n_0 ;
  wire \wr_data_buf[25]_i_3_n_0 ;
  wire \wr_data_buf[26]_i_1_n_0 ;
  wire \wr_data_buf[26]_i_2_n_0 ;
  wire \wr_data_buf[26]_i_3_n_0 ;
  wire \wr_data_buf[27]_i_1_n_0 ;
  wire \wr_data_buf[27]_i_2_n_0 ;
  wire \wr_data_buf[27]_i_3_n_0 ;
  wire \wr_data_buf[28]_i_1_n_0 ;
  wire \wr_data_buf[28]_i_2_n_0 ;
  wire \wr_data_buf[28]_i_3_n_0 ;
  wire \wr_data_buf[29]_i_1_n_0 ;
  wire \wr_data_buf[29]_i_2_n_0 ;
  wire \wr_data_buf[29]_i_3_n_0 ;
  wire \wr_data_buf[30]_i_1_n_0 ;
  wire \wr_data_buf[30]_i_2_n_0 ;
  wire \wr_data_buf[30]_i_3_n_0 ;
  wire \wr_data_buf[30]_i_4_n_0 ;
  wire \wr_data_buf[30]_i_5_n_0 ;
  wire \wr_data_buf[31]_i_1_n_0 ;
  wire \wr_data_buf[31]_i_2_n_0 ;
  wire \wr_data_buf[31]_i_3_n_0 ;
  wire \wr_data_buf[31]_i_4_n_0 ;
  wire \wr_data_buf[31]_i_5_n_0 ;
  wire \wr_data_buf[31]_i_6_n_0 ;
  wire \wr_data_buf[32]_i_1_n_0 ;
  wire \wr_data_buf[33]_i_1_n_0 ;
  wire \wr_data_buf[34]_i_1_n_0 ;
  wire \wr_data_buf[35]_i_1_n_0 ;
  wire \wr_data_buf[36]_i_1_n_0 ;
  wire \wr_data_buf[37]_i_1_n_0 ;
  wire \wr_data_buf[38]_i_1_n_0 ;
  wire \wr_data_buf[39]_i_2_n_0 ;
  wire \wr_data_buf[39]_i_3_n_0 ;
  wire \wr_data_buf[39]_i_4_n_0 ;
  wire \wr_data_buf[40]_i_1_n_0 ;
  wire \wr_data_buf[40]_i_2_n_0 ;
  wire \wr_data_buf[41]_i_1_n_0 ;
  wire \wr_data_buf[41]_i_2_n_0 ;
  wire \wr_data_buf[42]_i_1_n_0 ;
  wire \wr_data_buf[42]_i_2_n_0 ;
  wire \wr_data_buf[43]_i_1_n_0 ;
  wire \wr_data_buf[43]_i_2_n_0 ;
  wire \wr_data_buf[44]_i_1_n_0 ;
  wire \wr_data_buf[44]_i_2_n_0 ;
  wire \wr_data_buf[45]_i_1_n_0 ;
  wire \wr_data_buf[45]_i_2_n_0 ;
  wire \wr_data_buf[46]_i_1_n_0 ;
  wire \wr_data_buf[46]_i_2_n_0 ;
  wire \wr_data_buf[47]_i_1_n_0 ;
  wire \wr_data_buf[47]_i_2_n_0 ;
  wire \wr_data_buf[47]_i_3_n_0 ;
  wire \wr_data_buf[47]_i_4_n_0 ;
  wire \wr_data_buf[47]_i_5_n_0 ;
  wire \wr_data_buf[47]_i_6_n_0 ;
  wire \wr_data_buf[47]_i_7_n_0 ;
  wire \wr_data_buf[47]_i_8_n_0 ;
  wire \wr_data_buf[48]_i_1_n_0 ;
  wire \wr_data_buf[48]_i_2_n_0 ;
  wire \wr_data_buf[48]_i_3_n_0 ;
  wire \wr_data_buf[49]_i_1_n_0 ;
  wire \wr_data_buf[49]_i_2_n_0 ;
  wire \wr_data_buf[49]_i_3_n_0 ;
  wire \wr_data_buf[50]_i_1_n_0 ;
  wire \wr_data_buf[50]_i_2_n_0 ;
  wire \wr_data_buf[50]_i_3_n_0 ;
  wire \wr_data_buf[51]_i_1_n_0 ;
  wire \wr_data_buf[51]_i_2_n_0 ;
  wire \wr_data_buf[51]_i_3_n_0 ;
  wire \wr_data_buf[52]_i_1_n_0 ;
  wire \wr_data_buf[52]_i_2_n_0 ;
  wire \wr_data_buf[52]_i_3_n_0 ;
  wire \wr_data_buf[53]_i_1_n_0 ;
  wire \wr_data_buf[53]_i_2_n_0 ;
  wire \wr_data_buf[53]_i_3_n_0 ;
  wire \wr_data_buf[54]_i_1_n_0 ;
  wire \wr_data_buf[54]_i_2_n_0 ;
  wire \wr_data_buf[54]_i_3_n_0 ;
  wire \wr_data_buf[55]_i_1_n_0 ;
  wire \wr_data_buf[55]_i_2_n_0 ;
  wire \wr_data_buf[55]_i_3_n_0 ;
  wire \wr_data_buf[55]_i_4_n_0 ;
  wire \wr_data_buf[55]_i_5_n_0 ;
  wire \wr_data_buf[56]_i_1_n_0 ;
  wire \wr_data_buf[56]_i_2_n_0 ;
  wire \wr_data_buf[56]_i_3_n_0 ;
  wire \wr_data_buf[57]_i_1_n_0 ;
  wire \wr_data_buf[57]_i_2_n_0 ;
  wire \wr_data_buf[57]_i_3_n_0 ;
  wire \wr_data_buf[58]_i_1_n_0 ;
  wire \wr_data_buf[58]_i_2_n_0 ;
  wire \wr_data_buf[58]_i_3_n_0 ;
  wire \wr_data_buf[59]_i_1_n_0 ;
  wire \wr_data_buf[59]_i_2_n_0 ;
  wire \wr_data_buf[59]_i_3_n_0 ;
  wire \wr_data_buf[60]_i_1_n_0 ;
  wire \wr_data_buf[60]_i_2_n_0 ;
  wire \wr_data_buf[60]_i_3_n_0 ;
  wire \wr_data_buf[61]_i_1_n_0 ;
  wire \wr_data_buf[61]_i_2_n_0 ;
  wire \wr_data_buf[61]_i_3_n_0 ;
  wire \wr_data_buf[62]_i_1_n_0 ;
  wire \wr_data_buf[62]_i_2_n_0 ;
  wire \wr_data_buf[62]_i_3_n_0 ;
  wire \wr_data_buf[63]_i_1_n_0 ;
  wire \wr_data_buf[63]_i_2_n_0 ;
  wire \wr_data_buf[63]_i_3_n_0 ;
  wire \wr_data_buf[63]_i_4_n_0 ;
  wire \wr_data_buf[63]_i_5_n_0 ;
  wire \wr_data_buf[63]_i_6_n_0 ;
  wire \wr_data_buf[71]_i_1_n_0 ;
  wire \wr_data_buf[71]_i_2_n_0 ;
  wire \wr_data_buf[72]_i_1_n_0 ;
  wire \wr_data_buf[73]_i_1_n_0 ;
  wire \wr_data_buf[74]_i_1_n_0 ;
  wire \wr_data_buf[75]_i_1_n_0 ;
  wire \wr_data_buf[76]_i_1_n_0 ;
  wire \wr_data_buf[77]_i_1_n_0 ;
  wire \wr_data_buf[78]_i_1_n_0 ;
  wire \wr_data_buf[79]_i_1_n_0 ;
  wire \wr_data_buf[79]_i_2_n_0 ;
  wire \wr_data_buf[79]_i_3_n_0 ;
  wire \wr_data_buf[79]_i_4_n_0 ;
  wire \wr_data_buf[79]_i_5_n_0 ;
  wire \wr_data_buf[7]_i_1_n_0 ;
  wire \wr_data_buf[7]_i_2_n_0 ;
  wire \wr_data_buf[80]_i_1_n_0 ;
  wire \wr_data_buf[81]_i_1_n_0 ;
  wire \wr_data_buf[82]_i_1_n_0 ;
  wire \wr_data_buf[83]_i_1_n_0 ;
  wire \wr_data_buf[84]_i_1_n_0 ;
  wire \wr_data_buf[85]_i_1_n_0 ;
  wire \wr_data_buf[86]_i_1_n_0 ;
  wire \wr_data_buf[87]_i_1_n_0 ;
  wire \wr_data_buf[87]_i_2_n_0 ;
  wire \wr_data_buf[87]_i_3_n_0 ;
  wire \wr_data_buf[87]_i_4_n_0 ;
  wire \wr_data_buf[87]_i_5_n_0 ;
  wire \wr_data_buf[88]_i_1_n_0 ;
  wire \wr_data_buf[88]_i_2_n_0 ;
  wire \wr_data_buf[89]_i_1_n_0 ;
  wire \wr_data_buf[89]_i_2_n_0 ;
  wire \wr_data_buf[8]_i_1_n_0 ;
  wire \wr_data_buf[90]_i_1_n_0 ;
  wire \wr_data_buf[90]_i_2_n_0 ;
  wire \wr_data_buf[91]_i_1_n_0 ;
  wire \wr_data_buf[91]_i_2_n_0 ;
  wire \wr_data_buf[92]_i_1_n_0 ;
  wire \wr_data_buf[92]_i_2_n_0 ;
  wire \wr_data_buf[93]_i_1_n_0 ;
  wire \wr_data_buf[93]_i_2_n_0 ;
  wire \wr_data_buf[94]_i_1_n_0 ;
  wire \wr_data_buf[94]_i_2_n_0 ;
  wire \wr_data_buf[95]_i_1_n_0 ;
  wire \wr_data_buf[95]_i_2_n_0 ;
  wire \wr_data_buf[95]_i_3_n_0 ;
  wire \wr_data_buf[95]_i_4_n_0 ;
  wire \wr_data_buf[95]_i_5_n_0 ;
  wire \wr_data_buf[9]_i_1_n_0 ;
  wire \wr_data_buf_reg[39]_i_1_n_0 ;

  LUT2 #(
    .INIT(4'h8)) 
    data_ready_INST_0
       (.I0(fifo_prog_full_ff),
        .I1(fifo_prog_full_ff2),
        .O(data_ready));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \data_write_state[0]_i_1 
       (.I0(aresetn),
        .I1(fifo_wr_en_ff),
        .I2(fifo_wr_en_ff2),
        .I3(fifo_wr_rst_busy),
        .I4(Q[0]),
        .O(\data_write_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0353F353F353F353)) 
    \data_write_state[1]_i_1 
       (.I0(\data_write_state[1]_i_2_n_0 ),
        .I1(data_format[0]),
        .I2(\data_write_state[6]_i_5_n_0 ),
        .I3(Q[1]),
        .I4(\data_write_state[1]_i_3_n_0 ),
        .I5(Q[0]),
        .O(\data_write_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0010FFFF)) 
    \data_write_state[1]_i_2 
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(Q[0]),
        .O(\data_write_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_write_state[1]_i_3 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\data_write_state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \data_write_state[2]_i_1 
       (.I0(\data_write_state[2]_i_2_n_0 ),
        .I1(\data_write_state[6]_i_5_n_0 ),
        .I2(data_format[0]),
        .I3(data_format[1]),
        .O(\data_write_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077BBF700)) 
    \data_write_state[2]_i_2 
       (.I0(Q[0]),
        .I1(\data_write_state[1]_i_3_n_0 ),
        .I2(\wr_data_buf[30]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\data_write_state[2]_i_3_n_0 ),
        .O(\data_write_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_write_state[2]_i_3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(\data_write_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0059FF59FF59FF59)) 
    \data_write_state[3]_i_1 
       (.I0(data_format[2]),
        .I1(data_format[0]),
        .I2(data_format[1]),
        .I3(\data_write_state[6]_i_5_n_0 ),
        .I4(\data_write_state[3]_i_2_n_0 ),
        .I5(\data_write_state[3]_i_3_n_0 ),
        .O(\data_write_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD0FF00FF)) 
    \data_write_state[3]_i_2 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\data_write_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF777777777777)) 
    \data_write_state[3]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(\data_write_state[1]_i_3_n_0 ),
        .O(\data_write_state[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCCAAC0AA)) 
    \data_write_state[4]_i_1 
       (.I0(\data_write_state[4]_i_2_n_0 ),
        .I1(\data_write_state[4]_i_3_n_0 ),
        .I2(Q[4]),
        .I3(\data_write_state[6]_i_5_n_0 ),
        .I4(Q[1]),
        .O(\data_write_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB6)) 
    \data_write_state[4]_i_2 
       (.I0(data_format[0]),
        .I1(data_format[1]),
        .I2(data_format[2]),
        .O(\data_write_state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3F00FF55FF50FF55)) 
    \data_write_state[4]_i_3 
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\data_write_state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h88BBB888)) 
    \data_write_state[5]_i_1 
       (.I0(\data_write_state[5]_i_2_n_0 ),
        .I1(\data_write_state[6]_i_5_n_0 ),
        .I2(data_format[0]),
        .I3(data_format[1]),
        .I4(data_format[2]),
        .O(\data_write_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2223AA20AAAAAAAA)) 
    \data_write_state[5]_i_2 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data_write_state[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4FFFFFFF)) 
    \data_write_state[6]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(data_valid),
        .I2(aresetn),
        .I3(fifo_wr_en_ff),
        .I4(fifo_wr_en_ff2),
        .I5(fifo_wr_rst_busy),
        .O(\data_write_state[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \data_write_state[6]_i_2 
       (.I0(\data_write_state[6]_i_3_n_0 ),
        .I1(\data_write_state[6]_i_4_n_0 ),
        .I2(\data_write_state[6]_i_5_n_0 ),
        .I3(data_format[1]),
        .I4(data_format[2]),
        .O(\data_write_state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFF0EFFFFFF)) 
    \data_write_state[6]_i_3 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[5]),
        .I5(Q[0]),
        .O(\data_write_state[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \data_write_state[6]_i_4 
       (.I0(Q[6]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[5]),
        .O(\data_write_state[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \data_write_state[6]_i_5 
       (.I0(fifo_wr_rst_busy),
        .I1(fifo_wr_en_ff2),
        .I2(fifo_wr_en_ff),
        .I3(aresetn),
        .O(\data_write_state[6]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_write_state_reg[0] 
       (.C(data_clk),
        .CE(\data_write_state[6]_i_1_n_0 ),
        .D(\data_write_state[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_write_state_reg[1] 
       (.C(data_clk),
        .CE(\data_write_state[6]_i_1_n_0 ),
        .D(\data_write_state[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_write_state_reg[2] 
       (.C(data_clk),
        .CE(\data_write_state[6]_i_1_n_0 ),
        .D(\data_write_state[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_write_state_reg[3] 
       (.C(data_clk),
        .CE(\data_write_state[6]_i_1_n_0 ),
        .D(\data_write_state[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_write_state_reg[4] 
       (.C(data_clk),
        .CE(\data_write_state[6]_i_1_n_0 ),
        .D(\data_write_state[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \data_write_state_reg[5] 
       (.C(data_clk),
        .CE(\data_write_state[6]_i_1_n_0 ),
        .D(\data_write_state[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_write_state_reg[6] 
       (.C(data_clk),
        .CE(\data_write_state[6]_i_1_n_0 ),
        .D(\data_write_state[6]_i_2_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDCE fifo_prog_full_ff2_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(fifo_rd_en_i_1_n_0),
        .D(fifo_prog_full_ff),
        .Q(fifo_prog_full_ff2));
  FDCE fifo_prog_full_ff_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(fifo_rd_en_i_1_n_0),
        .D(fifo_prog_full),
        .Q(fifo_prog_full_ff));
  LUT3 #(
    .INIT(8'h02)) 
    fifo_rd_en0
       (.I0(m_axis_rx_tready),
        .I1(fifo_rd_empty),
        .I2(fifo_rd_rst_busy),
        .O(fifo_rd_en0__0));
  LUT1 #(
    .INIT(2'h1)) 
    fifo_rd_en_i_1
       (.I0(aresetn),
        .O(fifo_rd_en_i_1_n_0));
  FDCE fifo_rd_en_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(fifo_rd_en_i_1_n_0),
        .D(fifo_rd_en0__0),
        .Q(fifo_rd_en));
  LUT3 #(
    .INIT(8'h7F)) 
    fifo_srst_INST_0
       (.I0(aresetn),
        .I1(fifo_wr_en_ff),
        .I2(fifo_wr_en_ff2),
        .O(fifo_srst));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[0]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[0]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[0]),
        .O(\fifo_wr_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[100]_i_1 
       (.I0(\fifo_wr_data[100]_i_2_n_0 ),
        .I1(\fifo_wr_data[100]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[100]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[100]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[100]_i_2 
       (.I0(data_in[100]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[36]),
        .O(\fifo_wr_data[100]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[100]_i_3 
       (.I0(data_in[68]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[100]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[4]),
        .O(\fifo_wr_data[100]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[101]_i_1 
       (.I0(\fifo_wr_data[101]_i_2_n_0 ),
        .I1(\fifo_wr_data[101]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[101]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[101]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[101]_i_2 
       (.I0(data_in[101]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[37]),
        .O(\fifo_wr_data[101]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[101]_i_3 
       (.I0(data_in[69]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[101]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[5]),
        .O(\fifo_wr_data[101]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[102]_i_1 
       (.I0(\fifo_wr_data[102]_i_2_n_0 ),
        .I1(\fifo_wr_data[102]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[102]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[102]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[102]_i_2 
       (.I0(data_in[102]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[38]),
        .O(\fifo_wr_data[102]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[102]_i_3 
       (.I0(data_in[70]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[102]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[6]),
        .O(\fifo_wr_data[102]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[103]_i_1 
       (.I0(\fifo_wr_data[103]_i_2_n_0 ),
        .I1(\fifo_wr_data[103]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[103]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[103]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[103]_i_2 
       (.I0(data_in[103]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[39]),
        .O(\fifo_wr_data[103]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[103]_i_3 
       (.I0(data_in[71]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[103]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[7]),
        .O(\fifo_wr_data[103]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[104]_i_1 
       (.I0(\fifo_wr_data[104]_i_2_n_0 ),
        .I1(\fifo_wr_data[104]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[104]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[104]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[104]_i_2 
       (.I0(data_in[104]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[40]),
        .O(\fifo_wr_data[104]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[104]_i_3 
       (.I0(data_in[72]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[104]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[8]),
        .O(\fifo_wr_data[104]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[105]_i_1 
       (.I0(\fifo_wr_data[105]_i_2_n_0 ),
        .I1(\fifo_wr_data[105]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[105]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[105]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[105]_i_2 
       (.I0(data_in[105]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[41]),
        .O(\fifo_wr_data[105]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[105]_i_3 
       (.I0(data_in[73]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[105]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[9]),
        .O(\fifo_wr_data[105]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[106]_i_1 
       (.I0(\fifo_wr_data[106]_i_2_n_0 ),
        .I1(\fifo_wr_data[106]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[106]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[106]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[106]_i_2 
       (.I0(data_in[106]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[42]),
        .O(\fifo_wr_data[106]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[106]_i_3 
       (.I0(data_in[74]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[106]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[10]),
        .O(\fifo_wr_data[106]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[107]_i_1 
       (.I0(\fifo_wr_data[107]_i_2_n_0 ),
        .I1(\fifo_wr_data[107]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[107]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[107]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[107]_i_2 
       (.I0(data_in[107]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[43]),
        .O(\fifo_wr_data[107]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[107]_i_3 
       (.I0(data_in[75]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[107]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[11]),
        .O(\fifo_wr_data[107]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[108]_i_1 
       (.I0(\fifo_wr_data[108]_i_2_n_0 ),
        .I1(\fifo_wr_data[108]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[108]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[108]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[108]_i_2 
       (.I0(data_in[108]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[44]),
        .O(\fifo_wr_data[108]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[108]_i_3 
       (.I0(data_in[76]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[108]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[12]),
        .O(\fifo_wr_data[108]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[109]_i_1 
       (.I0(\fifo_wr_data[109]_i_2_n_0 ),
        .I1(\fifo_wr_data[109]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[109]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[109]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[109]_i_2 
       (.I0(data_in[109]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[45]),
        .O(\fifo_wr_data[109]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[109]_i_3 
       (.I0(data_in[77]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[109]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[13]),
        .O(\fifo_wr_data[109]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[10]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[10]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[10]),
        .O(\fifo_wr_data[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[110]_i_1 
       (.I0(\fifo_wr_data[110]_i_2_n_0 ),
        .I1(\fifo_wr_data[110]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[110]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[110]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[110]_i_2 
       (.I0(data_in[110]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[46]),
        .O(\fifo_wr_data[110]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[110]_i_3 
       (.I0(data_in[78]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[110]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[14]),
        .O(\fifo_wr_data[110]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[111]_i_1 
       (.I0(\fifo_wr_data[111]_i_2_n_0 ),
        .I1(\fifo_wr_data[111]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[111]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[111]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[111]_i_2 
       (.I0(data_in[111]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[47]),
        .O(\fifo_wr_data[111]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[111]_i_3 
       (.I0(data_in[79]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[111]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[15]),
        .O(\fifo_wr_data[111]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \fifo_wr_data[112]_i_1 
       (.I0(\fifo_wr_data[112]_i_2_n_0 ),
        .I1(\fifo_wr_data[112]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(\fifo_wr_data[127]_i_11_n_0 ),
        .I4(\fifo_wr_data[112]_i_4_n_0 ),
        .O(\fifo_wr_data[112]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[112]_i_2 
       (.I0(data_in[112]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[48]),
        .O(\fifo_wr_data[112]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[112]_i_3 
       (.I0(data_in[16]),
        .I1(data_in[80]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[0]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[64]),
        .O(\fifo_wr_data[112]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[112]_i_4 
       (.I0(ila_wr_data_buf[112]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[0]),
        .O(\fifo_wr_data[112]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[113]_i_1 
       (.I0(\fifo_wr_data[113]_i_2_n_0 ),
        .I1(\fifo_wr_data[113]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(\fifo_wr_data[113]_i_4_n_0 ),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[113]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[113]_i_2 
       (.I0(data_in[113]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[49]),
        .O(\fifo_wr_data[113]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[113]_i_3 
       (.I0(data_in[17]),
        .I1(data_in[81]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[1]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[65]),
        .O(\fifo_wr_data[113]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[113]_i_4 
       (.I0(ila_wr_data_buf[113]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[1]),
        .O(\fifo_wr_data[113]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \fifo_wr_data[114]_i_1 
       (.I0(\fifo_wr_data[114]_i_2_n_0 ),
        .I1(\fifo_wr_data[114]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(\fifo_wr_data[127]_i_11_n_0 ),
        .I4(\fifo_wr_data[114]_i_4_n_0 ),
        .O(\fifo_wr_data[114]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[114]_i_2 
       (.I0(data_in[114]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[50]),
        .O(\fifo_wr_data[114]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[114]_i_3 
       (.I0(data_in[18]),
        .I1(data_in[82]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[2]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[66]),
        .O(\fifo_wr_data[114]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[114]_i_4 
       (.I0(ila_wr_data_buf[114]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[2]),
        .O(\fifo_wr_data[114]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[115]_i_1 
       (.I0(\fifo_wr_data[115]_i_2_n_0 ),
        .I1(\fifo_wr_data[115]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(\fifo_wr_data[115]_i_4_n_0 ),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[115]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[115]_i_2 
       (.I0(data_in[115]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[51]),
        .O(\fifo_wr_data[115]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[115]_i_3 
       (.I0(data_in[19]),
        .I1(data_in[83]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[3]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[67]),
        .O(\fifo_wr_data[115]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[115]_i_4 
       (.I0(ila_wr_data_buf[115]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[3]),
        .O(\fifo_wr_data[115]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[116]_i_1 
       (.I0(\fifo_wr_data[116]_i_2_n_0 ),
        .I1(\fifo_wr_data[116]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(\fifo_wr_data[116]_i_4_n_0 ),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[116]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[116]_i_2 
       (.I0(data_in[116]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[52]),
        .O(\fifo_wr_data[116]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[116]_i_3 
       (.I0(data_in[20]),
        .I1(data_in[84]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[4]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[68]),
        .O(\fifo_wr_data[116]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[116]_i_4 
       (.I0(ila_wr_data_buf[116]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[4]),
        .O(\fifo_wr_data[116]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \fifo_wr_data[117]_i_1 
       (.I0(\fifo_wr_data[117]_i_2_n_0 ),
        .I1(\fifo_wr_data[117]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(\fifo_wr_data[127]_i_11_n_0 ),
        .I4(\fifo_wr_data[117]_i_4_n_0 ),
        .O(\fifo_wr_data[117]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[117]_i_2 
       (.I0(data_in[117]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[53]),
        .O(\fifo_wr_data[117]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[117]_i_3 
       (.I0(data_in[21]),
        .I1(data_in[85]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[5]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[69]),
        .O(\fifo_wr_data[117]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[117]_i_4 
       (.I0(ila_wr_data_buf[117]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[5]),
        .O(\fifo_wr_data[117]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[118]_i_1 
       (.I0(\fifo_wr_data[118]_i_2_n_0 ),
        .I1(\fifo_wr_data[118]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(\fifo_wr_data[118]_i_4_n_0 ),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[118]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[118]_i_2 
       (.I0(data_in[118]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[54]),
        .O(\fifo_wr_data[118]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[118]_i_3 
       (.I0(data_in[22]),
        .I1(data_in[86]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[6]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[70]),
        .O(\fifo_wr_data[118]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[118]_i_4 
       (.I0(ila_wr_data_buf[118]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[6]),
        .O(\fifo_wr_data[118]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \fifo_wr_data[119]_i_1 
       (.I0(\fifo_wr_data[119]_i_2_n_0 ),
        .I1(\fifo_wr_data[119]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(\fifo_wr_data[127]_i_11_n_0 ),
        .I4(\fifo_wr_data[119]_i_4_n_0 ),
        .O(\fifo_wr_data[119]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[119]_i_2 
       (.I0(data_in[119]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[55]),
        .O(\fifo_wr_data[119]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[119]_i_3 
       (.I0(data_in[23]),
        .I1(data_in[87]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[7]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[71]),
        .O(\fifo_wr_data[119]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[119]_i_4 
       (.I0(ila_wr_data_buf[119]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[7]),
        .O(\fifo_wr_data[119]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[11]_i_1 
       (.I0(data_in[11]),
        .I1(ila_wr_data_buf[11]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fifo_wr_data[120]_i_1 
       (.I0(\fifo_wr_data[120]_i_2_n_0 ),
        .I1(\fifo_wr_data[127]_i_11_n_0 ),
        .I2(\fifo_wr_data[120]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[120]_i_4_n_0 ),
        .O(\fifo_wr_data[120]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[120]_i_2 
       (.I0(data_in[120]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[56]),
        .O(\fifo_wr_data[120]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[120]_i_3 
       (.I0(data_in[24]),
        .I1(data_in[88]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[8]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[72]),
        .O(\fifo_wr_data[120]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \fifo_wr_data[120]_i_4 
       (.I0(data_in[64]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[0]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[120]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fifo_wr_data[121]_i_1 
       (.I0(\fifo_wr_data[121]_i_2_n_0 ),
        .I1(\fifo_wr_data[127]_i_11_n_0 ),
        .I2(\fifo_wr_data[121]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[121]_i_4_n_0 ),
        .O(\fifo_wr_data[121]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[121]_i_2 
       (.I0(data_in[121]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[57]),
        .O(\fifo_wr_data[121]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[121]_i_3 
       (.I0(data_in[25]),
        .I1(data_in[89]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[9]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[73]),
        .O(\fifo_wr_data[121]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \fifo_wr_data[121]_i_4 
       (.I0(data_in[65]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[1]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[121]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fifo_wr_data[122]_i_1 
       (.I0(\fifo_wr_data[122]_i_2_n_0 ),
        .I1(\fifo_wr_data[127]_i_11_n_0 ),
        .I2(\fifo_wr_data[122]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[122]_i_4_n_0 ),
        .O(\fifo_wr_data[122]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[122]_i_2 
       (.I0(data_in[122]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[58]),
        .O(\fifo_wr_data[122]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[122]_i_3 
       (.I0(data_in[26]),
        .I1(data_in[90]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[10]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[74]),
        .O(\fifo_wr_data[122]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \fifo_wr_data[122]_i_4 
       (.I0(data_in[66]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[2]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[122]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fifo_wr_data[123]_i_1 
       (.I0(\fifo_wr_data[123]_i_2_n_0 ),
        .I1(\fifo_wr_data[127]_i_11_n_0 ),
        .I2(\fifo_wr_data[123]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[123]_i_4_n_0 ),
        .O(\fifo_wr_data[123]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[123]_i_2 
       (.I0(data_in[123]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[59]),
        .O(\fifo_wr_data[123]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[123]_i_3 
       (.I0(data_in[27]),
        .I1(data_in[91]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[11]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[75]),
        .O(\fifo_wr_data[123]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \fifo_wr_data[123]_i_4 
       (.I0(data_in[67]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[3]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[123]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fifo_wr_data[124]_i_1 
       (.I0(\fifo_wr_data[124]_i_2_n_0 ),
        .I1(\fifo_wr_data[127]_i_11_n_0 ),
        .I2(\fifo_wr_data[124]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[124]_i_4_n_0 ),
        .O(\fifo_wr_data[124]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[124]_i_2 
       (.I0(data_in[124]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[60]),
        .O(\fifo_wr_data[124]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[124]_i_3 
       (.I0(data_in[28]),
        .I1(data_in[92]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[12]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[76]),
        .O(\fifo_wr_data[124]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \fifo_wr_data[124]_i_4 
       (.I0(data_in[68]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[4]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[124]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fifo_wr_data[125]_i_1 
       (.I0(\fifo_wr_data[125]_i_2_n_0 ),
        .I1(\fifo_wr_data[127]_i_11_n_0 ),
        .I2(\fifo_wr_data[125]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[125]_i_4_n_0 ),
        .O(\fifo_wr_data[125]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[125]_i_2 
       (.I0(data_in[125]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[61]),
        .O(\fifo_wr_data[125]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[125]_i_3 
       (.I0(data_in[29]),
        .I1(data_in[93]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[13]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[77]),
        .O(\fifo_wr_data[125]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \fifo_wr_data[125]_i_4 
       (.I0(data_in[69]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[5]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[125]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fifo_wr_data[126]_i_1 
       (.I0(\fifo_wr_data[126]_i_2_n_0 ),
        .I1(\fifo_wr_data[127]_i_11_n_0 ),
        .I2(\fifo_wr_data[126]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[126]_i_4_n_0 ),
        .O(\fifo_wr_data[126]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[126]_i_2 
       (.I0(data_in[126]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[62]),
        .O(\fifo_wr_data[126]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[126]_i_3 
       (.I0(data_in[30]),
        .I1(data_in[94]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[14]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[78]),
        .O(\fifo_wr_data[126]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \fifo_wr_data[126]_i_4 
       (.I0(data_in[70]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[6]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[126]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \fifo_wr_data[127]_i_1 
       (.I0(aresetn),
        .I1(fifo_wr_en_ff),
        .I2(fifo_wr_en_ff2),
        .I3(fifo_wr_rst_busy),
        .O(\fifo_wr_data[127]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[127]_i_10 
       (.I0(data_in[127]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[63]),
        .O(\fifo_wr_data[127]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hE0EE)) 
    \fifo_wr_data[127]_i_11 
       (.I0(\fifo_wr_data[62]_i_2_n_0 ),
        .I1(\fifo_wr_data[127]_i_13_n_0 ),
        .I2(\fifo_wr_data[127]_i_20_n_0 ),
        .I3(Q[0]),
        .O(\fifo_wr_data[127]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_wr_data[127]_i_12 
       (.I0(data_in[31]),
        .I1(data_in[95]),
        .I2(\fifo_wr_data[62]_i_2_n_0 ),
        .I3(data_in[15]),
        .I4(\fifo_wr_data[127]_i_21_n_0 ),
        .I5(data_in[79]),
        .O(\fifo_wr_data[127]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F6FFFFFF)) 
    \fifo_wr_data[127]_i_13 
       (.I0(Q[6]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(\fifo_wr_data[127]_i_22_n_0 ),
        .I5(\fifo_wr_data[127]_i_23_n_0 ),
        .O(\fifo_wr_data[127]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \fifo_wr_data[127]_i_14 
       (.I0(data_in[71]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[7]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[127]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h08448000)) 
    \fifo_wr_data[127]_i_15 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[5]),
        .O(\fifo_wr_data[127]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hC024120000001000)) 
    \fifo_wr_data[127]_i_16 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\fifo_wr_data[127]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_wr_data[127]_i_17 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\fifo_wr_data[127]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h6233)) 
    \fifo_wr_data[127]_i_18 
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\fifo_wr_data[127]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h7FBF7FF7FFFFFFF7)) 
    \fifo_wr_data[127]_i_19 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[0]),
        .O(\fifo_wr_data[127]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFEFEFF)) 
    \fifo_wr_data[127]_i_2 
       (.I0(\fifo_wr_data[127]_i_4_n_0 ),
        .I1(\fifo_wr_data[127]_i_5_n_0 ),
        .I2(\fifo_wr_data[127]_i_6_n_0 ),
        .I3(\fifo_wr_data[127]_i_7_n_0 ),
        .I4(\fifo_wr_data[127]_i_8_n_0 ),
        .I5(\fifo_wr_data[127]_i_9_n_0 ),
        .O(\fifo_wr_data[127]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFBFFBFFFDFF)) 
    \fifo_wr_data[127]_i_20 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\fifo_wr_data[127]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h5500550055005530)) 
    \fifo_wr_data[127]_i_21 
       (.I0(\fifo_wr_data[95]_i_6_n_0 ),
        .I1(\data_write_state[1]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[4]),
        .I5(\fifo_wr_data[127]_i_24_n_0 ),
        .O(\fifo_wr_data[127]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \fifo_wr_data[127]_i_22 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[4]),
        .O(\fifo_wr_data[127]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hF6F6FDF7460F0F47)) 
    \fifo_wr_data[127]_i_23 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[6]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\fifo_wr_data[127]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fifo_wr_data[127]_i_24 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\fifo_wr_data[127]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \fifo_wr_data[127]_i_3 
       (.I0(\fifo_wr_data[127]_i_10_n_0 ),
        .I1(\fifo_wr_data[127]_i_11_n_0 ),
        .I2(\fifo_wr_data[127]_i_12_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[127]_i_14_n_0 ),
        .O(\fifo_wr_data[127]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF14451415)) 
    \fifo_wr_data[127]_i_4 
       (.I0(Q[6]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[1]),
        .I5(\fifo_wr_data[127]_i_15_n_0 ),
        .O(\fifo_wr_data[127]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4100410041004DFF)) 
    \fifo_wr_data[127]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\fifo_wr_data[127]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00040C00)) 
    \fifo_wr_data[127]_i_6 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\fifo_wr_data[127]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_wr_data[127]_i_7 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\fifo_wr_data[127]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \fifo_wr_data[127]_i_8 
       (.I0(Q[5]),
        .I1(Q[0]),
        .O(\fifo_wr_data[127]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2002220202020202)) 
    \fifo_wr_data[127]_i_9 
       (.I0(\fifo_wr_data[127]_i_16_n_0 ),
        .I1(data_valid),
        .I2(Q[5]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\fifo_wr_data[127]_i_17_n_0 ),
        .O(\fifo_wr_data[127]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[12]_i_1 
       (.I0(data_in[12]),
        .I1(ila_wr_data_buf[12]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[13]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[13]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[13]),
        .O(\fifo_wr_data[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[14]_i_1 
       (.I0(data_in[14]),
        .I1(ila_wr_data_buf[14]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[15]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[15]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[15]),
        .O(\fifo_wr_data[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[16]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[16]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[16]),
        .O(\fifo_wr_data[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[17]_i_1 
       (.I0(data_in[17]),
        .I1(ila_wr_data_buf[17]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[18]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[18]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[18]),
        .O(\fifo_wr_data[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[19]_i_1 
       (.I0(data_in[19]),
        .I1(ila_wr_data_buf[19]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[1]_i_1 
       (.I0(data_in[1]),
        .I1(ila_wr_data_buf[1]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[20]_i_1 
       (.I0(data_in[20]),
        .I1(ila_wr_data_buf[20]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[21]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[21]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[21]),
        .O(\fifo_wr_data[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[22]_i_1 
       (.I0(data_in[22]),
        .I1(ila_wr_data_buf[22]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[23]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[23]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[23]),
        .O(\fifo_wr_data[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[24]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[24]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[24]),
        .O(\fifo_wr_data[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[25]_i_1 
       (.I0(data_in[25]),
        .I1(ila_wr_data_buf[25]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[26]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[26]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[26]),
        .O(\fifo_wr_data[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[27]_i_1 
       (.I0(data_in[27]),
        .I1(ila_wr_data_buf[27]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[28]_i_1 
       (.I0(data_in[28]),
        .I1(ila_wr_data_buf[28]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[29]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[29]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[29]),
        .O(\fifo_wr_data[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[2]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[2]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[2]),
        .O(\fifo_wr_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[30]_i_1 
       (.I0(data_in[30]),
        .I1(ila_wr_data_buf[30]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[31]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[31]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[31]),
        .O(\fifo_wr_data[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[32]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[32]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[32]),
        .O(\fifo_wr_data[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[33]_i_1 
       (.I0(data_in[33]),
        .I1(ila_wr_data_buf[33]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[33]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[34]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[34]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[34]),
        .O(\fifo_wr_data[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[35]_i_1 
       (.I0(data_in[35]),
        .I1(ila_wr_data_buf[35]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[36]_i_1 
       (.I0(data_in[36]),
        .I1(ila_wr_data_buf[36]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[36]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[37]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[37]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[37]),
        .O(\fifo_wr_data[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[38]_i_1 
       (.I0(data_in[38]),
        .I1(ila_wr_data_buf[38]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[38]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[39]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[39]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[39]),
        .O(\fifo_wr_data[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[3]_i_1 
       (.I0(data_in[3]),
        .I1(ila_wr_data_buf[3]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[40]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[40]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[40]),
        .O(\fifo_wr_data[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[41]_i_1 
       (.I0(data_in[41]),
        .I1(ila_wr_data_buf[41]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[41]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[42]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[42]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[42]),
        .O(\fifo_wr_data[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[43]_i_1 
       (.I0(data_in[43]),
        .I1(ila_wr_data_buf[43]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[44]_i_1 
       (.I0(data_in[44]),
        .I1(ila_wr_data_buf[44]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[44]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[45]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[45]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[45]),
        .O(\fifo_wr_data[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[46]_i_1 
       (.I0(data_in[46]),
        .I1(ila_wr_data_buf[46]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[46]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[47]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[47]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[47]),
        .O(\fifo_wr_data[47]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[48]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[48]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[48]),
        .O(\fifo_wr_data[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[49]_i_1 
       (.I0(data_in[49]),
        .I1(ila_wr_data_buf[49]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[49]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[4]_i_1 
       (.I0(data_in[4]),
        .I1(ila_wr_data_buf[4]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[50]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[50]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[50]),
        .O(\fifo_wr_data[50]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[51]_i_1 
       (.I0(data_in[51]),
        .I1(ila_wr_data_buf[51]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[51]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[52]_i_1 
       (.I0(data_in[52]),
        .I1(ila_wr_data_buf[52]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[52]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[53]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[53]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[53]),
        .O(\fifo_wr_data[53]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[54]_i_1 
       (.I0(data_in[54]),
        .I1(ila_wr_data_buf[54]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[54]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[55]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[55]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[55]),
        .O(\fifo_wr_data[55]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[56]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[56]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[56]),
        .O(\fifo_wr_data[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[57]_i_1 
       (.I0(data_in[57]),
        .I1(ila_wr_data_buf[57]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[57]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[58]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[58]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[58]),
        .O(\fifo_wr_data[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[59]_i_1 
       (.I0(data_in[59]),
        .I1(ila_wr_data_buf[59]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[59]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[5]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[5]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[5]),
        .O(\fifo_wr_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[60]_i_1 
       (.I0(data_in[60]),
        .I1(ila_wr_data_buf[60]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[60]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[61]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[61]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[61]),
        .O(\fifo_wr_data[61]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[62]_i_1 
       (.I0(data_in[62]),
        .I1(ila_wr_data_buf[62]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[62]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000F85)) 
    \fifo_wr_data[62]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(\fifo_wr_data[127]_i_19_n_0 ),
        .O(\fifo_wr_data[62]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[63]_i_1 
       (.I0(\fifo_wr_data[63]_i_2_n_0 ),
        .I1(data_in[63]),
        .I2(\fifo_wr_data[63]_i_3_n_0 ),
        .I3(ila_wr_data_buf[63]),
        .O(\fifo_wr_data[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \fifo_wr_data[63]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\data_write_state[1]_i_3_n_0 ),
        .O(\fifo_wr_data[63]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \fifo_wr_data[63]_i_3 
       (.I0(\fifo_wr_data[62]_i_2_n_0 ),
        .I1(\fifo_wr_data[127]_i_13_n_0 ),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .O(\fifo_wr_data[63]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[64]_i_1 
       (.I0(\fifo_wr_data[64]_i_2_n_0 ),
        .I1(\fifo_wr_data[64]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[64]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[64]_i_2 
       (.I0(data_in[64]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[0]),
        .O(\fifo_wr_data[64]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[64]_i_3 
       (.I0(ila_wr_data_buf[64]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[0]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[64]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[65]_i_1 
       (.I0(\fifo_wr_data[65]_i_2_n_0 ),
        .I1(\fifo_wr_data[65]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[65]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[65]_i_2 
       (.I0(data_in[65]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[1]),
        .O(\fifo_wr_data[65]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[65]_i_3 
       (.I0(ila_wr_data_buf[65]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[1]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[65]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[66]_i_1 
       (.I0(\fifo_wr_data[66]_i_2_n_0 ),
        .I1(\fifo_wr_data[66]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[66]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[66]_i_2 
       (.I0(data_in[66]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[2]),
        .O(\fifo_wr_data[66]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[66]_i_3 
       (.I0(ila_wr_data_buf[66]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[2]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[66]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[67]_i_1 
       (.I0(\fifo_wr_data[67]_i_2_n_0 ),
        .I1(\fifo_wr_data[67]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[67]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[67]_i_2 
       (.I0(data_in[67]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[3]),
        .O(\fifo_wr_data[67]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[67]_i_3 
       (.I0(ila_wr_data_buf[67]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[3]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[67]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[68]_i_1 
       (.I0(\fifo_wr_data[68]_i_2_n_0 ),
        .I1(\fifo_wr_data[68]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[68]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[68]_i_2 
       (.I0(data_in[68]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[4]),
        .O(\fifo_wr_data[68]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[68]_i_3 
       (.I0(ila_wr_data_buf[68]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[4]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[68]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[69]_i_1 
       (.I0(\fifo_wr_data[69]_i_2_n_0 ),
        .I1(\fifo_wr_data[69]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[69]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[69]_i_2 
       (.I0(data_in[69]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[5]),
        .O(\fifo_wr_data[69]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[69]_i_3 
       (.I0(ila_wr_data_buf[69]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[5]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[69]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[6]_i_1 
       (.I0(data_in[6]),
        .I1(ila_wr_data_buf[6]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[70]_i_1 
       (.I0(\fifo_wr_data[70]_i_2_n_0 ),
        .I1(\fifo_wr_data[70]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[70]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[70]_i_2 
       (.I0(data_in[70]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[6]),
        .O(\fifo_wr_data[70]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[70]_i_3 
       (.I0(ila_wr_data_buf[70]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[6]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[70]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[71]_i_1 
       (.I0(\fifo_wr_data[71]_i_2_n_0 ),
        .I1(\fifo_wr_data[71]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[71]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[71]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[71]_i_2 
       (.I0(data_in[71]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[7]),
        .O(\fifo_wr_data[71]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[71]_i_3 
       (.I0(ila_wr_data_buf[71]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[7]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[71]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[72]_i_1 
       (.I0(\fifo_wr_data[72]_i_2_n_0 ),
        .I1(\fifo_wr_data[72]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[72]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[72]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[72]_i_2 
       (.I0(data_in[72]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[8]),
        .O(\fifo_wr_data[72]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[72]_i_3 
       (.I0(ila_wr_data_buf[72]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[8]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[72]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[73]_i_1 
       (.I0(\fifo_wr_data[73]_i_2_n_0 ),
        .I1(\fifo_wr_data[73]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[73]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[73]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[73]_i_2 
       (.I0(data_in[73]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[9]),
        .O(\fifo_wr_data[73]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[73]_i_3 
       (.I0(ila_wr_data_buf[73]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[9]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[73]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[74]_i_1 
       (.I0(\fifo_wr_data[74]_i_2_n_0 ),
        .I1(\fifo_wr_data[74]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[74]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[74]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[74]_i_2 
       (.I0(data_in[74]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[10]),
        .O(\fifo_wr_data[74]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[74]_i_3 
       (.I0(ila_wr_data_buf[74]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[10]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[74]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[75]_i_1 
       (.I0(\fifo_wr_data[75]_i_2_n_0 ),
        .I1(\fifo_wr_data[75]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[75]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[75]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[75]_i_2 
       (.I0(data_in[75]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[11]),
        .O(\fifo_wr_data[75]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[75]_i_3 
       (.I0(ila_wr_data_buf[75]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[11]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[75]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[76]_i_1 
       (.I0(\fifo_wr_data[76]_i_2_n_0 ),
        .I1(\fifo_wr_data[76]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[76]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[76]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[76]_i_2 
       (.I0(data_in[76]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[12]),
        .O(\fifo_wr_data[76]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[76]_i_3 
       (.I0(ila_wr_data_buf[76]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[12]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[76]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[77]_i_1 
       (.I0(\fifo_wr_data[77]_i_2_n_0 ),
        .I1(\fifo_wr_data[77]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[77]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[77]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[77]_i_2 
       (.I0(data_in[77]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[13]),
        .O(\fifo_wr_data[77]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[77]_i_3 
       (.I0(ila_wr_data_buf[77]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[13]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[77]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[78]_i_1 
       (.I0(\fifo_wr_data[78]_i_2_n_0 ),
        .I1(\fifo_wr_data[78]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[78]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[78]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[78]_i_2 
       (.I0(data_in[78]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[14]),
        .O(\fifo_wr_data[78]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[78]_i_3 
       (.I0(ila_wr_data_buf[78]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[14]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[78]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[79]_i_1 
       (.I0(\fifo_wr_data[79]_i_2_n_0 ),
        .I1(\fifo_wr_data[79]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[79]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[79]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \fifo_wr_data[79]_i_2 
       (.I0(data_in[79]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(data_in[15]),
        .O(\fifo_wr_data[79]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB8AA)) 
    \fifo_wr_data[79]_i_3 
       (.I0(ila_wr_data_buf[79]),
        .I1(\fifo_wr_data[127]_i_21_n_0 ),
        .I2(data_in[15]),
        .I3(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[79]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[7]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[7]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[7]),
        .O(\fifo_wr_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CF00C000)) 
    \fifo_wr_data[80]_i_1 
       (.I0(\fifo_wr_data[80]_i_2_n_0 ),
        .I1(data_in[16]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[80]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[80]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[80]_i_2 
       (.I0(data_in[80]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[16]),
        .O(\fifo_wr_data[80]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CFFFC0FF)) 
    \fifo_wr_data[81]_i_1 
       (.I0(\fifo_wr_data[81]_i_2_n_0 ),
        .I1(data_in[17]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[81]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[81]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[81]_i_2 
       (.I0(data_in[81]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[17]),
        .O(\fifo_wr_data[81]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CF00C000)) 
    \fifo_wr_data[82]_i_1 
       (.I0(\fifo_wr_data[82]_i_2_n_0 ),
        .I1(data_in[18]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[82]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[82]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[82]_i_2 
       (.I0(data_in[82]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[18]),
        .O(\fifo_wr_data[82]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CFFFC0FF)) 
    \fifo_wr_data[83]_i_1 
       (.I0(\fifo_wr_data[83]_i_2_n_0 ),
        .I1(data_in[19]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[83]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[83]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[83]_i_2 
       (.I0(data_in[83]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[19]),
        .O(\fifo_wr_data[83]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CFFFC0FF)) 
    \fifo_wr_data[84]_i_1 
       (.I0(\fifo_wr_data[84]_i_2_n_0 ),
        .I1(data_in[20]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[84]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[84]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[84]_i_2 
       (.I0(data_in[84]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[20]),
        .O(\fifo_wr_data[84]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CF00C000)) 
    \fifo_wr_data[85]_i_1 
       (.I0(\fifo_wr_data[85]_i_2_n_0 ),
        .I1(data_in[21]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[85]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[85]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[85]_i_2 
       (.I0(data_in[85]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[21]),
        .O(\fifo_wr_data[85]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CFFFC0FF)) 
    \fifo_wr_data[86]_i_1 
       (.I0(\fifo_wr_data[86]_i_2_n_0 ),
        .I1(data_in[22]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[86]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[86]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[86]_i_2 
       (.I0(data_in[86]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[22]),
        .O(\fifo_wr_data[86]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CF00C000)) 
    \fifo_wr_data[87]_i_1 
       (.I0(\fifo_wr_data[87]_i_2_n_0 ),
        .I1(data_in[23]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[87]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[87]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[87]_i_2 
       (.I0(data_in[87]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[23]),
        .O(\fifo_wr_data[87]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CF00C000)) 
    \fifo_wr_data[88]_i_1 
       (.I0(\fifo_wr_data[88]_i_2_n_0 ),
        .I1(data_in[24]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[88]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[88]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[88]_i_2 
       (.I0(data_in[88]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[24]),
        .O(\fifo_wr_data[88]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CFFFC0FF)) 
    \fifo_wr_data[89]_i_1 
       (.I0(\fifo_wr_data[89]_i_2_n_0 ),
        .I1(data_in[25]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[89]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[89]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[89]_i_2 
       (.I0(data_in[89]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[25]),
        .O(\fifo_wr_data[89]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fifo_wr_data[8]_i_1 
       (.I0(\fifo_wr_data[63]_i_3_n_0 ),
        .I1(ila_wr_data_buf[8]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(data_in[8]),
        .O(\fifo_wr_data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CF00C000)) 
    \fifo_wr_data[90]_i_1 
       (.I0(\fifo_wr_data[90]_i_2_n_0 ),
        .I1(data_in[26]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[90]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[90]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[90]_i_2 
       (.I0(data_in[90]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[26]),
        .O(\fifo_wr_data[90]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CFFFC0FF)) 
    \fifo_wr_data[91]_i_1 
       (.I0(\fifo_wr_data[91]_i_2_n_0 ),
        .I1(data_in[27]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[91]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[91]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[91]_i_2 
       (.I0(data_in[91]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[27]),
        .O(\fifo_wr_data[91]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CFFFC0FF)) 
    \fifo_wr_data[92]_i_1 
       (.I0(\fifo_wr_data[92]_i_2_n_0 ),
        .I1(data_in[28]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[92]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[92]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[92]_i_2 
       (.I0(data_in[92]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[28]),
        .O(\fifo_wr_data[92]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CF00C000)) 
    \fifo_wr_data[93]_i_1 
       (.I0(\fifo_wr_data[93]_i_2_n_0 ),
        .I1(data_in[29]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[93]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[93]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[93]_i_2 
       (.I0(data_in[93]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[29]),
        .O(\fifo_wr_data[93]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CFFFC0FF)) 
    \fifo_wr_data[94]_i_1 
       (.I0(\fifo_wr_data[94]_i_2_n_0 ),
        .I1(data_in[30]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[94]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[94]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[94]_i_2 
       (.I0(data_in[94]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[30]),
        .O(\fifo_wr_data[94]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAA00CF00C000)) 
    \fifo_wr_data[95]_i_1 
       (.I0(\fifo_wr_data[95]_i_2_n_0 ),
        .I1(data_in[31]),
        .I2(\fifo_wr_data[95]_i_3_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(ila_wr_data_buf[95]),
        .I5(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[95]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[95]_i_2 
       (.I0(data_in[95]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[31]),
        .O(\fifo_wr_data[95]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4440444000004440)) 
    \fifo_wr_data[95]_i_3 
       (.I0(\fifo_wr_data[127]_i_19_n_0 ),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[95]_i_4_n_0 ),
        .I3(\fifo_wr_data[95]_i_5_n_0 ),
        .I4(Q[0]),
        .I5(\fifo_wr_data[95]_i_6_n_0 ),
        .O(\fifo_wr_data[95]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \fifo_wr_data[95]_i_4 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\fifo_wr_data[95]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \fifo_wr_data[95]_i_5 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\fifo_wr_data[95]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFEFFFFDF7FF)) 
    \fifo_wr_data[95]_i_6 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(Q[4]),
        .O(\fifo_wr_data[95]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[96]_i_1 
       (.I0(\fifo_wr_data[96]_i_2_n_0 ),
        .I1(\fifo_wr_data[96]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[96]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[96]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[96]_i_2 
       (.I0(data_in[96]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[32]),
        .O(\fifo_wr_data[96]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[96]_i_3 
       (.I0(data_in[64]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[96]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[0]),
        .O(\fifo_wr_data[96]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[97]_i_1 
       (.I0(\fifo_wr_data[97]_i_2_n_0 ),
        .I1(\fifo_wr_data[97]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[97]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[97]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[97]_i_2 
       (.I0(data_in[97]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[33]),
        .O(\fifo_wr_data[97]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[97]_i_3 
       (.I0(data_in[65]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[97]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[1]),
        .O(\fifo_wr_data[97]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \fifo_wr_data[98]_i_1 
       (.I0(\fifo_wr_data[98]_i_2_n_0 ),
        .I1(\fifo_wr_data[98]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[98]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[98]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[98]_i_2 
       (.I0(data_in[98]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[34]),
        .O(\fifo_wr_data[98]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[98]_i_3 
       (.I0(data_in[66]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[98]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[2]),
        .O(\fifo_wr_data[98]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \fifo_wr_data[99]_i_1 
       (.I0(\fifo_wr_data[99]_i_2_n_0 ),
        .I1(\fifo_wr_data[99]_i_3_n_0 ),
        .I2(\fifo_wr_data[127]_i_13_n_0 ),
        .I3(ila_wr_data_buf[99]),
        .I4(\fifo_wr_data[127]_i_11_n_0 ),
        .O(\fifo_wr_data[99]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \fifo_wr_data[99]_i_2 
       (.I0(data_in[99]),
        .I1(\fifo_wr_data[127]_i_18_n_0 ),
        .I2(\fifo_wr_data[127]_i_19_n_0 ),
        .I3(data_in[35]),
        .O(\fifo_wr_data[99]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \fifo_wr_data[99]_i_3 
       (.I0(data_in[67]),
        .I1(\fifo_wr_data[62]_i_2_n_0 ),
        .I2(ila_wr_data_buf[99]),
        .I3(\fifo_wr_data[127]_i_21_n_0 ),
        .I4(data_in[3]),
        .O(\fifo_wr_data[99]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCACACAFF)) 
    \fifo_wr_data[9]_i_1 
       (.I0(data_in[9]),
        .I1(ila_wr_data_buf[9]),
        .I2(\fifo_wr_data[63]_i_2_n_0 ),
        .I3(\fifo_wr_data[127]_i_13_n_0 ),
        .I4(\fifo_wr_data[62]_i_2_n_0 ),
        .O(\fifo_wr_data[9]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[0] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[0]_i_1_n_0 ),
        .Q(fifo_wr_data[0]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[100] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[100]_i_1_n_0 ),
        .Q(fifo_wr_data[100]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[101] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[101]_i_1_n_0 ),
        .Q(fifo_wr_data[101]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[102] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[102]_i_1_n_0 ),
        .Q(fifo_wr_data[102]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[103] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[103]_i_1_n_0 ),
        .Q(fifo_wr_data[103]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[104] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[104]_i_1_n_0 ),
        .Q(fifo_wr_data[104]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[105] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[105]_i_1_n_0 ),
        .Q(fifo_wr_data[105]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[106] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[106]_i_1_n_0 ),
        .Q(fifo_wr_data[106]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[107] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[107]_i_1_n_0 ),
        .Q(fifo_wr_data[107]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[108] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[108]_i_1_n_0 ),
        .Q(fifo_wr_data[108]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[109] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[109]_i_1_n_0 ),
        .Q(fifo_wr_data[109]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[10] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[10]_i_1_n_0 ),
        .Q(fifo_wr_data[10]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[110] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[110]_i_1_n_0 ),
        .Q(fifo_wr_data[110]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[111] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[111]_i_1_n_0 ),
        .Q(fifo_wr_data[111]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[112] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[112]_i_1_n_0 ),
        .Q(fifo_wr_data[112]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[113] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[113]_i_1_n_0 ),
        .Q(fifo_wr_data[113]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[114] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[114]_i_1_n_0 ),
        .Q(fifo_wr_data[114]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[115] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[115]_i_1_n_0 ),
        .Q(fifo_wr_data[115]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[116] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[116]_i_1_n_0 ),
        .Q(fifo_wr_data[116]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[117] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[117]_i_1_n_0 ),
        .Q(fifo_wr_data[117]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[118] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[118]_i_1_n_0 ),
        .Q(fifo_wr_data[118]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[119] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[119]_i_1_n_0 ),
        .Q(fifo_wr_data[119]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[11] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[11]_i_1_n_0 ),
        .Q(fifo_wr_data[11]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[120] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[120]_i_1_n_0 ),
        .Q(fifo_wr_data[120]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[121] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[121]_i_1_n_0 ),
        .Q(fifo_wr_data[121]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[122] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[122]_i_1_n_0 ),
        .Q(fifo_wr_data[122]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[123] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[123]_i_1_n_0 ),
        .Q(fifo_wr_data[123]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[124] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[124]_i_1_n_0 ),
        .Q(fifo_wr_data[124]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[125] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[125]_i_1_n_0 ),
        .Q(fifo_wr_data[125]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[126] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[126]_i_1_n_0 ),
        .Q(fifo_wr_data[126]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[127] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[127]_i_3_n_0 ),
        .Q(fifo_wr_data[127]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[12] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[12]_i_1_n_0 ),
        .Q(fifo_wr_data[12]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[13] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[13]_i_1_n_0 ),
        .Q(fifo_wr_data[13]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[14] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[14]_i_1_n_0 ),
        .Q(fifo_wr_data[14]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[15] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[15]_i_1_n_0 ),
        .Q(fifo_wr_data[15]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[16] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[16]_i_1_n_0 ),
        .Q(fifo_wr_data[16]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[17] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[17]_i_1_n_0 ),
        .Q(fifo_wr_data[17]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[18] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[18]_i_1_n_0 ),
        .Q(fifo_wr_data[18]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[19] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[19]_i_1_n_0 ),
        .Q(fifo_wr_data[19]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[1] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[1]_i_1_n_0 ),
        .Q(fifo_wr_data[1]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[20] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[20]_i_1_n_0 ),
        .Q(fifo_wr_data[20]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[21] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[21]_i_1_n_0 ),
        .Q(fifo_wr_data[21]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[22] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[22]_i_1_n_0 ),
        .Q(fifo_wr_data[22]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[23] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[23]_i_1_n_0 ),
        .Q(fifo_wr_data[23]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[24] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[24]_i_1_n_0 ),
        .Q(fifo_wr_data[24]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[25] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[25]_i_1_n_0 ),
        .Q(fifo_wr_data[25]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[26] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[26]_i_1_n_0 ),
        .Q(fifo_wr_data[26]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[27] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[27]_i_1_n_0 ),
        .Q(fifo_wr_data[27]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[28] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[28]_i_1_n_0 ),
        .Q(fifo_wr_data[28]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[29] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[29]_i_1_n_0 ),
        .Q(fifo_wr_data[29]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[2] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[2]_i_1_n_0 ),
        .Q(fifo_wr_data[2]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[30] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[30]_i_1_n_0 ),
        .Q(fifo_wr_data[30]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[31] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[31]_i_1_n_0 ),
        .Q(fifo_wr_data[31]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[32] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[32]_i_1_n_0 ),
        .Q(fifo_wr_data[32]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[33] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[33]_i_1_n_0 ),
        .Q(fifo_wr_data[33]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[34] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[34]_i_1_n_0 ),
        .Q(fifo_wr_data[34]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[35] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[35]_i_1_n_0 ),
        .Q(fifo_wr_data[35]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[36] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[36]_i_1_n_0 ),
        .Q(fifo_wr_data[36]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[37] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[37]_i_1_n_0 ),
        .Q(fifo_wr_data[37]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[38] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[38]_i_1_n_0 ),
        .Q(fifo_wr_data[38]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[39] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[39]_i_1_n_0 ),
        .Q(fifo_wr_data[39]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[3] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[3]_i_1_n_0 ),
        .Q(fifo_wr_data[3]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[40] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[40]_i_1_n_0 ),
        .Q(fifo_wr_data[40]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[41] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[41]_i_1_n_0 ),
        .Q(fifo_wr_data[41]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[42] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[42]_i_1_n_0 ),
        .Q(fifo_wr_data[42]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[43] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[43]_i_1_n_0 ),
        .Q(fifo_wr_data[43]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[44] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[44]_i_1_n_0 ),
        .Q(fifo_wr_data[44]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[45] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[45]_i_1_n_0 ),
        .Q(fifo_wr_data[45]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[46] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[46]_i_1_n_0 ),
        .Q(fifo_wr_data[46]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[47] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[47]_i_1_n_0 ),
        .Q(fifo_wr_data[47]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[48] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[48]_i_1_n_0 ),
        .Q(fifo_wr_data[48]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[49] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[49]_i_1_n_0 ),
        .Q(fifo_wr_data[49]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[4] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[4]_i_1_n_0 ),
        .Q(fifo_wr_data[4]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[50] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[50]_i_1_n_0 ),
        .Q(fifo_wr_data[50]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[51] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[51]_i_1_n_0 ),
        .Q(fifo_wr_data[51]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[52] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[52]_i_1_n_0 ),
        .Q(fifo_wr_data[52]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[53] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[53]_i_1_n_0 ),
        .Q(fifo_wr_data[53]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[54] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[54]_i_1_n_0 ),
        .Q(fifo_wr_data[54]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[55] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[55]_i_1_n_0 ),
        .Q(fifo_wr_data[55]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[56] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[56]_i_1_n_0 ),
        .Q(fifo_wr_data[56]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[57] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[57]_i_1_n_0 ),
        .Q(fifo_wr_data[57]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[58] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[58]_i_1_n_0 ),
        .Q(fifo_wr_data[58]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[59] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[59]_i_1_n_0 ),
        .Q(fifo_wr_data[59]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[5] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[5]_i_1_n_0 ),
        .Q(fifo_wr_data[5]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[60] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[60]_i_1_n_0 ),
        .Q(fifo_wr_data[60]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[61] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[61]_i_1_n_0 ),
        .Q(fifo_wr_data[61]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[62] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[62]_i_1_n_0 ),
        .Q(fifo_wr_data[62]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[63] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[63]_i_1_n_0 ),
        .Q(fifo_wr_data[63]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[64] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[64]_i_1_n_0 ),
        .Q(fifo_wr_data[64]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[65] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[65]_i_1_n_0 ),
        .Q(fifo_wr_data[65]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[66] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[66]_i_1_n_0 ),
        .Q(fifo_wr_data[66]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[67] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[67]_i_1_n_0 ),
        .Q(fifo_wr_data[67]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[68] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[68]_i_1_n_0 ),
        .Q(fifo_wr_data[68]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[69] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[69]_i_1_n_0 ),
        .Q(fifo_wr_data[69]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[6] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[6]_i_1_n_0 ),
        .Q(fifo_wr_data[6]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[70] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[70]_i_1_n_0 ),
        .Q(fifo_wr_data[70]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[71] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[71]_i_1_n_0 ),
        .Q(fifo_wr_data[71]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[72] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[72]_i_1_n_0 ),
        .Q(fifo_wr_data[72]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[73] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[73]_i_1_n_0 ),
        .Q(fifo_wr_data[73]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[74] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[74]_i_1_n_0 ),
        .Q(fifo_wr_data[74]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[75] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[75]_i_1_n_0 ),
        .Q(fifo_wr_data[75]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[76] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[76]_i_1_n_0 ),
        .Q(fifo_wr_data[76]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[77] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[77]_i_1_n_0 ),
        .Q(fifo_wr_data[77]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[78] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[78]_i_1_n_0 ),
        .Q(fifo_wr_data[78]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[79] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[79]_i_1_n_0 ),
        .Q(fifo_wr_data[79]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[7] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[7]_i_1_n_0 ),
        .Q(fifo_wr_data[7]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[80] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[80]_i_1_n_0 ),
        .Q(fifo_wr_data[80]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[81] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[81]_i_1_n_0 ),
        .Q(fifo_wr_data[81]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[82] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[82]_i_1_n_0 ),
        .Q(fifo_wr_data[82]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[83] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[83]_i_1_n_0 ),
        .Q(fifo_wr_data[83]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[84] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[84]_i_1_n_0 ),
        .Q(fifo_wr_data[84]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[85] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[85]_i_1_n_0 ),
        .Q(fifo_wr_data[85]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[86] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[86]_i_1_n_0 ),
        .Q(fifo_wr_data[86]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[87] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[87]_i_1_n_0 ),
        .Q(fifo_wr_data[87]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[88] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[88]_i_1_n_0 ),
        .Q(fifo_wr_data[88]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[89] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[89]_i_1_n_0 ),
        .Q(fifo_wr_data[89]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[8] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[8]_i_1_n_0 ),
        .Q(fifo_wr_data[8]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[90] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[90]_i_1_n_0 ),
        .Q(fifo_wr_data[90]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[91] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[91]_i_1_n_0 ),
        .Q(fifo_wr_data[91]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[92] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[92]_i_1_n_0 ),
        .Q(fifo_wr_data[92]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[93] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[93]_i_1_n_0 ),
        .Q(fifo_wr_data[93]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[94] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[94]_i_1_n_0 ),
        .Q(fifo_wr_data[94]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[95] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[95]_i_1_n_0 ),
        .Q(fifo_wr_data[95]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[96] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[96]_i_1_n_0 ),
        .Q(fifo_wr_data[96]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[97] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[97]_i_1_n_0 ),
        .Q(fifo_wr_data[97]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[98] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[98]_i_1_n_0 ),
        .Q(fifo_wr_data[98]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[99] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[99]_i_1_n_0 ),
        .Q(fifo_wr_data[99]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE \fifo_wr_data_reg[9] 
       (.C(data_clk),
        .CE(\fifo_wr_data[127]_i_2_n_0 ),
        .D(\fifo_wr_data[9]_i_1_n_0 ),
        .Q(fifo_wr_data[9]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDCE fifo_wr_en_ff2_reg
       (.C(data_in[0]),
        .CE(1'b1),
        .CLR(fifo_rd_en_i_1_n_0),
        .D(fifo_wr_en_ff),
        .Q(fifo_wr_en_ff2));
  FDCE fifo_wr_en_ff_reg
       (.C(data_in[0]),
        .CE(1'b1),
        .CLR(fifo_rd_en_i_1_n_0),
        .D(rx_enable),
        .Q(fifo_wr_en_ff));
  LUT5 #(
    .INIT(32'h00002E22)) 
    fifo_wr_en_i_1
       (.I0(fifo_wr_en),
        .I1(fifo_wr_en_i_2_n_0),
        .I2(fifo_wr_en_i_3_n_0),
        .I3(data_valid),
        .I4(\fifo_wr_data[127]_i_1_n_0 ),
        .O(fifo_wr_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h11F3C7CF)) 
    fifo_wr_en_i_10
       (.I0(Q[6]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(fifo_wr_en_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hAA2A)) 
    fifo_wr_en_i_11
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[1]),
        .O(fifo_wr_en_i_11_n_0));
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    fifo_wr_en_i_2
       (.I0(fifo_wr_en_i_4_n_0),
        .I1(fifo_wr_en_i_5_n_0),
        .I2(fifo_wr_en_i_6_n_0),
        .I3(fifo_wr_en_i_7_n_0),
        .I4(data_valid),
        .O(fifo_wr_en_i_2_n_0));
  LUT6 #(
    .INIT(64'hF000F0B0FFCFFFBF)) 
    fifo_wr_en_i_3
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(fifo_wr_en_i_8_n_0),
        .O(fifo_wr_en_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAD0000)) 
    fifo_wr_en_i_4
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[6]),
        .I5(Q[0]),
        .O(fifo_wr_en_i_4_n_0));
  LUT6 #(
    .INIT(64'hABBBFBBBBABBBFBB)) 
    fifo_wr_en_i_5
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[1]),
        .O(fifo_wr_en_i_5_n_0));
  LUT6 #(
    .INIT(64'h6F6FBF7F6FFFFF7F)) 
    fifo_wr_en_i_6
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(fifo_wr_en_i_9_n_0),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(fifo_wr_en_i_6_n_0));
  LUT6 #(
    .INIT(64'hFBFFFBBBFFFBBFFF)) 
    fifo_wr_en_i_7
       (.I0(fifo_wr_en_i_10_n_0),
        .I1(fifo_wr_en_i_11_n_0),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[6]),
        .I5(Q[2]),
        .O(fifo_wr_en_i_7_n_0));
  LUT6 #(
    .INIT(64'hA0000A0000D00000)) 
    fifo_wr_en_i_8
       (.I0(Q[0]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(fifo_wr_en_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    fifo_wr_en_i_9
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(fifo_wr_en_i_9_n_0));
  FDRE fifo_wr_en_reg
       (.C(data_clk),
        .CE(1'b1),
        .D(fifo_wr_en_i_1_n_0),
        .Q(fifo_wr_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000020002040)) 
    \wr_data_buf[103]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\wr_data_buf[103]_i_2_n_0 ),
        .O(\wr_data_buf[103]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \wr_data_buf[103]_i_2 
       (.I0(data_valid),
        .I1(Q[0]),
        .I2(Q[5]),
        .O(\wr_data_buf[103]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[104]_i_1 
       (.I0(data_in[0]),
        .I1(Q[0]),
        .I2(data_in[8]),
        .I3(Q[1]),
        .I4(data_in[64]),
        .O(\wr_data_buf[104]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[105]_i_1 
       (.I0(data_in[1]),
        .I1(Q[0]),
        .I2(data_in[9]),
        .I3(Q[1]),
        .I4(data_in[65]),
        .O(\wr_data_buf[105]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[106]_i_1 
       (.I0(data_in[2]),
        .I1(Q[0]),
        .I2(data_in[10]),
        .I3(Q[1]),
        .I4(data_in[66]),
        .O(\wr_data_buf[106]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[107]_i_1 
       (.I0(data_in[3]),
        .I1(Q[0]),
        .I2(data_in[11]),
        .I3(Q[1]),
        .I4(data_in[67]),
        .O(\wr_data_buf[107]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[108]_i_1 
       (.I0(data_in[4]),
        .I1(Q[0]),
        .I2(data_in[12]),
        .I3(Q[1]),
        .I4(data_in[68]),
        .O(\wr_data_buf[108]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[109]_i_1 
       (.I0(data_in[5]),
        .I1(Q[0]),
        .I2(data_in[13]),
        .I3(Q[1]),
        .I4(data_in[69]),
        .O(\wr_data_buf[109]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFECFFE30020002)) 
    \wr_data_buf[10]_i_1 
       (.I0(data_in[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data_in[66]),
        .I5(data_in[10]),
        .O(\wr_data_buf[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[110]_i_1 
       (.I0(data_in[6]),
        .I1(Q[0]),
        .I2(data_in[14]),
        .I3(Q[1]),
        .I4(data_in[70]),
        .O(\wr_data_buf[110]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000800080)) 
    \wr_data_buf[111]_i_1 
       (.I0(\wr_data_buf[111]_i_3_n_0 ),
        .I1(data_valid),
        .I2(\wr_data_buf[111]_i_4_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\wr_data_buf[111]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[111]_i_2 
       (.I0(data_in[7]),
        .I1(Q[0]),
        .I2(data_in[15]),
        .I3(Q[1]),
        .I4(data_in[71]),
        .O(\wr_data_buf[111]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_buf[111]_i_3 
       (.I0(Q[6]),
        .I1(Q[5]),
        .O(\wr_data_buf[111]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h42)) 
    \wr_data_buf[111]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\wr_data_buf[111]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \wr_data_buf[119]_i_1 
       (.I0(\wr_data_buf[119]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[6]),
        .O(\wr_data_buf[119]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \wr_data_buf[119]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[0]),
        .I4(data_valid),
        .O(\wr_data_buf[119]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFECFFE30020002)) 
    \wr_data_buf[11]_i_1 
       (.I0(data_in[3]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data_in[67]),
        .I5(data_in[11]),
        .O(\wr_data_buf[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFECFFE30020002)) 
    \wr_data_buf[12]_i_1 
       (.I0(data_in[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data_in[68]),
        .I5(data_in[12]),
        .O(\wr_data_buf[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFECFFE30020002)) 
    \wr_data_buf[13]_i_1 
       (.I0(data_in[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data_in[69]),
        .I5(data_in[13]),
        .O(\wr_data_buf[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFECFFE30020002)) 
    \wr_data_buf[14]_i_1 
       (.I0(data_in[6]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data_in[70]),
        .I5(data_in[14]),
        .O(\wr_data_buf[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC000000055550000)) 
    \wr_data_buf[15]_i_1 
       (.I0(\wr_data_buf[15]_i_3_n_0 ),
        .I1(\wr_data_buf[15]_i_4_n_0 ),
        .I2(\wr_data_buf[15]_i_5_n_0 ),
        .I3(\wr_data_buf[111]_i_3_n_0 ),
        .I4(data_valid),
        .I5(Q[0]),
        .O(\wr_data_buf[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFECFFE30020002)) 
    \wr_data_buf[15]_i_2 
       (.I0(data_in[7]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data_in[71]),
        .I5(data_in[15]),
        .O(\wr_data_buf[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF6FDFFF7FFBFF7)) 
    \wr_data_buf[15]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[6]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\wr_data_buf[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_buf[15]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(\wr_data_buf[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \wr_data_buf[15]_i_5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\wr_data_buf[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \wr_data_buf[16]_i_1 
       (.I0(\wr_data_buf[23]_i_6_n_0 ),
        .I1(data_in[16]),
        .I2(data_in[0]),
        .I3(\wr_data_buf[23]_i_7_n_0 ),
        .I4(data_in[64]),
        .I5(\wr_data_buf[23]_i_8_n_0 ),
        .O(\wr_data_buf[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF444F444444444)) 
    \wr_data_buf[17]_i_1 
       (.I0(\wr_data_buf[23]_i_6_n_0 ),
        .I1(data_in[17]),
        .I2(data_in[65]),
        .I3(\wr_data_buf[23]_i_7_n_0 ),
        .I4(data_in[1]),
        .I5(\wr_data_buf[23]_i_8_n_0 ),
        .O(\wr_data_buf[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \wr_data_buf[18]_i_1 
       (.I0(\wr_data_buf[23]_i_6_n_0 ),
        .I1(data_in[18]),
        .I2(data_in[2]),
        .I3(\wr_data_buf[23]_i_7_n_0 ),
        .I4(data_in[66]),
        .I5(\wr_data_buf[23]_i_8_n_0 ),
        .O(\wr_data_buf[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF444F444444444)) 
    \wr_data_buf[19]_i_1 
       (.I0(\wr_data_buf[23]_i_6_n_0 ),
        .I1(data_in[19]),
        .I2(data_in[67]),
        .I3(\wr_data_buf[23]_i_7_n_0 ),
        .I4(data_in[3]),
        .I5(\wr_data_buf[23]_i_8_n_0 ),
        .O(\wr_data_buf[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF444F444444444)) 
    \wr_data_buf[20]_i_1 
       (.I0(\wr_data_buf[23]_i_6_n_0 ),
        .I1(data_in[20]),
        .I2(data_in[68]),
        .I3(\wr_data_buf[23]_i_7_n_0 ),
        .I4(data_in[4]),
        .I5(\wr_data_buf[23]_i_8_n_0 ),
        .O(\wr_data_buf[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \wr_data_buf[21]_i_1 
       (.I0(\wr_data_buf[23]_i_6_n_0 ),
        .I1(data_in[21]),
        .I2(data_in[5]),
        .I3(\wr_data_buf[23]_i_7_n_0 ),
        .I4(data_in[69]),
        .I5(\wr_data_buf[23]_i_8_n_0 ),
        .O(\wr_data_buf[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF444F444444444)) 
    \wr_data_buf[22]_i_1 
       (.I0(\wr_data_buf[23]_i_6_n_0 ),
        .I1(data_in[22]),
        .I2(data_in[70]),
        .I3(\wr_data_buf[23]_i_7_n_0 ),
        .I4(data_in[6]),
        .I5(\wr_data_buf[23]_i_8_n_0 ),
        .O(\wr_data_buf[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444F4F444444)) 
    \wr_data_buf[23]_i_1 
       (.I0(\wr_data_buf[23]_i_3_n_0 ),
        .I1(\wr_data_buf[23]_i_4_n_0 ),
        .I2(\wr_data_buf[23]_i_5_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[1]),
        .O(\wr_data_buf[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \wr_data_buf[23]_i_2 
       (.I0(\wr_data_buf[23]_i_6_n_0 ),
        .I1(data_in[23]),
        .I2(data_in[7]),
        .I3(\wr_data_buf[23]_i_7_n_0 ),
        .I4(data_in[71]),
        .I5(\wr_data_buf[23]_i_8_n_0 ),
        .O(\wr_data_buf[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFDFFFBD7FF)) 
    \wr_data_buf[23]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\wr_data_buf[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wr_data_buf[23]_i_4 
       (.I0(data_valid),
        .I1(Q[0]),
        .O(\wr_data_buf[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFF7FFFFFF)) 
    \wr_data_buf[23]_i_5 
       (.I0(Q[2]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(data_valid),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(\wr_data_buf[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \wr_data_buf[23]_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\wr_data_buf[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \wr_data_buf[23]_i_7 
       (.I0(Q[2]),
        .I1(Q[5]),
        .O(\wr_data_buf[23]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_data_buf[23]_i_8 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\wr_data_buf[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF272F0000)) 
    \wr_data_buf[24]_i_1 
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data_in[24]),
        .I5(\wr_data_buf[24]_i_2_n_0 ),
        .O(\wr_data_buf[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2C200000)) 
    \wr_data_buf[24]_i_2 
       (.I0(data_in[8]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(data_in[64]),
        .I4(Q[2]),
        .I5(\wr_data_buf[24]_i_3_n_0 ),
        .O(\wr_data_buf[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h444400F0)) 
    \wr_data_buf[24]_i_3 
       (.I0(Q[3]),
        .I1(data_in[72]),
        .I2(data_in[0]),
        .I3(Q[2]),
        .I4(Q[5]),
        .O(\wr_data_buf[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF383A082A)) 
    \wr_data_buf[25]_i_1 
       (.I0(data_in[25]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(Q[1]),
        .I4(data_in[73]),
        .I5(\wr_data_buf[25]_i_2_n_0 ),
        .O(\wr_data_buf[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2C200000)) 
    \wr_data_buf[25]_i_2 
       (.I0(data_in[9]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(data_in[65]),
        .I4(Q[2]),
        .I5(\wr_data_buf[25]_i_3_n_0 ),
        .O(\wr_data_buf[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04550404)) 
    \wr_data_buf[25]_i_3 
       (.I0(Q[2]),
        .I1(data_in[25]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(data_in[1]),
        .O(\wr_data_buf[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \wr_data_buf[26]_i_1 
       (.I0(data_in[74]),
        .I1(\wr_data_buf[30]_i_2_n_0 ),
        .I2(\wr_data_buf[26]_i_2_n_0 ),
        .I3(data_in[26]),
        .I4(\wr_data_buf[30]_i_4_n_0 ),
        .I5(\wr_data_buf[26]_i_3_n_0 ),
        .O(\wr_data_buf[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h04550404)) 
    \wr_data_buf[26]_i_2 
       (.I0(Q[2]),
        .I1(data_in[26]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(data_in[2]),
        .O(\wr_data_buf[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h08A00800)) 
    \wr_data_buf[26]_i_3 
       (.I0(Q[2]),
        .I1(data_in[66]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(data_in[10]),
        .O(\wr_data_buf[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \wr_data_buf[27]_i_1 
       (.I0(data_in[75]),
        .I1(\wr_data_buf[30]_i_2_n_0 ),
        .I2(\wr_data_buf[27]_i_2_n_0 ),
        .I3(data_in[27]),
        .I4(\wr_data_buf[30]_i_4_n_0 ),
        .I5(\wr_data_buf[27]_i_3_n_0 ),
        .O(\wr_data_buf[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h04550404)) 
    \wr_data_buf[27]_i_2 
       (.I0(Q[2]),
        .I1(data_in[27]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(data_in[3]),
        .O(\wr_data_buf[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h08A00800)) 
    \wr_data_buf[27]_i_3 
       (.I0(Q[2]),
        .I1(data_in[67]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(data_in[11]),
        .O(\wr_data_buf[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \wr_data_buf[28]_i_1 
       (.I0(data_in[76]),
        .I1(\wr_data_buf[30]_i_2_n_0 ),
        .I2(\wr_data_buf[28]_i_2_n_0 ),
        .I3(data_in[28]),
        .I4(\wr_data_buf[30]_i_4_n_0 ),
        .I5(\wr_data_buf[28]_i_3_n_0 ),
        .O(\wr_data_buf[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h04550404)) 
    \wr_data_buf[28]_i_2 
       (.I0(Q[2]),
        .I1(data_in[28]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(data_in[4]),
        .O(\wr_data_buf[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h08A00800)) 
    \wr_data_buf[28]_i_3 
       (.I0(Q[2]),
        .I1(data_in[68]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(data_in[12]),
        .O(\wr_data_buf[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \wr_data_buf[29]_i_1 
       (.I0(data_in[77]),
        .I1(\wr_data_buf[30]_i_2_n_0 ),
        .I2(\wr_data_buf[29]_i_2_n_0 ),
        .I3(data_in[29]),
        .I4(\wr_data_buf[30]_i_4_n_0 ),
        .I5(\wr_data_buf[29]_i_3_n_0 ),
        .O(\wr_data_buf[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h04550404)) 
    \wr_data_buf[29]_i_2 
       (.I0(Q[2]),
        .I1(data_in[29]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(data_in[5]),
        .O(\wr_data_buf[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h08A00800)) 
    \wr_data_buf[29]_i_3 
       (.I0(Q[2]),
        .I1(data_in[69]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(data_in[13]),
        .O(\wr_data_buf[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \wr_data_buf[30]_i_1 
       (.I0(data_in[78]),
        .I1(\wr_data_buf[30]_i_2_n_0 ),
        .I2(\wr_data_buf[30]_i_3_n_0 ),
        .I3(data_in[30]),
        .I4(\wr_data_buf[30]_i_4_n_0 ),
        .I5(\wr_data_buf[30]_i_5_n_0 ),
        .O(\wr_data_buf[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \wr_data_buf[30]_i_2 
       (.I0(Q[3]),
        .I1(Q[5]),
        .O(\wr_data_buf[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h04550404)) 
    \wr_data_buf[30]_i_3 
       (.I0(Q[2]),
        .I1(data_in[30]),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(data_in[6]),
        .O(\wr_data_buf[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \wr_data_buf[30]_i_4 
       (.I0(Q[1]),
        .I1(Q[5]),
        .I2(Q[3]),
        .O(\wr_data_buf[30]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h08A00800)) 
    \wr_data_buf[30]_i_5 
       (.I0(Q[2]),
        .I1(data_in[70]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(data_in[14]),
        .O(\wr_data_buf[30]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h3500)) 
    \wr_data_buf[31]_i_1 
       (.I0(\wr_data_buf[31]_i_3_n_0 ),
        .I1(\wr_data_buf[31]_i_4_n_0 ),
        .I2(Q[0]),
        .I3(data_valid),
        .O(\wr_data_buf[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF272F0000)) 
    \wr_data_buf[31]_i_2 
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data_in[31]),
        .I5(\wr_data_buf[31]_i_5_n_0 ),
        .O(\wr_data_buf[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFDFFF7FFFBFF)) 
    \wr_data_buf[31]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\wr_data_buf[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7EFFFEFFFFFFF)) 
    \wr_data_buf[31]_i_4 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\wr_data_buf[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2C200000)) 
    \wr_data_buf[31]_i_5 
       (.I0(data_in[15]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(data_in[71]),
        .I4(Q[2]),
        .I5(\wr_data_buf[31]_i_6_n_0 ),
        .O(\wr_data_buf[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40404F40)) 
    \wr_data_buf[31]_i_6 
       (.I0(Q[3]),
        .I1(data_in[79]),
        .I2(Q[5]),
        .I3(data_in[7]),
        .I4(Q[2]),
        .O(\wr_data_buf[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[32]_i_1 
       (.I0(data_in[0]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[64]),
        .I4(Q[1]),
        .I5(data_in[32]),
        .O(\wr_data_buf[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[33]_i_1 
       (.I0(data_in[1]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[65]),
        .I4(Q[1]),
        .I5(data_in[33]),
        .O(\wr_data_buf[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[34]_i_1 
       (.I0(data_in[2]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[66]),
        .I4(Q[1]),
        .I5(data_in[34]),
        .O(\wr_data_buf[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[35]_i_1 
       (.I0(data_in[3]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[67]),
        .I4(Q[1]),
        .I5(data_in[35]),
        .O(\wr_data_buf[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[36]_i_1 
       (.I0(data_in[4]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[68]),
        .I4(Q[1]),
        .I5(data_in[36]),
        .O(\wr_data_buf[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[37]_i_1 
       (.I0(data_in[5]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[69]),
        .I4(Q[1]),
        .I5(data_in[37]),
        .O(\wr_data_buf[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[38]_i_1 
       (.I0(data_in[6]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[70]),
        .I4(Q[1]),
        .I5(data_in[38]),
        .O(\wr_data_buf[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[39]_i_2 
       (.I0(data_in[7]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[71]),
        .I4(Q[1]),
        .I5(data_in[39]),
        .O(\wr_data_buf[39]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0000002000000)) 
    \wr_data_buf[39]_i_3 
       (.I0(Q[3]),
        .I1(\wr_data_buf[47]_i_7_n_0 ),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(data_valid),
        .I5(\wr_data_buf[47]_i_8_n_0 ),
        .O(\wr_data_buf[39]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000400)) 
    \wr_data_buf[39]_i_4 
       (.I0(Q[6]),
        .I1(data_valid),
        .I2(\wr_data_buf[23]_i_7_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[1]),
        .O(\wr_data_buf[39]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[40]_i_1 
       (.I0(\wr_data_buf[40]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[72]),
        .I4(Q[1]),
        .I5(data_in[40]),
        .O(\wr_data_buf[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[40]_i_2 
       (.I0(data_in[8]),
        .I1(Q[5]),
        .I2(data_in[0]),
        .I3(Q[2]),
        .I4(data_in[64]),
        .O(\wr_data_buf[40]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[41]_i_1 
       (.I0(\wr_data_buf[41]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[73]),
        .I4(Q[1]),
        .I5(data_in[41]),
        .O(\wr_data_buf[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[41]_i_2 
       (.I0(data_in[9]),
        .I1(Q[5]),
        .I2(data_in[1]),
        .I3(Q[2]),
        .I4(data_in[65]),
        .O(\wr_data_buf[41]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[42]_i_1 
       (.I0(\wr_data_buf[42]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[74]),
        .I4(Q[1]),
        .I5(data_in[42]),
        .O(\wr_data_buf[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[42]_i_2 
       (.I0(data_in[10]),
        .I1(Q[5]),
        .I2(data_in[2]),
        .I3(Q[2]),
        .I4(data_in[66]),
        .O(\wr_data_buf[42]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[43]_i_1 
       (.I0(\wr_data_buf[43]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[75]),
        .I4(Q[1]),
        .I5(data_in[43]),
        .O(\wr_data_buf[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[43]_i_2 
       (.I0(data_in[11]),
        .I1(Q[5]),
        .I2(data_in[3]),
        .I3(Q[2]),
        .I4(data_in[67]),
        .O(\wr_data_buf[43]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[44]_i_1 
       (.I0(\wr_data_buf[44]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[76]),
        .I4(Q[1]),
        .I5(data_in[44]),
        .O(\wr_data_buf[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[44]_i_2 
       (.I0(data_in[12]),
        .I1(Q[5]),
        .I2(data_in[4]),
        .I3(Q[2]),
        .I4(data_in[68]),
        .O(\wr_data_buf[44]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[45]_i_1 
       (.I0(\wr_data_buf[45]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[77]),
        .I4(Q[1]),
        .I5(data_in[45]),
        .O(\wr_data_buf[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[45]_i_2 
       (.I0(data_in[13]),
        .I1(Q[5]),
        .I2(data_in[5]),
        .I3(Q[2]),
        .I4(data_in[69]),
        .O(\wr_data_buf[45]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[46]_i_1 
       (.I0(\wr_data_buf[46]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[78]),
        .I4(Q[1]),
        .I5(data_in[46]),
        .O(\wr_data_buf[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[46]_i_2 
       (.I0(data_in[14]),
        .I1(Q[5]),
        .I2(data_in[6]),
        .I3(Q[2]),
        .I4(data_in[70]),
        .O(\wr_data_buf[46]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAEEAAAAAAAA)) 
    \wr_data_buf[47]_i_1 
       (.I0(\wr_data_buf[47]_i_3_n_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(\wr_data_buf[47]_i_4_n_0 ),
        .I5(\wr_data_buf[47]_i_5_n_0 ),
        .O(\wr_data_buf[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \wr_data_buf[47]_i_2 
       (.I0(\wr_data_buf[47]_i_6_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(data_in[79]),
        .I4(Q[1]),
        .I5(data_in[47]),
        .O(\wr_data_buf[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0F20000000000)) 
    \wr_data_buf[47]_i_3 
       (.I0(Q[3]),
        .I1(\wr_data_buf[47]_i_7_n_0 ),
        .I2(\wr_data_buf[47]_i_8_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(\wr_data_buf[23]_i_4_n_0 ),
        .O(\wr_data_buf[47]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F7F7F777F7F7)) 
    \wr_data_buf[47]_i_4 
       (.I0(data_valid),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(\wr_data_buf[30]_i_2_n_0 ),
        .O(\wr_data_buf[47]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFFF0434)) 
    \wr_data_buf[47]_i_5 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[1]),
        .O(\wr_data_buf[47]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[47]_i_6 
       (.I0(data_in[15]),
        .I1(Q[5]),
        .I2(data_in[7]),
        .I3(Q[2]),
        .I4(data_in[71]),
        .O(\wr_data_buf[47]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \wr_data_buf[47]_i_7 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\wr_data_buf[47]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000042)) 
    \wr_data_buf[47]_i_8 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[1]),
        .O(\wr_data_buf[47]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[48]_i_1 
       (.I0(\wr_data_buf[48]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[48]_i_3_n_0 ),
        .I4(data_in[64]),
        .O(\wr_data_buf[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[48]_i_2 
       (.I0(data_in[0]),
        .I1(Q[1]),
        .I2(data_in[48]),
        .O(\wr_data_buf[48]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \wr_data_buf[48]_i_3 
       (.I0(data_in[80]),
        .I1(Q[2]),
        .I2(data_in[16]),
        .I3(Q[5]),
        .I4(data_in[0]),
        .O(\wr_data_buf[48]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[49]_i_1 
       (.I0(\wr_data_buf[49]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[49]_i_3_n_0 ),
        .I4(data_in[65]),
        .O(\wr_data_buf[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[49]_i_2 
       (.I0(data_in[1]),
        .I1(Q[1]),
        .I2(data_in[49]),
        .O(\wr_data_buf[49]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \wr_data_buf[49]_i_3 
       (.I0(data_in[81]),
        .I1(Q[2]),
        .I2(data_in[17]),
        .I3(Q[5]),
        .I4(data_in[1]),
        .O(\wr_data_buf[49]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[50]_i_1 
       (.I0(\wr_data_buf[50]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[50]_i_3_n_0 ),
        .I4(data_in[66]),
        .O(\wr_data_buf[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[50]_i_2 
       (.I0(data_in[2]),
        .I1(Q[1]),
        .I2(data_in[50]),
        .O(\wr_data_buf[50]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \wr_data_buf[50]_i_3 
       (.I0(data_in[82]),
        .I1(Q[2]),
        .I2(data_in[18]),
        .I3(Q[5]),
        .I4(data_in[2]),
        .O(\wr_data_buf[50]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[51]_i_1 
       (.I0(\wr_data_buf[51]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[51]_i_3_n_0 ),
        .I4(data_in[67]),
        .O(\wr_data_buf[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[51]_i_2 
       (.I0(data_in[3]),
        .I1(Q[1]),
        .I2(data_in[51]),
        .O(\wr_data_buf[51]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \wr_data_buf[51]_i_3 
       (.I0(data_in[83]),
        .I1(Q[2]),
        .I2(data_in[19]),
        .I3(Q[5]),
        .I4(data_in[3]),
        .O(\wr_data_buf[51]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[52]_i_1 
       (.I0(\wr_data_buf[52]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[52]_i_3_n_0 ),
        .I4(data_in[68]),
        .O(\wr_data_buf[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[52]_i_2 
       (.I0(data_in[4]),
        .I1(Q[1]),
        .I2(data_in[52]),
        .O(\wr_data_buf[52]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \wr_data_buf[52]_i_3 
       (.I0(data_in[84]),
        .I1(Q[2]),
        .I2(data_in[20]),
        .I3(Q[5]),
        .I4(data_in[4]),
        .O(\wr_data_buf[52]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[53]_i_1 
       (.I0(\wr_data_buf[53]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[53]_i_3_n_0 ),
        .I4(data_in[69]),
        .O(\wr_data_buf[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[53]_i_2 
       (.I0(data_in[5]),
        .I1(Q[1]),
        .I2(data_in[53]),
        .O(\wr_data_buf[53]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \wr_data_buf[53]_i_3 
       (.I0(data_in[85]),
        .I1(Q[2]),
        .I2(data_in[21]),
        .I3(Q[5]),
        .I4(data_in[5]),
        .O(\wr_data_buf[53]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[54]_i_1 
       (.I0(\wr_data_buf[54]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[54]_i_3_n_0 ),
        .I4(data_in[70]),
        .O(\wr_data_buf[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[54]_i_2 
       (.I0(data_in[6]),
        .I1(Q[1]),
        .I2(data_in[54]),
        .O(\wr_data_buf[54]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \wr_data_buf[54]_i_3 
       (.I0(data_in[86]),
        .I1(Q[2]),
        .I2(data_in[22]),
        .I3(Q[5]),
        .I4(data_in[6]),
        .O(\wr_data_buf[54]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAEAAE)) 
    \wr_data_buf[55]_i_1 
       (.I0(\wr_data_buf[55]_i_3_n_0 ),
        .I1(\wr_data_buf[119]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(Q[6]),
        .I4(Q[3]),
        .O(\wr_data_buf[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[55]_i_2 
       (.I0(\wr_data_buf[55]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[55]_i_5_n_0 ),
        .I4(data_in[71]),
        .O(\wr_data_buf[55]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000030400)) 
    \wr_data_buf[55]_i_3 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\wr_data_buf[63]_i_6_n_0 ),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\wr_data_buf[55]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[55]_i_4 
       (.I0(data_in[7]),
        .I1(Q[1]),
        .I2(data_in[55]),
        .O(\wr_data_buf[55]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFCBB3088)) 
    \wr_data_buf[55]_i_5 
       (.I0(data_in[87]),
        .I1(Q[2]),
        .I2(data_in[23]),
        .I3(Q[5]),
        .I4(data_in[7]),
        .O(\wr_data_buf[55]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[56]_i_1 
       (.I0(\wr_data_buf[56]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[56]_i_3_n_0 ),
        .I4(data_in[72]),
        .O(\wr_data_buf[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[56]_i_2 
       (.I0(data_in[0]),
        .I1(Q[1]),
        .I2(data_in[56]),
        .O(\wr_data_buf[56]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wr_data_buf[56]_i_3 
       (.I0(data_in[8]),
        .I1(data_in[88]),
        .I2(Q[2]),
        .I3(data_in[24]),
        .I4(Q[5]),
        .I5(data_in[64]),
        .O(\wr_data_buf[56]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[57]_i_1 
       (.I0(\wr_data_buf[57]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[57]_i_3_n_0 ),
        .I4(data_in[73]),
        .O(\wr_data_buf[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[57]_i_2 
       (.I0(data_in[1]),
        .I1(Q[1]),
        .I2(data_in[57]),
        .O(\wr_data_buf[57]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wr_data_buf[57]_i_3 
       (.I0(data_in[9]),
        .I1(data_in[89]),
        .I2(Q[2]),
        .I3(data_in[25]),
        .I4(Q[5]),
        .I5(data_in[65]),
        .O(\wr_data_buf[57]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[58]_i_1 
       (.I0(\wr_data_buf[58]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[58]_i_3_n_0 ),
        .I4(data_in[74]),
        .O(\wr_data_buf[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[58]_i_2 
       (.I0(data_in[2]),
        .I1(Q[1]),
        .I2(data_in[58]),
        .O(\wr_data_buf[58]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wr_data_buf[58]_i_3 
       (.I0(data_in[10]),
        .I1(data_in[90]),
        .I2(Q[2]),
        .I3(data_in[26]),
        .I4(Q[5]),
        .I5(data_in[66]),
        .O(\wr_data_buf[58]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[59]_i_1 
       (.I0(\wr_data_buf[59]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[59]_i_3_n_0 ),
        .I4(data_in[75]),
        .O(\wr_data_buf[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[59]_i_2 
       (.I0(data_in[3]),
        .I1(Q[1]),
        .I2(data_in[59]),
        .O(\wr_data_buf[59]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wr_data_buf[59]_i_3 
       (.I0(data_in[11]),
        .I1(data_in[91]),
        .I2(Q[2]),
        .I3(data_in[27]),
        .I4(Q[5]),
        .I5(data_in[67]),
        .O(\wr_data_buf[59]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[60]_i_1 
       (.I0(\wr_data_buf[60]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[60]_i_3_n_0 ),
        .I4(data_in[76]),
        .O(\wr_data_buf[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[60]_i_2 
       (.I0(data_in[4]),
        .I1(Q[1]),
        .I2(data_in[60]),
        .O(\wr_data_buf[60]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wr_data_buf[60]_i_3 
       (.I0(data_in[12]),
        .I1(data_in[92]),
        .I2(Q[2]),
        .I3(data_in[28]),
        .I4(Q[5]),
        .I5(data_in[68]),
        .O(\wr_data_buf[60]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[61]_i_1 
       (.I0(\wr_data_buf[61]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[61]_i_3_n_0 ),
        .I4(data_in[77]),
        .O(\wr_data_buf[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[61]_i_2 
       (.I0(data_in[5]),
        .I1(Q[1]),
        .I2(data_in[61]),
        .O(\wr_data_buf[61]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wr_data_buf[61]_i_3 
       (.I0(data_in[13]),
        .I1(data_in[93]),
        .I2(Q[2]),
        .I3(data_in[29]),
        .I4(Q[5]),
        .I5(data_in[69]),
        .O(\wr_data_buf[61]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[62]_i_1 
       (.I0(\wr_data_buf[62]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[62]_i_3_n_0 ),
        .I4(data_in[78]),
        .O(\wr_data_buf[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[62]_i_2 
       (.I0(data_in[6]),
        .I1(Q[1]),
        .I2(data_in[62]),
        .O(\wr_data_buf[62]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wr_data_buf[62]_i_3 
       (.I0(data_in[14]),
        .I1(data_in[94]),
        .I2(Q[2]),
        .I3(data_in[30]),
        .I4(Q[5]),
        .I5(data_in[70]),
        .O(\wr_data_buf[62]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4100)) 
    \wr_data_buf[63]_i_1 
       (.I0(Q[6]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(\wr_data_buf[119]_i_2_n_0 ),
        .I4(\wr_data_buf[63]_i_3_n_0 ),
        .O(\wr_data_buf[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \wr_data_buf[63]_i_2 
       (.I0(\wr_data_buf[63]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\wr_data_buf[63]_i_5_n_0 ),
        .I4(data_in[79]),
        .O(\wr_data_buf[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080004000030080)) 
    \wr_data_buf[63]_i_3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(\wr_data_buf[63]_i_6_n_0 ),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\wr_data_buf[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_data_buf[63]_i_4 
       (.I0(data_in[7]),
        .I1(Q[1]),
        .I2(data_in[63]),
        .O(\wr_data_buf[63]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \wr_data_buf[63]_i_5 
       (.I0(data_in[15]),
        .I1(data_in[95]),
        .I2(Q[2]),
        .I3(data_in[31]),
        .I4(Q[5]),
        .I5(data_in[71]),
        .O(\wr_data_buf[63]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h9FFF)) 
    \wr_data_buf[63]_i_6 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(data_valid),
        .I3(Q[0]),
        .O(\wr_data_buf[63]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00080800)) 
    \wr_data_buf[71]_i_1 
       (.I0(\wr_data_buf[71]_i_2_n_0 ),
        .I1(data_valid),
        .I2(Q[0]),
        .I3(Q[5]),
        .I4(Q[6]),
        .O(\wr_data_buf[71]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h040010A1)) 
    \wr_data_buf[71]_i_2 
       (.I0(Q[1]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[2]),
        .O(\wr_data_buf[71]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \wr_data_buf[72]_i_1 
       (.I0(data_in[0]),
        .I1(Q[0]),
        .I2(data_in[64]),
        .I3(Q[6]),
        .I4(Q[1]),
        .I5(data_in[8]),
        .O(\wr_data_buf[72]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \wr_data_buf[73]_i_1 
       (.I0(data_in[1]),
        .I1(Q[0]),
        .I2(data_in[65]),
        .I3(Q[6]),
        .I4(Q[1]),
        .I5(data_in[9]),
        .O(\wr_data_buf[73]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \wr_data_buf[74]_i_1 
       (.I0(data_in[2]),
        .I1(Q[0]),
        .I2(data_in[66]),
        .I3(Q[6]),
        .I4(Q[1]),
        .I5(data_in[10]),
        .O(\wr_data_buf[74]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \wr_data_buf[75]_i_1 
       (.I0(data_in[3]),
        .I1(Q[0]),
        .I2(data_in[67]),
        .I3(Q[6]),
        .I4(Q[1]),
        .I5(data_in[11]),
        .O(\wr_data_buf[75]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \wr_data_buf[76]_i_1 
       (.I0(data_in[4]),
        .I1(Q[0]),
        .I2(data_in[68]),
        .I3(Q[6]),
        .I4(Q[1]),
        .I5(data_in[12]),
        .O(\wr_data_buf[76]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \wr_data_buf[77]_i_1 
       (.I0(data_in[5]),
        .I1(Q[0]),
        .I2(data_in[69]),
        .I3(Q[6]),
        .I4(Q[1]),
        .I5(data_in[13]),
        .O(\wr_data_buf[77]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \wr_data_buf[78]_i_1 
       (.I0(data_in[6]),
        .I1(Q[0]),
        .I2(data_in[70]),
        .I3(Q[6]),
        .I4(Q[1]),
        .I5(data_in[14]),
        .O(\wr_data_buf[78]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000808000008080)) 
    \wr_data_buf[79]_i_1 
       (.I0(\wr_data_buf[79]_i_3_n_0 ),
        .I1(\fifo_wr_data[127]_i_7_n_0 ),
        .I2(data_valid),
        .I3(\wr_data_buf[79]_i_4_n_0 ),
        .I4(Q[0]),
        .I5(\wr_data_buf[79]_i_5_n_0 ),
        .O(\wr_data_buf[79]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \wr_data_buf[79]_i_2 
       (.I0(data_in[7]),
        .I1(Q[0]),
        .I2(data_in[71]),
        .I3(Q[6]),
        .I4(Q[1]),
        .I5(data_in[15]),
        .O(\wr_data_buf[79]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200C01)) 
    \wr_data_buf[79]_i_3 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\wr_data_buf[79]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \wr_data_buf[79]_i_4 
       (.I0(Q[2]),
        .I1(Q[5]),
        .O(\wr_data_buf[79]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \wr_data_buf[79]_i_5 
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(Q[3]),
        .O(\wr_data_buf[79]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \wr_data_buf[7]_i_1 
       (.I0(Q[0]),
        .I1(data_valid),
        .I2(\wr_data_buf[7]_i_2_n_0 ),
        .O(\wr_data_buf[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDBEFFFFE6FFFF7)) 
    \wr_data_buf[7]_i_2 
       (.I0(Q[3]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(Q[4]),
        .I5(Q[1]),
        .O(\wr_data_buf[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \wr_data_buf[80]_i_1 
       (.I0(Q[0]),
        .I1(data_in[0]),
        .I2(Q[4]),
        .I3(data_in[16]),
        .I4(Q[1]),
        .I5(data_in[64]),
        .O(\wr_data_buf[80]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \wr_data_buf[81]_i_1 
       (.I0(Q[0]),
        .I1(data_in[1]),
        .I2(Q[4]),
        .I3(data_in[17]),
        .I4(Q[1]),
        .I5(data_in[65]),
        .O(\wr_data_buf[81]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \wr_data_buf[82]_i_1 
       (.I0(Q[0]),
        .I1(data_in[2]),
        .I2(Q[4]),
        .I3(data_in[18]),
        .I4(Q[1]),
        .I5(data_in[66]),
        .O(\wr_data_buf[82]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \wr_data_buf[83]_i_1 
       (.I0(Q[0]),
        .I1(data_in[3]),
        .I2(Q[4]),
        .I3(data_in[19]),
        .I4(Q[1]),
        .I5(data_in[67]),
        .O(\wr_data_buf[83]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \wr_data_buf[84]_i_1 
       (.I0(Q[0]),
        .I1(data_in[4]),
        .I2(Q[4]),
        .I3(data_in[20]),
        .I4(Q[1]),
        .I5(data_in[68]),
        .O(\wr_data_buf[84]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \wr_data_buf[85]_i_1 
       (.I0(Q[0]),
        .I1(data_in[5]),
        .I2(Q[4]),
        .I3(data_in[21]),
        .I4(Q[1]),
        .I5(data_in[69]),
        .O(\wr_data_buf[85]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \wr_data_buf[86]_i_1 
       (.I0(Q[0]),
        .I1(data_in[6]),
        .I2(Q[4]),
        .I3(data_in[22]),
        .I4(Q[1]),
        .I5(data_in[70]),
        .O(\wr_data_buf[86]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202A20202)) 
    \wr_data_buf[87]_i_1 
       (.I0(data_valid),
        .I1(\wr_data_buf[87]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\wr_data_buf[87]_i_4_n_0 ),
        .I4(\wr_data_buf[111]_i_3_n_0 ),
        .I5(\wr_data_buf[87]_i_5_n_0 ),
        .O(\wr_data_buf[87]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \wr_data_buf[87]_i_2 
       (.I0(Q[0]),
        .I1(data_in[7]),
        .I2(Q[4]),
        .I3(data_in[23]),
        .I4(Q[1]),
        .I5(data_in[71]),
        .O(\wr_data_buf[87]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBDFFFFF7FFFF)) 
    \wr_data_buf[87]_i_3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\wr_data_buf[87]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data_buf[87]_i_4 
       (.I0(Q[3]),
        .I1(Q[1]),
        .O(\wr_data_buf[87]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \wr_data_buf[87]_i_5 
       (.I0(Q[2]),
        .I1(Q[4]),
        .O(\wr_data_buf[87]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[88]_i_1 
       (.I0(\wr_data_buf[88]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(data_in[24]),
        .I3(Q[1]),
        .I4(data_in[72]),
        .O(\wr_data_buf[88]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wr_data_buf[88]_i_2 
       (.I0(data_in[0]),
        .I1(Q[4]),
        .I2(data_in[64]),
        .I3(Q[1]),
        .I4(data_in[8]),
        .O(\wr_data_buf[88]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[89]_i_1 
       (.I0(\wr_data_buf[89]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(data_in[25]),
        .I3(Q[1]),
        .I4(data_in[73]),
        .O(\wr_data_buf[89]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wr_data_buf[89]_i_2 
       (.I0(data_in[1]),
        .I1(Q[4]),
        .I2(data_in[65]),
        .I3(Q[1]),
        .I4(data_in[9]),
        .O(\wr_data_buf[89]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFECFFE30020002)) 
    \wr_data_buf[8]_i_1 
       (.I0(data_in[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data_in[64]),
        .I5(data_in[8]),
        .O(\wr_data_buf[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[90]_i_1 
       (.I0(\wr_data_buf[90]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(data_in[26]),
        .I3(Q[1]),
        .I4(data_in[74]),
        .O(\wr_data_buf[90]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wr_data_buf[90]_i_2 
       (.I0(data_in[2]),
        .I1(Q[4]),
        .I2(data_in[66]),
        .I3(Q[1]),
        .I4(data_in[10]),
        .O(\wr_data_buf[90]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[91]_i_1 
       (.I0(\wr_data_buf[91]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(data_in[27]),
        .I3(Q[1]),
        .I4(data_in[75]),
        .O(\wr_data_buf[91]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wr_data_buf[91]_i_2 
       (.I0(data_in[3]),
        .I1(Q[4]),
        .I2(data_in[67]),
        .I3(Q[1]),
        .I4(data_in[11]),
        .O(\wr_data_buf[91]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[92]_i_1 
       (.I0(\wr_data_buf[92]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(data_in[28]),
        .I3(Q[1]),
        .I4(data_in[76]),
        .O(\wr_data_buf[92]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wr_data_buf[92]_i_2 
       (.I0(data_in[4]),
        .I1(Q[4]),
        .I2(data_in[68]),
        .I3(Q[1]),
        .I4(data_in[12]),
        .O(\wr_data_buf[92]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[93]_i_1 
       (.I0(\wr_data_buf[93]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(data_in[29]),
        .I3(Q[1]),
        .I4(data_in[77]),
        .O(\wr_data_buf[93]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wr_data_buf[93]_i_2 
       (.I0(data_in[5]),
        .I1(Q[4]),
        .I2(data_in[69]),
        .I3(Q[1]),
        .I4(data_in[13]),
        .O(\wr_data_buf[93]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[94]_i_1 
       (.I0(\wr_data_buf[94]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(data_in[30]),
        .I3(Q[1]),
        .I4(data_in[78]),
        .O(\wr_data_buf[94]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wr_data_buf[94]_i_2 
       (.I0(data_in[6]),
        .I1(Q[4]),
        .I2(data_in[70]),
        .I3(Q[1]),
        .I4(data_in[14]),
        .O(\wr_data_buf[94]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \wr_data_buf[95]_i_1 
       (.I0(data_valid),
        .I1(\wr_data_buf[95]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\wr_data_buf[95]_i_4_n_0 ),
        .O(\wr_data_buf[95]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \wr_data_buf[95]_i_2 
       (.I0(\wr_data_buf[95]_i_5_n_0 ),
        .I1(Q[0]),
        .I2(data_in[31]),
        .I3(Q[1]),
        .I4(data_in[79]),
        .O(\wr_data_buf[95]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFDFFFFF)) 
    \wr_data_buf[95]_i_3 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\wr_data_buf[95]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF3EFF)) 
    \wr_data_buf[95]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[6]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\wr_data_buf[95]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \wr_data_buf[95]_i_5 
       (.I0(data_in[7]),
        .I1(Q[4]),
        .I2(data_in[71]),
        .I3(Q[1]),
        .I4(data_in[15]),
        .O(\wr_data_buf[95]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFECFFE30020002)) 
    \wr_data_buf[9]_i_1 
       (.I0(data_in[1]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(data_in[65]),
        .I5(data_in[9]),
        .O(\wr_data_buf[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[0] 
       (.C(data_clk),
        .CE(\wr_data_buf[7]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(ila_wr_data_buf[0]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[100] 
       (.C(data_clk),
        .CE(\wr_data_buf[103]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(ila_wr_data_buf[100]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[101] 
       (.C(data_clk),
        .CE(\wr_data_buf[103]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(ila_wr_data_buf[101]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[102] 
       (.C(data_clk),
        .CE(\wr_data_buf[103]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(ila_wr_data_buf[102]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[103] 
       (.C(data_clk),
        .CE(\wr_data_buf[103]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(ila_wr_data_buf[103]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[104] 
       (.C(data_clk),
        .CE(\wr_data_buf[111]_i_1_n_0 ),
        .D(\wr_data_buf[104]_i_1_n_0 ),
        .Q(ila_wr_data_buf[104]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[105] 
       (.C(data_clk),
        .CE(\wr_data_buf[111]_i_1_n_0 ),
        .D(\wr_data_buf[105]_i_1_n_0 ),
        .Q(ila_wr_data_buf[105]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[106] 
       (.C(data_clk),
        .CE(\wr_data_buf[111]_i_1_n_0 ),
        .D(\wr_data_buf[106]_i_1_n_0 ),
        .Q(ila_wr_data_buf[106]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[107] 
       (.C(data_clk),
        .CE(\wr_data_buf[111]_i_1_n_0 ),
        .D(\wr_data_buf[107]_i_1_n_0 ),
        .Q(ila_wr_data_buf[107]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[108] 
       (.C(data_clk),
        .CE(\wr_data_buf[111]_i_1_n_0 ),
        .D(\wr_data_buf[108]_i_1_n_0 ),
        .Q(ila_wr_data_buf[108]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[109] 
       (.C(data_clk),
        .CE(\wr_data_buf[111]_i_1_n_0 ),
        .D(\wr_data_buf[109]_i_1_n_0 ),
        .Q(ila_wr_data_buf[109]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[10] 
       (.C(data_clk),
        .CE(\wr_data_buf[15]_i_1_n_0 ),
        .D(\wr_data_buf[10]_i_1_n_0 ),
        .Q(ila_wr_data_buf[10]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[110] 
       (.C(data_clk),
        .CE(\wr_data_buf[111]_i_1_n_0 ),
        .D(\wr_data_buf[110]_i_1_n_0 ),
        .Q(ila_wr_data_buf[110]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[111] 
       (.C(data_clk),
        .CE(\wr_data_buf[111]_i_1_n_0 ),
        .D(\wr_data_buf[111]_i_2_n_0 ),
        .Q(ila_wr_data_buf[111]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[112] 
       (.C(data_clk),
        .CE(\wr_data_buf[119]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(ila_wr_data_buf[112]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[113] 
       (.C(data_clk),
        .CE(\wr_data_buf[119]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(ila_wr_data_buf[113]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[114] 
       (.C(data_clk),
        .CE(\wr_data_buf[119]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(ila_wr_data_buf[114]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[115] 
       (.C(data_clk),
        .CE(\wr_data_buf[119]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(ila_wr_data_buf[115]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[116] 
       (.C(data_clk),
        .CE(\wr_data_buf[119]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(ila_wr_data_buf[116]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[117] 
       (.C(data_clk),
        .CE(\wr_data_buf[119]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(ila_wr_data_buf[117]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[118] 
       (.C(data_clk),
        .CE(\wr_data_buf[119]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(ila_wr_data_buf[118]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[119] 
       (.C(data_clk),
        .CE(\wr_data_buf[119]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(ila_wr_data_buf[119]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[11] 
       (.C(data_clk),
        .CE(\wr_data_buf[15]_i_1_n_0 ),
        .D(\wr_data_buf[11]_i_1_n_0 ),
        .Q(ila_wr_data_buf[11]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[12] 
       (.C(data_clk),
        .CE(\wr_data_buf[15]_i_1_n_0 ),
        .D(\wr_data_buf[12]_i_1_n_0 ),
        .Q(ila_wr_data_buf[12]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[13] 
       (.C(data_clk),
        .CE(\wr_data_buf[15]_i_1_n_0 ),
        .D(\wr_data_buf[13]_i_1_n_0 ),
        .Q(ila_wr_data_buf[13]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[14] 
       (.C(data_clk),
        .CE(\wr_data_buf[15]_i_1_n_0 ),
        .D(\wr_data_buf[14]_i_1_n_0 ),
        .Q(ila_wr_data_buf[14]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[15] 
       (.C(data_clk),
        .CE(\wr_data_buf[15]_i_1_n_0 ),
        .D(\wr_data_buf[15]_i_2_n_0 ),
        .Q(ila_wr_data_buf[15]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[16] 
       (.C(data_clk),
        .CE(\wr_data_buf[23]_i_1_n_0 ),
        .D(\wr_data_buf[16]_i_1_n_0 ),
        .Q(ila_wr_data_buf[16]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[17] 
       (.C(data_clk),
        .CE(\wr_data_buf[23]_i_1_n_0 ),
        .D(\wr_data_buf[17]_i_1_n_0 ),
        .Q(ila_wr_data_buf[17]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[18] 
       (.C(data_clk),
        .CE(\wr_data_buf[23]_i_1_n_0 ),
        .D(\wr_data_buf[18]_i_1_n_0 ),
        .Q(ila_wr_data_buf[18]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[19] 
       (.C(data_clk),
        .CE(\wr_data_buf[23]_i_1_n_0 ),
        .D(\wr_data_buf[19]_i_1_n_0 ),
        .Q(ila_wr_data_buf[19]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[1] 
       (.C(data_clk),
        .CE(\wr_data_buf[7]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(ila_wr_data_buf[1]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[20] 
       (.C(data_clk),
        .CE(\wr_data_buf[23]_i_1_n_0 ),
        .D(\wr_data_buf[20]_i_1_n_0 ),
        .Q(ila_wr_data_buf[20]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[21] 
       (.C(data_clk),
        .CE(\wr_data_buf[23]_i_1_n_0 ),
        .D(\wr_data_buf[21]_i_1_n_0 ),
        .Q(ila_wr_data_buf[21]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[22] 
       (.C(data_clk),
        .CE(\wr_data_buf[23]_i_1_n_0 ),
        .D(\wr_data_buf[22]_i_1_n_0 ),
        .Q(ila_wr_data_buf[22]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[23] 
       (.C(data_clk),
        .CE(\wr_data_buf[23]_i_1_n_0 ),
        .D(\wr_data_buf[23]_i_2_n_0 ),
        .Q(ila_wr_data_buf[23]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[24] 
       (.C(data_clk),
        .CE(\wr_data_buf[31]_i_1_n_0 ),
        .D(\wr_data_buf[24]_i_1_n_0 ),
        .Q(ila_wr_data_buf[24]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[25] 
       (.C(data_clk),
        .CE(\wr_data_buf[31]_i_1_n_0 ),
        .D(\wr_data_buf[25]_i_1_n_0 ),
        .Q(ila_wr_data_buf[25]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[26] 
       (.C(data_clk),
        .CE(\wr_data_buf[31]_i_1_n_0 ),
        .D(\wr_data_buf[26]_i_1_n_0 ),
        .Q(ila_wr_data_buf[26]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[27] 
       (.C(data_clk),
        .CE(\wr_data_buf[31]_i_1_n_0 ),
        .D(\wr_data_buf[27]_i_1_n_0 ),
        .Q(ila_wr_data_buf[27]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[28] 
       (.C(data_clk),
        .CE(\wr_data_buf[31]_i_1_n_0 ),
        .D(\wr_data_buf[28]_i_1_n_0 ),
        .Q(ila_wr_data_buf[28]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[29] 
       (.C(data_clk),
        .CE(\wr_data_buf[31]_i_1_n_0 ),
        .D(\wr_data_buf[29]_i_1_n_0 ),
        .Q(ila_wr_data_buf[29]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[2] 
       (.C(data_clk),
        .CE(\wr_data_buf[7]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(ila_wr_data_buf[2]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[30] 
       (.C(data_clk),
        .CE(\wr_data_buf[31]_i_1_n_0 ),
        .D(\wr_data_buf[30]_i_1_n_0 ),
        .Q(ila_wr_data_buf[30]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[31] 
       (.C(data_clk),
        .CE(\wr_data_buf[31]_i_1_n_0 ),
        .D(\wr_data_buf[31]_i_2_n_0 ),
        .Q(ila_wr_data_buf[31]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[32] 
       (.C(data_clk),
        .CE(\wr_data_buf_reg[39]_i_1_n_0 ),
        .D(\wr_data_buf[32]_i_1_n_0 ),
        .Q(ila_wr_data_buf[32]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[33] 
       (.C(data_clk),
        .CE(\wr_data_buf_reg[39]_i_1_n_0 ),
        .D(\wr_data_buf[33]_i_1_n_0 ),
        .Q(ila_wr_data_buf[33]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[34] 
       (.C(data_clk),
        .CE(\wr_data_buf_reg[39]_i_1_n_0 ),
        .D(\wr_data_buf[34]_i_1_n_0 ),
        .Q(ila_wr_data_buf[34]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[35] 
       (.C(data_clk),
        .CE(\wr_data_buf_reg[39]_i_1_n_0 ),
        .D(\wr_data_buf[35]_i_1_n_0 ),
        .Q(ila_wr_data_buf[35]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[36] 
       (.C(data_clk),
        .CE(\wr_data_buf_reg[39]_i_1_n_0 ),
        .D(\wr_data_buf[36]_i_1_n_0 ),
        .Q(ila_wr_data_buf[36]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[37] 
       (.C(data_clk),
        .CE(\wr_data_buf_reg[39]_i_1_n_0 ),
        .D(\wr_data_buf[37]_i_1_n_0 ),
        .Q(ila_wr_data_buf[37]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[38] 
       (.C(data_clk),
        .CE(\wr_data_buf_reg[39]_i_1_n_0 ),
        .D(\wr_data_buf[38]_i_1_n_0 ),
        .Q(ila_wr_data_buf[38]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[39] 
       (.C(data_clk),
        .CE(\wr_data_buf_reg[39]_i_1_n_0 ),
        .D(\wr_data_buf[39]_i_2_n_0 ),
        .Q(ila_wr_data_buf[39]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  MUXF7 \wr_data_buf_reg[39]_i_1 
       (.I0(\wr_data_buf[39]_i_3_n_0 ),
        .I1(\wr_data_buf[39]_i_4_n_0 ),
        .O(\wr_data_buf_reg[39]_i_1_n_0 ),
        .S(Q[0]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[3] 
       (.C(data_clk),
        .CE(\wr_data_buf[7]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(ila_wr_data_buf[3]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[40] 
       (.C(data_clk),
        .CE(\wr_data_buf[47]_i_1_n_0 ),
        .D(\wr_data_buf[40]_i_1_n_0 ),
        .Q(ila_wr_data_buf[40]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[41] 
       (.C(data_clk),
        .CE(\wr_data_buf[47]_i_1_n_0 ),
        .D(\wr_data_buf[41]_i_1_n_0 ),
        .Q(ila_wr_data_buf[41]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[42] 
       (.C(data_clk),
        .CE(\wr_data_buf[47]_i_1_n_0 ),
        .D(\wr_data_buf[42]_i_1_n_0 ),
        .Q(ila_wr_data_buf[42]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[43] 
       (.C(data_clk),
        .CE(\wr_data_buf[47]_i_1_n_0 ),
        .D(\wr_data_buf[43]_i_1_n_0 ),
        .Q(ila_wr_data_buf[43]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[44] 
       (.C(data_clk),
        .CE(\wr_data_buf[47]_i_1_n_0 ),
        .D(\wr_data_buf[44]_i_1_n_0 ),
        .Q(ila_wr_data_buf[44]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[45] 
       (.C(data_clk),
        .CE(\wr_data_buf[47]_i_1_n_0 ),
        .D(\wr_data_buf[45]_i_1_n_0 ),
        .Q(ila_wr_data_buf[45]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[46] 
       (.C(data_clk),
        .CE(\wr_data_buf[47]_i_1_n_0 ),
        .D(\wr_data_buf[46]_i_1_n_0 ),
        .Q(ila_wr_data_buf[46]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[47] 
       (.C(data_clk),
        .CE(\wr_data_buf[47]_i_1_n_0 ),
        .D(\wr_data_buf[47]_i_2_n_0 ),
        .Q(ila_wr_data_buf[47]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[48] 
       (.C(data_clk),
        .CE(\wr_data_buf[55]_i_1_n_0 ),
        .D(\wr_data_buf[48]_i_1_n_0 ),
        .Q(ila_wr_data_buf[48]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[49] 
       (.C(data_clk),
        .CE(\wr_data_buf[55]_i_1_n_0 ),
        .D(\wr_data_buf[49]_i_1_n_0 ),
        .Q(ila_wr_data_buf[49]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[4] 
       (.C(data_clk),
        .CE(\wr_data_buf[7]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(ila_wr_data_buf[4]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[50] 
       (.C(data_clk),
        .CE(\wr_data_buf[55]_i_1_n_0 ),
        .D(\wr_data_buf[50]_i_1_n_0 ),
        .Q(ila_wr_data_buf[50]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[51] 
       (.C(data_clk),
        .CE(\wr_data_buf[55]_i_1_n_0 ),
        .D(\wr_data_buf[51]_i_1_n_0 ),
        .Q(ila_wr_data_buf[51]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[52] 
       (.C(data_clk),
        .CE(\wr_data_buf[55]_i_1_n_0 ),
        .D(\wr_data_buf[52]_i_1_n_0 ),
        .Q(ila_wr_data_buf[52]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[53] 
       (.C(data_clk),
        .CE(\wr_data_buf[55]_i_1_n_0 ),
        .D(\wr_data_buf[53]_i_1_n_0 ),
        .Q(ila_wr_data_buf[53]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[54] 
       (.C(data_clk),
        .CE(\wr_data_buf[55]_i_1_n_0 ),
        .D(\wr_data_buf[54]_i_1_n_0 ),
        .Q(ila_wr_data_buf[54]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[55] 
       (.C(data_clk),
        .CE(\wr_data_buf[55]_i_1_n_0 ),
        .D(\wr_data_buf[55]_i_2_n_0 ),
        .Q(ila_wr_data_buf[55]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[56] 
       (.C(data_clk),
        .CE(\wr_data_buf[63]_i_1_n_0 ),
        .D(\wr_data_buf[56]_i_1_n_0 ),
        .Q(ila_wr_data_buf[56]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[57] 
       (.C(data_clk),
        .CE(\wr_data_buf[63]_i_1_n_0 ),
        .D(\wr_data_buf[57]_i_1_n_0 ),
        .Q(ila_wr_data_buf[57]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[58] 
       (.C(data_clk),
        .CE(\wr_data_buf[63]_i_1_n_0 ),
        .D(\wr_data_buf[58]_i_1_n_0 ),
        .Q(ila_wr_data_buf[58]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[59] 
       (.C(data_clk),
        .CE(\wr_data_buf[63]_i_1_n_0 ),
        .D(\wr_data_buf[59]_i_1_n_0 ),
        .Q(ila_wr_data_buf[59]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[5] 
       (.C(data_clk),
        .CE(\wr_data_buf[7]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(ila_wr_data_buf[5]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[60] 
       (.C(data_clk),
        .CE(\wr_data_buf[63]_i_1_n_0 ),
        .D(\wr_data_buf[60]_i_1_n_0 ),
        .Q(ila_wr_data_buf[60]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[61] 
       (.C(data_clk),
        .CE(\wr_data_buf[63]_i_1_n_0 ),
        .D(\wr_data_buf[61]_i_1_n_0 ),
        .Q(ila_wr_data_buf[61]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[62] 
       (.C(data_clk),
        .CE(\wr_data_buf[63]_i_1_n_0 ),
        .D(\wr_data_buf[62]_i_1_n_0 ),
        .Q(ila_wr_data_buf[62]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[63] 
       (.C(data_clk),
        .CE(\wr_data_buf[63]_i_1_n_0 ),
        .D(\wr_data_buf[63]_i_2_n_0 ),
        .Q(ila_wr_data_buf[63]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[64] 
       (.C(data_clk),
        .CE(\wr_data_buf[71]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(ila_wr_data_buf[64]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[65] 
       (.C(data_clk),
        .CE(\wr_data_buf[71]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(ila_wr_data_buf[65]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[66] 
       (.C(data_clk),
        .CE(\wr_data_buf[71]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(ila_wr_data_buf[66]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[67] 
       (.C(data_clk),
        .CE(\wr_data_buf[71]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(ila_wr_data_buf[67]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[68] 
       (.C(data_clk),
        .CE(\wr_data_buf[71]_i_1_n_0 ),
        .D(data_in[4]),
        .Q(ila_wr_data_buf[68]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[69] 
       (.C(data_clk),
        .CE(\wr_data_buf[71]_i_1_n_0 ),
        .D(data_in[5]),
        .Q(ila_wr_data_buf[69]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[6] 
       (.C(data_clk),
        .CE(\wr_data_buf[7]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(ila_wr_data_buf[6]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[70] 
       (.C(data_clk),
        .CE(\wr_data_buf[71]_i_1_n_0 ),
        .D(data_in[6]),
        .Q(ila_wr_data_buf[70]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[71] 
       (.C(data_clk),
        .CE(\wr_data_buf[71]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(ila_wr_data_buf[71]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[72] 
       (.C(data_clk),
        .CE(\wr_data_buf[79]_i_1_n_0 ),
        .D(\wr_data_buf[72]_i_1_n_0 ),
        .Q(ila_wr_data_buf[72]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[73] 
       (.C(data_clk),
        .CE(\wr_data_buf[79]_i_1_n_0 ),
        .D(\wr_data_buf[73]_i_1_n_0 ),
        .Q(ila_wr_data_buf[73]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[74] 
       (.C(data_clk),
        .CE(\wr_data_buf[79]_i_1_n_0 ),
        .D(\wr_data_buf[74]_i_1_n_0 ),
        .Q(ila_wr_data_buf[74]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[75] 
       (.C(data_clk),
        .CE(\wr_data_buf[79]_i_1_n_0 ),
        .D(\wr_data_buf[75]_i_1_n_0 ),
        .Q(ila_wr_data_buf[75]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[76] 
       (.C(data_clk),
        .CE(\wr_data_buf[79]_i_1_n_0 ),
        .D(\wr_data_buf[76]_i_1_n_0 ),
        .Q(ila_wr_data_buf[76]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[77] 
       (.C(data_clk),
        .CE(\wr_data_buf[79]_i_1_n_0 ),
        .D(\wr_data_buf[77]_i_1_n_0 ),
        .Q(ila_wr_data_buf[77]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[78] 
       (.C(data_clk),
        .CE(\wr_data_buf[79]_i_1_n_0 ),
        .D(\wr_data_buf[78]_i_1_n_0 ),
        .Q(ila_wr_data_buf[78]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[79] 
       (.C(data_clk),
        .CE(\wr_data_buf[79]_i_1_n_0 ),
        .D(\wr_data_buf[79]_i_2_n_0 ),
        .Q(ila_wr_data_buf[79]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[7] 
       (.C(data_clk),
        .CE(\wr_data_buf[7]_i_1_n_0 ),
        .D(data_in[7]),
        .Q(ila_wr_data_buf[7]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[80] 
       (.C(data_clk),
        .CE(\wr_data_buf[87]_i_1_n_0 ),
        .D(\wr_data_buf[80]_i_1_n_0 ),
        .Q(ila_wr_data_buf[80]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[81] 
       (.C(data_clk),
        .CE(\wr_data_buf[87]_i_1_n_0 ),
        .D(\wr_data_buf[81]_i_1_n_0 ),
        .Q(ila_wr_data_buf[81]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[82] 
       (.C(data_clk),
        .CE(\wr_data_buf[87]_i_1_n_0 ),
        .D(\wr_data_buf[82]_i_1_n_0 ),
        .Q(ila_wr_data_buf[82]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[83] 
       (.C(data_clk),
        .CE(\wr_data_buf[87]_i_1_n_0 ),
        .D(\wr_data_buf[83]_i_1_n_0 ),
        .Q(ila_wr_data_buf[83]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[84] 
       (.C(data_clk),
        .CE(\wr_data_buf[87]_i_1_n_0 ),
        .D(\wr_data_buf[84]_i_1_n_0 ),
        .Q(ila_wr_data_buf[84]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[85] 
       (.C(data_clk),
        .CE(\wr_data_buf[87]_i_1_n_0 ),
        .D(\wr_data_buf[85]_i_1_n_0 ),
        .Q(ila_wr_data_buf[85]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[86] 
       (.C(data_clk),
        .CE(\wr_data_buf[87]_i_1_n_0 ),
        .D(\wr_data_buf[86]_i_1_n_0 ),
        .Q(ila_wr_data_buf[86]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[87] 
       (.C(data_clk),
        .CE(\wr_data_buf[87]_i_1_n_0 ),
        .D(\wr_data_buf[87]_i_2_n_0 ),
        .Q(ila_wr_data_buf[87]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[88] 
       (.C(data_clk),
        .CE(\wr_data_buf[95]_i_1_n_0 ),
        .D(\wr_data_buf[88]_i_1_n_0 ),
        .Q(ila_wr_data_buf[88]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[89] 
       (.C(data_clk),
        .CE(\wr_data_buf[95]_i_1_n_0 ),
        .D(\wr_data_buf[89]_i_1_n_0 ),
        .Q(ila_wr_data_buf[89]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[8] 
       (.C(data_clk),
        .CE(\wr_data_buf[15]_i_1_n_0 ),
        .D(\wr_data_buf[8]_i_1_n_0 ),
        .Q(ila_wr_data_buf[8]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[90] 
       (.C(data_clk),
        .CE(\wr_data_buf[95]_i_1_n_0 ),
        .D(\wr_data_buf[90]_i_1_n_0 ),
        .Q(ila_wr_data_buf[90]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[91] 
       (.C(data_clk),
        .CE(\wr_data_buf[95]_i_1_n_0 ),
        .D(\wr_data_buf[91]_i_1_n_0 ),
        .Q(ila_wr_data_buf[91]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[92] 
       (.C(data_clk),
        .CE(\wr_data_buf[95]_i_1_n_0 ),
        .D(\wr_data_buf[92]_i_1_n_0 ),
        .Q(ila_wr_data_buf[92]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[93] 
       (.C(data_clk),
        .CE(\wr_data_buf[95]_i_1_n_0 ),
        .D(\wr_data_buf[93]_i_1_n_0 ),
        .Q(ila_wr_data_buf[93]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[94] 
       (.C(data_clk),
        .CE(\wr_data_buf[95]_i_1_n_0 ),
        .D(\wr_data_buf[94]_i_1_n_0 ),
        .Q(ila_wr_data_buf[94]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[95] 
       (.C(data_clk),
        .CE(\wr_data_buf[95]_i_1_n_0 ),
        .D(\wr_data_buf[95]_i_2_n_0 ),
        .Q(ila_wr_data_buf[95]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[96] 
       (.C(data_clk),
        .CE(\wr_data_buf[103]_i_1_n_0 ),
        .D(data_in[0]),
        .Q(ila_wr_data_buf[96]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[97] 
       (.C(data_clk),
        .CE(\wr_data_buf[103]_i_1_n_0 ),
        .D(data_in[1]),
        .Q(ila_wr_data_buf[97]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[98] 
       (.C(data_clk),
        .CE(\wr_data_buf[103]_i_1_n_0 ),
        .D(data_in[2]),
        .Q(ila_wr_data_buf[98]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[99] 
       (.C(data_clk),
        .CE(\wr_data_buf[103]_i_1_n_0 ),
        .D(data_in[3]),
        .Q(ila_wr_data_buf[99]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_data_buf_reg[9] 
       (.C(data_clk),
        .CE(\wr_data_buf[15]_i_1_n_0 ),
        .D(\wr_data_buf[9]_i_1_n_0 ),
        .Q(ila_wr_data_buf[9]),
        .R(\fifo_wr_data[127]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
