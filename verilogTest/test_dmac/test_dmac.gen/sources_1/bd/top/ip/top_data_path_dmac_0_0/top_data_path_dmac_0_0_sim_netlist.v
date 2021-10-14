// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Thu Oct 14 10:24:21 2021
// Host        : LTUS435291 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/M300039/GitHub/Nitride.Examples/verilogTest/test_dmac/test_dmac.gen/sources_1/bd/top/ip/top_data_path_dmac_0_0/top_data_path_dmac_0_0_sim_netlist.v
// Design      : top_data_path_dmac_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_data_path_dmac_0_0,data_path_dmac,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "data_path_dmac,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module top_data_path_dmac_0_0
   (ilamaxi_arready,
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
    m_axi_rready);
  output ilamaxi_arready;
  output ilamaxi_arvalid;
  output ilamaxi_rready;
  output ilamaxi_rvalid;
  output ilamaxi_rlast;
  output ilamaxi_awready;
  output ilamaxi_awvalid;
  output ilamaxi_wready;
  output ilamaxi_wvalid;
  output ilamaxi_wlast;
  output ilamaxi_bvalid;
  output ilamaxi_bready;
  output [1:0]ilamaxi_bresp;
  output [47:0]ilamaxi_araddr;
  output [47:0]ilamaxi_awaddr;
  output [7:0]ilamaxi_arlen;
  output [7:0]ilamaxi_awlen;
  output [127:0]ilamaxi_rdata;
  output [127:0]ilamaxi_wdata;
  output ila_tx_ready;
  output ila_tx_valid;
  output ila_tx_prog_empty;
  output ila_rx_ready;
  output ila_rx_valid;
  output ila_rx_fifo_data_ready;
  output [127:0]ila_tx_data;
  output [127:0]ila_rx_data;
  output [2:0]ila_read_state;
  output [1:0]ila_read_bresp;
  output ila_tx_fifo_wren;
  output ila_read_active;
  output [32:0]ila_read_burst_count;
  output [8:0]ila_read_index;
  output [31:0]ila_read_ddr_occupation;
  output ila_read_burst_tick_ack;
  output ila_read_access_tick_ack;
  output ila_read_ddr_has_data;
  output ila_read_ddr_full;
  output [2:0]ila_write_state;
  output [1:0]ila_write_bresp;
  output ila_rx_fifo_rden;
  output ila_write_active;
  output [31:0]ila_write_burst_counter;
  output [8:0]ila_write_index;
  output [31:0]ila_write_ddr_occupation;
  output ila_write_burst_tick_ack;
  output ila_write_access_tick_ack;
  output ila_write_ddr_has_space;
  output ila_write_ddr_full;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_tx:s_axis_rx:m_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN top_aclk, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input write_enable;
  output write_busy;
  input [47:0]write_base_address;
  input [31:0]write_burst_count;
  input [8:0]write_burst_len;
  input [31:0]write_ddr_size;
  output [1:0]write_bresp;
  output write_burst_tick;
  output [31:0]write_total_burst_count;
  output [31:0]write_current_burst_address;
  input [16:0]write_access_size_bytes;
  input write_access_tick;
  output write_overflow_ins;
  output [7:0]write_overflow_count;
  input read_enable;
  output read_busy;
  input [47:0]read_base_address;
  input [31:0]read_burst_count;
  input [8:0]read_burst_len;
  input [31:0]read_ddr_size;
  output read_burst_tick;
  output [31:0]read_total_burst_count;
  output [31:0]read_current_burst_address;
  input [16:0]read_access_size_bytes;
  input read_access_tick;
  output read_underflow_ins;
  output [7:0]read_underflow_count;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx TDATA" *) input [127:0]s_axis_rx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx TVALID" *) input s_axis_rx_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rx, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN top_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_rx_tready;
  input rx_fifo_data_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TDATA" *) output [127:0]m_axis_tx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TVALID" *) output m_axis_tx_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_tx, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN top_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tx_tready;
  input tx_fifo_has_space;
  input tx_fifo_empty;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *) output [47:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLOCK" *) output m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *) output [127:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *) output [15:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *) output [47:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLOCK" *) output m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *) input [127:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 48, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN top_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire ila_read_access_tick_ack;
  wire ila_read_active;
  wire [1:0]ila_read_bresp;
  wire ila_read_burst_tick_ack;
  wire ila_read_ddr_full;
  wire ila_read_ddr_has_data;
  wire [31:0]ila_read_ddr_occupation;
  wire [8:0]ila_read_index;
  wire [2:0]ila_read_state;
  wire ila_rx_fifo_rden;
  wire ila_rx_ready;
  wire ila_tx_fifo_wren;
  wire ila_tx_valid;
  wire ila_write_access_tick_ack;
  wire ila_write_active;
  wire [1:0]ila_write_bresp;
  wire [31:0]ila_write_burst_counter;
  wire ila_write_burst_tick_ack;
  wire ila_write_ddr_full;
  wire ila_write_ddr_has_space;
  wire [31:0]ila_write_ddr_occupation;
  wire [8:0]ila_write_index;
  wire [2:0]ila_write_state;
  wire [7:0]ilamaxi_arlen;
  wire ilamaxi_arvalid;
  wire [7:0]ilamaxi_awlen;
  wire ilamaxi_awvalid;
  wire ilamaxi_bready;
  wire ilamaxi_rready;
  wire ilamaxi_wvalid;
  wire inst_n_263;
  wire inst_n_273;
  wire [47:0]m_axi_araddr;
  wire \m_axi_arlen[6]_INST_0_i_1_n_0 ;
  wire m_axi_arready;
  wire [47:0]m_axi_awaddr;
  wire \m_axi_awlen[6]_INST_0_i_1_n_0 ;
  wire m_axi_awready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [127:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axis_tx_tready;
  wire [16:0]read_access_size_bytes;
  wire read_access_tick;
  wire [47:0]read_base_address;
  wire [31:0]read_burst_count;
  wire [8:0]read_burst_len;
  wire read_burst_tick;
  wire read_busy;
  wire [31:0]read_current_burst_address;
  wire [31:0]read_ddr_size;
  wire read_enable;
  wire [31:0]read_total_burst_count;
  wire [7:0]read_underflow_count;
  wire read_underflow_ins;
  wire rx_fifo_data_ready;
  wire [127:0]s_axis_rx_tdata;
  wire s_axis_rx_tvalid;
  wire tx_fifo_empty;
  wire tx_fifo_has_space;
  wire [16:0]write_access_size_bytes;
  wire write_access_tick;
  wire [47:0]write_base_address;
  wire [31:0]write_burst_count;
  wire [8:0]write_burst_len;
  wire write_burst_tick;
  wire write_busy;
  wire [31:0]write_current_burst_address;
  wire [31:0]write_ddr_size;
  wire write_enable;
  wire [7:0]write_overflow_count;
  wire write_overflow_ins;
  wire [31:0]write_total_burst_count;

  assign ila_read_burst_count[32] = \<const0> ;
  assign ila_read_burst_count[31:0] = read_burst_count;
  assign ila_rx_data[127:0] = s_axis_rx_tdata;
  assign ila_rx_fifo_data_ready = \<const0> ;
  assign ila_rx_valid = s_axis_rx_tvalid;
  assign ila_tx_data[127:0] = m_axi_rdata;
  assign ila_tx_prog_empty = \<const0> ;
  assign ila_tx_ready = m_axis_tx_tready;
  assign ilamaxi_araddr[47:0] = m_axi_araddr;
  assign ilamaxi_arready = m_axi_arready;
  assign ilamaxi_awaddr[47:0] = m_axi_awaddr;
  assign ilamaxi_awready = m_axi_awready;
  assign ilamaxi_bresp[1:0] = m_axi_bresp;
  assign ilamaxi_bvalid = m_axi_bvalid;
  assign ilamaxi_rdata[127:0] = m_axi_rdata;
  assign ilamaxi_rlast = m_axi_rlast;
  assign ilamaxi_rvalid = m_axi_rvalid;
  assign ilamaxi_wdata[127:0] = s_axis_rx_tdata;
  assign ilamaxi_wlast = m_axi_wlast;
  assign ilamaxi_wready = m_axi_wready;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const1> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const1> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arlen[7:0] = ilamaxi_arlen;
  assign m_axi_arlock = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const1> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_arvalid = ilamaxi_arvalid;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const1> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const1> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awlen[7:0] = ilamaxi_awlen;
  assign m_axi_awlock = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const1> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awvalid = ilamaxi_awvalid;
  assign m_axi_bready = ilamaxi_bready;
  assign m_axi_rready = ilamaxi_rready;
  assign m_axi_wdata[127:0] = s_axis_rx_tdata;
  assign m_axi_wstrb[15] = \<const1> ;
  assign m_axi_wstrb[14] = \<const1> ;
  assign m_axi_wstrb[13] = \<const1> ;
  assign m_axi_wstrb[12] = \<const1> ;
  assign m_axi_wstrb[11] = \<const1> ;
  assign m_axi_wstrb[10] = \<const1> ;
  assign m_axi_wstrb[9] = \<const1> ;
  assign m_axi_wstrb[8] = \<const1> ;
  assign m_axi_wstrb[7] = \<const1> ;
  assign m_axi_wstrb[6] = \<const1> ;
  assign m_axi_wstrb[5] = \<const1> ;
  assign m_axi_wstrb[4] = \<const1> ;
  assign m_axi_wstrb[3] = \<const1> ;
  assign m_axi_wstrb[2] = \<const1> ;
  assign m_axi_wstrb[1] = \<const1> ;
  assign m_axi_wstrb[0] = \<const1> ;
  assign m_axi_wvalid = ilamaxi_wvalid;
  assign m_axis_tx_tdata[127:0] = m_axi_rdata;
  assign m_axis_tx_tvalid = ila_tx_valid;
  assign s_axis_rx_tready = ila_rx_ready;
  assign write_bresp[1:0] = ila_write_bresp;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  top_data_path_dmac_0_0_data_path_dmac inst
       (.CO(ila_write_ddr_has_space),
        .Q(ila_read_ddr_occupation),
        .aclk(aclk),
        .aresetn(aresetn),
        .ila_read_access_tick_ack(ila_read_access_tick_ack),
        .ila_read_bresp(ila_read_bresp),
        .ila_read_ddr_full(ila_read_ddr_full),
        .ila_read_state(ila_read_state),
        .ila_rx_fifo_rden(ila_rx_fifo_rden),
        .ila_rx_ready(ila_rx_ready),
        .ila_tx_fifo_wren(ila_tx_fifo_wren),
        .ila_tx_valid(ila_tx_valid),
        .ila_write_access_tick_ack(ila_write_access_tick_ack),
        .ila_write_active(ila_write_active),
        .ila_write_bresp(ila_write_bresp),
        .ila_write_burst_counter(ila_write_burst_counter),
        .ila_write_ddr_full(ila_write_ddr_full),
        .ila_write_state(ila_write_state),
        .ilamaxi_arvalid(ilamaxi_arvalid),
        .ilamaxi_awvalid(ilamaxi_awvalid),
        .ilamaxi_bready(ilamaxi_bready),
        .ilamaxi_rready(ilamaxi_rready),
        .ilamaxi_wvalid(ilamaxi_wvalid),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arready(m_axi_arready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awready(m_axi_awready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_rvalid_0(ila_read_active),
        .m_axi_wlast_reg_0(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axis_tx_tready(m_axis_tx_tready),
        .read_access_size_bytes(read_access_size_bytes),
        .read_access_tick(read_access_tick),
        .read_base_address(read_base_address),
        .read_burst_count(read_burst_count),
        .read_burst_len(read_burst_len),
        .read_burst_len_2_sp_1(inst_n_263),
        .read_burst_tick_ack_reg_0(ila_read_burst_tick_ack),
        .read_burst_tick_reg_0(read_burst_tick),
        .read_busy(read_busy),
        .read_current_burst_address(read_current_burst_address),
        .\read_ddr_occupation_reg[30]_0 (ila_read_ddr_has_data),
        .read_ddr_size(read_ddr_size),
        .read_enable(read_enable),
        .\read_index_reg[8]_0 (ila_read_index),
        .read_total_burst_count(read_total_burst_count),
        .\read_underflow_count_reg[7]_0 (read_underflow_count),
        .read_underflow_ins(read_underflow_ins),
        .rx_fifo_data_ready(rx_fifo_data_ready),
        .s_axis_rx_tvalid(s_axis_rx_tvalid),
        .tx_fifo_empty(tx_fifo_empty),
        .tx_fifo_has_space(tx_fifo_has_space),
        .write_access_size_bytes(write_access_size_bytes),
        .write_access_tick(write_access_tick),
        .write_base_address(write_base_address),
        .write_burst_count(write_burst_count),
        .write_burst_len(write_burst_len),
        .write_burst_len_4_sp_1(inst_n_273),
        .write_burst_tick(write_burst_tick),
        .write_burst_tick_ack_reg_0(ila_write_burst_tick_ack),
        .write_busy(write_busy),
        .write_current_burst_address(write_current_burst_address),
        .\write_ddr_occupation_reg[31]_0 (ila_write_ddr_occupation),
        .write_ddr_size(write_ddr_size),
        .write_enable(write_enable),
        .\write_index_reg[8]_0 (ila_write_index),
        .\write_overflow_count_reg[7]_0 (write_overflow_count),
        .write_overflow_ins(write_overflow_ins),
        .write_total_burst_count(write_total_burst_count));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axi_arlen[0]_INST_0 
       (.I0(read_burst_len[0]),
        .O(ilamaxi_arlen[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \m_axi_arlen[1]_INST_0 
       (.I0(read_burst_len[0]),
        .I1(read_burst_len[1]),
        .O(ilamaxi_arlen[1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \m_axi_arlen[2]_INST_0 
       (.I0(read_burst_len[2]),
        .I1(read_burst_len[1]),
        .I2(read_burst_len[0]),
        .O(ilamaxi_arlen[2]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \m_axi_arlen[3]_INST_0 
       (.I0(read_burst_len[3]),
        .I1(read_burst_len[0]),
        .I2(read_burst_len[1]),
        .I3(read_burst_len[2]),
        .O(ilamaxi_arlen[3]));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \m_axi_arlen[4]_INST_0 
       (.I0(read_burst_len[3]),
        .I1(read_burst_len[0]),
        .I2(read_burst_len[1]),
        .I3(read_burst_len[2]),
        .I4(read_burst_len[4]),
        .O(ilamaxi_arlen[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \m_axi_arlen[5]_INST_0 
       (.I0(read_burst_len[4]),
        .I1(read_burst_len[2]),
        .I2(read_burst_len[1]),
        .I3(read_burst_len[0]),
        .I4(read_burst_len[3]),
        .I5(read_burst_len[5]),
        .O(ilamaxi_arlen[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \m_axi_arlen[6]_INST_0 
       (.I0(read_burst_len[6]),
        .I1(read_burst_len[4]),
        .I2(read_burst_len[2]),
        .I3(\m_axi_arlen[6]_INST_0_i_1_n_0 ),
        .I4(read_burst_len[3]),
        .I5(read_burst_len[5]),
        .O(ilamaxi_arlen[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axi_arlen[6]_INST_0_i_1 
       (.I0(read_burst_len[1]),
        .I1(read_burst_len[0]),
        .O(\m_axi_arlen[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \m_axi_arlen[7]_INST_0 
       (.I0(read_burst_len[6]),
        .I1(read_burst_len[4]),
        .I2(inst_n_263),
        .I3(read_burst_len[5]),
        .I4(read_burst_len[7]),
        .O(ilamaxi_arlen[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axi_awlen[0]_INST_0 
       (.I0(write_burst_len[0]),
        .O(ilamaxi_awlen[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \m_axi_awlen[1]_INST_0 
       (.I0(write_burst_len[0]),
        .I1(write_burst_len[1]),
        .O(ilamaxi_awlen[1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \m_axi_awlen[2]_INST_0 
       (.I0(write_burst_len[2]),
        .I1(write_burst_len[1]),
        .I2(write_burst_len[0]),
        .O(ilamaxi_awlen[2]));
  LUT4 #(
    .INIT(16'hFE01)) 
    \m_axi_awlen[3]_INST_0 
       (.I0(write_burst_len[1]),
        .I1(write_burst_len[0]),
        .I2(write_burst_len[2]),
        .I3(write_burst_len[3]),
        .O(ilamaxi_awlen[3]));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \m_axi_awlen[4]_INST_0 
       (.I0(write_burst_len[1]),
        .I1(write_burst_len[0]),
        .I2(write_burst_len[2]),
        .I3(write_burst_len[3]),
        .I4(write_burst_len[4]),
        .O(ilamaxi_awlen[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \m_axi_awlen[5]_INST_0 
       (.I0(write_burst_len[5]),
        .I1(write_burst_len[1]),
        .I2(write_burst_len[0]),
        .I3(write_burst_len[2]),
        .I4(write_burst_len[3]),
        .I5(write_burst_len[4]),
        .O(ilamaxi_awlen[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \m_axi_awlen[6]_INST_0 
       (.I0(write_burst_len[6]),
        .I1(write_burst_len[4]),
        .I2(write_burst_len[3]),
        .I3(write_burst_len[2]),
        .I4(\m_axi_awlen[6]_INST_0_i_1_n_0 ),
        .I5(write_burst_len[5]),
        .O(ilamaxi_awlen[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axi_awlen[6]_INST_0_i_1 
       (.I0(write_burst_len[1]),
        .I1(write_burst_len[0]),
        .O(\m_axi_awlen[6]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axi_awlen[7]_INST_0 
       (.I0(inst_n_273),
        .I1(write_burst_len[6]),
        .I2(write_burst_len[7]),
        .O(ilamaxi_awlen[7]));
endmodule

(* ORIG_REF_NAME = "data_path_dmac" *) 
module top_data_path_dmac_0_0_data_path_dmac
   (ilamaxi_awvalid,
    write_overflow_ins,
    read_total_burst_count,
    Q,
    \write_ddr_occupation_reg[31]_0 ,
    CO,
    write_total_burst_count,
    ila_write_ddr_full,
    ila_read_ddr_full,
    read_burst_tick_reg_0,
    read_burst_tick_ack_reg_0,
    ila_read_access_tick_ack,
    ilamaxi_arvalid,
    write_burst_tick,
    write_burst_tick_ack_reg_0,
    ila_write_access_tick_ack,
    m_axi_wlast_reg_0,
    ilamaxi_bready,
    read_underflow_ins,
    ila_tx_valid,
    ilamaxi_rready,
    \read_ddr_occupation_reg[30]_0 ,
    m_axi_rvalid_0,
    ila_tx_fifo_wren,
    m_axi_araddr,
    ila_read_state,
    ilamaxi_wvalid,
    ila_rx_ready,
    ila_write_active,
    ila_rx_fifo_rden,
    m_axi_awaddr,
    ila_write_state,
    \read_index_reg[8]_0 ,
    read_burst_len_2_sp_1,
    \write_index_reg[8]_0 ,
    write_burst_len_4_sp_1,
    ila_write_burst_counter,
    ila_read_bresp,
    read_busy,
    \read_underflow_count_reg[7]_0 ,
    write_busy,
    \write_overflow_count_reg[7]_0 ,
    ila_write_bresp,
    write_current_burst_address,
    read_current_burst_address,
    aclk,
    write_ddr_size,
    read_access_tick,
    m_axi_rvalid,
    m_axis_tx_tready,
    m_axi_arready,
    tx_fifo_has_space,
    read_enable,
    m_axi_rlast,
    read_base_address,
    aresetn,
    write_access_tick,
    s_axis_rx_tvalid,
    m_axi_wready,
    write_enable,
    m_axi_bvalid,
    m_axi_awready,
    write_base_address,
    read_burst_len,
    read_burst_count,
    write_access_size_bytes,
    write_burst_len,
    write_burst_count,
    read_ddr_size,
    tx_fifo_empty,
    m_axi_bresp,
    rx_fifo_data_ready,
    m_axi_rresp,
    read_access_size_bytes);
  output ilamaxi_awvalid;
  output write_overflow_ins;
  output [31:0]read_total_burst_count;
  output [31:0]Q;
  output [31:0]\write_ddr_occupation_reg[31]_0 ;
  output [0:0]CO;
  output [31:0]write_total_burst_count;
  output ila_write_ddr_full;
  output ila_read_ddr_full;
  output read_burst_tick_reg_0;
  output read_burst_tick_ack_reg_0;
  output ila_read_access_tick_ack;
  output ilamaxi_arvalid;
  output write_burst_tick;
  output write_burst_tick_ack_reg_0;
  output ila_write_access_tick_ack;
  output m_axi_wlast_reg_0;
  output ilamaxi_bready;
  output read_underflow_ins;
  output ila_tx_valid;
  output ilamaxi_rready;
  output [0:0]\read_ddr_occupation_reg[30]_0 ;
  output m_axi_rvalid_0;
  output ila_tx_fifo_wren;
  output [47:0]m_axi_araddr;
  output [2:0]ila_read_state;
  output ilamaxi_wvalid;
  output ila_rx_ready;
  output ila_write_active;
  output ila_rx_fifo_rden;
  output [47:0]m_axi_awaddr;
  output [2:0]ila_write_state;
  output [8:0]\read_index_reg[8]_0 ;
  output read_burst_len_2_sp_1;
  output [8:0]\write_index_reg[8]_0 ;
  output write_burst_len_4_sp_1;
  output [31:0]ila_write_burst_counter;
  output [1:0]ila_read_bresp;
  output read_busy;
  output [7:0]\read_underflow_count_reg[7]_0 ;
  output write_busy;
  output [7:0]\write_overflow_count_reg[7]_0 ;
  output [1:0]ila_write_bresp;
  output [31:0]write_current_burst_address;
  output [31:0]read_current_burst_address;
  input aclk;
  input [31:0]write_ddr_size;
  input read_access_tick;
  input m_axi_rvalid;
  input m_axis_tx_tready;
  input m_axi_arready;
  input tx_fifo_has_space;
  input read_enable;
  input m_axi_rlast;
  input [47:0]read_base_address;
  input aresetn;
  input write_access_tick;
  input s_axis_rx_tvalid;
  input m_axi_wready;
  input write_enable;
  input m_axi_bvalid;
  input m_axi_awready;
  input [47:0]write_base_address;
  input [8:0]read_burst_len;
  input [31:0]read_burst_count;
  input [16:0]write_access_size_bytes;
  input [8:0]write_burst_len;
  input [31:0]write_burst_count;
  input [31:0]read_ddr_size;
  input tx_fifo_empty;
  input [1:0]m_axi_bresp;
  input rx_fifo_data_ready;
  input [1:0]m_axi_rresp;
  input [16:0]read_access_size_bytes;

  wire [0:0]CO;
  wire \FSM_sequential_read_state[2]_i_1_n_0 ;
  wire \FSM_sequential_read_state[2]_i_2_n_0 ;
  wire \FSM_sequential_write_state[2]_i_10_n_0 ;
  wire \FSM_sequential_write_state[2]_i_1_n_0 ;
  wire \FSM_sequential_write_state[2]_i_2_n_0 ;
  wire \FSM_sequential_write_state[2]_i_3_n_0 ;
  wire \FSM_sequential_write_state[2]_i_4_n_0 ;
  wire \FSM_sequential_write_state[2]_i_5_n_0 ;
  wire \FSM_sequential_write_state[2]_i_6_n_0 ;
  wire \FSM_sequential_write_state[2]_i_7_n_0 ;
  wire \FSM_sequential_write_state[2]_i_8_n_0 ;
  wire \FSM_sequential_write_state[2]_i_9_n_0 ;
  wire [31:0]Q;
  wire aclk;
  wire aresetn;
  wire i__carry__0_i_10_n_0;
  wire i__carry__0_i_11_n_0;
  wire i__carry__0_i_12_n_0;
  wire i__carry__0_i_13_n_0;
  wire i__carry__0_i_14_n_0;
  wire i__carry__0_i_15_n_0;
  wire i__carry__0_i_16_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5__1_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6__1_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7__1_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry__0_i_8__1_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__0_i_9_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5__0_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6__0_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7__0_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8__0_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__1_i_9__0_n_0;
  wire i__carry__1_i_9_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5__0_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6__0_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7__0_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8__0_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_12_n_0;
  wire i__carry_i_13_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_15_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9__0_n_0;
  wire i__carry_i_9__1_n_0;
  wire i__carry_i_9_n_0;
  wire ila_read_access_tick_ack;
  wire [1:0]ila_read_bresp;
  wire ila_read_ddr_full;
  wire ila_read_ddr_has_data_INST_0_i_10_n_0;
  wire ila_read_ddr_has_data_INST_0_i_11_n_0;
  wire ila_read_ddr_has_data_INST_0_i_12_n_0;
  wire ila_read_ddr_has_data_INST_0_i_13_n_0;
  wire ila_read_ddr_has_data_INST_0_i_14_n_0;
  wire ila_read_ddr_has_data_INST_0_i_15_n_0;
  wire ila_read_ddr_has_data_INST_0_i_16_n_0;
  wire ila_read_ddr_has_data_INST_0_i_17_n_0;
  wire ila_read_ddr_has_data_INST_0_i_18_n_0;
  wire ila_read_ddr_has_data_INST_0_i_19_n_0;
  wire ila_read_ddr_has_data_INST_0_i_1_n_0;
  wire ila_read_ddr_has_data_INST_0_i_1_n_1;
  wire ila_read_ddr_has_data_INST_0_i_1_n_2;
  wire ila_read_ddr_has_data_INST_0_i_1_n_3;
  wire ila_read_ddr_has_data_INST_0_i_1_n_4;
  wire ila_read_ddr_has_data_INST_0_i_1_n_5;
  wire ila_read_ddr_has_data_INST_0_i_1_n_6;
  wire ila_read_ddr_has_data_INST_0_i_1_n_7;
  wire ila_read_ddr_has_data_INST_0_i_20_n_0;
  wire ila_read_ddr_has_data_INST_0_i_21_n_0;
  wire ila_read_ddr_has_data_INST_0_i_22_n_0;
  wire ila_read_ddr_has_data_INST_0_i_23_n_0;
  wire ila_read_ddr_has_data_INST_0_i_24_n_0;
  wire ila_read_ddr_has_data_INST_0_i_25_n_0;
  wire ila_read_ddr_has_data_INST_0_i_26_n_0;
  wire ila_read_ddr_has_data_INST_0_i_27_n_0;
  wire ila_read_ddr_has_data_INST_0_i_28_n_0;
  wire ila_read_ddr_has_data_INST_0_i_29_n_0;
  wire ila_read_ddr_has_data_INST_0_i_2_n_0;
  wire ila_read_ddr_has_data_INST_0_i_30_n_0;
  wire ila_read_ddr_has_data_INST_0_i_31_n_0;
  wire ila_read_ddr_has_data_INST_0_i_32_n_0;
  wire ila_read_ddr_has_data_INST_0_i_3_n_0;
  wire ila_read_ddr_has_data_INST_0_i_4_n_0;
  wire ila_read_ddr_has_data_INST_0_i_5_n_0;
  wire ila_read_ddr_has_data_INST_0_i_6_n_0;
  wire ila_read_ddr_has_data_INST_0_i_7_n_0;
  wire ila_read_ddr_has_data_INST_0_i_8_n_0;
  wire ila_read_ddr_has_data_INST_0_i_9_n_0;
  wire ila_read_ddr_has_data_INST_0_n_2;
  wire ila_read_ddr_has_data_INST_0_n_3;
  wire ila_read_ddr_has_data_INST_0_n_4;
  wire ila_read_ddr_has_data_INST_0_n_5;
  wire ila_read_ddr_has_data_INST_0_n_6;
  wire ila_read_ddr_has_data_INST_0_n_7;
  wire [2:0]ila_read_state;
  wire ila_rx_fifo_rden;
  wire ila_rx_ready;
  wire ila_tx_fifo_wren;
  wire ila_tx_valid;
  wire ila_write_access_tick_ack;
  wire ila_write_active;
  wire [1:0]ila_write_bresp;
  wire [31:0]ila_write_burst_counter;
  wire ila_write_ddr_full;
  wire [2:0]ila_write_state;
  wire ilamaxi_arvalid;
  wire ilamaxi_awvalid;
  wire ilamaxi_bready;
  wire ilamaxi_rready;
  wire ilamaxi_wvalid;
  wire [31:1]in10;
  wire [31:1]in11;
  wire [47:3]in18;
  wire [31:1]in20;
  wire [47:3]in9;
  wire [47:0]m_axi_araddr;
  wire \m_axi_araddr[10]_i_3_n_0 ;
  wire \m_axi_araddr[10]_i_4_n_0 ;
  wire \m_axi_araddr[10]_i_5_n_0 ;
  wire \m_axi_araddr[10]_i_6_n_0 ;
  wire \m_axi_araddr[10]_i_7_n_0 ;
  wire \m_axi_araddr[10]_i_8_n_0 ;
  wire \m_axi_araddr[10]_i_9_n_0 ;
  wire \m_axi_araddr[18]_i_3_n_0 ;
  wire \m_axi_araddr[18]_i_4_n_0 ;
  wire \m_axi_araddr[47]_i_1_n_0 ;
  wire \m_axi_araddr_reg[10]_i_2_n_0 ;
  wire \m_axi_araddr_reg[10]_i_2_n_1 ;
  wire \m_axi_araddr_reg[10]_i_2_n_2 ;
  wire \m_axi_araddr_reg[10]_i_2_n_3 ;
  wire \m_axi_araddr_reg[10]_i_2_n_4 ;
  wire \m_axi_araddr_reg[10]_i_2_n_5 ;
  wire \m_axi_araddr_reg[10]_i_2_n_6 ;
  wire \m_axi_araddr_reg[10]_i_2_n_7 ;
  wire \m_axi_araddr_reg[18]_i_2_n_0 ;
  wire \m_axi_araddr_reg[18]_i_2_n_1 ;
  wire \m_axi_araddr_reg[18]_i_2_n_2 ;
  wire \m_axi_araddr_reg[18]_i_2_n_3 ;
  wire \m_axi_araddr_reg[18]_i_2_n_4 ;
  wire \m_axi_araddr_reg[18]_i_2_n_5 ;
  wire \m_axi_araddr_reg[18]_i_2_n_6 ;
  wire \m_axi_araddr_reg[18]_i_2_n_7 ;
  wire \m_axi_araddr_reg[26]_i_2_n_0 ;
  wire \m_axi_araddr_reg[26]_i_2_n_1 ;
  wire \m_axi_araddr_reg[26]_i_2_n_2 ;
  wire \m_axi_araddr_reg[26]_i_2_n_3 ;
  wire \m_axi_araddr_reg[26]_i_2_n_4 ;
  wire \m_axi_araddr_reg[26]_i_2_n_5 ;
  wire \m_axi_araddr_reg[26]_i_2_n_6 ;
  wire \m_axi_araddr_reg[26]_i_2_n_7 ;
  wire \m_axi_araddr_reg[34]_i_2_n_0 ;
  wire \m_axi_araddr_reg[34]_i_2_n_1 ;
  wire \m_axi_araddr_reg[34]_i_2_n_2 ;
  wire \m_axi_araddr_reg[34]_i_2_n_3 ;
  wire \m_axi_araddr_reg[34]_i_2_n_4 ;
  wire \m_axi_araddr_reg[34]_i_2_n_5 ;
  wire \m_axi_araddr_reg[34]_i_2_n_6 ;
  wire \m_axi_araddr_reg[34]_i_2_n_7 ;
  wire \m_axi_araddr_reg[42]_i_2_n_0 ;
  wire \m_axi_araddr_reg[42]_i_2_n_1 ;
  wire \m_axi_araddr_reg[42]_i_2_n_2 ;
  wire \m_axi_araddr_reg[42]_i_2_n_3 ;
  wire \m_axi_araddr_reg[42]_i_2_n_4 ;
  wire \m_axi_araddr_reg[42]_i_2_n_5 ;
  wire \m_axi_araddr_reg[42]_i_2_n_6 ;
  wire \m_axi_araddr_reg[42]_i_2_n_7 ;
  wire \m_axi_araddr_reg[47]_i_3_n_4 ;
  wire \m_axi_araddr_reg[47]_i_3_n_5 ;
  wire \m_axi_araddr_reg[47]_i_3_n_6 ;
  wire \m_axi_araddr_reg[47]_i_3_n_7 ;
  wire m_axi_arready;
  wire m_axi_arvalid_i_1_n_0;
  wire m_axi_arvalid_i_2_n_0;
  wire m_axi_arvalid_i_3_n_0;
  wire [47:0]m_axi_awaddr;
  wire \m_axi_awaddr[0]_i_1_n_0 ;
  wire \m_axi_awaddr[10]_i_1_n_0 ;
  wire \m_axi_awaddr[10]_i_3_n_0 ;
  wire \m_axi_awaddr[10]_i_4_n_0 ;
  wire \m_axi_awaddr[10]_i_5_n_0 ;
  wire \m_axi_awaddr[10]_i_6_n_0 ;
  wire \m_axi_awaddr[10]_i_7_n_0 ;
  wire \m_axi_awaddr[10]_i_8_n_0 ;
  wire \m_axi_awaddr[10]_i_9_n_0 ;
  wire \m_axi_awaddr[11]_i_1_n_0 ;
  wire \m_axi_awaddr[12]_i_1_n_0 ;
  wire \m_axi_awaddr[13]_i_1_n_0 ;
  wire \m_axi_awaddr[14]_i_1_n_0 ;
  wire \m_axi_awaddr[15]_i_1_n_0 ;
  wire \m_axi_awaddr[16]_i_1_n_0 ;
  wire \m_axi_awaddr[17]_i_1_n_0 ;
  wire \m_axi_awaddr[18]_i_1_n_0 ;
  wire \m_axi_awaddr[18]_i_3_n_0 ;
  wire \m_axi_awaddr[18]_i_4_n_0 ;
  wire \m_axi_awaddr[19]_i_1_n_0 ;
  wire \m_axi_awaddr[1]_i_1_n_0 ;
  wire \m_axi_awaddr[20]_i_1_n_0 ;
  wire \m_axi_awaddr[21]_i_1_n_0 ;
  wire \m_axi_awaddr[22]_i_1_n_0 ;
  wire \m_axi_awaddr[23]_i_1_n_0 ;
  wire \m_axi_awaddr[24]_i_1_n_0 ;
  wire \m_axi_awaddr[25]_i_1_n_0 ;
  wire \m_axi_awaddr[26]_i_1_n_0 ;
  wire \m_axi_awaddr[27]_i_1_n_0 ;
  wire \m_axi_awaddr[28]_i_1_n_0 ;
  wire \m_axi_awaddr[29]_i_1_n_0 ;
  wire \m_axi_awaddr[2]_i_1_n_0 ;
  wire \m_axi_awaddr[30]_i_1_n_0 ;
  wire \m_axi_awaddr[31]_i_1_n_0 ;
  wire \m_axi_awaddr[32]_i_1_n_0 ;
  wire \m_axi_awaddr[33]_i_1_n_0 ;
  wire \m_axi_awaddr[34]_i_1_n_0 ;
  wire \m_axi_awaddr[35]_i_1_n_0 ;
  wire \m_axi_awaddr[36]_i_1_n_0 ;
  wire \m_axi_awaddr[37]_i_1_n_0 ;
  wire \m_axi_awaddr[38]_i_1_n_0 ;
  wire \m_axi_awaddr[39]_i_1_n_0 ;
  wire \m_axi_awaddr[3]_i_1_n_0 ;
  wire \m_axi_awaddr[40]_i_1_n_0 ;
  wire \m_axi_awaddr[41]_i_1_n_0 ;
  wire \m_axi_awaddr[42]_i_1_n_0 ;
  wire \m_axi_awaddr[43]_i_1_n_0 ;
  wire \m_axi_awaddr[44]_i_1_n_0 ;
  wire \m_axi_awaddr[45]_i_1_n_0 ;
  wire \m_axi_awaddr[46]_i_1_n_0 ;
  wire \m_axi_awaddr[47]_i_1_n_0 ;
  wire \m_axi_awaddr[47]_i_2_n_0 ;
  wire \m_axi_awaddr[4]_i_1_n_0 ;
  wire \m_axi_awaddr[5]_i_1_n_0 ;
  wire \m_axi_awaddr[6]_i_1_n_0 ;
  wire \m_axi_awaddr[7]_i_1_n_0 ;
  wire \m_axi_awaddr[8]_i_1_n_0 ;
  wire \m_axi_awaddr[9]_i_1_n_0 ;
  wire \m_axi_awaddr_reg[10]_i_2_n_0 ;
  wire \m_axi_awaddr_reg[10]_i_2_n_1 ;
  wire \m_axi_awaddr_reg[10]_i_2_n_2 ;
  wire \m_axi_awaddr_reg[10]_i_2_n_3 ;
  wire \m_axi_awaddr_reg[10]_i_2_n_4 ;
  wire \m_axi_awaddr_reg[10]_i_2_n_5 ;
  wire \m_axi_awaddr_reg[10]_i_2_n_6 ;
  wire \m_axi_awaddr_reg[10]_i_2_n_7 ;
  wire \m_axi_awaddr_reg[18]_i_2_n_0 ;
  wire \m_axi_awaddr_reg[18]_i_2_n_1 ;
  wire \m_axi_awaddr_reg[18]_i_2_n_2 ;
  wire \m_axi_awaddr_reg[18]_i_2_n_3 ;
  wire \m_axi_awaddr_reg[18]_i_2_n_4 ;
  wire \m_axi_awaddr_reg[18]_i_2_n_5 ;
  wire \m_axi_awaddr_reg[18]_i_2_n_6 ;
  wire \m_axi_awaddr_reg[18]_i_2_n_7 ;
  wire \m_axi_awaddr_reg[26]_i_2_n_0 ;
  wire \m_axi_awaddr_reg[26]_i_2_n_1 ;
  wire \m_axi_awaddr_reg[26]_i_2_n_2 ;
  wire \m_axi_awaddr_reg[26]_i_2_n_3 ;
  wire \m_axi_awaddr_reg[26]_i_2_n_4 ;
  wire \m_axi_awaddr_reg[26]_i_2_n_5 ;
  wire \m_axi_awaddr_reg[26]_i_2_n_6 ;
  wire \m_axi_awaddr_reg[26]_i_2_n_7 ;
  wire \m_axi_awaddr_reg[34]_i_2_n_0 ;
  wire \m_axi_awaddr_reg[34]_i_2_n_1 ;
  wire \m_axi_awaddr_reg[34]_i_2_n_2 ;
  wire \m_axi_awaddr_reg[34]_i_2_n_3 ;
  wire \m_axi_awaddr_reg[34]_i_2_n_4 ;
  wire \m_axi_awaddr_reg[34]_i_2_n_5 ;
  wire \m_axi_awaddr_reg[34]_i_2_n_6 ;
  wire \m_axi_awaddr_reg[34]_i_2_n_7 ;
  wire \m_axi_awaddr_reg[42]_i_2_n_0 ;
  wire \m_axi_awaddr_reg[42]_i_2_n_1 ;
  wire \m_axi_awaddr_reg[42]_i_2_n_2 ;
  wire \m_axi_awaddr_reg[42]_i_2_n_3 ;
  wire \m_axi_awaddr_reg[42]_i_2_n_4 ;
  wire \m_axi_awaddr_reg[42]_i_2_n_5 ;
  wire \m_axi_awaddr_reg[42]_i_2_n_6 ;
  wire \m_axi_awaddr_reg[42]_i_2_n_7 ;
  wire \m_axi_awaddr_reg[47]_i_3_n_4 ;
  wire \m_axi_awaddr_reg[47]_i_3_n_5 ;
  wire \m_axi_awaddr_reg[47]_i_3_n_6 ;
  wire \m_axi_awaddr_reg[47]_i_3_n_7 ;
  wire m_axi_awready;
  wire m_axi_awvalid_i_1_n_0;
  wire m_axi_awvalid_i_2_n_0;
  wire m_axi_bready_i_1_n_0;
  wire m_axi_bready_i_2_n_0;
  wire m_axi_bready_i_3_n_0;
  wire m_axi_bready_i_4_n_0;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_rvalid_0;
  wire m_axi_wlast_i_10_n_0;
  wire m_axi_wlast_i_11_n_0;
  wire m_axi_wlast_i_12_n_0;
  wire m_axi_wlast_i_13_n_0;
  wire m_axi_wlast_i_1_n_0;
  wire m_axi_wlast_i_2_n_0;
  wire m_axi_wlast_i_3_n_0;
  wire m_axi_wlast_i_5_n_0;
  wire m_axi_wlast_i_6_n_0;
  wire m_axi_wlast_i_7_n_0;
  wire m_axi_wlast_i_8_n_0;
  wire m_axi_wlast_i_9_n_0;
  wire m_axi_wlast_reg_0;
  wire m_axi_wready;
  wire m_axis_tx_tready;
  wire [47:0]p_1_in;
  wire [16:0]read_access_size_bytes;
  wire read_access_tick;
  wire read_access_tick_ack_i_1_n_0;
  wire [47:0]read_base_address;
  wire read_bresp;
  wire \read_bresp[0]_i_1_n_0 ;
  wire \read_bresp[1]_i_2_n_0 ;
  wire [31:0]read_burst_count;
  wire read_burst_counter;
  wire \read_burst_counter[0]_i_1_n_0 ;
  wire \read_burst_counter[10]_i_1_n_0 ;
  wire \read_burst_counter[11]_i_1_n_0 ;
  wire \read_burst_counter[12]_i_1_n_0 ;
  wire \read_burst_counter[13]_i_1_n_0 ;
  wire \read_burst_counter[14]_i_1_n_0 ;
  wire \read_burst_counter[15]_i_1_n_0 ;
  wire \read_burst_counter[16]_i_1_n_0 ;
  wire \read_burst_counter[17]_i_1_n_0 ;
  wire \read_burst_counter[18]_i_1_n_0 ;
  wire \read_burst_counter[19]_i_1_n_0 ;
  wire \read_burst_counter[1]_i_1_n_0 ;
  wire \read_burst_counter[20]_i_1_n_0 ;
  wire \read_burst_counter[21]_i_1_n_0 ;
  wire \read_burst_counter[22]_i_1_n_0 ;
  wire \read_burst_counter[23]_i_1_n_0 ;
  wire \read_burst_counter[24]_i_1_n_0 ;
  wire \read_burst_counter[25]_i_1_n_0 ;
  wire \read_burst_counter[26]_i_1_n_0 ;
  wire \read_burst_counter[27]_i_1_n_0 ;
  wire \read_burst_counter[28]_i_1_n_0 ;
  wire \read_burst_counter[29]_i_1_n_0 ;
  wire \read_burst_counter[2]_i_1_n_0 ;
  wire \read_burst_counter[30]_i_1_n_0 ;
  wire \read_burst_counter[31]_i_2_n_0 ;
  wire \read_burst_counter[3]_i_1_n_0 ;
  wire \read_burst_counter[4]_i_1_n_0 ;
  wire \read_burst_counter[5]_i_1_n_0 ;
  wire \read_burst_counter[6]_i_1_n_0 ;
  wire \read_burst_counter[7]_i_1_n_0 ;
  wire \read_burst_counter[8]_i_1_n_0 ;
  wire \read_burst_counter[9]_i_1_n_0 ;
  wire \read_burst_counter_reg[16]_i_2_n_0 ;
  wire \read_burst_counter_reg[16]_i_2_n_1 ;
  wire \read_burst_counter_reg[16]_i_2_n_2 ;
  wire \read_burst_counter_reg[16]_i_2_n_3 ;
  wire \read_burst_counter_reg[16]_i_2_n_4 ;
  wire \read_burst_counter_reg[16]_i_2_n_5 ;
  wire \read_burst_counter_reg[16]_i_2_n_6 ;
  wire \read_burst_counter_reg[16]_i_2_n_7 ;
  wire \read_burst_counter_reg[24]_i_2_n_0 ;
  wire \read_burst_counter_reg[24]_i_2_n_1 ;
  wire \read_burst_counter_reg[24]_i_2_n_2 ;
  wire \read_burst_counter_reg[24]_i_2_n_3 ;
  wire \read_burst_counter_reg[24]_i_2_n_4 ;
  wire \read_burst_counter_reg[24]_i_2_n_5 ;
  wire \read_burst_counter_reg[24]_i_2_n_6 ;
  wire \read_burst_counter_reg[24]_i_2_n_7 ;
  wire \read_burst_counter_reg[31]_i_3_n_2 ;
  wire \read_burst_counter_reg[31]_i_3_n_3 ;
  wire \read_burst_counter_reg[31]_i_3_n_4 ;
  wire \read_burst_counter_reg[31]_i_3_n_5 ;
  wire \read_burst_counter_reg[31]_i_3_n_6 ;
  wire \read_burst_counter_reg[31]_i_3_n_7 ;
  wire \read_burst_counter_reg[8]_i_2_n_0 ;
  wire \read_burst_counter_reg[8]_i_2_n_1 ;
  wire \read_burst_counter_reg[8]_i_2_n_2 ;
  wire \read_burst_counter_reg[8]_i_2_n_3 ;
  wire \read_burst_counter_reg[8]_i_2_n_4 ;
  wire \read_burst_counter_reg[8]_i_2_n_5 ;
  wire \read_burst_counter_reg[8]_i_2_n_6 ;
  wire \read_burst_counter_reg[8]_i_2_n_7 ;
  wire \read_burst_counter_reg_n_0_[0] ;
  wire \read_burst_counter_reg_n_0_[10] ;
  wire \read_burst_counter_reg_n_0_[11] ;
  wire \read_burst_counter_reg_n_0_[12] ;
  wire \read_burst_counter_reg_n_0_[13] ;
  wire \read_burst_counter_reg_n_0_[14] ;
  wire \read_burst_counter_reg_n_0_[15] ;
  wire \read_burst_counter_reg_n_0_[16] ;
  wire \read_burst_counter_reg_n_0_[17] ;
  wire \read_burst_counter_reg_n_0_[18] ;
  wire \read_burst_counter_reg_n_0_[19] ;
  wire \read_burst_counter_reg_n_0_[1] ;
  wire \read_burst_counter_reg_n_0_[20] ;
  wire \read_burst_counter_reg_n_0_[21] ;
  wire \read_burst_counter_reg_n_0_[22] ;
  wire \read_burst_counter_reg_n_0_[23] ;
  wire \read_burst_counter_reg_n_0_[24] ;
  wire \read_burst_counter_reg_n_0_[25] ;
  wire \read_burst_counter_reg_n_0_[26] ;
  wire \read_burst_counter_reg_n_0_[27] ;
  wire \read_burst_counter_reg_n_0_[28] ;
  wire \read_burst_counter_reg_n_0_[29] ;
  wire \read_burst_counter_reg_n_0_[2] ;
  wire \read_burst_counter_reg_n_0_[30] ;
  wire \read_burst_counter_reg_n_0_[31] ;
  wire \read_burst_counter_reg_n_0_[3] ;
  wire \read_burst_counter_reg_n_0_[4] ;
  wire \read_burst_counter_reg_n_0_[5] ;
  wire \read_burst_counter_reg_n_0_[6] ;
  wire \read_burst_counter_reg_n_0_[7] ;
  wire \read_burst_counter_reg_n_0_[8] ;
  wire \read_burst_counter_reg_n_0_[9] ;
  wire [8:0]read_burst_len;
  wire read_burst_len_2_sn_1;
  wire read_burst_tick_ack_i_1_n_0;
  wire read_burst_tick_ack_reg_0;
  wire read_burst_tick_i_1_n_0;
  wire read_burst_tick_reg_0;
  wire read_busy;
  wire [31:0]read_current_burst_address;
  wire \read_current_burst_address[0]_i_1_n_0 ;
  wire \read_current_burst_address[10]_i_1_n_0 ;
  wire \read_current_burst_address[11]_i_1_n_0 ;
  wire \read_current_burst_address[12]_i_1_n_0 ;
  wire \read_current_burst_address[13]_i_1_n_0 ;
  wire \read_current_burst_address[14]_i_1_n_0 ;
  wire \read_current_burst_address[15]_i_1_n_0 ;
  wire \read_current_burst_address[16]_i_1_n_0 ;
  wire \read_current_burst_address[17]_i_1_n_0 ;
  wire \read_current_burst_address[18]_i_1_n_0 ;
  wire \read_current_burst_address[19]_i_1_n_0 ;
  wire \read_current_burst_address[1]_i_1_n_0 ;
  wire \read_current_burst_address[20]_i_1_n_0 ;
  wire \read_current_burst_address[21]_i_1_n_0 ;
  wire \read_current_burst_address[22]_i_1_n_0 ;
  wire \read_current_burst_address[23]_i_1_n_0 ;
  wire \read_current_burst_address[24]_i_1_n_0 ;
  wire \read_current_burst_address[25]_i_1_n_0 ;
  wire \read_current_burst_address[26]_i_1_n_0 ;
  wire \read_current_burst_address[27]_i_1_n_0 ;
  wire \read_current_burst_address[28]_i_1_n_0 ;
  wire \read_current_burst_address[29]_i_1_n_0 ;
  wire \read_current_burst_address[2]_i_1_n_0 ;
  wire \read_current_burst_address[30]_i_1_n_0 ;
  wire \read_current_burst_address[31]_i_1_n_0 ;
  wire \read_current_burst_address[31]_i_2_n_0 ;
  wire \read_current_burst_address[3]_i_1_n_0 ;
  wire \read_current_burst_address[4]_i_1_n_0 ;
  wire \read_current_burst_address[5]_i_1_n_0 ;
  wire \read_current_burst_address[6]_i_1_n_0 ;
  wire \read_current_burst_address[7]_i_1_n_0 ;
  wire \read_current_burst_address[8]_i_1_n_0 ;
  wire \read_current_burst_address[9]_i_1_n_0 ;
  wire read_ddr_full_carry__0_i_10_n_0;
  wire read_ddr_full_carry__0_i_11_n_0;
  wire read_ddr_full_carry__0_i_12_n_0;
  wire read_ddr_full_carry__0_i_13_n_0;
  wire read_ddr_full_carry__0_i_14_n_0;
  wire read_ddr_full_carry__0_i_15_n_0;
  wire read_ddr_full_carry__0_i_16_n_0;
  wire read_ddr_full_carry__0_i_1_n_0;
  wire read_ddr_full_carry__0_i_2_n_0;
  wire read_ddr_full_carry__0_i_3_n_0;
  wire read_ddr_full_carry__0_i_4_n_0;
  wire read_ddr_full_carry__0_i_5_n_0;
  wire read_ddr_full_carry__0_i_6_n_0;
  wire read_ddr_full_carry__0_i_7_n_0;
  wire read_ddr_full_carry__0_i_8_n_0;
  wire read_ddr_full_carry__0_i_9_n_0;
  wire read_ddr_full_carry__0_n_1;
  wire read_ddr_full_carry__0_n_2;
  wire read_ddr_full_carry__0_n_3;
  wire read_ddr_full_carry__0_n_4;
  wire read_ddr_full_carry__0_n_5;
  wire read_ddr_full_carry__0_n_6;
  wire read_ddr_full_carry__0_n_7;
  wire read_ddr_full_carry_i_10_n_0;
  wire read_ddr_full_carry_i_11_n_0;
  wire read_ddr_full_carry_i_12_n_0;
  wire read_ddr_full_carry_i_13_n_0;
  wire read_ddr_full_carry_i_14_n_0;
  wire read_ddr_full_carry_i_15_n_0;
  wire read_ddr_full_carry_i_16_n_0;
  wire read_ddr_full_carry_i_1_n_0;
  wire read_ddr_full_carry_i_2_n_0;
  wire read_ddr_full_carry_i_3_n_0;
  wire read_ddr_full_carry_i_4_n_0;
  wire read_ddr_full_carry_i_5_n_0;
  wire read_ddr_full_carry_i_6_n_0;
  wire read_ddr_full_carry_i_7_n_0;
  wire read_ddr_full_carry_i_8_n_0;
  wire read_ddr_full_carry_i_9_n_0;
  wire read_ddr_full_carry_n_0;
  wire read_ddr_full_carry_n_1;
  wire read_ddr_full_carry_n_2;
  wire read_ddr_full_carry_n_3;
  wire read_ddr_full_carry_n_4;
  wire read_ddr_full_carry_n_5;
  wire read_ddr_full_carry_n_6;
  wire read_ddr_full_carry_n_7;
  wire [31:0]read_ddr_occupation;
  wire \read_ddr_occupation0_inferred__0/i__carry__0_n_0 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__0_n_1 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__0_n_2 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__0_n_3 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__0_n_4 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__0_n_5 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__0_n_6 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__0_n_7 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__1_n_0 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__1_n_1 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__1_n_2 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__1_n_3 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__1_n_4 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__1_n_5 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__1_n_6 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__1_n_7 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__2_n_1 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__2_n_2 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__2_n_3 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__2_n_4 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__2_n_5 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__2_n_6 ;
  wire \read_ddr_occupation0_inferred__0/i__carry__2_n_7 ;
  wire \read_ddr_occupation0_inferred__0/i__carry_n_0 ;
  wire \read_ddr_occupation0_inferred__0/i__carry_n_1 ;
  wire \read_ddr_occupation0_inferred__0/i__carry_n_2 ;
  wire \read_ddr_occupation0_inferred__0/i__carry_n_3 ;
  wire \read_ddr_occupation0_inferred__0/i__carry_n_4 ;
  wire \read_ddr_occupation0_inferred__0/i__carry_n_5 ;
  wire \read_ddr_occupation0_inferred__0/i__carry_n_6 ;
  wire \read_ddr_occupation0_inferred__0/i__carry_n_7 ;
  wire read_ddr_occupation114_out;
  wire read_ddr_occupation2;
  wire \read_ddr_occupation[31]_i_10_n_0 ;
  wire \read_ddr_occupation[31]_i_11_n_0 ;
  wire \read_ddr_occupation[31]_i_12_n_0 ;
  wire \read_ddr_occupation[31]_i_13_n_0 ;
  wire \read_ddr_occupation[31]_i_14_n_0 ;
  wire \read_ddr_occupation[31]_i_15_n_0 ;
  wire \read_ddr_occupation[31]_i_16_n_0 ;
  wire \read_ddr_occupation[31]_i_17_n_0 ;
  wire \read_ddr_occupation[31]_i_18_n_0 ;
  wire \read_ddr_occupation[31]_i_19_n_0 ;
  wire \read_ddr_occupation[31]_i_1_n_0 ;
  wire \read_ddr_occupation[31]_i_20_n_0 ;
  wire \read_ddr_occupation[31]_i_21_n_0 ;
  wire \read_ddr_occupation[31]_i_22_n_0 ;
  wire \read_ddr_occupation[31]_i_23_n_0 ;
  wire \read_ddr_occupation[31]_i_24_n_0 ;
  wire \read_ddr_occupation[31]_i_25_n_0 ;
  wire \read_ddr_occupation[31]_i_26_n_0 ;
  wire \read_ddr_occupation[31]_i_27_n_0 ;
  wire \read_ddr_occupation[31]_i_28_n_0 ;
  wire \read_ddr_occupation[31]_i_29_n_0 ;
  wire \read_ddr_occupation[31]_i_30_n_0 ;
  wire \read_ddr_occupation[31]_i_31_n_0 ;
  wire \read_ddr_occupation[31]_i_32_n_0 ;
  wire \read_ddr_occupation[31]_i_33_n_0 ;
  wire \read_ddr_occupation[31]_i_34_n_0 ;
  wire \read_ddr_occupation[31]_i_35_n_0 ;
  wire \read_ddr_occupation[31]_i_4_n_0 ;
  wire \read_ddr_occupation[31]_i_5_n_0 ;
  wire \read_ddr_occupation[31]_i_6_n_0 ;
  wire \read_ddr_occupation[31]_i_7_n_0 ;
  wire \read_ddr_occupation[31]_i_8_n_0 ;
  wire \read_ddr_occupation[31]_i_9_n_0 ;
  wire [0:0]\read_ddr_occupation_reg[30]_0 ;
  wire \read_ddr_occupation_reg[31]_i_2_n_1 ;
  wire \read_ddr_occupation_reg[31]_i_2_n_2 ;
  wire \read_ddr_occupation_reg[31]_i_2_n_3 ;
  wire \read_ddr_occupation_reg[31]_i_2_n_4 ;
  wire \read_ddr_occupation_reg[31]_i_2_n_5 ;
  wire \read_ddr_occupation_reg[31]_i_2_n_6 ;
  wire \read_ddr_occupation_reg[31]_i_2_n_7 ;
  wire \read_ddr_occupation_reg[31]_i_3_n_0 ;
  wire \read_ddr_occupation_reg[31]_i_3_n_1 ;
  wire \read_ddr_occupation_reg[31]_i_3_n_2 ;
  wire \read_ddr_occupation_reg[31]_i_3_n_3 ;
  wire \read_ddr_occupation_reg[31]_i_3_n_4 ;
  wire \read_ddr_occupation_reg[31]_i_3_n_5 ;
  wire \read_ddr_occupation_reg[31]_i_3_n_6 ;
  wire \read_ddr_occupation_reg[31]_i_3_n_7 ;
  wire [31:0]read_ddr_size;
  wire read_enable;
  wire read_index;
  wire read_index1;
  wire read_index1_carry_i_10_n_0;
  wire read_index1_carry_i_1_n_0;
  wire read_index1_carry_i_2_n_0;
  wire read_index1_carry_i_3_n_0;
  wire read_index1_carry_i_4_n_0;
  wire read_index1_carry_i_5_n_0;
  wire read_index1_carry_i_6_n_0;
  wire read_index1_carry_i_7_n_0;
  wire read_index1_carry_i_8_n_0;
  wire read_index1_carry_i_9_n_0;
  wire read_index1_carry_n_4;
  wire read_index1_carry_n_5;
  wire read_index1_carry_n_6;
  wire read_index1_carry_n_7;
  wire \read_index[0]_i_1_n_0 ;
  wire \read_index[1]_i_1_n_0 ;
  wire \read_index[2]_i_1_n_0 ;
  wire \read_index[3]_i_1_n_0 ;
  wire \read_index[4]_i_1_n_0 ;
  wire \read_index[5]_i_1_n_0 ;
  wire \read_index[5]_i_2_n_0 ;
  wire \read_index[6]_i_1_n_0 ;
  wire \read_index[7]_i_1_n_0 ;
  wire \read_index[8]_i_2_n_0 ;
  wire \read_index[8]_i_3_n_0 ;
  wire \read_index[8]_i_4_n_0 ;
  wire [8:0]\read_index_reg[8]_0 ;
  wire [2:0]read_state;
  wire read_state212_in;
  wire read_state2_carry__0_i_10_n_0;
  wire read_state2_carry__0_i_11_n_0;
  wire read_state2_carry__0_i_12_n_0;
  wire read_state2_carry__0_i_13_n_0;
  wire read_state2_carry__0_i_14_n_0;
  wire read_state2_carry__0_i_15_n_0;
  wire read_state2_carry__0_i_16_n_0;
  wire read_state2_carry__0_i_1_n_0;
  wire read_state2_carry__0_i_2_n_0;
  wire read_state2_carry__0_i_3_n_0;
  wire read_state2_carry__0_i_4_n_0;
  wire read_state2_carry__0_i_5_n_0;
  wire read_state2_carry__0_i_6_n_0;
  wire read_state2_carry__0_i_7_n_0;
  wire read_state2_carry__0_i_8_n_0;
  wire read_state2_carry__0_i_9_n_0;
  wire read_state2_carry__0_n_1;
  wire read_state2_carry__0_n_2;
  wire read_state2_carry__0_n_3;
  wire read_state2_carry__0_n_4;
  wire read_state2_carry__0_n_5;
  wire read_state2_carry__0_n_6;
  wire read_state2_carry__0_n_7;
  wire read_state2_carry_i_10_n_0;
  wire read_state2_carry_i_11_n_0;
  wire read_state2_carry_i_12_n_0;
  wire read_state2_carry_i_13_n_0;
  wire read_state2_carry_i_14_n_0;
  wire read_state2_carry_i_15_n_0;
  wire read_state2_carry_i_16_n_0;
  wire read_state2_carry_i_1_n_0;
  wire read_state2_carry_i_2_n_0;
  wire read_state2_carry_i_3_n_0;
  wire read_state2_carry_i_4_n_0;
  wire read_state2_carry_i_5_n_0;
  wire read_state2_carry_i_6_n_0;
  wire read_state2_carry_i_7_n_0;
  wire read_state2_carry_i_8_n_0;
  wire read_state2_carry_i_9_n_0;
  wire read_state2_carry_n_0;
  wire read_state2_carry_n_1;
  wire read_state2_carry_n_2;
  wire read_state2_carry_n_3;
  wire read_state2_carry_n_4;
  wire read_state2_carry_n_5;
  wire read_state2_carry_n_6;
  wire read_state2_carry_n_7;
  wire [1:0]read_state__0;
  wire [31:0]read_total_burst_count;
  wire read_total_burst_count0_carry__0_n_0;
  wire read_total_burst_count0_carry__0_n_1;
  wire read_total_burst_count0_carry__0_n_2;
  wire read_total_burst_count0_carry__0_n_3;
  wire read_total_burst_count0_carry__0_n_4;
  wire read_total_burst_count0_carry__0_n_5;
  wire read_total_burst_count0_carry__0_n_6;
  wire read_total_burst_count0_carry__0_n_7;
  wire read_total_burst_count0_carry__1_n_0;
  wire read_total_burst_count0_carry__1_n_1;
  wire read_total_burst_count0_carry__1_n_2;
  wire read_total_burst_count0_carry__1_n_3;
  wire read_total_burst_count0_carry__1_n_4;
  wire read_total_burst_count0_carry__1_n_5;
  wire read_total_burst_count0_carry__1_n_6;
  wire read_total_burst_count0_carry__1_n_7;
  wire read_total_burst_count0_carry__2_n_2;
  wire read_total_burst_count0_carry__2_n_3;
  wire read_total_burst_count0_carry__2_n_4;
  wire read_total_burst_count0_carry__2_n_5;
  wire read_total_burst_count0_carry__2_n_6;
  wire read_total_burst_count0_carry__2_n_7;
  wire read_total_burst_count0_carry_n_0;
  wire read_total_burst_count0_carry_n_1;
  wire read_total_burst_count0_carry_n_2;
  wire read_total_burst_count0_carry_n_3;
  wire read_total_burst_count0_carry_n_4;
  wire read_total_burst_count0_carry_n_5;
  wire read_total_burst_count0_carry_n_6;
  wire read_total_burst_count0_carry_n_7;
  wire \read_total_burst_count[0]_i_1_n_0 ;
  wire \read_total_burst_count[10]_i_1_n_0 ;
  wire \read_total_burst_count[11]_i_1_n_0 ;
  wire \read_total_burst_count[12]_i_1_n_0 ;
  wire \read_total_burst_count[13]_i_1_n_0 ;
  wire \read_total_burst_count[14]_i_1_n_0 ;
  wire \read_total_burst_count[15]_i_1_n_0 ;
  wire \read_total_burst_count[16]_i_1_n_0 ;
  wire \read_total_burst_count[17]_i_1_n_0 ;
  wire \read_total_burst_count[18]_i_1_n_0 ;
  wire \read_total_burst_count[19]_i_1_n_0 ;
  wire \read_total_burst_count[1]_i_1_n_0 ;
  wire \read_total_burst_count[20]_i_1_n_0 ;
  wire \read_total_burst_count[21]_i_1_n_0 ;
  wire \read_total_burst_count[22]_i_1_n_0 ;
  wire \read_total_burst_count[23]_i_1_n_0 ;
  wire \read_total_burst_count[24]_i_1_n_0 ;
  wire \read_total_burst_count[25]_i_1_n_0 ;
  wire \read_total_burst_count[26]_i_1_n_0 ;
  wire \read_total_burst_count[27]_i_1_n_0 ;
  wire \read_total_burst_count[28]_i_1_n_0 ;
  wire \read_total_burst_count[29]_i_1_n_0 ;
  wire \read_total_burst_count[2]_i_1_n_0 ;
  wire \read_total_burst_count[30]_i_1_n_0 ;
  wire \read_total_burst_count[31]_i_1_n_0 ;
  wire \read_total_burst_count[31]_i_2_n_0 ;
  wire \read_total_burst_count[3]_i_1_n_0 ;
  wire \read_total_burst_count[4]_i_1_n_0 ;
  wire \read_total_burst_count[5]_i_1_n_0 ;
  wire \read_total_burst_count[6]_i_1_n_0 ;
  wire \read_total_burst_count[7]_i_1_n_0 ;
  wire \read_total_burst_count[8]_i_1_n_0 ;
  wire \read_total_burst_count[9]_i_1_n_0 ;
  wire \read_underflow_count[0]_i_1_n_0 ;
  wire \read_underflow_count[1]_i_1_n_0 ;
  wire \read_underflow_count[2]_i_1_n_0 ;
  wire \read_underflow_count[3]_i_1_n_0 ;
  wire \read_underflow_count[4]_i_1_n_0 ;
  wire \read_underflow_count[5]_i_1_n_0 ;
  wire \read_underflow_count[5]_i_2_n_0 ;
  wire \read_underflow_count[6]_i_1_n_0 ;
  wire \read_underflow_count[7]_i_1_n_0 ;
  wire \read_underflow_count[7]_i_2_n_0 ;
  wire \read_underflow_count[7]_i_3_n_0 ;
  wire [7:0]\read_underflow_count_reg[7]_0 ;
  wire read_underflow_ins;
  wire read_underflow_ins1;
  wire read_underflow_ins_i_1_n_0;
  wire read_underflow_ins_i_3_n_0;
  wire read_underflow_ins_i_4_n_0;
  wire read_underflow_ins_i_5_n_0;
  wire read_underflow_ins_i_6_n_0;
  wire read_underflow_ins_i_7_n_0;
  wire read_underflow_ins_i_8_n_0;
  wire read_underflow_ins_i_9_n_0;
  wire rx_fifo_data_ready;
  wire s_axis_rx_tvalid;
  wire tx_fifo_empty;
  wire tx_fifo_has_space;
  wire [16:0]write_access_size_bytes;
  wire write_access_tick;
  wire write_access_tick_ack_i_1_n_0;
  wire [47:0]write_base_address;
  wire \write_bresp[0]_i_1_n_0 ;
  wire \write_bresp[1]_i_1_n_0 ;
  wire \write_bresp[1]_i_2_n_0 ;
  wire [31:0]write_burst_count;
  wire [31:0]write_burst_counter;
  wire \write_burst_counter[31]_i_1_n_0 ;
  wire \write_burst_counter_reg[16]_i_2_n_0 ;
  wire \write_burst_counter_reg[16]_i_2_n_1 ;
  wire \write_burst_counter_reg[16]_i_2_n_2 ;
  wire \write_burst_counter_reg[16]_i_2_n_3 ;
  wire \write_burst_counter_reg[16]_i_2_n_4 ;
  wire \write_burst_counter_reg[16]_i_2_n_5 ;
  wire \write_burst_counter_reg[16]_i_2_n_6 ;
  wire \write_burst_counter_reg[16]_i_2_n_7 ;
  wire \write_burst_counter_reg[24]_i_2_n_0 ;
  wire \write_burst_counter_reg[24]_i_2_n_1 ;
  wire \write_burst_counter_reg[24]_i_2_n_2 ;
  wire \write_burst_counter_reg[24]_i_2_n_3 ;
  wire \write_burst_counter_reg[24]_i_2_n_4 ;
  wire \write_burst_counter_reg[24]_i_2_n_5 ;
  wire \write_burst_counter_reg[24]_i_2_n_6 ;
  wire \write_burst_counter_reg[24]_i_2_n_7 ;
  wire \write_burst_counter_reg[31]_i_3_n_2 ;
  wire \write_burst_counter_reg[31]_i_3_n_3 ;
  wire \write_burst_counter_reg[31]_i_3_n_4 ;
  wire \write_burst_counter_reg[31]_i_3_n_5 ;
  wire \write_burst_counter_reg[31]_i_3_n_6 ;
  wire \write_burst_counter_reg[31]_i_3_n_7 ;
  wire \write_burst_counter_reg[8]_i_2_n_0 ;
  wire \write_burst_counter_reg[8]_i_2_n_1 ;
  wire \write_burst_counter_reg[8]_i_2_n_2 ;
  wire \write_burst_counter_reg[8]_i_2_n_3 ;
  wire \write_burst_counter_reg[8]_i_2_n_4 ;
  wire \write_burst_counter_reg[8]_i_2_n_5 ;
  wire \write_burst_counter_reg[8]_i_2_n_6 ;
  wire \write_burst_counter_reg[8]_i_2_n_7 ;
  wire [8:0]write_burst_len;
  wire write_burst_len_4_sn_1;
  wire write_burst_tick;
  wire write_burst_tick_ack_reg_0;
  wire write_burst_tick_i_1_n_0;
  wire write_busy;
  wire [31:0]write_current_burst_address;
  wire \write_current_burst_address[0]_i_1_n_0 ;
  wire \write_current_burst_address[10]_i_1_n_0 ;
  wire \write_current_burst_address[11]_i_1_n_0 ;
  wire \write_current_burst_address[12]_i_1_n_0 ;
  wire \write_current_burst_address[13]_i_1_n_0 ;
  wire \write_current_burst_address[14]_i_1_n_0 ;
  wire \write_current_burst_address[15]_i_1_n_0 ;
  wire \write_current_burst_address[16]_i_1_n_0 ;
  wire \write_current_burst_address[17]_i_1_n_0 ;
  wire \write_current_burst_address[18]_i_1_n_0 ;
  wire \write_current_burst_address[19]_i_1_n_0 ;
  wire \write_current_burst_address[1]_i_1_n_0 ;
  wire \write_current_burst_address[20]_i_1_n_0 ;
  wire \write_current_burst_address[21]_i_1_n_0 ;
  wire \write_current_burst_address[22]_i_1_n_0 ;
  wire \write_current_burst_address[23]_i_1_n_0 ;
  wire \write_current_burst_address[24]_i_1_n_0 ;
  wire \write_current_burst_address[25]_i_1_n_0 ;
  wire \write_current_burst_address[26]_i_1_n_0 ;
  wire \write_current_burst_address[27]_i_1_n_0 ;
  wire \write_current_burst_address[28]_i_1_n_0 ;
  wire \write_current_burst_address[29]_i_1_n_0 ;
  wire \write_current_burst_address[2]_i_1_n_0 ;
  wire \write_current_burst_address[30]_i_1_n_0 ;
  wire \write_current_burst_address[31]_i_1_n_0 ;
  wire \write_current_burst_address[31]_i_2_n_0 ;
  wire \write_current_burst_address[3]_i_1_n_0 ;
  wire \write_current_burst_address[4]_i_1_n_0 ;
  wire \write_current_burst_address[5]_i_1_n_0 ;
  wire \write_current_burst_address[6]_i_1_n_0 ;
  wire \write_current_burst_address[7]_i_1_n_0 ;
  wire \write_current_burst_address[8]_i_1_n_0 ;
  wire \write_current_burst_address[9]_i_1_n_0 ;
  wire write_ddr_full_carry__0_i_10_n_0;
  wire write_ddr_full_carry__0_i_11_n_0;
  wire write_ddr_full_carry__0_i_12_n_0;
  wire write_ddr_full_carry__0_i_13_n_0;
  wire write_ddr_full_carry__0_i_14_n_0;
  wire write_ddr_full_carry__0_i_15_n_0;
  wire write_ddr_full_carry__0_i_16_n_0;
  wire write_ddr_full_carry__0_i_1_n_0;
  wire write_ddr_full_carry__0_i_2_n_0;
  wire write_ddr_full_carry__0_i_3_n_0;
  wire write_ddr_full_carry__0_i_4_n_0;
  wire write_ddr_full_carry__0_i_5_n_0;
  wire write_ddr_full_carry__0_i_6_n_0;
  wire write_ddr_full_carry__0_i_7_n_0;
  wire write_ddr_full_carry__0_i_8_n_0;
  wire write_ddr_full_carry__0_i_9_n_0;
  wire write_ddr_full_carry__0_n_1;
  wire write_ddr_full_carry__0_n_2;
  wire write_ddr_full_carry__0_n_3;
  wire write_ddr_full_carry__0_n_4;
  wire write_ddr_full_carry__0_n_5;
  wire write_ddr_full_carry__0_n_6;
  wire write_ddr_full_carry__0_n_7;
  wire write_ddr_full_carry_i_10_n_0;
  wire write_ddr_full_carry_i_11_n_0;
  wire write_ddr_full_carry_i_12_n_0;
  wire write_ddr_full_carry_i_13_n_0;
  wire write_ddr_full_carry_i_14_n_0;
  wire write_ddr_full_carry_i_15_n_0;
  wire write_ddr_full_carry_i_16_n_0;
  wire write_ddr_full_carry_i_1_n_0;
  wire write_ddr_full_carry_i_2_n_0;
  wire write_ddr_full_carry_i_3_n_0;
  wire write_ddr_full_carry_i_4_n_0;
  wire write_ddr_full_carry_i_5_n_0;
  wire write_ddr_full_carry_i_6_n_0;
  wire write_ddr_full_carry_i_7_n_0;
  wire write_ddr_full_carry_i_8_n_0;
  wire write_ddr_full_carry_i_9_n_0;
  wire write_ddr_full_carry_n_0;
  wire write_ddr_full_carry_n_1;
  wire write_ddr_full_carry_n_2;
  wire write_ddr_full_carry_n_3;
  wire write_ddr_full_carry_n_4;
  wire write_ddr_full_carry_n_5;
  wire write_ddr_full_carry_n_6;
  wire write_ddr_full_carry_n_7;
  wire [31:0]write_ddr_has_space0;
  wire write_ddr_has_space0_carry__0_i_1_n_0;
  wire write_ddr_has_space0_carry__0_i_2_n_0;
  wire write_ddr_has_space0_carry__0_i_3_n_0;
  wire write_ddr_has_space0_carry__0_i_4_n_0;
  wire write_ddr_has_space0_carry__0_i_5_n_0;
  wire write_ddr_has_space0_carry__0_i_6_n_0;
  wire write_ddr_has_space0_carry__0_i_7_n_0;
  wire write_ddr_has_space0_carry__0_i_8_n_0;
  wire write_ddr_has_space0_carry__0_n_0;
  wire write_ddr_has_space0_carry__0_n_1;
  wire write_ddr_has_space0_carry__0_n_2;
  wire write_ddr_has_space0_carry__0_n_3;
  wire write_ddr_has_space0_carry__0_n_4;
  wire write_ddr_has_space0_carry__0_n_5;
  wire write_ddr_has_space0_carry__0_n_6;
  wire write_ddr_has_space0_carry__0_n_7;
  wire write_ddr_has_space0_carry__1_i_1_n_0;
  wire write_ddr_has_space0_carry__1_i_2_n_0;
  wire write_ddr_has_space0_carry__1_i_3_n_0;
  wire write_ddr_has_space0_carry__1_i_4_n_0;
  wire write_ddr_has_space0_carry__1_i_5_n_0;
  wire write_ddr_has_space0_carry__1_i_6_n_0;
  wire write_ddr_has_space0_carry__1_i_7_n_0;
  wire write_ddr_has_space0_carry__1_i_8_n_0;
  wire write_ddr_has_space0_carry__1_n_0;
  wire write_ddr_has_space0_carry__1_n_1;
  wire write_ddr_has_space0_carry__1_n_2;
  wire write_ddr_has_space0_carry__1_n_3;
  wire write_ddr_has_space0_carry__1_n_4;
  wire write_ddr_has_space0_carry__1_n_5;
  wire write_ddr_has_space0_carry__1_n_6;
  wire write_ddr_has_space0_carry__1_n_7;
  wire write_ddr_has_space0_carry__2_i_1_n_0;
  wire write_ddr_has_space0_carry__2_i_2_n_0;
  wire write_ddr_has_space0_carry__2_i_3_n_0;
  wire write_ddr_has_space0_carry__2_i_4_n_0;
  wire write_ddr_has_space0_carry__2_i_5_n_0;
  wire write_ddr_has_space0_carry__2_i_6_n_0;
  wire write_ddr_has_space0_carry__2_i_7_n_0;
  wire write_ddr_has_space0_carry__2_i_8_n_0;
  wire write_ddr_has_space0_carry__2_n_1;
  wire write_ddr_has_space0_carry__2_n_2;
  wire write_ddr_has_space0_carry__2_n_3;
  wire write_ddr_has_space0_carry__2_n_4;
  wire write_ddr_has_space0_carry__2_n_5;
  wire write_ddr_has_space0_carry__2_n_6;
  wire write_ddr_has_space0_carry__2_n_7;
  wire write_ddr_has_space0_carry_i_1_n_0;
  wire write_ddr_has_space0_carry_i_2_n_0;
  wire write_ddr_has_space0_carry_i_3_n_0;
  wire write_ddr_has_space0_carry_i_4_n_0;
  wire write_ddr_has_space0_carry_i_5_n_0;
  wire write_ddr_has_space0_carry_i_6_n_0;
  wire write_ddr_has_space0_carry_i_7_n_0;
  wire write_ddr_has_space0_carry_i_8_n_0;
  wire write_ddr_has_space0_carry_n_0;
  wire write_ddr_has_space0_carry_n_1;
  wire write_ddr_has_space0_carry_n_2;
  wire write_ddr_has_space0_carry_n_3;
  wire write_ddr_has_space0_carry_n_4;
  wire write_ddr_has_space0_carry_n_5;
  wire write_ddr_has_space0_carry_n_6;
  wire write_ddr_has_space0_carry_n_7;
  wire write_ddr_has_space_carry__0_i_10_n_0;
  wire write_ddr_has_space_carry__0_i_11_n_0;
  wire write_ddr_has_space_carry__0_i_12_n_0;
  wire write_ddr_has_space_carry__0_i_13_n_0;
  wire write_ddr_has_space_carry__0_i_14_n_0;
  wire write_ddr_has_space_carry__0_i_1_n_0;
  wire write_ddr_has_space_carry__0_i_2_n_0;
  wire write_ddr_has_space_carry__0_i_3_n_0;
  wire write_ddr_has_space_carry__0_i_4_n_0;
  wire write_ddr_has_space_carry__0_i_5_n_0;
  wire write_ddr_has_space_carry__0_i_6_n_0;
  wire write_ddr_has_space_carry__0_i_7_n_0;
  wire write_ddr_has_space_carry__0_i_8_n_0;
  wire write_ddr_has_space_carry__0_i_9_n_0;
  wire write_ddr_has_space_carry__0_n_2;
  wire write_ddr_has_space_carry__0_n_3;
  wire write_ddr_has_space_carry__0_n_4;
  wire write_ddr_has_space_carry__0_n_5;
  wire write_ddr_has_space_carry__0_n_6;
  wire write_ddr_has_space_carry__0_n_7;
  wire write_ddr_has_space_carry_i_10_n_0;
  wire write_ddr_has_space_carry_i_11_n_0;
  wire write_ddr_has_space_carry_i_12_n_0;
  wire write_ddr_has_space_carry_i_13_n_0;
  wire write_ddr_has_space_carry_i_14_n_0;
  wire write_ddr_has_space_carry_i_15_n_0;
  wire write_ddr_has_space_carry_i_16_n_0;
  wire write_ddr_has_space_carry_i_17_n_0;
  wire write_ddr_has_space_carry_i_1_n_0;
  wire write_ddr_has_space_carry_i_2_n_0;
  wire write_ddr_has_space_carry_i_3_n_0;
  wire write_ddr_has_space_carry_i_4_n_0;
  wire write_ddr_has_space_carry_i_5_n_0;
  wire write_ddr_has_space_carry_i_6_n_0;
  wire write_ddr_has_space_carry_i_7_n_0;
  wire write_ddr_has_space_carry_i_8_n_0;
  wire write_ddr_has_space_carry_i_9_n_0;
  wire write_ddr_has_space_carry_n_0;
  wire write_ddr_has_space_carry_n_1;
  wire write_ddr_has_space_carry_n_2;
  wire write_ddr_has_space_carry_n_3;
  wire write_ddr_has_space_carry_n_4;
  wire write_ddr_has_space_carry_n_5;
  wire write_ddr_has_space_carry_n_6;
  wire write_ddr_has_space_carry_n_7;
  wire [31:0]write_ddr_occupation;
  wire \write_ddr_occupation0_inferred__0/i__carry__0_n_0 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__0_n_1 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__0_n_2 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__0_n_3 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__0_n_4 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__0_n_5 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__0_n_6 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__0_n_7 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__1_n_0 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__1_n_1 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__1_n_2 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__1_n_3 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__1_n_4 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__1_n_5 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__1_n_6 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__1_n_7 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__2_n_1 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__2_n_2 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__2_n_3 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__2_n_4 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__2_n_5 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__2_n_6 ;
  wire \write_ddr_occupation0_inferred__0/i__carry__2_n_7 ;
  wire \write_ddr_occupation0_inferred__0/i__carry_n_0 ;
  wire \write_ddr_occupation0_inferred__0/i__carry_n_1 ;
  wire \write_ddr_occupation0_inferred__0/i__carry_n_2 ;
  wire \write_ddr_occupation0_inferred__0/i__carry_n_3 ;
  wire \write_ddr_occupation0_inferred__0/i__carry_n_4 ;
  wire \write_ddr_occupation0_inferred__0/i__carry_n_5 ;
  wire \write_ddr_occupation0_inferred__0/i__carry_n_6 ;
  wire \write_ddr_occupation0_inferred__0/i__carry_n_7 ;
  wire write_ddr_occupation1;
  wire write_ddr_occupation121_out;
  wire \write_ddr_occupation1_inferred__0/i__carry__0_n_1 ;
  wire \write_ddr_occupation1_inferred__0/i__carry__0_n_2 ;
  wire \write_ddr_occupation1_inferred__0/i__carry__0_n_3 ;
  wire \write_ddr_occupation1_inferred__0/i__carry__0_n_4 ;
  wire \write_ddr_occupation1_inferred__0/i__carry__0_n_5 ;
  wire \write_ddr_occupation1_inferred__0/i__carry__0_n_6 ;
  wire \write_ddr_occupation1_inferred__0/i__carry__0_n_7 ;
  wire \write_ddr_occupation1_inferred__0/i__carry_n_0 ;
  wire \write_ddr_occupation1_inferred__0/i__carry_n_1 ;
  wire \write_ddr_occupation1_inferred__0/i__carry_n_2 ;
  wire \write_ddr_occupation1_inferred__0/i__carry_n_3 ;
  wire \write_ddr_occupation1_inferred__0/i__carry_n_4 ;
  wire \write_ddr_occupation1_inferred__0/i__carry_n_5 ;
  wire \write_ddr_occupation1_inferred__0/i__carry_n_6 ;
  wire \write_ddr_occupation1_inferred__0/i__carry_n_7 ;
  wire \write_ddr_occupation[31]_i_1_n_0 ;
  wire [31:0]\write_ddr_occupation_reg[31]_0 ;
  wire [31:0]write_ddr_size;
  wire write_enable;
  wire [8:0]write_index;
  wire write_index1;
  wire write_index1_carry_i_10_n_0;
  wire write_index1_carry_i_1_n_0;
  wire write_index1_carry_i_2_n_0;
  wire write_index1_carry_i_3_n_0;
  wire write_index1_carry_i_4_n_0;
  wire write_index1_carry_i_5_n_0;
  wire write_index1_carry_i_6_n_0;
  wire write_index1_carry_i_7_n_0;
  wire write_index1_carry_i_8_n_0;
  wire write_index1_carry_i_9_n_0;
  wire write_index1_carry_n_4;
  wire write_index1_carry_n_5;
  wire write_index1_carry_n_6;
  wire write_index1_carry_n_7;
  wire \write_index[5]_i_2_n_0 ;
  wire \write_index[8]_i_1_n_0 ;
  wire \write_index[8]_i_3_n_0 ;
  wire \write_index[8]_i_4_n_0 ;
  wire [8:0]\write_index_reg[8]_0 ;
  wire \write_overflow_count[0]_i_1_n_0 ;
  wire \write_overflow_count[1]_i_1_n_0 ;
  wire \write_overflow_count[2]_i_1_n_0 ;
  wire \write_overflow_count[3]_i_1_n_0 ;
  wire \write_overflow_count[4]_i_1_n_0 ;
  wire \write_overflow_count[5]_i_1_n_0 ;
  wire \write_overflow_count[5]_i_2_n_0 ;
  wire \write_overflow_count[6]_i_1_n_0 ;
  wire \write_overflow_count[7]_i_1_n_0 ;
  wire \write_overflow_count[7]_i_2_n_0 ;
  wire \write_overflow_count[7]_i_3_n_0 ;
  wire [7:0]\write_overflow_count_reg[7]_0 ;
  wire write_overflow_ins;
  wire write_overflow_ins1;
  wire write_overflow_ins_i_1_n_0;
  wire write_overflow_ins_i_3_n_0;
  wire write_overflow_ins_i_4_n_0;
  wire write_overflow_ins_i_5_n_0;
  wire write_overflow_ins_i_6_n_0;
  wire write_overflow_ins_i_7_n_0;
  wire write_overflow_ins_i_8_n_0;
  wire write_overflow_ins_i_9_n_0;
  wire write_state218_in;
  wire write_state2_carry__0_i_10_n_0;
  wire write_state2_carry__0_i_11_n_0;
  wire write_state2_carry__0_i_12_n_0;
  wire write_state2_carry__0_i_13_n_0;
  wire write_state2_carry__0_i_14_n_0;
  wire write_state2_carry__0_i_15_n_0;
  wire write_state2_carry__0_i_16_n_0;
  wire write_state2_carry__0_i_1_n_0;
  wire write_state2_carry__0_i_2_n_0;
  wire write_state2_carry__0_i_3_n_0;
  wire write_state2_carry__0_i_4_n_0;
  wire write_state2_carry__0_i_5_n_0;
  wire write_state2_carry__0_i_6_n_0;
  wire write_state2_carry__0_i_7_n_0;
  wire write_state2_carry__0_i_8_n_0;
  wire write_state2_carry__0_i_9_n_0;
  wire write_state2_carry__0_n_1;
  wire write_state2_carry__0_n_2;
  wire write_state2_carry__0_n_3;
  wire write_state2_carry__0_n_4;
  wire write_state2_carry__0_n_5;
  wire write_state2_carry__0_n_6;
  wire write_state2_carry__0_n_7;
  wire write_state2_carry_i_10_n_0;
  wire write_state2_carry_i_11_n_0;
  wire write_state2_carry_i_12_n_0;
  wire write_state2_carry_i_13_n_0;
  wire write_state2_carry_i_14_n_0;
  wire write_state2_carry_i_15_n_0;
  wire write_state2_carry_i_16_n_0;
  wire write_state2_carry_i_1_n_0;
  wire write_state2_carry_i_2_n_0;
  wire write_state2_carry_i_3_n_0;
  wire write_state2_carry_i_4_n_0;
  wire write_state2_carry_i_5_n_0;
  wire write_state2_carry_i_6_n_0;
  wire write_state2_carry_i_7_n_0;
  wire write_state2_carry_i_8_n_0;
  wire write_state2_carry_i_9_n_0;
  wire write_state2_carry_n_0;
  wire write_state2_carry_n_1;
  wire write_state2_carry_n_2;
  wire write_state2_carry_n_3;
  wire write_state2_carry_n_4;
  wire write_state2_carry_n_5;
  wire write_state2_carry_n_6;
  wire write_state2_carry_n_7;
  wire write_state3;
  wire [2:0]write_state__0;
  wire [1:0]write_state__1;
  wire [31:0]write_total_burst_count;
  wire write_total_burst_count0_carry__0_n_0;
  wire write_total_burst_count0_carry__0_n_1;
  wire write_total_burst_count0_carry__0_n_10;
  wire write_total_burst_count0_carry__0_n_11;
  wire write_total_burst_count0_carry__0_n_12;
  wire write_total_burst_count0_carry__0_n_13;
  wire write_total_burst_count0_carry__0_n_14;
  wire write_total_burst_count0_carry__0_n_15;
  wire write_total_burst_count0_carry__0_n_2;
  wire write_total_burst_count0_carry__0_n_3;
  wire write_total_burst_count0_carry__0_n_4;
  wire write_total_burst_count0_carry__0_n_5;
  wire write_total_burst_count0_carry__0_n_6;
  wire write_total_burst_count0_carry__0_n_7;
  wire write_total_burst_count0_carry__0_n_8;
  wire write_total_burst_count0_carry__0_n_9;
  wire write_total_burst_count0_carry__1_n_0;
  wire write_total_burst_count0_carry__1_n_1;
  wire write_total_burst_count0_carry__1_n_10;
  wire write_total_burst_count0_carry__1_n_11;
  wire write_total_burst_count0_carry__1_n_12;
  wire write_total_burst_count0_carry__1_n_13;
  wire write_total_burst_count0_carry__1_n_14;
  wire write_total_burst_count0_carry__1_n_15;
  wire write_total_burst_count0_carry__1_n_2;
  wire write_total_burst_count0_carry__1_n_3;
  wire write_total_burst_count0_carry__1_n_4;
  wire write_total_burst_count0_carry__1_n_5;
  wire write_total_burst_count0_carry__1_n_6;
  wire write_total_burst_count0_carry__1_n_7;
  wire write_total_burst_count0_carry__1_n_8;
  wire write_total_burst_count0_carry__1_n_9;
  wire write_total_burst_count0_carry__2_n_10;
  wire write_total_burst_count0_carry__2_n_11;
  wire write_total_burst_count0_carry__2_n_12;
  wire write_total_burst_count0_carry__2_n_13;
  wire write_total_burst_count0_carry__2_n_14;
  wire write_total_burst_count0_carry__2_n_15;
  wire write_total_burst_count0_carry__2_n_2;
  wire write_total_burst_count0_carry__2_n_3;
  wire write_total_burst_count0_carry__2_n_4;
  wire write_total_burst_count0_carry__2_n_5;
  wire write_total_burst_count0_carry__2_n_6;
  wire write_total_burst_count0_carry__2_n_7;
  wire write_total_burst_count0_carry__2_n_9;
  wire write_total_burst_count0_carry_n_0;
  wire write_total_burst_count0_carry_n_1;
  wire write_total_burst_count0_carry_n_10;
  wire write_total_burst_count0_carry_n_11;
  wire write_total_burst_count0_carry_n_12;
  wire write_total_burst_count0_carry_n_13;
  wire write_total_burst_count0_carry_n_14;
  wire write_total_burst_count0_carry_n_15;
  wire write_total_burst_count0_carry_n_2;
  wire write_total_burst_count0_carry_n_3;
  wire write_total_burst_count0_carry_n_4;
  wire write_total_burst_count0_carry_n_5;
  wire write_total_burst_count0_carry_n_6;
  wire write_total_burst_count0_carry_n_7;
  wire write_total_burst_count0_carry_n_8;
  wire write_total_burst_count0_carry_n_9;
  wire \write_total_burst_count[0]_i_1_n_0 ;
  wire \write_total_burst_count[10]_i_1_n_0 ;
  wire \write_total_burst_count[11]_i_1_n_0 ;
  wire \write_total_burst_count[12]_i_1_n_0 ;
  wire \write_total_burst_count[13]_i_1_n_0 ;
  wire \write_total_burst_count[14]_i_1_n_0 ;
  wire \write_total_burst_count[15]_i_1_n_0 ;
  wire \write_total_burst_count[16]_i_1_n_0 ;
  wire \write_total_burst_count[17]_i_1_n_0 ;
  wire \write_total_burst_count[18]_i_1_n_0 ;
  wire \write_total_burst_count[19]_i_1_n_0 ;
  wire \write_total_burst_count[1]_i_1_n_0 ;
  wire \write_total_burst_count[20]_i_1_n_0 ;
  wire \write_total_burst_count[21]_i_1_n_0 ;
  wire \write_total_burst_count[22]_i_1_n_0 ;
  wire \write_total_burst_count[23]_i_1_n_0 ;
  wire \write_total_burst_count[24]_i_1_n_0 ;
  wire \write_total_burst_count[25]_i_1_n_0 ;
  wire \write_total_burst_count[26]_i_1_n_0 ;
  wire \write_total_burst_count[27]_i_1_n_0 ;
  wire \write_total_burst_count[28]_i_1_n_0 ;
  wire \write_total_burst_count[29]_i_1_n_0 ;
  wire \write_total_burst_count[2]_i_1_n_0 ;
  wire \write_total_burst_count[30]_i_1_n_0 ;
  wire \write_total_burst_count[31]_i_1_n_0 ;
  wire \write_total_burst_count[31]_i_2_n_0 ;
  wire \write_total_burst_count[3]_i_1_n_0 ;
  wire \write_total_burst_count[4]_i_1_n_0 ;
  wire \write_total_burst_count[5]_i_1_n_0 ;
  wire \write_total_burst_count[6]_i_1_n_0 ;
  wire \write_total_burst_count[7]_i_1_n_0 ;
  wire \write_total_burst_count[8]_i_1_n_0 ;
  wire \write_total_burst_count[9]_i_1_n_0 ;
  wire [7:7]NLW_ila_read_ddr_has_data_INST_0_CO_UNCONNECTED;
  wire [7:0]NLW_ila_read_ddr_has_data_INST_0_O_UNCONNECTED;
  wire [7:0]NLW_ila_read_ddr_has_data_INST_0_i_1_O_UNCONNECTED;
  wire [7:4]\NLW_m_axi_araddr_reg[47]_i_3_CO_UNCONNECTED ;
  wire [7:5]\NLW_m_axi_araddr_reg[47]_i_3_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axi_awaddr_reg[47]_i_3_CO_UNCONNECTED ;
  wire [7:5]\NLW_m_axi_awaddr_reg[47]_i_3_O_UNCONNECTED ;
  wire [7:6]\NLW_read_burst_counter_reg[31]_i_3_CO_UNCONNECTED ;
  wire [7:7]\NLW_read_burst_counter_reg[31]_i_3_O_UNCONNECTED ;
  wire [7:0]NLW_read_ddr_full_carry_O_UNCONNECTED;
  wire [7:0]NLW_read_ddr_full_carry__0_O_UNCONNECTED;
  wire [7:7]\NLW_read_ddr_occupation0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [7:0]\NLW_read_ddr_occupation_reg[31]_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_read_ddr_occupation_reg[31]_i_3_O_UNCONNECTED ;
  wire [7:5]NLW_read_index1_carry_CO_UNCONNECTED;
  wire [7:0]NLW_read_index1_carry_O_UNCONNECTED;
  wire [7:0]NLW_read_state2_carry_O_UNCONNECTED;
  wire [7:0]NLW_read_state2_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_read_total_burst_count0_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_read_total_burst_count0_carry__2_O_UNCONNECTED;
  wire [7:6]\NLW_write_burst_counter_reg[31]_i_3_CO_UNCONNECTED ;
  wire [7:7]\NLW_write_burst_counter_reg[31]_i_3_O_UNCONNECTED ;
  wire [7:0]NLW_write_ddr_full_carry_O_UNCONNECTED;
  wire [7:0]NLW_write_ddr_full_carry__0_O_UNCONNECTED;
  wire [7:7]NLW_write_ddr_has_space0_carry__2_CO_UNCONNECTED;
  wire [7:0]NLW_write_ddr_has_space_carry_O_UNCONNECTED;
  wire [7:7]NLW_write_ddr_has_space_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_write_ddr_has_space_carry__0_O_UNCONNECTED;
  wire [7:7]\NLW_write_ddr_occupation0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [7:0]\NLW_write_ddr_occupation1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [7:0]\NLW_write_ddr_occupation1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [7:5]NLW_write_index1_carry_CO_UNCONNECTED;
  wire [7:0]NLW_write_index1_carry_O_UNCONNECTED;
  wire [7:0]NLW_write_state2_carry_O_UNCONNECTED;
  wire [7:0]NLW_write_state2_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_write_total_burst_count0_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_write_total_burst_count0_carry__2_O_UNCONNECTED;

  assign read_burst_len_2_sp_1 = read_burst_len_2_sn_1;
  assign write_burst_len_4_sp_1 = write_burst_len_4_sn_1;
  LUT6 #(
    .INIT(64'h000000400000FFFF)) 
    \FSM_sequential_read_state[0]_i_1 
       (.I0(read_state[1]),
        .I1(read_enable),
        .I2(read_state212_in),
        .I3(ila_read_bresp[1]),
        .I4(read_state[0]),
        .I5(read_state[2]),
        .O(read_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_read_state[1]_i_1 
       (.I0(read_state[1]),
        .I1(read_state[0]),
        .I2(read_state[2]),
        .O(read_state__0[1]));
  LUT6 #(
    .INIT(64'hAFEAAAEAAAEAAAEA)) 
    \FSM_sequential_read_state[2]_i_1 
       (.I0(\FSM_sequential_read_state[2]_i_2_n_0 ),
        .I1(m_axi_arready),
        .I2(read_state[1]),
        .I3(read_state[0]),
        .I4(\read_ddr_occupation_reg[30]_0 ),
        .I5(tx_fifo_has_space),
        .O(\FSM_sequential_read_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAAEAAAEAAAEAAAE)) 
    \FSM_sequential_read_state[2]_i_2 
       (.I0(read_state[2]),
        .I1(read_enable),
        .I2(read_state[1]),
        .I3(read_state[0]),
        .I4(m_axi_rlast),
        .I5(m_axi_rvalid_0),
        .O(\FSM_sequential_read_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:000,iSTATE3:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_read_state_reg[0] 
       (.C(aclk),
        .CE(\FSM_sequential_read_state[2]_i_1_n_0 ),
        .D(read_state__0[0]),
        .Q(read_state[0]),
        .R(m_axi_arvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:000,iSTATE3:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_read_state_reg[1] 
       (.C(aclk),
        .CE(\FSM_sequential_read_state[2]_i_1_n_0 ),
        .D(read_state__0[1]),
        .Q(read_state[1]),
        .R(m_axi_arvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:000,iSTATE3:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_read_state_reg[2] 
       (.C(aclk),
        .CE(\FSM_sequential_read_state[2]_i_1_n_0 ),
        .D(ila_tx_fifo_wren),
        .Q(read_state[2]),
        .R(m_axi_arvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000400000FFFF)) 
    \FSM_sequential_write_state[0]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_enable),
        .I2(write_state218_in),
        .I3(m_axi_bresp[1]),
        .I4(write_state__0[0]),
        .I5(write_state__0[2]),
        .O(write_state__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_write_state[1]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_state__0[0]),
        .I2(write_state__0[2]),
        .O(write_state__1[1]));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \FSM_sequential_write_state[2]_i_1 
       (.I0(\FSM_sequential_write_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_write_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_write_state[2]_i_4_n_0 ),
        .I3(m_axi_bvalid),
        .I4(write_state__0[2]),
        .O(\FSM_sequential_write_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_write_state[2]_i_10 
       (.I0(\write_index_reg[8]_0 [6]),
        .I1(write_burst_len[6]),
        .O(\FSM_sequential_write_state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1555000000000000)) 
    \FSM_sequential_write_state[2]_i_2 
       (.I0(m_axi_wlast_i_3_n_0),
        .I1(\FSM_sequential_write_state[2]_i_5_n_0 ),
        .I2(m_axi_wlast_i_7_n_0),
        .I3(m_axi_wlast_i_8_n_0),
        .I4(m_axi_bready_i_4_n_0),
        .I5(ila_rx_fifo_rden),
        .O(\FSM_sequential_write_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00230020)) 
    \FSM_sequential_write_state[2]_i_3 
       (.I0(m_axi_awready),
        .I1(write_state__0[0]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(write_enable),
        .O(\FSM_sequential_write_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \FSM_sequential_write_state[2]_i_4 
       (.I0(write_state__0[1]),
        .I1(write_state__0[0]),
        .I2(write_state__0[2]),
        .I3(CO),
        .I4(rx_fifo_data_ready),
        .O(\FSM_sequential_write_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E00000000000E0)) 
    \FSM_sequential_write_state[2]_i_5 
       (.I0(\FSM_sequential_write_state[2]_i_6_n_0 ),
        .I1(\FSM_sequential_write_state[2]_i_7_n_0 ),
        .I2(\FSM_sequential_write_state[2]_i_8_n_0 ),
        .I3(\write_index_reg[8]_0 [8]),
        .I4(\FSM_sequential_write_state[2]_i_9_n_0 ),
        .I5(\FSM_sequential_write_state[2]_i_10_n_0 ),
        .O(\FSM_sequential_write_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_write_state[2]_i_6 
       (.I0(write_burst_len[4]),
        .I1(write_burst_len[5]),
        .I2(write_burst_len[8]),
        .O(\FSM_sequential_write_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_write_state[2]_i_7 
       (.I0(write_burst_len[7]),
        .I1(write_burst_len[6]),
        .I2(write_burst_len[3]),
        .I3(write_burst_len[1]),
        .I4(write_burst_len[2]),
        .O(\FSM_sequential_write_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0900000900909000)) 
    \FSM_sequential_write_state[2]_i_8 
       (.I0(\write_index_reg[8]_0 [0]),
        .I1(write_burst_len[0]),
        .I2(\write_index_reg[8]_0 [1]),
        .I3(\write_index_reg[8]_0 [2]),
        .I4(write_burst_len[2]),
        .I5(write_burst_len[1]),
        .O(\FSM_sequential_write_state[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_write_state[2]_i_9 
       (.I0(write_burst_len[4]),
        .I1(write_burst_len[2]),
        .I2(write_burst_len[1]),
        .I3(write_burst_len[3]),
        .I4(write_burst_len[5]),
        .O(\FSM_sequential_write_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:000,iSTATE3:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_write_state_reg[0] 
       (.C(aclk),
        .CE(\FSM_sequential_write_state[2]_i_1_n_0 ),
        .D(write_state__1[0]),
        .Q(write_state__0[0]),
        .R(m_axi_arvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:000,iSTATE3:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_write_state_reg[1] 
       (.C(aclk),
        .CE(\FSM_sequential_write_state[2]_i_1_n_0 ),
        .D(write_state__1[1]),
        .Q(write_state__0[1]),
        .R(m_axi_arvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:000,iSTATE3:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_write_state_reg[2] 
       (.C(aclk),
        .CE(\FSM_sequential_write_state[2]_i_1_n_0 ),
        .D(ila_rx_fifo_rden),
        .Q(write_state__0[2]),
        .R(m_axi_arvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(\write_ddr_occupation_reg[31]_0 [30]),
        .I1(\write_ddr_occupation_reg[31]_0 [31]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_10
       (.I0(\write_ddr_occupation_reg[31]_0 [29]),
        .I1(\write_ddr_occupation_reg[31]_0 [28]),
        .O(i__carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_11
       (.I0(\write_ddr_occupation_reg[31]_0 [27]),
        .I1(\write_ddr_occupation_reg[31]_0 [26]),
        .O(i__carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_12
       (.I0(\write_ddr_occupation_reg[31]_0 [25]),
        .I1(\write_ddr_occupation_reg[31]_0 [24]),
        .O(i__carry__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_13
       (.I0(\write_ddr_occupation_reg[31]_0 [23]),
        .I1(\write_ddr_occupation_reg[31]_0 [22]),
        .O(i__carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_14
       (.I0(\write_ddr_occupation_reg[31]_0 [21]),
        .I1(\write_ddr_occupation_reg[31]_0 [20]),
        .O(i__carry__0_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_15
       (.I0(\write_ddr_occupation_reg[31]_0 [19]),
        .I1(\write_ddr_occupation_reg[31]_0 [18]),
        .O(i__carry__0_i_15_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    i__carry__0_i_16
       (.I0(write_access_size_bytes[16]),
        .I1(\write_ddr_occupation_reg[31]_0 [16]),
        .I2(\write_ddr_occupation_reg[31]_0 [17]),
        .O(i__carry__0_i_16_n_0));
  LUT5 #(
    .INIT(32'h00BFFF40)) 
    i__carry__0_i_1__0
       (.I0(read_burst_tick_ack_reg_0),
        .I1(read_burst_tick_reg_0),
        .I2(read_ddr_occupation2),
        .I3(read_access_size_bytes[15]),
        .I4(Q[15]),
        .O(i__carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hAE51)) 
    i__carry__0_i_1__1
       (.I0(write_access_size_bytes[15]),
        .I1(write_burst_tick),
        .I2(write_burst_tick_ack_reg_0),
        .I3(\write_ddr_occupation_reg[31]_0 [15]),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2
       (.I0(\write_ddr_occupation_reg[31]_0 [28]),
        .I1(\write_ddr_occupation_reg[31]_0 [29]),
        .O(i__carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h00BFFF40)) 
    i__carry__0_i_2__0
       (.I0(read_burst_tick_ack_reg_0),
        .I1(read_burst_tick_reg_0),
        .I2(read_ddr_occupation2),
        .I3(read_access_size_bytes[14]),
        .I4(Q[14]),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hAE51)) 
    i__carry__0_i_2__1
       (.I0(write_access_size_bytes[14]),
        .I1(write_burst_tick),
        .I2(write_burst_tick_ack_reg_0),
        .I3(\write_ddr_occupation_reg[31]_0 [14]),
        .O(i__carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3
       (.I0(\write_ddr_occupation_reg[31]_0 [26]),
        .I1(\write_ddr_occupation_reg[31]_0 [27]),
        .O(i__carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h00BFFF40)) 
    i__carry__0_i_3__0
       (.I0(read_burst_tick_ack_reg_0),
        .I1(read_burst_tick_reg_0),
        .I2(read_ddr_occupation2),
        .I3(read_access_size_bytes[13]),
        .I4(Q[13]),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hAE51)) 
    i__carry__0_i_3__1
       (.I0(write_access_size_bytes[13]),
        .I1(write_burst_tick),
        .I2(write_burst_tick_ack_reg_0),
        .I3(\write_ddr_occupation_reg[31]_0 [13]),
        .O(i__carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_4
       (.I0(\write_ddr_occupation_reg[31]_0 [24]),
        .I1(\write_ddr_occupation_reg[31]_0 [25]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h55D55515AA2AAAEA)) 
    i__carry__0_i_4__0
       (.I0(read_access_size_bytes[12]),
        .I1(read_ddr_occupation2),
        .I2(read_burst_tick_reg_0),
        .I3(read_burst_tick_ack_reg_0),
        .I4(read_burst_len[8]),
        .I5(Q[12]),
        .O(i__carry__0_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h8ABA7545)) 
    i__carry__0_i_4__1
       (.I0(write_access_size_bytes[12]),
        .I1(write_burst_tick_ack_reg_0),
        .I2(write_burst_tick),
        .I3(write_burst_len[8]),
        .I4(\write_ddr_occupation_reg[31]_0 [12]),
        .O(i__carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_5
       (.I0(\write_ddr_occupation_reg[31]_0 [22]),
        .I1(\write_ddr_occupation_reg[31]_0 [23]),
        .O(i__carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h55D55515AA2AAAEA)) 
    i__carry__0_i_5__0
       (.I0(read_access_size_bytes[11]),
        .I1(read_ddr_occupation2),
        .I2(read_burst_tick_reg_0),
        .I3(read_burst_tick_ack_reg_0),
        .I4(read_burst_len[7]),
        .I5(Q[11]),
        .O(i__carry__0_i_5__0_n_0));
  LUT5 #(
    .INIT(32'h8ABA7545)) 
    i__carry__0_i_5__1
       (.I0(write_access_size_bytes[11]),
        .I1(write_burst_tick_ack_reg_0),
        .I2(write_burst_tick),
        .I3(write_burst_len[7]),
        .I4(\write_ddr_occupation_reg[31]_0 [11]),
        .O(i__carry__0_i_5__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_6
       (.I0(\write_ddr_occupation_reg[31]_0 [20]),
        .I1(\write_ddr_occupation_reg[31]_0 [21]),
        .O(i__carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h55D55515AA2AAAEA)) 
    i__carry__0_i_6__0
       (.I0(read_access_size_bytes[10]),
        .I1(read_ddr_occupation2),
        .I2(read_burst_tick_reg_0),
        .I3(read_burst_tick_ack_reg_0),
        .I4(read_burst_len[6]),
        .I5(Q[10]),
        .O(i__carry__0_i_6__0_n_0));
  LUT5 #(
    .INIT(32'h8ABA7545)) 
    i__carry__0_i_6__1
       (.I0(write_access_size_bytes[10]),
        .I1(write_burst_tick_ack_reg_0),
        .I2(write_burst_tick),
        .I3(write_burst_len[6]),
        .I4(\write_ddr_occupation_reg[31]_0 [10]),
        .O(i__carry__0_i_6__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_7
       (.I0(\write_ddr_occupation_reg[31]_0 [18]),
        .I1(\write_ddr_occupation_reg[31]_0 [19]),
        .O(i__carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h55D55515AA2AAAEA)) 
    i__carry__0_i_7__0
       (.I0(read_access_size_bytes[9]),
        .I1(read_ddr_occupation2),
        .I2(read_burst_tick_reg_0),
        .I3(read_burst_tick_ack_reg_0),
        .I4(read_burst_len[5]),
        .I5(Q[9]),
        .O(i__carry__0_i_7__0_n_0));
  LUT5 #(
    .INIT(32'h8ABA7545)) 
    i__carry__0_i_7__1
       (.I0(write_access_size_bytes[9]),
        .I1(write_burst_tick_ack_reg_0),
        .I2(write_burst_tick),
        .I3(write_burst_len[5]),
        .I4(\write_ddr_occupation_reg[31]_0 [9]),
        .O(i__carry__0_i_7__1_n_0));
  LUT3 #(
    .INIT(8'hF4)) 
    i__carry__0_i_8
       (.I0(write_access_size_bytes[16]),
        .I1(\write_ddr_occupation_reg[31]_0 [16]),
        .I2(\write_ddr_occupation_reg[31]_0 [17]),
        .O(i__carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h55D55515AA2AAAEA)) 
    i__carry__0_i_8__0
       (.I0(read_access_size_bytes[8]),
        .I1(read_ddr_occupation2),
        .I2(read_burst_tick_reg_0),
        .I3(read_burst_tick_ack_reg_0),
        .I4(read_burst_len[4]),
        .I5(Q[8]),
        .O(i__carry__0_i_8__0_n_0));
  LUT5 #(
    .INIT(32'h8ABA7545)) 
    i__carry__0_i_8__1
       (.I0(write_access_size_bytes[8]),
        .I1(write_burst_tick_ack_reg_0),
        .I2(write_burst_tick),
        .I3(write_burst_len[4]),
        .I4(\write_ddr_occupation_reg[31]_0 [8]),
        .O(i__carry__0_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_9
       (.I0(\write_ddr_occupation_reg[31]_0 [31]),
        .I1(\write_ddr_occupation_reg[31]_0 [30]),
        .O(i__carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_1
       (.I0(write_burst_tick),
        .I1(write_burst_tick_ack_reg_0),
        .O(write_ddr_occupation121_out));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__0
       (.I0(Q[17]),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(\write_ddr_occupation_reg[31]_0 [22]),
        .I1(\write_ddr_occupation_reg[31]_0 [23]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__0
       (.I0(Q[22]),
        .I1(Q[23]),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(\write_ddr_occupation_reg[31]_0 [21]),
        .I1(\write_ddr_occupation_reg[31]_0 [22]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3__0
       (.I0(Q[21]),
        .I1(Q[22]),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(\write_ddr_occupation_reg[31]_0 [20]),
        .I1(\write_ddr_occupation_reg[31]_0 [21]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4__0
       (.I0(Q[20]),
        .I1(Q[21]),
        .O(i__carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_5
       (.I0(\write_ddr_occupation_reg[31]_0 [19]),
        .I1(\write_ddr_occupation_reg[31]_0 [20]),
        .O(i__carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_5__0
       (.I0(Q[19]),
        .I1(Q[20]),
        .O(i__carry__1_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_6
       (.I0(\write_ddr_occupation_reg[31]_0 [18]),
        .I1(\write_ddr_occupation_reg[31]_0 [19]),
        .O(i__carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_6__0
       (.I0(Q[18]),
        .I1(Q[19]),
        .O(i__carry__1_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_7
       (.I0(\write_ddr_occupation_reg[31]_0 [17]),
        .I1(\write_ddr_occupation_reg[31]_0 [18]),
        .O(i__carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_7__0
       (.I0(Q[17]),
        .I1(Q[18]),
        .O(i__carry__1_i_7__0_n_0));
  LUT4 #(
    .INIT(16'hAA6A)) 
    i__carry__1_i_8
       (.I0(Q[17]),
        .I1(read_ddr_occupation2),
        .I2(read_burst_tick_reg_0),
        .I3(read_burst_tick_ack_reg_0),
        .O(i__carry__1_i_8_n_0));
  LUT3 #(
    .INIT(8'h65)) 
    i__carry__1_i_8__0
       (.I0(\write_ddr_occupation_reg[31]_0 [17]),
        .I1(write_burst_tick_ack_reg_0),
        .I2(write_burst_tick),
        .O(i__carry__1_i_8__0_n_0));
  LUT5 #(
    .INIT(32'h00BFFF40)) 
    i__carry__1_i_9
       (.I0(read_burst_tick_ack_reg_0),
        .I1(read_burst_tick_reg_0),
        .I2(read_ddr_occupation2),
        .I3(read_access_size_bytes[16]),
        .I4(Q[16]),
        .O(i__carry__1_i_9_n_0));
  LUT4 #(
    .INIT(16'hAE51)) 
    i__carry__1_i_9__0
       (.I0(write_access_size_bytes[16]),
        .I1(write_burst_tick),
        .I2(write_burst_tick_ack_reg_0),
        .I3(\write_ddr_occupation_reg[31]_0 [16]),
        .O(i__carry__1_i_9__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(Q[31]),
        .I1(Q[30]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1__0
       (.I0(\write_ddr_occupation_reg[31]_0 [31]),
        .I1(\write_ddr_occupation_reg[31]_0 [30]),
        .O(i__carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2
       (.I0(\write_ddr_occupation_reg[31]_0 [29]),
        .I1(\write_ddr_occupation_reg[31]_0 [30]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2__0
       (.I0(Q[29]),
        .I1(Q[30]),
        .O(i__carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3
       (.I0(\write_ddr_occupation_reg[31]_0 [28]),
        .I1(\write_ddr_occupation_reg[31]_0 [29]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3__0
       (.I0(Q[28]),
        .I1(Q[29]),
        .O(i__carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4
       (.I0(\write_ddr_occupation_reg[31]_0 [27]),
        .I1(\write_ddr_occupation_reg[31]_0 [28]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4__0
       (.I0(Q[27]),
        .I1(Q[28]),
        .O(i__carry__2_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_5
       (.I0(\write_ddr_occupation_reg[31]_0 [26]),
        .I1(\write_ddr_occupation_reg[31]_0 [27]),
        .O(i__carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_5__0
       (.I0(Q[26]),
        .I1(Q[27]),
        .O(i__carry__2_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_6
       (.I0(\write_ddr_occupation_reg[31]_0 [25]),
        .I1(\write_ddr_occupation_reg[31]_0 [26]),
        .O(i__carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_6__0
       (.I0(Q[25]),
        .I1(Q[26]),
        .O(i__carry__2_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_7
       (.I0(\write_ddr_occupation_reg[31]_0 [24]),
        .I1(\write_ddr_occupation_reg[31]_0 [25]),
        .O(i__carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_7__0
       (.I0(Q[24]),
        .I1(Q[25]),
        .O(i__carry__2_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_8
       (.I0(\write_ddr_occupation_reg[31]_0 [23]),
        .I1(\write_ddr_occupation_reg[31]_0 [24]),
        .O(i__carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_8__0
       (.I0(Q[23]),
        .I1(Q[24]),
        .O(i__carry__2_i_8__0_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    i__carry_i_1
       (.I0(read_burst_tick_ack_reg_0),
        .I1(read_burst_tick_reg_0),
        .I2(read_ddr_occupation2),
        .O(read_ddr_occupation114_out));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_10
       (.I0(write_access_size_bytes[13]),
        .I1(\write_ddr_occupation_reg[31]_0 [13]),
        .I2(write_access_size_bytes[12]),
        .I3(\write_ddr_occupation_reg[31]_0 [12]),
        .O(i__carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_11
       (.I0(write_access_size_bytes[11]),
        .I1(\write_ddr_occupation_reg[31]_0 [11]),
        .I2(write_access_size_bytes[10]),
        .I3(\write_ddr_occupation_reg[31]_0 [10]),
        .O(i__carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_12
       (.I0(write_access_size_bytes[9]),
        .I1(\write_ddr_occupation_reg[31]_0 [9]),
        .I2(write_access_size_bytes[8]),
        .I3(\write_ddr_occupation_reg[31]_0 [8]),
        .O(i__carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_13
       (.I0(write_access_size_bytes[7]),
        .I1(\write_ddr_occupation_reg[31]_0 [7]),
        .I2(write_access_size_bytes[6]),
        .I3(\write_ddr_occupation_reg[31]_0 [6]),
        .O(i__carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_14
       (.I0(write_access_size_bytes[5]),
        .I1(\write_ddr_occupation_reg[31]_0 [5]),
        .I2(write_access_size_bytes[4]),
        .I3(\write_ddr_occupation_reg[31]_0 [4]),
        .O(i__carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_15
       (.I0(write_access_size_bytes[3]),
        .I1(\write_ddr_occupation_reg[31]_0 [3]),
        .I2(write_access_size_bytes[2]),
        .I3(\write_ddr_occupation_reg[31]_0 [2]),
        .O(i__carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_16
       (.I0(write_access_size_bytes[1]),
        .I1(\write_ddr_occupation_reg[31]_0 [1]),
        .I2(write_access_size_bytes[0]),
        .I3(\write_ddr_occupation_reg[31]_0 [0]),
        .O(i__carry_i_16_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry_i_1__0
       (.I0(write_burst_tick_ack_reg_0),
        .I1(write_burst_tick),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__1
       (.I0(\write_ddr_occupation_reg[31]_0 [15]),
        .I1(write_access_size_bytes[15]),
        .I2(\write_ddr_occupation_reg[31]_0 [14]),
        .I3(write_access_size_bytes[14]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(\write_ddr_occupation_reg[31]_0 [13]),
        .I1(write_access_size_bytes[13]),
        .I2(\write_ddr_occupation_reg[31]_0 [12]),
        .I3(write_access_size_bytes[12]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h55D55515AA2AAAEA)) 
    i__carry_i_2__0
       (.I0(read_access_size_bytes[7]),
        .I1(read_ddr_occupation2),
        .I2(read_burst_tick_reg_0),
        .I3(read_burst_tick_ack_reg_0),
        .I4(read_burst_len[3]),
        .I5(Q[7]),
        .O(i__carry_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h8ABA7545)) 
    i__carry_i_2__1
       (.I0(write_access_size_bytes[7]),
        .I1(write_burst_tick_ack_reg_0),
        .I2(write_burst_tick),
        .I3(write_burst_len[3]),
        .I4(\write_ddr_occupation_reg[31]_0 [7]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3
       (.I0(\write_ddr_occupation_reg[31]_0 [11]),
        .I1(write_access_size_bytes[11]),
        .I2(\write_ddr_occupation_reg[31]_0 [10]),
        .I3(write_access_size_bytes[10]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h55D55515AA2AAAEA)) 
    i__carry_i_3__0
       (.I0(read_access_size_bytes[6]),
        .I1(read_ddr_occupation2),
        .I2(read_burst_tick_reg_0),
        .I3(read_burst_tick_ack_reg_0),
        .I4(read_burst_len[2]),
        .I5(Q[6]),
        .O(i__carry_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h8ABA7545)) 
    i__carry_i_3__1
       (.I0(write_access_size_bytes[6]),
        .I1(write_burst_tick_ack_reg_0),
        .I2(write_burst_tick),
        .I3(write_burst_len[2]),
        .I4(\write_ddr_occupation_reg[31]_0 [6]),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4
       (.I0(\write_ddr_occupation_reg[31]_0 [9]),
        .I1(write_access_size_bytes[9]),
        .I2(\write_ddr_occupation_reg[31]_0 [8]),
        .I3(write_access_size_bytes[8]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h55D55515AA2AAAEA)) 
    i__carry_i_4__0
       (.I0(read_access_size_bytes[5]),
        .I1(read_ddr_occupation2),
        .I2(read_burst_tick_reg_0),
        .I3(read_burst_tick_ack_reg_0),
        .I4(read_burst_len[1]),
        .I5(Q[5]),
        .O(i__carry_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h8ABA7545)) 
    i__carry_i_4__1
       (.I0(write_access_size_bytes[5]),
        .I1(write_burst_tick_ack_reg_0),
        .I2(write_burst_tick),
        .I3(write_burst_len[1]),
        .I4(\write_ddr_occupation_reg[31]_0 [5]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_5
       (.I0(\write_ddr_occupation_reg[31]_0 [7]),
        .I1(write_access_size_bytes[7]),
        .I2(\write_ddr_occupation_reg[31]_0 [6]),
        .I3(write_access_size_bytes[6]),
        .O(i__carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h55D55515AA2AAAEA)) 
    i__carry_i_5__0
       (.I0(read_access_size_bytes[4]),
        .I1(read_ddr_occupation2),
        .I2(read_burst_tick_reg_0),
        .I3(read_burst_tick_ack_reg_0),
        .I4(read_burst_len[0]),
        .I5(Q[4]),
        .O(i__carry_i_5__0_n_0));
  LUT5 #(
    .INIT(32'h8ABA7545)) 
    i__carry_i_5__1
       (.I0(write_access_size_bytes[4]),
        .I1(write_burst_tick_ack_reg_0),
        .I2(write_burst_tick),
        .I3(write_burst_len[0]),
        .I4(\write_ddr_occupation_reg[31]_0 [4]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_6
       (.I0(\write_ddr_occupation_reg[31]_0 [5]),
        .I1(write_access_size_bytes[5]),
        .I2(\write_ddr_occupation_reg[31]_0 [4]),
        .I3(write_access_size_bytes[4]),
        .O(i__carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h00BFFF40)) 
    i__carry_i_6__0
       (.I0(read_burst_tick_ack_reg_0),
        .I1(read_burst_tick_reg_0),
        .I2(read_ddr_occupation2),
        .I3(read_access_size_bytes[3]),
        .I4(Q[3]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'hAE51)) 
    i__carry_i_6__1
       (.I0(write_access_size_bytes[3]),
        .I1(write_burst_tick),
        .I2(write_burst_tick_ack_reg_0),
        .I3(\write_ddr_occupation_reg[31]_0 [3]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_7
       (.I0(\write_ddr_occupation_reg[31]_0 [3]),
        .I1(write_access_size_bytes[3]),
        .I2(\write_ddr_occupation_reg[31]_0 [2]),
        .I3(write_access_size_bytes[2]),
        .O(i__carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h00BFFF40)) 
    i__carry_i_7__0
       (.I0(read_burst_tick_ack_reg_0),
        .I1(read_burst_tick_reg_0),
        .I2(read_ddr_occupation2),
        .I3(read_access_size_bytes[2]),
        .I4(Q[2]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'hAE51)) 
    i__carry_i_7__1
       (.I0(write_access_size_bytes[2]),
        .I1(write_burst_tick),
        .I2(write_burst_tick_ack_reg_0),
        .I3(\write_ddr_occupation_reg[31]_0 [2]),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_8
       (.I0(\write_ddr_occupation_reg[31]_0 [1]),
        .I1(write_access_size_bytes[1]),
        .I2(\write_ddr_occupation_reg[31]_0 [0]),
        .I3(write_access_size_bytes[0]),
        .O(i__carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h00BFFF40)) 
    i__carry_i_8__0
       (.I0(read_burst_tick_ack_reg_0),
        .I1(read_burst_tick_reg_0),
        .I2(read_ddr_occupation2),
        .I3(read_access_size_bytes[1]),
        .I4(Q[1]),
        .O(i__carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'hAE51)) 
    i__carry_i_8__1
       (.I0(write_access_size_bytes[1]),
        .I1(write_burst_tick),
        .I2(write_burst_tick_ack_reg_0),
        .I3(\write_ddr_occupation_reg[31]_0 [1]),
        .O(i__carry_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_9
       (.I0(write_access_size_bytes[15]),
        .I1(\write_ddr_occupation_reg[31]_0 [15]),
        .I2(write_access_size_bytes[14]),
        .I3(\write_ddr_occupation_reg[31]_0 [14]),
        .O(i__carry_i_9_n_0));
  LUT4 #(
    .INIT(16'hBF00)) 
    i__carry_i_9__0
       (.I0(read_burst_tick_ack_reg_0),
        .I1(read_burst_tick_reg_0),
        .I2(read_ddr_occupation2),
        .I3(read_access_size_bytes[0]),
        .O(i__carry_i_9__0_n_0));
  LUT3 #(
    .INIT(8'hA2)) 
    i__carry_i_9__1
       (.I0(write_access_size_bytes[0]),
        .I1(write_burst_tick),
        .I2(write_burst_tick_ack_reg_0),
        .O(i__carry_i_9__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    ila_read_active_INST_0
       (.I0(m_axi_rvalid),
        .I1(m_axis_tx_tready),
        .I2(read_state[0]),
        .I3(read_state[1]),
        .I4(read_state[2]),
        .O(m_axi_rvalid_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 ila_read_ddr_has_data_INST_0
       (.CI(ila_read_ddr_has_data_INST_0_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_ila_read_ddr_has_data_INST_0_CO_UNCONNECTED[7],\read_ddr_occupation_reg[30]_0 ,ila_read_ddr_has_data_INST_0_n_2,ila_read_ddr_has_data_INST_0_n_3,ila_read_ddr_has_data_INST_0_n_4,ila_read_ddr_has_data_INST_0_n_5,ila_read_ddr_has_data_INST_0_n_6,ila_read_ddr_has_data_INST_0_n_7}),
        .DI({1'b0,ila_read_ddr_has_data_INST_0_i_2_n_0,ila_read_ddr_has_data_INST_0_i_3_n_0,ila_read_ddr_has_data_INST_0_i_4_n_0,ila_read_ddr_has_data_INST_0_i_5_n_0,ila_read_ddr_has_data_INST_0_i_6_n_0,ila_read_ddr_has_data_INST_0_i_7_n_0,ila_read_ddr_has_data_INST_0_i_8_n_0}),
        .O(NLW_ila_read_ddr_has_data_INST_0_O_UNCONNECTED[7:0]),
        .S({1'b0,ila_read_ddr_has_data_INST_0_i_9_n_0,ila_read_ddr_has_data_INST_0_i_10_n_0,ila_read_ddr_has_data_INST_0_i_11_n_0,ila_read_ddr_has_data_INST_0_i_12_n_0,ila_read_ddr_has_data_INST_0_i_13_n_0,ila_read_ddr_has_data_INST_0_i_14_n_0,ila_read_ddr_has_data_INST_0_i_15_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 ila_read_ddr_has_data_INST_0_i_1
       (.CI(ila_read_ddr_has_data_INST_0_i_16_n_0),
        .CI_TOP(1'b0),
        .CO({ila_read_ddr_has_data_INST_0_i_1_n_0,ila_read_ddr_has_data_INST_0_i_1_n_1,ila_read_ddr_has_data_INST_0_i_1_n_2,ila_read_ddr_has_data_INST_0_i_1_n_3,ila_read_ddr_has_data_INST_0_i_1_n_4,ila_read_ddr_has_data_INST_0_i_1_n_5,ila_read_ddr_has_data_INST_0_i_1_n_6,ila_read_ddr_has_data_INST_0_i_1_n_7}),
        .DI({ila_read_ddr_has_data_INST_0_i_17_n_0,ila_read_ddr_has_data_INST_0_i_18_n_0,ila_read_ddr_has_data_INST_0_i_19_n_0,ila_read_ddr_has_data_INST_0_i_20_n_0,ila_read_ddr_has_data_INST_0_i_21_n_0,ila_read_ddr_has_data_INST_0_i_22_n_0,ila_read_ddr_has_data_INST_0_i_23_n_0,ila_read_ddr_has_data_INST_0_i_24_n_0}),
        .O(NLW_ila_read_ddr_has_data_INST_0_i_1_O_UNCONNECTED[7:0]),
        .S({ila_read_ddr_has_data_INST_0_i_25_n_0,ila_read_ddr_has_data_INST_0_i_26_n_0,ila_read_ddr_has_data_INST_0_i_27_n_0,ila_read_ddr_has_data_INST_0_i_28_n_0,ila_read_ddr_has_data_INST_0_i_29_n_0,ila_read_ddr_has_data_INST_0_i_30_n_0,ila_read_ddr_has_data_INST_0_i_31_n_0,ila_read_ddr_has_data_INST_0_i_32_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ila_read_ddr_has_data_INST_0_i_10
       (.I0(Q[29]),
        .I1(Q[28]),
        .O(ila_read_ddr_has_data_INST_0_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ila_read_ddr_has_data_INST_0_i_11
       (.I0(Q[27]),
        .I1(Q[26]),
        .O(ila_read_ddr_has_data_INST_0_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ila_read_ddr_has_data_INST_0_i_12
       (.I0(Q[25]),
        .I1(Q[24]),
        .O(ila_read_ddr_has_data_INST_0_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ila_read_ddr_has_data_INST_0_i_13
       (.I0(Q[23]),
        .I1(Q[22]),
        .O(ila_read_ddr_has_data_INST_0_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ila_read_ddr_has_data_INST_0_i_14
       (.I0(Q[21]),
        .I1(Q[20]),
        .O(ila_read_ddr_has_data_INST_0_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ila_read_ddr_has_data_INST_0_i_15
       (.I0(Q[19]),
        .I1(Q[18]),
        .O(ila_read_ddr_has_data_INST_0_i_15_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ila_read_ddr_has_data_INST_0_i_16
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(ila_read_ddr_has_data_INST_0_i_16_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ila_read_ddr_has_data_INST_0_i_17
       (.I0(Q[16]),
        .I1(Q[17]),
        .O(ila_read_ddr_has_data_INST_0_i_17_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ila_read_ddr_has_data_INST_0_i_18
       (.I0(Q[14]),
        .I1(Q[15]),
        .O(ila_read_ddr_has_data_INST_0_i_18_n_0));
  LUT3 #(
    .INIT(8'hF4)) 
    ila_read_ddr_has_data_INST_0_i_19
       (.I0(read_burst_len[8]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(ila_read_ddr_has_data_INST_0_i_19_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ila_read_ddr_has_data_INST_0_i_2
       (.I0(Q[30]),
        .I1(Q[31]),
        .O(ila_read_ddr_has_data_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ila_read_ddr_has_data_INST_0_i_20
       (.I0(Q[11]),
        .I1(read_burst_len[7]),
        .I2(Q[10]),
        .I3(read_burst_len[6]),
        .O(ila_read_ddr_has_data_INST_0_i_20_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ila_read_ddr_has_data_INST_0_i_21
       (.I0(Q[9]),
        .I1(read_burst_len[5]),
        .I2(Q[8]),
        .I3(read_burst_len[4]),
        .O(ila_read_ddr_has_data_INST_0_i_21_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    ila_read_ddr_has_data_INST_0_i_22
       (.I0(Q[7]),
        .I1(read_burst_len[3]),
        .I2(Q[6]),
        .I3(read_burst_len[2]),
        .O(ila_read_ddr_has_data_INST_0_i_22_n_0));
  LUT4 #(
    .INIT(16'h50D4)) 
    ila_read_ddr_has_data_INST_0_i_23
       (.I0(read_burst_len[1]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(read_burst_len[0]),
        .O(ila_read_ddr_has_data_INST_0_i_23_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ila_read_ddr_has_data_INST_0_i_24
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(ila_read_ddr_has_data_INST_0_i_24_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ila_read_ddr_has_data_INST_0_i_25
       (.I0(Q[17]),
        .I1(Q[16]),
        .O(ila_read_ddr_has_data_INST_0_i_25_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ila_read_ddr_has_data_INST_0_i_26
       (.I0(Q[15]),
        .I1(Q[14]),
        .O(ila_read_ddr_has_data_INST_0_i_26_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    ila_read_ddr_has_data_INST_0_i_27
       (.I0(read_burst_len[8]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(ila_read_ddr_has_data_INST_0_i_27_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ila_read_ddr_has_data_INST_0_i_28
       (.I0(Q[10]),
        .I1(read_burst_len[6]),
        .I2(read_burst_len[7]),
        .I3(Q[11]),
        .O(ila_read_ddr_has_data_INST_0_i_28_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ila_read_ddr_has_data_INST_0_i_29
       (.I0(Q[8]),
        .I1(read_burst_len[4]),
        .I2(read_burst_len[5]),
        .I3(Q[9]),
        .O(ila_read_ddr_has_data_INST_0_i_29_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ila_read_ddr_has_data_INST_0_i_3
       (.I0(Q[28]),
        .I1(Q[29]),
        .O(ila_read_ddr_has_data_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ila_read_ddr_has_data_INST_0_i_30
       (.I0(Q[6]),
        .I1(read_burst_len[2]),
        .I2(read_burst_len[3]),
        .I3(Q[7]),
        .O(ila_read_ddr_has_data_INST_0_i_30_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ila_read_ddr_has_data_INST_0_i_31
       (.I0(Q[4]),
        .I1(read_burst_len[0]),
        .I2(Q[5]),
        .I3(read_burst_len[1]),
        .O(ila_read_ddr_has_data_INST_0_i_31_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ila_read_ddr_has_data_INST_0_i_32
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(ila_read_ddr_has_data_INST_0_i_32_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ila_read_ddr_has_data_INST_0_i_4
       (.I0(Q[26]),
        .I1(Q[27]),
        .O(ila_read_ddr_has_data_INST_0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ila_read_ddr_has_data_INST_0_i_5
       (.I0(Q[24]),
        .I1(Q[25]),
        .O(ila_read_ddr_has_data_INST_0_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ila_read_ddr_has_data_INST_0_i_6
       (.I0(Q[22]),
        .I1(Q[23]),
        .O(ila_read_ddr_has_data_INST_0_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ila_read_ddr_has_data_INST_0_i_7
       (.I0(Q[20]),
        .I1(Q[21]),
        .O(ila_read_ddr_has_data_INST_0_i_7_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ila_read_ddr_has_data_INST_0_i_8
       (.I0(Q[18]),
        .I1(Q[19]),
        .O(ila_read_ddr_has_data_INST_0_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ila_read_ddr_has_data_INST_0_i_9
       (.I0(Q[31]),
        .I1(Q[30]),
        .O(ila_read_ddr_has_data_INST_0_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ila_read_state[0]_INST_0 
       (.I0(read_state[0]),
        .I1(read_state[2]),
        .O(ila_read_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ila_read_state[1]_INST_0 
       (.I0(read_state[1]),
        .I1(read_state[2]),
        .O(ila_read_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ila_read_state[2]_INST_0 
       (.I0(read_state[2]),
        .I1(read_state[0]),
        .I2(read_state[1]),
        .O(ila_read_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    ila_rx_fifo_rden_INST_0
       (.I0(write_state__0[2]),
        .I1(write_state__0[1]),
        .I2(write_state__0[0]),
        .O(ila_rx_fifo_rden));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    ila_tx_fifo_wren_INST_0
       (.I0(read_state[2]),
        .I1(read_state[1]),
        .I2(read_state[0]),
        .O(ila_tx_fifo_wren));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    ila_write_active_INST_0
       (.I0(s_axis_rx_tvalid),
        .I1(m_axi_wready),
        .I2(write_state__0[0]),
        .I3(write_state__0[1]),
        .I4(write_state__0[2]),
        .O(ila_write_active));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ila_write_state[0]_INST_0 
       (.I0(write_state__0[0]),
        .I1(write_state__0[2]),
        .O(ila_write_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ila_write_state[1]_INST_0 
       (.I0(write_state__0[1]),
        .I1(write_state__0[2]),
        .O(ila_write_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ila_write_state[2]_INST_0 
       (.I0(write_state__0[2]),
        .I1(write_state__0[0]),
        .I2(write_state__0[1]),
        .O(ila_write_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[0]_i_1 
       (.I0(m_axi_araddr[0]),
        .I1(read_base_address[0]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[10]_i_1 
       (.I0(in18[10]),
        .I1(read_base_address[10]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_araddr[10]_i_3 
       (.I0(m_axi_araddr[10]),
        .I1(read_burst_len[6]),
        .O(\m_axi_araddr[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_araddr[10]_i_4 
       (.I0(m_axi_araddr[9]),
        .I1(read_burst_len[5]),
        .O(\m_axi_araddr[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_araddr[10]_i_5 
       (.I0(m_axi_araddr[8]),
        .I1(read_burst_len[4]),
        .O(\m_axi_araddr[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_araddr[10]_i_6 
       (.I0(m_axi_araddr[7]),
        .I1(read_burst_len[3]),
        .O(\m_axi_araddr[10]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_araddr[10]_i_7 
       (.I0(m_axi_araddr[6]),
        .I1(read_burst_len[2]),
        .O(\m_axi_araddr[10]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_araddr[10]_i_8 
       (.I0(m_axi_araddr[5]),
        .I1(read_burst_len[1]),
        .O(\m_axi_araddr[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_araddr[10]_i_9 
       (.I0(m_axi_araddr[4]),
        .I1(read_burst_len[0]),
        .O(\m_axi_araddr[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[11]_i_1 
       (.I0(in18[11]),
        .I1(read_base_address[11]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[12]_i_1 
       (.I0(in18[12]),
        .I1(read_base_address[12]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[13]_i_1 
       (.I0(in18[13]),
        .I1(read_base_address[13]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[14]_i_1 
       (.I0(in18[14]),
        .I1(read_base_address[14]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[14]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[15]_i_1 
       (.I0(in18[15]),
        .I1(read_base_address[15]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[16]_i_1 
       (.I0(in18[16]),
        .I1(read_base_address[16]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[17]_i_1 
       (.I0(in18[17]),
        .I1(read_base_address[17]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[17]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[18]_i_1 
       (.I0(in18[18]),
        .I1(read_base_address[18]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[18]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_araddr[18]_i_3 
       (.I0(m_axi_araddr[12]),
        .I1(read_burst_len[8]),
        .O(\m_axi_araddr[18]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_araddr[18]_i_4 
       (.I0(m_axi_araddr[11]),
        .I1(read_burst_len[7]),
        .O(\m_axi_araddr[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[19]_i_1 
       (.I0(in18[19]),
        .I1(read_base_address[19]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[19]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[1]_i_1 
       (.I0(m_axi_araddr[1]),
        .I1(read_base_address[1]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[20]_i_1 
       (.I0(in18[20]),
        .I1(read_base_address[20]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[20]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[21]_i_1 
       (.I0(in18[21]),
        .I1(read_base_address[21]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[21]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[22]_i_1 
       (.I0(in18[22]),
        .I1(read_base_address[22]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[22]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[23]_i_1 
       (.I0(in18[23]),
        .I1(read_base_address[23]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[24]_i_1 
       (.I0(in18[24]),
        .I1(read_base_address[24]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[24]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[25]_i_1 
       (.I0(in18[25]),
        .I1(read_base_address[25]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[25]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[26]_i_1 
       (.I0(in18[26]),
        .I1(read_base_address[26]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[26]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[27]_i_1 
       (.I0(in18[27]),
        .I1(read_base_address[27]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[27]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[28]_i_1 
       (.I0(in18[28]),
        .I1(read_base_address[28]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[28]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[29]_i_1 
       (.I0(in18[29]),
        .I1(read_base_address[29]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[29]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[2]_i_1 
       (.I0(m_axi_araddr[2]),
        .I1(read_base_address[2]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[30]_i_1 
       (.I0(in18[30]),
        .I1(read_base_address[30]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[30]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[31]_i_1 
       (.I0(in18[31]),
        .I1(read_base_address[31]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[32]_i_1 
       (.I0(in18[32]),
        .I1(read_base_address[32]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[32]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[33]_i_1 
       (.I0(in18[33]),
        .I1(read_base_address[33]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[33]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[34]_i_1 
       (.I0(in18[34]),
        .I1(read_base_address[34]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[34]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[35]_i_1 
       (.I0(in18[35]),
        .I1(read_base_address[35]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[35]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[36]_i_1 
       (.I0(in18[36]),
        .I1(read_base_address[36]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[36]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[37]_i_1 
       (.I0(in18[37]),
        .I1(read_base_address[37]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[37]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[38]_i_1 
       (.I0(in18[38]),
        .I1(read_base_address[38]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[38]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[39]_i_1 
       (.I0(in18[39]),
        .I1(read_base_address[39]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[39]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[3]_i_1 
       (.I0(in18[3]),
        .I1(read_base_address[3]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[40]_i_1 
       (.I0(in18[40]),
        .I1(read_base_address[40]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[40]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[41]_i_1 
       (.I0(in18[41]),
        .I1(read_base_address[41]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[41]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[42]_i_1 
       (.I0(in18[42]),
        .I1(read_base_address[42]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[42]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[43]_i_1 
       (.I0(in18[43]),
        .I1(read_base_address[43]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[43]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[44]_i_1 
       (.I0(in18[44]),
        .I1(read_base_address[44]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[44]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[45]_i_1 
       (.I0(in18[45]),
        .I1(read_base_address[45]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[45]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[46]_i_1 
       (.I0(in18[46]),
        .I1(read_base_address[46]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[46]));
  LUT5 #(
    .INIT(32'h55555F57)) 
    \m_axi_araddr[47]_i_1 
       (.I0(aresetn),
        .I1(read_state[1]),
        .I2(read_state[0]),
        .I3(m_axi_arready),
        .I4(read_state[2]),
        .O(\m_axi_araddr[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[47]_i_2 
       (.I0(in18[47]),
        .I1(read_base_address[47]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[47]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[4]_i_1 
       (.I0(in18[4]),
        .I1(read_base_address[4]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[5]_i_1 
       (.I0(in18[5]),
        .I1(read_base_address[5]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[6]_i_1 
       (.I0(in18[6]),
        .I1(read_base_address[6]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[7]_i_1 
       (.I0(in18[7]),
        .I1(read_base_address[7]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[8]_i_1 
       (.I0(in18[8]),
        .I1(read_base_address[8]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_araddr[9]_i_1 
       (.I0(in18[9]),
        .I1(read_base_address[9]),
        .I2(read_state[1]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(p_1_in[9]));
  FDRE \m_axi_araddr_reg[0] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(m_axi_araddr[0]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[10] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(m_axi_araddr[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \m_axi_araddr_reg[10]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axi_araddr_reg[10]_i_2_n_0 ,\m_axi_araddr_reg[10]_i_2_n_1 ,\m_axi_araddr_reg[10]_i_2_n_2 ,\m_axi_araddr_reg[10]_i_2_n_3 ,\m_axi_araddr_reg[10]_i_2_n_4 ,\m_axi_araddr_reg[10]_i_2_n_5 ,\m_axi_araddr_reg[10]_i_2_n_6 ,\m_axi_araddr_reg[10]_i_2_n_7 }),
        .DI({m_axi_araddr[10:4],1'b0}),
        .O(in18[10:3]),
        .S({\m_axi_araddr[10]_i_3_n_0 ,\m_axi_araddr[10]_i_4_n_0 ,\m_axi_araddr[10]_i_5_n_0 ,\m_axi_araddr[10]_i_6_n_0 ,\m_axi_araddr[10]_i_7_n_0 ,\m_axi_araddr[10]_i_8_n_0 ,\m_axi_araddr[10]_i_9_n_0 ,m_axi_araddr[3]}));
  FDRE \m_axi_araddr_reg[11] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(m_axi_araddr[11]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[12] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(m_axi_araddr[12]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[13] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(m_axi_araddr[13]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[14] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(m_axi_araddr[14]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[15] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(m_axi_araddr[15]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[16] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(m_axi_araddr[16]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[17] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(m_axi_araddr[17]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[18] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(m_axi_araddr[18]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \m_axi_araddr_reg[18]_i_2 
       (.CI(\m_axi_araddr_reg[10]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axi_araddr_reg[18]_i_2_n_0 ,\m_axi_araddr_reg[18]_i_2_n_1 ,\m_axi_araddr_reg[18]_i_2_n_2 ,\m_axi_araddr_reg[18]_i_2_n_3 ,\m_axi_araddr_reg[18]_i_2_n_4 ,\m_axi_araddr_reg[18]_i_2_n_5 ,\m_axi_araddr_reg[18]_i_2_n_6 ,\m_axi_araddr_reg[18]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,m_axi_araddr[12:11]}),
        .O(in18[18:11]),
        .S({m_axi_araddr[18:13],\m_axi_araddr[18]_i_3_n_0 ,\m_axi_araddr[18]_i_4_n_0 }));
  FDRE \m_axi_araddr_reg[19] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(m_axi_araddr[19]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[1] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(m_axi_araddr[1]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[20] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(m_axi_araddr[20]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[21] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(m_axi_araddr[21]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[22] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(m_axi_araddr[22]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[23] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(m_axi_araddr[23]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[24] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[24]),
        .Q(m_axi_araddr[24]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[25] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[25]),
        .Q(m_axi_araddr[25]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[26] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[26]),
        .Q(m_axi_araddr[26]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \m_axi_araddr_reg[26]_i_2 
       (.CI(\m_axi_araddr_reg[18]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axi_araddr_reg[26]_i_2_n_0 ,\m_axi_araddr_reg[26]_i_2_n_1 ,\m_axi_araddr_reg[26]_i_2_n_2 ,\m_axi_araddr_reg[26]_i_2_n_3 ,\m_axi_araddr_reg[26]_i_2_n_4 ,\m_axi_araddr_reg[26]_i_2_n_5 ,\m_axi_araddr_reg[26]_i_2_n_6 ,\m_axi_araddr_reg[26]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in18[26:19]),
        .S(m_axi_araddr[26:19]));
  FDRE \m_axi_araddr_reg[27] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[27]),
        .Q(m_axi_araddr[27]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[28] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(m_axi_araddr[28]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[29] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[29]),
        .Q(m_axi_araddr[29]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[2] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(m_axi_araddr[2]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[30] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[30]),
        .Q(m_axi_araddr[30]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[31] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[31]),
        .Q(m_axi_araddr[31]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[32] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[32]),
        .Q(m_axi_araddr[32]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[33] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[33]),
        .Q(m_axi_araddr[33]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[34] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[34]),
        .Q(m_axi_araddr[34]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \m_axi_araddr_reg[34]_i_2 
       (.CI(\m_axi_araddr_reg[26]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axi_araddr_reg[34]_i_2_n_0 ,\m_axi_araddr_reg[34]_i_2_n_1 ,\m_axi_araddr_reg[34]_i_2_n_2 ,\m_axi_araddr_reg[34]_i_2_n_3 ,\m_axi_araddr_reg[34]_i_2_n_4 ,\m_axi_araddr_reg[34]_i_2_n_5 ,\m_axi_araddr_reg[34]_i_2_n_6 ,\m_axi_araddr_reg[34]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in18[34:27]),
        .S(m_axi_araddr[34:27]));
  FDRE \m_axi_araddr_reg[35] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[35]),
        .Q(m_axi_araddr[35]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[36] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[36]),
        .Q(m_axi_araddr[36]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[37] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[37]),
        .Q(m_axi_araddr[37]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[38] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[38]),
        .Q(m_axi_araddr[38]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[39] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[39]),
        .Q(m_axi_araddr[39]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[3] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(m_axi_araddr[3]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[40] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[40]),
        .Q(m_axi_araddr[40]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[41] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[41]),
        .Q(m_axi_araddr[41]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[42] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[42]),
        .Q(m_axi_araddr[42]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \m_axi_araddr_reg[42]_i_2 
       (.CI(\m_axi_araddr_reg[34]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axi_araddr_reg[42]_i_2_n_0 ,\m_axi_araddr_reg[42]_i_2_n_1 ,\m_axi_araddr_reg[42]_i_2_n_2 ,\m_axi_araddr_reg[42]_i_2_n_3 ,\m_axi_araddr_reg[42]_i_2_n_4 ,\m_axi_araddr_reg[42]_i_2_n_5 ,\m_axi_araddr_reg[42]_i_2_n_6 ,\m_axi_araddr_reg[42]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in18[42:35]),
        .S(m_axi_araddr[42:35]));
  FDRE \m_axi_araddr_reg[43] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[43]),
        .Q(m_axi_araddr[43]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[44] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[44]),
        .Q(m_axi_araddr[44]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[45] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[45]),
        .Q(m_axi_araddr[45]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[46] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[46]),
        .Q(m_axi_araddr[46]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[47] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[47]),
        .Q(m_axi_araddr[47]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \m_axi_araddr_reg[47]_i_3 
       (.CI(\m_axi_araddr_reg[42]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axi_araddr_reg[47]_i_3_CO_UNCONNECTED [7:4],\m_axi_araddr_reg[47]_i_3_n_4 ,\m_axi_araddr_reg[47]_i_3_n_5 ,\m_axi_araddr_reg[47]_i_3_n_6 ,\m_axi_araddr_reg[47]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_m_axi_araddr_reg[47]_i_3_O_UNCONNECTED [7:5],in18[47:43]}),
        .S({1'b0,1'b0,1'b0,m_axi_araddr[47:43]}));
  FDRE \m_axi_araddr_reg[4] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(m_axi_araddr[4]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[5] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(m_axi_araddr[5]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[6] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(m_axi_araddr[6]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[7] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(m_axi_araddr[7]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[8] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(m_axi_araddr[8]),
        .R(1'b0));
  FDRE \m_axi_araddr_reg[9] 
       (.C(aclk),
        .CE(\m_axi_araddr[47]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(m_axi_araddr[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_arlen[7]_INST_0_i_1 
       (.I0(read_burst_len[2]),
        .I1(read_burst_len[1]),
        .I2(read_burst_len[0]),
        .I3(read_burst_len[3]),
        .O(read_burst_len_2_sn_1));
  LUT1 #(
    .INIT(2'h1)) 
    m_axi_arvalid_i_1
       (.I0(aresetn),
        .O(m_axi_arvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF3A0000003A0)) 
    m_axi_arvalid_i_2
       (.I0(m_axi_arvalid_i_3_n_0),
        .I1(m_axi_arready),
        .I2(read_state[0]),
        .I3(read_state[1]),
        .I4(read_state[2]),
        .I5(ilamaxi_arvalid),
        .O(m_axi_arvalid_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    m_axi_arvalid_i_3
       (.I0(tx_fifo_has_space),
        .I1(\read_ddr_occupation_reg[30]_0 ),
        .O(m_axi_arvalid_i_3_n_0));
  FDRE m_axi_arvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axi_arvalid_i_2_n_0),
        .Q(ilamaxi_arvalid),
        .R(m_axi_arvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[0]_i_1 
       (.I0(m_axi_awaddr[0]),
        .I1(write_base_address[0]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[10]_i_1 
       (.I0(in9[10]),
        .I1(write_base_address[10]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_awaddr[10]_i_3 
       (.I0(m_axi_awaddr[10]),
        .I1(write_burst_len[6]),
        .O(\m_axi_awaddr[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_awaddr[10]_i_4 
       (.I0(m_axi_awaddr[9]),
        .I1(write_burst_len[5]),
        .O(\m_axi_awaddr[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_awaddr[10]_i_5 
       (.I0(m_axi_awaddr[8]),
        .I1(write_burst_len[4]),
        .O(\m_axi_awaddr[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_awaddr[10]_i_6 
       (.I0(m_axi_awaddr[7]),
        .I1(write_burst_len[3]),
        .O(\m_axi_awaddr[10]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_awaddr[10]_i_7 
       (.I0(m_axi_awaddr[6]),
        .I1(write_burst_len[2]),
        .O(\m_axi_awaddr[10]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_awaddr[10]_i_8 
       (.I0(m_axi_awaddr[5]),
        .I1(write_burst_len[1]),
        .O(\m_axi_awaddr[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_awaddr[10]_i_9 
       (.I0(m_axi_awaddr[4]),
        .I1(write_burst_len[0]),
        .O(\m_axi_awaddr[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[11]_i_1 
       (.I0(in9[11]),
        .I1(write_base_address[11]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[12]_i_1 
       (.I0(in9[12]),
        .I1(write_base_address[12]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[13]_i_1 
       (.I0(in9[13]),
        .I1(write_base_address[13]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[14]_i_1 
       (.I0(in9[14]),
        .I1(write_base_address[14]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[15]_i_1 
       (.I0(in9[15]),
        .I1(write_base_address[15]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[16]_i_1 
       (.I0(in9[16]),
        .I1(write_base_address[16]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[17]_i_1 
       (.I0(in9[17]),
        .I1(write_base_address[17]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[18]_i_1 
       (.I0(in9[18]),
        .I1(write_base_address[18]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_awaddr[18]_i_3 
       (.I0(m_axi_awaddr[12]),
        .I1(write_burst_len[8]),
        .O(\m_axi_awaddr[18]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_awaddr[18]_i_4 
       (.I0(m_axi_awaddr[11]),
        .I1(write_burst_len[7]),
        .O(\m_axi_awaddr[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[19]_i_1 
       (.I0(in9[19]),
        .I1(write_base_address[19]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[1]_i_1 
       (.I0(m_axi_awaddr[1]),
        .I1(write_base_address[1]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[20]_i_1 
       (.I0(in9[20]),
        .I1(write_base_address[20]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[21]_i_1 
       (.I0(in9[21]),
        .I1(write_base_address[21]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[22]_i_1 
       (.I0(in9[22]),
        .I1(write_base_address[22]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[23]_i_1 
       (.I0(in9[23]),
        .I1(write_base_address[23]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[24]_i_1 
       (.I0(in9[24]),
        .I1(write_base_address[24]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[25]_i_1 
       (.I0(in9[25]),
        .I1(write_base_address[25]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[26]_i_1 
       (.I0(in9[26]),
        .I1(write_base_address[26]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[27]_i_1 
       (.I0(in9[27]),
        .I1(write_base_address[27]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[28]_i_1 
       (.I0(in9[28]),
        .I1(write_base_address[28]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[29]_i_1 
       (.I0(in9[29]),
        .I1(write_base_address[29]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[2]_i_1 
       (.I0(m_axi_awaddr[2]),
        .I1(write_base_address[2]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[30]_i_1 
       (.I0(in9[30]),
        .I1(write_base_address[30]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[31]_i_1 
       (.I0(in9[31]),
        .I1(write_base_address[31]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[32]_i_1 
       (.I0(in9[32]),
        .I1(write_base_address[32]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[33]_i_1 
       (.I0(in9[33]),
        .I1(write_base_address[33]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[33]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[34]_i_1 
       (.I0(in9[34]),
        .I1(write_base_address[34]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[35]_i_1 
       (.I0(in9[35]),
        .I1(write_base_address[35]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[35]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[36]_i_1 
       (.I0(in9[36]),
        .I1(write_base_address[36]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[36]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[37]_i_1 
       (.I0(in9[37]),
        .I1(write_base_address[37]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[38]_i_1 
       (.I0(in9[38]),
        .I1(write_base_address[38]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[39]_i_1 
       (.I0(in9[39]),
        .I1(write_base_address[39]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[3]_i_1 
       (.I0(in9[3]),
        .I1(write_base_address[3]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[40]_i_1 
       (.I0(in9[40]),
        .I1(write_base_address[40]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[41]_i_1 
       (.I0(in9[41]),
        .I1(write_base_address[41]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[41]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[42]_i_1 
       (.I0(in9[42]),
        .I1(write_base_address[42]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[43]_i_1 
       (.I0(in9[43]),
        .I1(write_base_address[43]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[43]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[44]_i_1 
       (.I0(in9[44]),
        .I1(write_base_address[44]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[44]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[45]_i_1 
       (.I0(in9[45]),
        .I1(write_base_address[45]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[46]_i_1 
       (.I0(in9[46]),
        .I1(write_base_address[46]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55555F57)) 
    \m_axi_awaddr[47]_i_1 
       (.I0(aresetn),
        .I1(write_state__0[1]),
        .I2(write_state__0[0]),
        .I3(m_axi_awready),
        .I4(write_state__0[2]),
        .O(\m_axi_awaddr[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[47]_i_2 
       (.I0(in9[47]),
        .I1(write_base_address[47]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[47]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[4]_i_1 
       (.I0(in9[4]),
        .I1(write_base_address[4]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[5]_i_1 
       (.I0(in9[5]),
        .I1(write_base_address[5]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[6]_i_1 
       (.I0(in9[6]),
        .I1(write_base_address[6]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[7]_i_1 
       (.I0(in9[7]),
        .I1(write_base_address[7]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[8]_i_1 
       (.I0(in9[8]),
        .I1(write_base_address[8]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \m_axi_awaddr[9]_i_1 
       (.I0(in9[9]),
        .I1(write_base_address[9]),
        .I2(write_state__0[1]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\m_axi_awaddr[9]_i_1_n_0 ));
  FDRE \m_axi_awaddr_reg[0] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[0]_i_1_n_0 ),
        .Q(m_axi_awaddr[0]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[10] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[10]_i_1_n_0 ),
        .Q(m_axi_awaddr[10]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \m_axi_awaddr_reg[10]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axi_awaddr_reg[10]_i_2_n_0 ,\m_axi_awaddr_reg[10]_i_2_n_1 ,\m_axi_awaddr_reg[10]_i_2_n_2 ,\m_axi_awaddr_reg[10]_i_2_n_3 ,\m_axi_awaddr_reg[10]_i_2_n_4 ,\m_axi_awaddr_reg[10]_i_2_n_5 ,\m_axi_awaddr_reg[10]_i_2_n_6 ,\m_axi_awaddr_reg[10]_i_2_n_7 }),
        .DI({m_axi_awaddr[10:4],1'b0}),
        .O(in9[10:3]),
        .S({\m_axi_awaddr[10]_i_3_n_0 ,\m_axi_awaddr[10]_i_4_n_0 ,\m_axi_awaddr[10]_i_5_n_0 ,\m_axi_awaddr[10]_i_6_n_0 ,\m_axi_awaddr[10]_i_7_n_0 ,\m_axi_awaddr[10]_i_8_n_0 ,\m_axi_awaddr[10]_i_9_n_0 ,m_axi_awaddr[3]}));
  FDRE \m_axi_awaddr_reg[11] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[11]_i_1_n_0 ),
        .Q(m_axi_awaddr[11]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[12] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[12]_i_1_n_0 ),
        .Q(m_axi_awaddr[12]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[13] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[13]_i_1_n_0 ),
        .Q(m_axi_awaddr[13]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[14] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[14]_i_1_n_0 ),
        .Q(m_axi_awaddr[14]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[15] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[15]_i_1_n_0 ),
        .Q(m_axi_awaddr[15]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[16] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[16]_i_1_n_0 ),
        .Q(m_axi_awaddr[16]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[17] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[17]_i_1_n_0 ),
        .Q(m_axi_awaddr[17]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[18] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[18]_i_1_n_0 ),
        .Q(m_axi_awaddr[18]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \m_axi_awaddr_reg[18]_i_2 
       (.CI(\m_axi_awaddr_reg[10]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axi_awaddr_reg[18]_i_2_n_0 ,\m_axi_awaddr_reg[18]_i_2_n_1 ,\m_axi_awaddr_reg[18]_i_2_n_2 ,\m_axi_awaddr_reg[18]_i_2_n_3 ,\m_axi_awaddr_reg[18]_i_2_n_4 ,\m_axi_awaddr_reg[18]_i_2_n_5 ,\m_axi_awaddr_reg[18]_i_2_n_6 ,\m_axi_awaddr_reg[18]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,m_axi_awaddr[12:11]}),
        .O(in9[18:11]),
        .S({m_axi_awaddr[18:13],\m_axi_awaddr[18]_i_3_n_0 ,\m_axi_awaddr[18]_i_4_n_0 }));
  FDRE \m_axi_awaddr_reg[19] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[19]_i_1_n_0 ),
        .Q(m_axi_awaddr[19]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[1] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[1]_i_1_n_0 ),
        .Q(m_axi_awaddr[1]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[20] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[20]_i_1_n_0 ),
        .Q(m_axi_awaddr[20]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[21] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[21]_i_1_n_0 ),
        .Q(m_axi_awaddr[21]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[22] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[22]_i_1_n_0 ),
        .Q(m_axi_awaddr[22]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[23] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[23]_i_1_n_0 ),
        .Q(m_axi_awaddr[23]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[24] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[24]_i_1_n_0 ),
        .Q(m_axi_awaddr[24]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[25] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[25]_i_1_n_0 ),
        .Q(m_axi_awaddr[25]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[26] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[26]_i_1_n_0 ),
        .Q(m_axi_awaddr[26]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \m_axi_awaddr_reg[26]_i_2 
       (.CI(\m_axi_awaddr_reg[18]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axi_awaddr_reg[26]_i_2_n_0 ,\m_axi_awaddr_reg[26]_i_2_n_1 ,\m_axi_awaddr_reg[26]_i_2_n_2 ,\m_axi_awaddr_reg[26]_i_2_n_3 ,\m_axi_awaddr_reg[26]_i_2_n_4 ,\m_axi_awaddr_reg[26]_i_2_n_5 ,\m_axi_awaddr_reg[26]_i_2_n_6 ,\m_axi_awaddr_reg[26]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in9[26:19]),
        .S(m_axi_awaddr[26:19]));
  FDRE \m_axi_awaddr_reg[27] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[27]_i_1_n_0 ),
        .Q(m_axi_awaddr[27]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[28] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[28]_i_1_n_0 ),
        .Q(m_axi_awaddr[28]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[29] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[29]_i_1_n_0 ),
        .Q(m_axi_awaddr[29]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[2] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[2]_i_1_n_0 ),
        .Q(m_axi_awaddr[2]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[30] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[30]_i_1_n_0 ),
        .Q(m_axi_awaddr[30]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[31] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[31]_i_1_n_0 ),
        .Q(m_axi_awaddr[31]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[32] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[32]_i_1_n_0 ),
        .Q(m_axi_awaddr[32]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[33] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[33]_i_1_n_0 ),
        .Q(m_axi_awaddr[33]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[34] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[34]_i_1_n_0 ),
        .Q(m_axi_awaddr[34]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \m_axi_awaddr_reg[34]_i_2 
       (.CI(\m_axi_awaddr_reg[26]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axi_awaddr_reg[34]_i_2_n_0 ,\m_axi_awaddr_reg[34]_i_2_n_1 ,\m_axi_awaddr_reg[34]_i_2_n_2 ,\m_axi_awaddr_reg[34]_i_2_n_3 ,\m_axi_awaddr_reg[34]_i_2_n_4 ,\m_axi_awaddr_reg[34]_i_2_n_5 ,\m_axi_awaddr_reg[34]_i_2_n_6 ,\m_axi_awaddr_reg[34]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in9[34:27]),
        .S(m_axi_awaddr[34:27]));
  FDRE \m_axi_awaddr_reg[35] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[35]_i_1_n_0 ),
        .Q(m_axi_awaddr[35]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[36] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[36]_i_1_n_0 ),
        .Q(m_axi_awaddr[36]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[37] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[37]_i_1_n_0 ),
        .Q(m_axi_awaddr[37]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[38] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[38]_i_1_n_0 ),
        .Q(m_axi_awaddr[38]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[39] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[39]_i_1_n_0 ),
        .Q(m_axi_awaddr[39]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[3] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[3]_i_1_n_0 ),
        .Q(m_axi_awaddr[3]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[40] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[40]_i_1_n_0 ),
        .Q(m_axi_awaddr[40]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[41] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[41]_i_1_n_0 ),
        .Q(m_axi_awaddr[41]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[42] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[42]_i_1_n_0 ),
        .Q(m_axi_awaddr[42]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \m_axi_awaddr_reg[42]_i_2 
       (.CI(\m_axi_awaddr_reg[34]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axi_awaddr_reg[42]_i_2_n_0 ,\m_axi_awaddr_reg[42]_i_2_n_1 ,\m_axi_awaddr_reg[42]_i_2_n_2 ,\m_axi_awaddr_reg[42]_i_2_n_3 ,\m_axi_awaddr_reg[42]_i_2_n_4 ,\m_axi_awaddr_reg[42]_i_2_n_5 ,\m_axi_awaddr_reg[42]_i_2_n_6 ,\m_axi_awaddr_reg[42]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in9[42:35]),
        .S(m_axi_awaddr[42:35]));
  FDRE \m_axi_awaddr_reg[43] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[43]_i_1_n_0 ),
        .Q(m_axi_awaddr[43]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[44] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[44]_i_1_n_0 ),
        .Q(m_axi_awaddr[44]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[45] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[45]_i_1_n_0 ),
        .Q(m_axi_awaddr[45]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[46] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[46]_i_1_n_0 ),
        .Q(m_axi_awaddr[46]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[47] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[47]_i_2_n_0 ),
        .Q(m_axi_awaddr[47]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \m_axi_awaddr_reg[47]_i_3 
       (.CI(\m_axi_awaddr_reg[42]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axi_awaddr_reg[47]_i_3_CO_UNCONNECTED [7:4],\m_axi_awaddr_reg[47]_i_3_n_4 ,\m_axi_awaddr_reg[47]_i_3_n_5 ,\m_axi_awaddr_reg[47]_i_3_n_6 ,\m_axi_awaddr_reg[47]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_m_axi_awaddr_reg[47]_i_3_O_UNCONNECTED [7:5],in9[47:43]}),
        .S({1'b0,1'b0,1'b0,m_axi_awaddr[47:43]}));
  FDRE \m_axi_awaddr_reg[4] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[4]_i_1_n_0 ),
        .Q(m_axi_awaddr[4]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[5] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[5]_i_1_n_0 ),
        .Q(m_axi_awaddr[5]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[6] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[6]_i_1_n_0 ),
        .Q(m_axi_awaddr[6]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[7] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[7]_i_1_n_0 ),
        .Q(m_axi_awaddr[7]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[8] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[8]_i_1_n_0 ),
        .Q(m_axi_awaddr[8]),
        .R(1'b0));
  FDRE \m_axi_awaddr_reg[9] 
       (.C(aclk),
        .CE(\m_axi_awaddr[47]_i_1_n_0 ),
        .D(\m_axi_awaddr[9]_i_1_n_0 ),
        .Q(m_axi_awaddr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axi_awlen[7]_INST_0_i_1 
       (.I0(write_burst_len[4]),
        .I1(write_burst_len[3]),
        .I2(write_burst_len[2]),
        .I3(write_burst_len[0]),
        .I4(write_burst_len[1]),
        .I5(write_burst_len[5]),
        .O(write_burst_len_4_sn_1));
  LUT3 #(
    .INIT(8'h07)) 
    m_axi_awvalid_i_1
       (.I0(write_state__0[0]),
        .I1(write_state__0[1]),
        .I2(write_state__0[2]),
        .O(m_axi_awvalid_i_1_n_0));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    m_axi_awvalid_i_2
       (.I0(write_state__0[0]),
        .I1(rx_fifo_data_ready),
        .I2(CO),
        .I3(m_axi_awready),
        .I4(write_state__0[1]),
        .O(m_axi_awvalid_i_2_n_0));
  FDRE m_axi_awvalid_reg
       (.C(aclk),
        .CE(m_axi_awvalid_i_1_n_0),
        .D(m_axi_awvalid_i_2_n_0),
        .Q(ilamaxi_awvalid),
        .R(m_axi_arvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    m_axi_bready_i_1
       (.I0(m_axi_bready_i_2_n_0),
        .I1(m_axi_bready_i_3_n_0),
        .I2(write_state__0[2]),
        .I3(m_axi_bready_i_4_n_0),
        .I4(m_axi_wlast_i_2_n_0),
        .I5(ilamaxi_bready),
        .O(m_axi_bready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    m_axi_bready_i_2
       (.I0(write_state__0[0]),
        .I1(write_state__0[1]),
        .I2(write_state__0[2]),
        .I3(m_axi_wlast_reg_0),
        .O(m_axi_bready_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h033B)) 
    m_axi_bready_i_3
       (.I0(m_axi_bvalid),
        .I1(write_state__0[2]),
        .I2(write_state__0[1]),
        .I3(write_state__0[0]),
        .O(m_axi_bready_i_3_n_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    m_axi_bready_i_4
       (.I0(m_axi_wlast_reg_0),
        .I1(write_state__0[2]),
        .I2(write_state__0[1]),
        .I3(write_state__0[0]),
        .I4(m_axi_wready),
        .I5(s_axis_rx_tvalid),
        .O(m_axi_bready_i_4_n_0));
  FDRE m_axi_bready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axi_bready_i_1_n_0),
        .Q(ilamaxi_bready),
        .R(m_axi_arvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    m_axi_rready_INST_0
       (.I0(read_state[0]),
        .I1(read_state[1]),
        .I2(read_state[2]),
        .I3(m_axis_tx_tready),
        .O(ilamaxi_rready));
  LUT6 #(
    .INIT(64'hF0F0F0F088008080)) 
    m_axi_wlast_i_1
       (.I0(write_state__0[0]),
        .I1(write_state__0[1]),
        .I2(m_axi_wlast_reg_0),
        .I3(m_axi_wlast_i_2_n_0),
        .I4(ila_write_active),
        .I5(write_state__0[2]),
        .O(m_axi_wlast_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    m_axi_wlast_i_10
       (.I0(write_burst_len[2]),
        .I1(write_burst_len[1]),
        .I2(write_burst_len[3]),
        .O(m_axi_wlast_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    m_axi_wlast_i_11
       (.I0(\write_index_reg[8]_0 [0]),
        .I1(write_burst_len[0]),
        .O(m_axi_wlast_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    m_axi_wlast_i_12
       (.I0(\write_index_reg[8]_0 [5]),
        .I1(write_burst_len[5]),
        .O(m_axi_wlast_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    m_axi_wlast_i_13
       (.I0(write_burst_len[1]),
        .I1(write_burst_len[2]),
        .O(m_axi_wlast_i_13_n_0));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    m_axi_wlast_i_2
       (.I0(m_axi_wlast_i_3_n_0),
        .I1(write_state3),
        .I2(m_axi_wlast_i_5_n_0),
        .I3(m_axi_wlast_i_6_n_0),
        .I4(m_axi_wlast_i_7_n_0),
        .I5(m_axi_wlast_i_8_n_0),
        .O(m_axi_wlast_i_2_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    m_axi_wlast_i_3
       (.I0(m_axi_wlast_i_9_n_0),
        .I1(write_burst_len[0]),
        .I2(write_burst_len[1]),
        .I3(write_burst_len[4]),
        .O(m_axi_wlast_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    m_axi_wlast_i_4
       (.I0(write_burst_len[8]),
        .I1(write_burst_len[5]),
        .I2(write_burst_len[4]),
        .I3(m_axi_wlast_i_10_n_0),
        .I4(write_burst_len[6]),
        .I5(write_burst_len[7]),
        .O(write_state3));
  LUT6 #(
    .INIT(64'h0000000000001482)) 
    m_axi_wlast_i_5
       (.I0(write_burst_len[1]),
        .I1(write_burst_len[2]),
        .I2(\write_index_reg[8]_0 [2]),
        .I3(\write_index_reg[8]_0 [1]),
        .I4(m_axi_wlast_i_11_n_0),
        .I5(\write_index_reg[8]_0 [8]),
        .O(m_axi_wlast_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h99999996)) 
    m_axi_wlast_i_6
       (.I0(write_burst_len[6]),
        .I1(\write_index_reg[8]_0 [6]),
        .I2(write_burst_len[5]),
        .I3(m_axi_wlast_i_10_n_0),
        .I4(write_burst_len[4]),
        .O(m_axi_wlast_i_6_n_0));
  LUT6 #(
    .INIT(64'hCCCCCCC933333336)) 
    m_axi_wlast_i_7
       (.I0(write_burst_len[6]),
        .I1(write_burst_len[7]),
        .I2(write_burst_len[4]),
        .I3(m_axi_wlast_i_10_n_0),
        .I4(write_burst_len[5]),
        .I5(\write_index_reg[8]_0 [7]),
        .O(m_axi_wlast_i_7_n_0));
  LUT6 #(
    .INIT(64'h0900004200090900)) 
    m_axi_wlast_i_8
       (.I0(write_burst_len[4]),
        .I1(\write_index_reg[8]_0 [4]),
        .I2(m_axi_wlast_i_12_n_0),
        .I3(m_axi_wlast_i_13_n_0),
        .I4(write_burst_len[3]),
        .I5(\write_index_reg[8]_0 [3]),
        .O(m_axi_wlast_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_axi_wlast_i_9
       (.I0(write_burst_len[2]),
        .I1(write_burst_len[3]),
        .I2(write_burst_len[5]),
        .I3(write_burst_len[8]),
        .I4(write_burst_len[7]),
        .I5(write_burst_len[6]),
        .O(m_axi_wlast_i_9_n_0));
  FDRE m_axi_wlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axi_wlast_i_1_n_0),
        .Q(m_axi_wlast_reg_0),
        .R(m_axi_arvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    m_axi_wvalid_INST_0
       (.I0(write_state__0[0]),
        .I1(write_state__0[1]),
        .I2(write_state__0[2]),
        .I3(s_axis_rx_tvalid),
        .O(ilamaxi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    m_axis_tx_tvalid_INST_0
       (.I0(read_state[0]),
        .I1(read_state[1]),
        .I2(read_state[2]),
        .I3(m_axi_rvalid),
        .O(ila_tx_valid));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hCCACAAAA)) 
    read_access_tick_ack_i_1
       (.I0(ila_read_access_tick_ack),
        .I1(read_access_tick),
        .I2(read_ddr_occupation2),
        .I3(read_burst_tick_ack_reg_0),
        .I4(read_burst_tick_reg_0),
        .O(read_access_tick_ack_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_access_tick_ack_reg
       (.C(aclk),
        .CE(1'b1),
        .D(read_access_tick_ack_i_1_n_0),
        .Q(ila_read_access_tick_ack),
        .R(m_axi_arvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bresp[0]_i_1 
       (.I0(read_state[1]),
        .I1(m_axi_rresp[0]),
        .O(\read_bresp[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0800000F)) 
    \read_bresp[1]_i_1 
       (.I0(m_axi_rvalid),
        .I1(m_axis_tx_tready),
        .I2(read_state[2]),
        .I3(read_state[1]),
        .I4(read_state[0]),
        .O(read_bresp));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_bresp[1]_i_2 
       (.I0(read_state[1]),
        .I1(m_axi_rresp[1]),
        .O(\read_bresp[1]_i_2_n_0 ));
  FDRE \read_bresp_reg[0] 
       (.C(aclk),
        .CE(read_bresp),
        .D(\read_bresp[0]_i_1_n_0 ),
        .Q(ila_read_bresp[0]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_bresp_reg[1] 
       (.C(aclk),
        .CE(read_bresp),
        .D(\read_bresp[1]_i_2_n_0 ),
        .Q(ila_read_bresp[1]),
        .R(m_axi_arvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \read_burst_counter[0]_i_1 
       (.I0(read_state[1]),
        .I1(\read_burst_counter_reg_n_0_[0] ),
        .O(\read_burst_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[10]_i_1 
       (.I0(read_state[1]),
        .I1(in10[10]),
        .O(\read_burst_counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[11]_i_1 
       (.I0(read_state[1]),
        .I1(in10[11]),
        .O(\read_burst_counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[12]_i_1 
       (.I0(read_state[1]),
        .I1(in10[12]),
        .O(\read_burst_counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[13]_i_1 
       (.I0(read_state[1]),
        .I1(in10[13]),
        .O(\read_burst_counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[14]_i_1 
       (.I0(read_state[1]),
        .I1(in10[14]),
        .O(\read_burst_counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[15]_i_1 
       (.I0(read_state[1]),
        .I1(in10[15]),
        .O(\read_burst_counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[16]_i_1 
       (.I0(read_state[1]),
        .I1(in10[16]),
        .O(\read_burst_counter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[17]_i_1 
       (.I0(read_state[1]),
        .I1(in10[17]),
        .O(\read_burst_counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[18]_i_1 
       (.I0(read_state[1]),
        .I1(in10[18]),
        .O(\read_burst_counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[19]_i_1 
       (.I0(read_state[1]),
        .I1(in10[19]),
        .O(\read_burst_counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[1]_i_1 
       (.I0(read_state[1]),
        .I1(in10[1]),
        .O(\read_burst_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[20]_i_1 
       (.I0(read_state[1]),
        .I1(in10[20]),
        .O(\read_burst_counter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[21]_i_1 
       (.I0(read_state[1]),
        .I1(in10[21]),
        .O(\read_burst_counter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[22]_i_1 
       (.I0(read_state[1]),
        .I1(in10[22]),
        .O(\read_burst_counter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[23]_i_1 
       (.I0(read_state[1]),
        .I1(in10[23]),
        .O(\read_burst_counter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[24]_i_1 
       (.I0(read_state[1]),
        .I1(in10[24]),
        .O(\read_burst_counter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[25]_i_1 
       (.I0(read_state[1]),
        .I1(in10[25]),
        .O(\read_burst_counter[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[26]_i_1 
       (.I0(read_state[1]),
        .I1(in10[26]),
        .O(\read_burst_counter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[27]_i_1 
       (.I0(read_state[1]),
        .I1(in10[27]),
        .O(\read_burst_counter[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[28]_i_1 
       (.I0(read_state[1]),
        .I1(in10[28]),
        .O(\read_burst_counter[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[29]_i_1 
       (.I0(read_state[1]),
        .I1(in10[29]),
        .O(\read_burst_counter[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[2]_i_1 
       (.I0(read_state[1]),
        .I1(in10[2]),
        .O(\read_burst_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[30]_i_1 
       (.I0(read_state[1]),
        .I1(in10[30]),
        .O(\read_burst_counter[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00800000000000FF)) 
    \read_burst_counter[31]_i_1 
       (.I0(m_axi_rlast),
        .I1(m_axis_tx_tready),
        .I2(m_axi_rvalid),
        .I3(read_state[2]),
        .I4(read_state[1]),
        .I5(read_state[0]),
        .O(read_burst_counter));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[31]_i_2 
       (.I0(read_state[1]),
        .I1(in10[31]),
        .O(\read_burst_counter[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[3]_i_1 
       (.I0(read_state[1]),
        .I1(in10[3]),
        .O(\read_burst_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[4]_i_1 
       (.I0(read_state[1]),
        .I1(in10[4]),
        .O(\read_burst_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[5]_i_1 
       (.I0(read_state[1]),
        .I1(in10[5]),
        .O(\read_burst_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[6]_i_1 
       (.I0(read_state[1]),
        .I1(in10[6]),
        .O(\read_burst_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[7]_i_1 
       (.I0(read_state[1]),
        .I1(in10[7]),
        .O(\read_burst_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[8]_i_1 
       (.I0(read_state[1]),
        .I1(in10[8]),
        .O(\read_burst_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_burst_counter[9]_i_1 
       (.I0(read_state[1]),
        .I1(in10[9]),
        .O(\read_burst_counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[0] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[0]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[0] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[10] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[10]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[10] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[11] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[11]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[11] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[12] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[12]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[12] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[13] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[13]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[13] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[14] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[14]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[14] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[15] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[15]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[15] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[16] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[16]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[16] ),
        .R(m_axi_arvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \read_burst_counter_reg[16]_i_2 
       (.CI(\read_burst_counter_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\read_burst_counter_reg[16]_i_2_n_0 ,\read_burst_counter_reg[16]_i_2_n_1 ,\read_burst_counter_reg[16]_i_2_n_2 ,\read_burst_counter_reg[16]_i_2_n_3 ,\read_burst_counter_reg[16]_i_2_n_4 ,\read_burst_counter_reg[16]_i_2_n_5 ,\read_burst_counter_reg[16]_i_2_n_6 ,\read_burst_counter_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in10[16:9]),
        .S({\read_burst_counter_reg_n_0_[16] ,\read_burst_counter_reg_n_0_[15] ,\read_burst_counter_reg_n_0_[14] ,\read_burst_counter_reg_n_0_[13] ,\read_burst_counter_reg_n_0_[12] ,\read_burst_counter_reg_n_0_[11] ,\read_burst_counter_reg_n_0_[10] ,\read_burst_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[17] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[17]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[17] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[18] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[18]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[18] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[19] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[19]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[19] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[1] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[1]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[1] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[20] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[20]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[20] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[21] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[21]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[21] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[22] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[22]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[22] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[23] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[23]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[23] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[24] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[24]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[24] ),
        .R(m_axi_arvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \read_burst_counter_reg[24]_i_2 
       (.CI(\read_burst_counter_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\read_burst_counter_reg[24]_i_2_n_0 ,\read_burst_counter_reg[24]_i_2_n_1 ,\read_burst_counter_reg[24]_i_2_n_2 ,\read_burst_counter_reg[24]_i_2_n_3 ,\read_burst_counter_reg[24]_i_2_n_4 ,\read_burst_counter_reg[24]_i_2_n_5 ,\read_burst_counter_reg[24]_i_2_n_6 ,\read_burst_counter_reg[24]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in10[24:17]),
        .S({\read_burst_counter_reg_n_0_[24] ,\read_burst_counter_reg_n_0_[23] ,\read_burst_counter_reg_n_0_[22] ,\read_burst_counter_reg_n_0_[21] ,\read_burst_counter_reg_n_0_[20] ,\read_burst_counter_reg_n_0_[19] ,\read_burst_counter_reg_n_0_[18] ,\read_burst_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[25] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[25]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[25] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[26] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[26]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[26] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[27] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[27]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[27] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[28] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[28]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[28] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[29] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[29]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[29] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[2] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[2]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[2] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[30] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[30]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[30] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[31] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[31]_i_2_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[31] ),
        .R(m_axi_arvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \read_burst_counter_reg[31]_i_3 
       (.CI(\read_burst_counter_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_read_burst_counter_reg[31]_i_3_CO_UNCONNECTED [7:6],\read_burst_counter_reg[31]_i_3_n_2 ,\read_burst_counter_reg[31]_i_3_n_3 ,\read_burst_counter_reg[31]_i_3_n_4 ,\read_burst_counter_reg[31]_i_3_n_5 ,\read_burst_counter_reg[31]_i_3_n_6 ,\read_burst_counter_reg[31]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_read_burst_counter_reg[31]_i_3_O_UNCONNECTED [7],in10[31:25]}),
        .S({1'b0,\read_burst_counter_reg_n_0_[31] ,\read_burst_counter_reg_n_0_[30] ,\read_burst_counter_reg_n_0_[29] ,\read_burst_counter_reg_n_0_[28] ,\read_burst_counter_reg_n_0_[27] ,\read_burst_counter_reg_n_0_[26] ,\read_burst_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[3] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[3]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[3] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[4] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[4]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[4] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[5] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[5]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[5] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[6] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[6]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[6] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[7] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[7]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[7] ),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[8] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[8]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[8] ),
        .R(m_axi_arvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \read_burst_counter_reg[8]_i_2 
       (.CI(\read_burst_counter_reg_n_0_[0] ),
        .CI_TOP(1'b0),
        .CO({\read_burst_counter_reg[8]_i_2_n_0 ,\read_burst_counter_reg[8]_i_2_n_1 ,\read_burst_counter_reg[8]_i_2_n_2 ,\read_burst_counter_reg[8]_i_2_n_3 ,\read_burst_counter_reg[8]_i_2_n_4 ,\read_burst_counter_reg[8]_i_2_n_5 ,\read_burst_counter_reg[8]_i_2_n_6 ,\read_burst_counter_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in10[8:1]),
        .S({\read_burst_counter_reg_n_0_[8] ,\read_burst_counter_reg_n_0_[7] ,\read_burst_counter_reg_n_0_[6] ,\read_burst_counter_reg_n_0_[5] ,\read_burst_counter_reg_n_0_[4] ,\read_burst_counter_reg_n_0_[3] ,\read_burst_counter_reg_n_0_[2] ,\read_burst_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \read_burst_counter_reg[9] 
       (.C(aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter[9]_i_1_n_0 ),
        .Q(\read_burst_counter_reg_n_0_[9] ),
        .R(m_axi_arvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    read_burst_tick_ack_i_1
       (.I0(read_ddr_occupation2),
        .I1(read_burst_tick_ack_reg_0),
        .I2(read_burst_tick_reg_0),
        .O(read_burst_tick_ack_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_burst_tick_ack_reg
       (.C(aclk),
        .CE(1'b1),
        .D(read_burst_tick_ack_i_1_n_0),
        .Q(read_burst_tick_ack_reg_0),
        .R(m_axi_arvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF0800000008000)) 
    read_burst_tick_i_1
       (.I0(m_axi_rvalid_0),
        .I1(m_axi_rlast),
        .I2(read_state[0]),
        .I3(read_state[1]),
        .I4(read_state[2]),
        .I5(read_burst_tick_reg_0),
        .O(read_burst_tick_i_1_n_0));
  FDRE read_burst_tick_reg
       (.C(aclk),
        .CE(1'b1),
        .D(read_burst_tick_i_1_n_0),
        .Q(read_burst_tick_reg_0),
        .R(m_axi_arvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    read_busy_INST_0
       (.I0(read_state[0]),
        .I1(read_state[1]),
        .I2(read_state[2]),
        .O(read_busy));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[0]_i_1 
       (.I0(m_axi_araddr[0]),
        .I1(read_base_address[0]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[10]_i_1 
       (.I0(m_axi_araddr[10]),
        .I1(read_base_address[10]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[11]_i_1 
       (.I0(m_axi_araddr[11]),
        .I1(read_base_address[11]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[12]_i_1 
       (.I0(m_axi_araddr[12]),
        .I1(read_base_address[12]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[13]_i_1 
       (.I0(m_axi_araddr[13]),
        .I1(read_base_address[13]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[14]_i_1 
       (.I0(m_axi_araddr[14]),
        .I1(read_base_address[14]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[15]_i_1 
       (.I0(m_axi_araddr[15]),
        .I1(read_base_address[15]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[16]_i_1 
       (.I0(m_axi_araddr[16]),
        .I1(read_base_address[16]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[17]_i_1 
       (.I0(m_axi_araddr[17]),
        .I1(read_base_address[17]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[18]_i_1 
       (.I0(m_axi_araddr[18]),
        .I1(read_base_address[18]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[19]_i_1 
       (.I0(m_axi_araddr[19]),
        .I1(read_base_address[19]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[1]_i_1 
       (.I0(m_axi_araddr[1]),
        .I1(read_base_address[1]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[20]_i_1 
       (.I0(m_axi_araddr[20]),
        .I1(read_base_address[20]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[21]_i_1 
       (.I0(m_axi_araddr[21]),
        .I1(read_base_address[21]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[22]_i_1 
       (.I0(m_axi_araddr[22]),
        .I1(read_base_address[22]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[23]_i_1 
       (.I0(m_axi_araddr[23]),
        .I1(read_base_address[23]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[24]_i_1 
       (.I0(m_axi_araddr[24]),
        .I1(read_base_address[24]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[25]_i_1 
       (.I0(m_axi_araddr[25]),
        .I1(read_base_address[25]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[26]_i_1 
       (.I0(m_axi_araddr[26]),
        .I1(read_base_address[26]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[27]_i_1 
       (.I0(m_axi_araddr[27]),
        .I1(read_base_address[27]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[28]_i_1 
       (.I0(m_axi_araddr[28]),
        .I1(read_base_address[28]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[29]_i_1 
       (.I0(m_axi_araddr[29]),
        .I1(read_base_address[29]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[2]_i_1 
       (.I0(m_axi_araddr[2]),
        .I1(read_base_address[2]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[30]_i_1 
       (.I0(m_axi_araddr[30]),
        .I1(read_base_address[30]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h555555555555F777)) 
    \read_current_burst_address[31]_i_1 
       (.I0(aresetn),
        .I1(read_state[0]),
        .I2(tx_fifo_has_space),
        .I3(\read_ddr_occupation_reg[30]_0 ),
        .I4(read_state[1]),
        .I5(read_state[2]),
        .O(\read_current_burst_address[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[31]_i_2 
       (.I0(m_axi_araddr[31]),
        .I1(read_base_address[31]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[3]_i_1 
       (.I0(m_axi_araddr[3]),
        .I1(read_base_address[3]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[4]_i_1 
       (.I0(m_axi_araddr[4]),
        .I1(read_base_address[4]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[5]_i_1 
       (.I0(m_axi_araddr[5]),
        .I1(read_base_address[5]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[6]_i_1 
       (.I0(m_axi_araddr[6]),
        .I1(read_base_address[6]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[7]_i_1 
       (.I0(m_axi_araddr[7]),
        .I1(read_base_address[7]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[8]_i_1 
       (.I0(m_axi_araddr[8]),
        .I1(read_base_address[8]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \read_current_burst_address[9]_i_1 
       (.I0(m_axi_araddr[9]),
        .I1(read_base_address[9]),
        .I2(read_state[0]),
        .I3(read_state[2]),
        .I4(aresetn),
        .O(\read_current_burst_address[9]_i_1_n_0 ));
  FDRE \read_current_burst_address_reg[0] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[0]_i_1_n_0 ),
        .Q(read_current_burst_address[0]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[10] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[10]_i_1_n_0 ),
        .Q(read_current_burst_address[10]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[11] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[11]_i_1_n_0 ),
        .Q(read_current_burst_address[11]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[12] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[12]_i_1_n_0 ),
        .Q(read_current_burst_address[12]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[13] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[13]_i_1_n_0 ),
        .Q(read_current_burst_address[13]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[14] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[14]_i_1_n_0 ),
        .Q(read_current_burst_address[14]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[15] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[15]_i_1_n_0 ),
        .Q(read_current_burst_address[15]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[16] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[16]_i_1_n_0 ),
        .Q(read_current_burst_address[16]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[17] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[17]_i_1_n_0 ),
        .Q(read_current_burst_address[17]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[18] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[18]_i_1_n_0 ),
        .Q(read_current_burst_address[18]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[19] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[19]_i_1_n_0 ),
        .Q(read_current_burst_address[19]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[1] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[1]_i_1_n_0 ),
        .Q(read_current_burst_address[1]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[20] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[20]_i_1_n_0 ),
        .Q(read_current_burst_address[20]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[21] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[21]_i_1_n_0 ),
        .Q(read_current_burst_address[21]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[22] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[22]_i_1_n_0 ),
        .Q(read_current_burst_address[22]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[23] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[23]_i_1_n_0 ),
        .Q(read_current_burst_address[23]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[24] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[24]_i_1_n_0 ),
        .Q(read_current_burst_address[24]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[25] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[25]_i_1_n_0 ),
        .Q(read_current_burst_address[25]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[26] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[26]_i_1_n_0 ),
        .Q(read_current_burst_address[26]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[27] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[27]_i_1_n_0 ),
        .Q(read_current_burst_address[27]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[28] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[28]_i_1_n_0 ),
        .Q(read_current_burst_address[28]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[29] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[29]_i_1_n_0 ),
        .Q(read_current_burst_address[29]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[2] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[2]_i_1_n_0 ),
        .Q(read_current_burst_address[2]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[30] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[30]_i_1_n_0 ),
        .Q(read_current_burst_address[30]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[31] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[31]_i_2_n_0 ),
        .Q(read_current_burst_address[31]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[3] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[3]_i_1_n_0 ),
        .Q(read_current_burst_address[3]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[4] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[4]_i_1_n_0 ),
        .Q(read_current_burst_address[4]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[5] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[5]_i_1_n_0 ),
        .Q(read_current_burst_address[5]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[6] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[6]_i_1_n_0 ),
        .Q(read_current_burst_address[6]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[7] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[7]_i_1_n_0 ),
        .Q(read_current_burst_address[7]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[8] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[8]_i_1_n_0 ),
        .Q(read_current_burst_address[8]),
        .R(1'b0));
  FDRE \read_current_burst_address_reg[9] 
       (.C(aclk),
        .CE(\read_current_burst_address[31]_i_1_n_0 ),
        .D(\read_current_burst_address[9]_i_1_n_0 ),
        .Q(read_current_burst_address[9]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 read_ddr_full_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({read_ddr_full_carry_n_0,read_ddr_full_carry_n_1,read_ddr_full_carry_n_2,read_ddr_full_carry_n_3,read_ddr_full_carry_n_4,read_ddr_full_carry_n_5,read_ddr_full_carry_n_6,read_ddr_full_carry_n_7}),
        .DI({read_ddr_full_carry_i_1_n_0,read_ddr_full_carry_i_2_n_0,read_ddr_full_carry_i_3_n_0,read_ddr_full_carry_i_4_n_0,read_ddr_full_carry_i_5_n_0,read_ddr_full_carry_i_6_n_0,read_ddr_full_carry_i_7_n_0,read_ddr_full_carry_i_8_n_0}),
        .O(NLW_read_ddr_full_carry_O_UNCONNECTED[7:0]),
        .S({read_ddr_full_carry_i_9_n_0,read_ddr_full_carry_i_10_n_0,read_ddr_full_carry_i_11_n_0,read_ddr_full_carry_i_12_n_0,read_ddr_full_carry_i_13_n_0,read_ddr_full_carry_i_14_n_0,read_ddr_full_carry_i_15_n_0,read_ddr_full_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 read_ddr_full_carry__0
       (.CI(read_ddr_full_carry_n_0),
        .CI_TOP(1'b0),
        .CO({ila_read_ddr_full,read_ddr_full_carry__0_n_1,read_ddr_full_carry__0_n_2,read_ddr_full_carry__0_n_3,read_ddr_full_carry__0_n_4,read_ddr_full_carry__0_n_5,read_ddr_full_carry__0_n_6,read_ddr_full_carry__0_n_7}),
        .DI({read_ddr_full_carry__0_i_1_n_0,read_ddr_full_carry__0_i_2_n_0,read_ddr_full_carry__0_i_3_n_0,read_ddr_full_carry__0_i_4_n_0,read_ddr_full_carry__0_i_5_n_0,read_ddr_full_carry__0_i_6_n_0,read_ddr_full_carry__0_i_7_n_0,read_ddr_full_carry__0_i_8_n_0}),
        .O(NLW_read_ddr_full_carry__0_O_UNCONNECTED[7:0]),
        .S({read_ddr_full_carry__0_i_9_n_0,read_ddr_full_carry__0_i_10_n_0,read_ddr_full_carry__0_i_11_n_0,read_ddr_full_carry__0_i_12_n_0,read_ddr_full_carry__0_i_13_n_0,read_ddr_full_carry__0_i_14_n_0,read_ddr_full_carry__0_i_15_n_0,read_ddr_full_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry__0_i_1
       (.I0(Q[31]),
        .I1(read_ddr_size[31]),
        .I2(Q[30]),
        .I3(read_ddr_size[30]),
        .O(read_ddr_full_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry__0_i_10
       (.I0(read_ddr_size[29]),
        .I1(Q[29]),
        .I2(read_ddr_size[28]),
        .I3(Q[28]),
        .O(read_ddr_full_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry__0_i_11
       (.I0(read_ddr_size[27]),
        .I1(Q[27]),
        .I2(read_ddr_size[26]),
        .I3(Q[26]),
        .O(read_ddr_full_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry__0_i_12
       (.I0(read_ddr_size[25]),
        .I1(Q[25]),
        .I2(read_ddr_size[24]),
        .I3(Q[24]),
        .O(read_ddr_full_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry__0_i_13
       (.I0(read_ddr_size[23]),
        .I1(Q[23]),
        .I2(read_ddr_size[22]),
        .I3(Q[22]),
        .O(read_ddr_full_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry__0_i_14
       (.I0(read_ddr_size[21]),
        .I1(Q[21]),
        .I2(read_ddr_size[20]),
        .I3(Q[20]),
        .O(read_ddr_full_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry__0_i_15
       (.I0(read_ddr_size[19]),
        .I1(Q[19]),
        .I2(read_ddr_size[18]),
        .I3(Q[18]),
        .O(read_ddr_full_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry__0_i_16
       (.I0(read_ddr_size[17]),
        .I1(Q[17]),
        .I2(read_ddr_size[16]),
        .I3(Q[16]),
        .O(read_ddr_full_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry__0_i_2
       (.I0(Q[29]),
        .I1(read_ddr_size[29]),
        .I2(Q[28]),
        .I3(read_ddr_size[28]),
        .O(read_ddr_full_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry__0_i_3
       (.I0(Q[27]),
        .I1(read_ddr_size[27]),
        .I2(Q[26]),
        .I3(read_ddr_size[26]),
        .O(read_ddr_full_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry__0_i_4
       (.I0(Q[25]),
        .I1(read_ddr_size[25]),
        .I2(Q[24]),
        .I3(read_ddr_size[24]),
        .O(read_ddr_full_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry__0_i_5
       (.I0(Q[23]),
        .I1(read_ddr_size[23]),
        .I2(Q[22]),
        .I3(read_ddr_size[22]),
        .O(read_ddr_full_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry__0_i_6
       (.I0(Q[21]),
        .I1(read_ddr_size[21]),
        .I2(Q[20]),
        .I3(read_ddr_size[20]),
        .O(read_ddr_full_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry__0_i_7
       (.I0(Q[19]),
        .I1(read_ddr_size[19]),
        .I2(Q[18]),
        .I3(read_ddr_size[18]),
        .O(read_ddr_full_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry__0_i_8
       (.I0(Q[17]),
        .I1(read_ddr_size[17]),
        .I2(Q[16]),
        .I3(read_ddr_size[16]),
        .O(read_ddr_full_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry__0_i_9
       (.I0(read_ddr_size[31]),
        .I1(Q[31]),
        .I2(read_ddr_size[30]),
        .I3(Q[30]),
        .O(read_ddr_full_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry_i_1
       (.I0(Q[15]),
        .I1(read_ddr_size[15]),
        .I2(Q[14]),
        .I3(read_ddr_size[14]),
        .O(read_ddr_full_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry_i_10
       (.I0(read_ddr_size[13]),
        .I1(Q[13]),
        .I2(read_ddr_size[12]),
        .I3(Q[12]),
        .O(read_ddr_full_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry_i_11
       (.I0(read_ddr_size[11]),
        .I1(Q[11]),
        .I2(read_ddr_size[10]),
        .I3(Q[10]),
        .O(read_ddr_full_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry_i_12
       (.I0(read_ddr_size[9]),
        .I1(Q[9]),
        .I2(read_ddr_size[8]),
        .I3(Q[8]),
        .O(read_ddr_full_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry_i_13
       (.I0(read_ddr_size[7]),
        .I1(Q[7]),
        .I2(read_ddr_size[6]),
        .I3(Q[6]),
        .O(read_ddr_full_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry_i_14
       (.I0(read_ddr_size[5]),
        .I1(Q[5]),
        .I2(read_ddr_size[4]),
        .I3(Q[4]),
        .O(read_ddr_full_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry_i_15
       (.I0(read_ddr_size[3]),
        .I1(Q[3]),
        .I2(read_ddr_size[2]),
        .I3(Q[2]),
        .O(read_ddr_full_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry_i_16
       (.I0(read_ddr_size[1]),
        .I1(Q[1]),
        .I2(read_ddr_size[0]),
        .I3(Q[0]),
        .O(read_ddr_full_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry_i_2
       (.I0(Q[13]),
        .I1(read_ddr_size[13]),
        .I2(Q[12]),
        .I3(read_ddr_size[12]),
        .O(read_ddr_full_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry_i_3
       (.I0(Q[11]),
        .I1(read_ddr_size[11]),
        .I2(Q[10]),
        .I3(read_ddr_size[10]),
        .O(read_ddr_full_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry_i_4
       (.I0(Q[9]),
        .I1(read_ddr_size[9]),
        .I2(Q[8]),
        .I3(read_ddr_size[8]),
        .O(read_ddr_full_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry_i_5
       (.I0(Q[7]),
        .I1(read_ddr_size[7]),
        .I2(Q[6]),
        .I3(read_ddr_size[6]),
        .O(read_ddr_full_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry_i_6
       (.I0(Q[5]),
        .I1(read_ddr_size[5]),
        .I2(Q[4]),
        .I3(read_ddr_size[4]),
        .O(read_ddr_full_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry_i_7
       (.I0(Q[3]),
        .I1(read_ddr_size[3]),
        .I2(Q[2]),
        .I3(read_ddr_size[2]),
        .O(read_ddr_full_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_ddr_full_carry_i_8
       (.I0(Q[1]),
        .I1(read_ddr_size[1]),
        .I2(Q[0]),
        .I3(read_ddr_size[0]),
        .O(read_ddr_full_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_ddr_full_carry_i_9
       (.I0(read_ddr_size[15]),
        .I1(Q[15]),
        .I2(read_ddr_size[14]),
        .I3(Q[14]),
        .O(read_ddr_full_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \read_ddr_occupation0_inferred__0/i__carry 
       (.CI(Q[0]),
        .CI_TOP(1'b0),
        .CO({\read_ddr_occupation0_inferred__0/i__carry_n_0 ,\read_ddr_occupation0_inferred__0/i__carry_n_1 ,\read_ddr_occupation0_inferred__0/i__carry_n_2 ,\read_ddr_occupation0_inferred__0/i__carry_n_3 ,\read_ddr_occupation0_inferred__0/i__carry_n_4 ,\read_ddr_occupation0_inferred__0/i__carry_n_5 ,\read_ddr_occupation0_inferred__0/i__carry_n_6 ,\read_ddr_occupation0_inferred__0/i__carry_n_7 }),
        .DI({Q[7:1],read_ddr_occupation114_out}),
        .O(read_ddr_occupation[7:0]),
        .S({i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0,i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0,i__carry_i_9__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \read_ddr_occupation0_inferred__0/i__carry__0 
       (.CI(\read_ddr_occupation0_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\read_ddr_occupation0_inferred__0/i__carry__0_n_0 ,\read_ddr_occupation0_inferred__0/i__carry__0_n_1 ,\read_ddr_occupation0_inferred__0/i__carry__0_n_2 ,\read_ddr_occupation0_inferred__0/i__carry__0_n_3 ,\read_ddr_occupation0_inferred__0/i__carry__0_n_4 ,\read_ddr_occupation0_inferred__0/i__carry__0_n_5 ,\read_ddr_occupation0_inferred__0/i__carry__0_n_6 ,\read_ddr_occupation0_inferred__0/i__carry__0_n_7 }),
        .DI(Q[15:8]),
        .O(read_ddr_occupation[15:8]),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0,i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \read_ddr_occupation0_inferred__0/i__carry__1 
       (.CI(\read_ddr_occupation0_inferred__0/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\read_ddr_occupation0_inferred__0/i__carry__1_n_0 ,\read_ddr_occupation0_inferred__0/i__carry__1_n_1 ,\read_ddr_occupation0_inferred__0/i__carry__1_n_2 ,\read_ddr_occupation0_inferred__0/i__carry__1_n_3 ,\read_ddr_occupation0_inferred__0/i__carry__1_n_4 ,\read_ddr_occupation0_inferred__0/i__carry__1_n_5 ,\read_ddr_occupation0_inferred__0/i__carry__1_n_6 ,\read_ddr_occupation0_inferred__0/i__carry__1_n_7 }),
        .DI({Q[22:17],i__carry__1_i_1__0_n_0,Q[16]}),
        .O(read_ddr_occupation[23:16]),
        .S({i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0,i__carry__1_i_5__0_n_0,i__carry__1_i_6__0_n_0,i__carry__1_i_7__0_n_0,i__carry__1_i_8_n_0,i__carry__1_i_9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \read_ddr_occupation0_inferred__0/i__carry__2 
       (.CI(\read_ddr_occupation0_inferred__0/i__carry__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_read_ddr_occupation0_inferred__0/i__carry__2_CO_UNCONNECTED [7],\read_ddr_occupation0_inferred__0/i__carry__2_n_1 ,\read_ddr_occupation0_inferred__0/i__carry__2_n_2 ,\read_ddr_occupation0_inferred__0/i__carry__2_n_3 ,\read_ddr_occupation0_inferred__0/i__carry__2_n_4 ,\read_ddr_occupation0_inferred__0/i__carry__2_n_5 ,\read_ddr_occupation0_inferred__0/i__carry__2_n_6 ,\read_ddr_occupation0_inferred__0/i__carry__2_n_7 }),
        .DI({1'b0,Q[29:23]}),
        .O(read_ddr_occupation[31:24]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0,i__carry__2_i_5__0_n_0,i__carry__2_i_6__0_n_0,i__carry__2_i_7__0_n_0,i__carry__2_i_8__0_n_0}));
  LUT5 #(
    .INIT(32'h4400F400)) 
    \read_ddr_occupation[31]_i_1 
       (.I0(ila_read_access_tick_ack),
        .I1(read_access_tick),
        .I2(read_ddr_occupation2),
        .I3(read_burst_tick_reg_0),
        .I4(read_burst_tick_ack_reg_0),
        .O(\read_ddr_occupation[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \read_ddr_occupation[31]_i_10 
       (.I0(Q[18]),
        .I1(Q[19]),
        .O(\read_ddr_occupation[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \read_ddr_occupation[31]_i_11 
       (.I0(Q[16]),
        .I1(Q[17]),
        .O(\read_ddr_occupation[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \read_ddr_occupation[31]_i_12 
       (.I0(Q[31]),
        .I1(Q[30]),
        .O(\read_ddr_occupation[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \read_ddr_occupation[31]_i_13 
       (.I0(Q[29]),
        .I1(Q[28]),
        .O(\read_ddr_occupation[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \read_ddr_occupation[31]_i_14 
       (.I0(Q[27]),
        .I1(Q[26]),
        .O(\read_ddr_occupation[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \read_ddr_occupation[31]_i_15 
       (.I0(Q[25]),
        .I1(Q[24]),
        .O(\read_ddr_occupation[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \read_ddr_occupation[31]_i_16 
       (.I0(Q[23]),
        .I1(Q[22]),
        .O(\read_ddr_occupation[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \read_ddr_occupation[31]_i_17 
       (.I0(Q[21]),
        .I1(Q[20]),
        .O(\read_ddr_occupation[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \read_ddr_occupation[31]_i_18 
       (.I0(Q[19]),
        .I1(Q[18]),
        .O(\read_ddr_occupation[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \read_ddr_occupation[31]_i_19 
       (.I0(Q[17]),
        .I1(Q[16]),
        .O(\read_ddr_occupation[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \read_ddr_occupation[31]_i_20 
       (.I0(Q[14]),
        .I1(Q[15]),
        .O(\read_ddr_occupation[31]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \read_ddr_occupation[31]_i_21 
       (.I0(read_burst_len[8]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(\read_ddr_occupation[31]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \read_ddr_occupation[31]_i_22 
       (.I0(Q[11]),
        .I1(read_burst_len[7]),
        .I2(Q[10]),
        .I3(read_burst_len[6]),
        .O(\read_ddr_occupation[31]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \read_ddr_occupation[31]_i_23 
       (.I0(Q[9]),
        .I1(read_burst_len[5]),
        .I2(Q[8]),
        .I3(read_burst_len[4]),
        .O(\read_ddr_occupation[31]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \read_ddr_occupation[31]_i_24 
       (.I0(Q[7]),
        .I1(read_burst_len[3]),
        .I2(Q[6]),
        .I3(read_burst_len[2]),
        .O(\read_ddr_occupation[31]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h50D4)) 
    \read_ddr_occupation[31]_i_25 
       (.I0(read_burst_len[1]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(read_burst_len[0]),
        .O(\read_ddr_occupation[31]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \read_ddr_occupation[31]_i_26 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\read_ddr_occupation[31]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \read_ddr_occupation[31]_i_27 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\read_ddr_occupation[31]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \read_ddr_occupation[31]_i_28 
       (.I0(Q[15]),
        .I1(Q[14]),
        .O(\read_ddr_occupation[31]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \read_ddr_occupation[31]_i_29 
       (.I0(read_burst_len[8]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(\read_ddr_occupation[31]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \read_ddr_occupation[31]_i_30 
       (.I0(Q[10]),
        .I1(read_burst_len[6]),
        .I2(read_burst_len[7]),
        .I3(Q[11]),
        .O(\read_ddr_occupation[31]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \read_ddr_occupation[31]_i_31 
       (.I0(Q[8]),
        .I1(read_burst_len[4]),
        .I2(read_burst_len[5]),
        .I3(Q[9]),
        .O(\read_ddr_occupation[31]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \read_ddr_occupation[31]_i_32 
       (.I0(Q[6]),
        .I1(read_burst_len[2]),
        .I2(read_burst_len[3]),
        .I3(Q[7]),
        .O(\read_ddr_occupation[31]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \read_ddr_occupation[31]_i_33 
       (.I0(Q[4]),
        .I1(read_burst_len[0]),
        .I2(Q[5]),
        .I3(read_burst_len[1]),
        .O(\read_ddr_occupation[31]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \read_ddr_occupation[31]_i_34 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\read_ddr_occupation[31]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \read_ddr_occupation[31]_i_35 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\read_ddr_occupation[31]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \read_ddr_occupation[31]_i_4 
       (.I0(Q[30]),
        .I1(Q[31]),
        .O(\read_ddr_occupation[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \read_ddr_occupation[31]_i_5 
       (.I0(Q[28]),
        .I1(Q[29]),
        .O(\read_ddr_occupation[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \read_ddr_occupation[31]_i_6 
       (.I0(Q[26]),
        .I1(Q[27]),
        .O(\read_ddr_occupation[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \read_ddr_occupation[31]_i_7 
       (.I0(Q[24]),
        .I1(Q[25]),
        .O(\read_ddr_occupation[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \read_ddr_occupation[31]_i_8 
       (.I0(Q[22]),
        .I1(Q[23]),
        .O(\read_ddr_occupation[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \read_ddr_occupation[31]_i_9 
       (.I0(Q[20]),
        .I1(Q[21]),
        .O(\read_ddr_occupation[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[0] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[0]),
        .Q(Q[0]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[10] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[10]),
        .Q(Q[10]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[11] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[11]),
        .Q(Q[11]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[12] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[12]),
        .Q(Q[12]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[13] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[13]),
        .Q(Q[13]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[14] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[14]),
        .Q(Q[14]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[15] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[15]),
        .Q(Q[15]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[16] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[16]),
        .Q(Q[16]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[17] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[17]),
        .Q(Q[17]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[18] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[18]),
        .Q(Q[18]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[19] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[19]),
        .Q(Q[19]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[1] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[1]),
        .Q(Q[1]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[20] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[20]),
        .Q(Q[20]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[21] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[21]),
        .Q(Q[21]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[22] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[22]),
        .Q(Q[22]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[23] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[23]),
        .Q(Q[23]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[24] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[24]),
        .Q(Q[24]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[25] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[25]),
        .Q(Q[25]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[26] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[26]),
        .Q(Q[26]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[27] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[27]),
        .Q(Q[27]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[28] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[28]),
        .Q(Q[28]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[29] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[29]),
        .Q(Q[29]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[2] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[2]),
        .Q(Q[2]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[30] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[30]),
        .Q(Q[30]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[31] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[31]),
        .Q(Q[31]),
        .R(m_axi_arvalid_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \read_ddr_occupation_reg[31]_i_2 
       (.CI(\read_ddr_occupation_reg[31]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({read_ddr_occupation2,\read_ddr_occupation_reg[31]_i_2_n_1 ,\read_ddr_occupation_reg[31]_i_2_n_2 ,\read_ddr_occupation_reg[31]_i_2_n_3 ,\read_ddr_occupation_reg[31]_i_2_n_4 ,\read_ddr_occupation_reg[31]_i_2_n_5 ,\read_ddr_occupation_reg[31]_i_2_n_6 ,\read_ddr_occupation_reg[31]_i_2_n_7 }),
        .DI({\read_ddr_occupation[31]_i_4_n_0 ,\read_ddr_occupation[31]_i_5_n_0 ,\read_ddr_occupation[31]_i_6_n_0 ,\read_ddr_occupation[31]_i_7_n_0 ,\read_ddr_occupation[31]_i_8_n_0 ,\read_ddr_occupation[31]_i_9_n_0 ,\read_ddr_occupation[31]_i_10_n_0 ,\read_ddr_occupation[31]_i_11_n_0 }),
        .O(\NLW_read_ddr_occupation_reg[31]_i_2_O_UNCONNECTED [7:0]),
        .S({\read_ddr_occupation[31]_i_12_n_0 ,\read_ddr_occupation[31]_i_13_n_0 ,\read_ddr_occupation[31]_i_14_n_0 ,\read_ddr_occupation[31]_i_15_n_0 ,\read_ddr_occupation[31]_i_16_n_0 ,\read_ddr_occupation[31]_i_17_n_0 ,\read_ddr_occupation[31]_i_18_n_0 ,\read_ddr_occupation[31]_i_19_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \read_ddr_occupation_reg[31]_i_3 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\read_ddr_occupation_reg[31]_i_3_n_0 ,\read_ddr_occupation_reg[31]_i_3_n_1 ,\read_ddr_occupation_reg[31]_i_3_n_2 ,\read_ddr_occupation_reg[31]_i_3_n_3 ,\read_ddr_occupation_reg[31]_i_3_n_4 ,\read_ddr_occupation_reg[31]_i_3_n_5 ,\read_ddr_occupation_reg[31]_i_3_n_6 ,\read_ddr_occupation_reg[31]_i_3_n_7 }),
        .DI({\read_ddr_occupation[31]_i_20_n_0 ,\read_ddr_occupation[31]_i_21_n_0 ,\read_ddr_occupation[31]_i_22_n_0 ,\read_ddr_occupation[31]_i_23_n_0 ,\read_ddr_occupation[31]_i_24_n_0 ,\read_ddr_occupation[31]_i_25_n_0 ,\read_ddr_occupation[31]_i_26_n_0 ,\read_ddr_occupation[31]_i_27_n_0 }),
        .O(\NLW_read_ddr_occupation_reg[31]_i_3_O_UNCONNECTED [7:0]),
        .S({\read_ddr_occupation[31]_i_28_n_0 ,\read_ddr_occupation[31]_i_29_n_0 ,\read_ddr_occupation[31]_i_30_n_0 ,\read_ddr_occupation[31]_i_31_n_0 ,\read_ddr_occupation[31]_i_32_n_0 ,\read_ddr_occupation[31]_i_33_n_0 ,\read_ddr_occupation[31]_i_34_n_0 ,\read_ddr_occupation[31]_i_35_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[3] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[3]),
        .Q(Q[3]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[4] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[4]),
        .Q(Q[4]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[5] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[5]),
        .Q(Q[5]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[6] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[6]),
        .Q(Q[6]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[7] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[7]),
        .Q(Q[7]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[8] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[8]),
        .Q(Q[8]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_ddr_occupation_reg[9] 
       (.C(aclk),
        .CE(\read_ddr_occupation[31]_i_1_n_0 ),
        .D(read_ddr_occupation[9]),
        .Q(Q[9]),
        .R(m_axi_arvalid_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 read_index1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_read_index1_carry_CO_UNCONNECTED[7:5],read_index1,read_index1_carry_n_4,read_index1_carry_n_5,read_index1_carry_n_6,read_index1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,read_index1_carry_i_1_n_0,read_index1_carry_i_2_n_0,read_index1_carry_i_3_n_0,read_index1_carry_i_4_n_0}),
        .O(NLW_read_index1_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,read_index1_carry_i_5_n_0,read_index1_carry_i_6_n_0,read_index1_carry_i_7_n_0,read_index1_carry_i_8_n_0,read_index1_carry_i_9_n_0}));
  LUT5 #(
    .INIT(32'h00A981EB)) 
    read_index1_carry_i_1
       (.I0(read_burst_len[7]),
        .I1(read_index1_carry_i_10_n_0),
        .I2(read_burst_len[6]),
        .I3(\read_index_reg[8]_0 [7]),
        .I4(\read_index_reg[8]_0 [6]),
        .O(read_index1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    read_index1_carry_i_10
       (.I0(read_burst_len[4]),
        .I1(read_burst_len[2]),
        .I2(read_burst_len[1]),
        .I3(read_burst_len[0]),
        .I4(read_burst_len[3]),
        .I5(read_burst_len[5]),
        .O(read_index1_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h73311007)) 
    read_index1_carry_i_2
       (.I0(\read_index_reg[8]_0 [4]),
        .I1(\read_index_reg[8]_0 [5]),
        .I2(read_burst_len[4]),
        .I3(read_burst_len_2_sn_1),
        .I4(read_burst_len[5]),
        .O(read_index1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000FE01A801FFA9)) 
    read_index1_carry_i_3
       (.I0(read_burst_len[2]),
        .I1(read_burst_len[1]),
        .I2(read_burst_len[0]),
        .I3(read_burst_len[3]),
        .I4(\read_index_reg[8]_0 [3]),
        .I5(\read_index_reg[8]_0 [2]),
        .O(read_index1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h4153)) 
    read_index1_carry_i_4
       (.I0(\read_index_reg[8]_0 [1]),
        .I1(read_burst_len[0]),
        .I2(read_burst_len[1]),
        .I3(\read_index_reg[8]_0 [0]),
        .O(read_index1_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    read_index1_carry_i_5
       (.I0(\read_index_reg[8]_0 [8]),
        .O(read_index1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h90060990)) 
    read_index1_carry_i_6
       (.I0(\read_index_reg[8]_0 [7]),
        .I1(read_burst_len[7]),
        .I2(read_index1_carry_i_10_n_0),
        .I3(read_burst_len[6]),
        .I4(\read_index_reg[8]_0 [6]),
        .O(read_index1_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h81422814)) 
    read_index1_carry_i_7
       (.I0(read_burst_len[5]),
        .I1(read_burst_len_2_sn_1),
        .I2(read_burst_len[4]),
        .I3(\read_index_reg[8]_0 [5]),
        .I4(\read_index_reg[8]_0 [4]),
        .O(read_index1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h8881444222281114)) 
    read_index1_carry_i_8
       (.I0(\read_index_reg[8]_0 [3]),
        .I1(read_burst_len[2]),
        .I2(read_burst_len[1]),
        .I3(read_burst_len[0]),
        .I4(read_burst_len[3]),
        .I5(\read_index_reg[8]_0 [2]),
        .O(read_index1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h1284)) 
    read_index1_carry_i_9
       (.I0(\read_index_reg[8]_0 [1]),
        .I1(read_burst_len[0]),
        .I2(read_burst_len[1]),
        .I3(\read_index_reg[8]_0 [0]),
        .O(read_index1_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \read_index[0]_i_1 
       (.I0(read_state[2]),
        .I1(read_state[1]),
        .I2(read_state[0]),
        .I3(\read_index_reg[8]_0 [0]),
        .O(\read_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00080800)) 
    \read_index[1]_i_1 
       (.I0(read_state[0]),
        .I1(read_state[1]),
        .I2(read_state[2]),
        .I3(\read_index_reg[8]_0 [0]),
        .I4(\read_index_reg[8]_0 [1]),
        .O(\read_index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008080808000000)) 
    \read_index[2]_i_1 
       (.I0(read_state[0]),
        .I1(read_state[1]),
        .I2(read_state[2]),
        .I3(\read_index_reg[8]_0 [1]),
        .I4(\read_index_reg[8]_0 [0]),
        .I5(\read_index_reg[8]_0 [2]),
        .O(\read_index[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \read_index[3]_i_1 
       (.I0(\read_index[8]_i_4_n_0 ),
        .I1(\read_index_reg[8]_0 [0]),
        .I2(\read_index_reg[8]_0 [1]),
        .I3(\read_index_reg[8]_0 [2]),
        .I4(\read_index_reg[8]_0 [3]),
        .O(\read_index[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \read_index[4]_i_1 
       (.I0(\read_index_reg[8]_0 [0]),
        .I1(\read_index_reg[8]_0 [1]),
        .I2(\read_index_reg[8]_0 [2]),
        .I3(\read_index_reg[8]_0 [3]),
        .I4(\read_index[8]_i_4_n_0 ),
        .I5(\read_index_reg[8]_0 [4]),
        .O(\read_index[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h10002000)) 
    \read_index[5]_i_1 
       (.I0(\read_index[5]_i_2_n_0 ),
        .I1(read_state[2]),
        .I2(read_state[1]),
        .I3(read_state[0]),
        .I4(\read_index_reg[8]_0 [5]),
        .O(\read_index[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \read_index[5]_i_2 
       (.I0(\read_index_reg[8]_0 [4]),
        .I1(\read_index_reg[8]_0 [3]),
        .I2(\read_index_reg[8]_0 [2]),
        .I3(\read_index_reg[8]_0 [1]),
        .I4(\read_index_reg[8]_0 [0]),
        .O(\read_index[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h20001000)) 
    \read_index[6]_i_1 
       (.I0(\read_index[8]_i_3_n_0 ),
        .I1(read_state[2]),
        .I2(read_state[1]),
        .I3(read_state[0]),
        .I4(\read_index_reg[8]_0 [6]),
        .O(\read_index[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0D00000002000000)) 
    \read_index[7]_i_1 
       (.I0(\read_index_reg[8]_0 [6]),
        .I1(\read_index[8]_i_3_n_0 ),
        .I2(read_state[2]),
        .I3(read_state[1]),
        .I4(read_state[0]),
        .I5(\read_index_reg[8]_0 [7]),
        .O(\read_index[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF80FFFFFF)) 
    \read_index[8]_i_1 
       (.I0(m_axi_rvalid),
        .I1(m_axis_tx_tready),
        .I2(read_index1),
        .I3(read_state[1]),
        .I4(read_state[0]),
        .I5(read_state[2]),
        .O(read_index));
  LUT5 #(
    .INIT(32'hBF004000)) 
    \read_index[8]_i_2 
       (.I0(\read_index[8]_i_3_n_0 ),
        .I1(\read_index_reg[8]_0 [6]),
        .I2(\read_index_reg[8]_0 [7]),
        .I3(\read_index[8]_i_4_n_0 ),
        .I4(\read_index_reg[8]_0 [8]),
        .O(\read_index[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \read_index[8]_i_3 
       (.I0(\read_index_reg[8]_0 [0]),
        .I1(\read_index_reg[8]_0 [1]),
        .I2(\read_index_reg[8]_0 [2]),
        .I3(\read_index_reg[8]_0 [3]),
        .I4(\read_index_reg[8]_0 [4]),
        .I5(\read_index_reg[8]_0 [5]),
        .O(\read_index[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \read_index[8]_i_4 
       (.I0(read_state[0]),
        .I1(read_state[1]),
        .I2(read_state[2]),
        .O(\read_index[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \read_index_reg[0] 
       (.C(aclk),
        .CE(read_index),
        .D(\read_index[0]_i_1_n_0 ),
        .Q(\read_index_reg[8]_0 [0]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_index_reg[1] 
       (.C(aclk),
        .CE(read_index),
        .D(\read_index[1]_i_1_n_0 ),
        .Q(\read_index_reg[8]_0 [1]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_index_reg[2] 
       (.C(aclk),
        .CE(read_index),
        .D(\read_index[2]_i_1_n_0 ),
        .Q(\read_index_reg[8]_0 [2]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_index_reg[3] 
       (.C(aclk),
        .CE(read_index),
        .D(\read_index[3]_i_1_n_0 ),
        .Q(\read_index_reg[8]_0 [3]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_index_reg[4] 
       (.C(aclk),
        .CE(read_index),
        .D(\read_index[4]_i_1_n_0 ),
        .Q(\read_index_reg[8]_0 [4]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_index_reg[5] 
       (.C(aclk),
        .CE(read_index),
        .D(\read_index[5]_i_1_n_0 ),
        .Q(\read_index_reg[8]_0 [5]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_index_reg[6] 
       (.C(aclk),
        .CE(read_index),
        .D(\read_index[6]_i_1_n_0 ),
        .Q(\read_index_reg[8]_0 [6]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_index_reg[7] 
       (.C(aclk),
        .CE(read_index),
        .D(\read_index[7]_i_1_n_0 ),
        .Q(\read_index_reg[8]_0 [7]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_index_reg[8] 
       (.C(aclk),
        .CE(read_index),
        .D(\read_index[8]_i_2_n_0 ),
        .Q(\read_index_reg[8]_0 [8]),
        .R(m_axi_arvalid_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 read_state2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({read_state2_carry_n_0,read_state2_carry_n_1,read_state2_carry_n_2,read_state2_carry_n_3,read_state2_carry_n_4,read_state2_carry_n_5,read_state2_carry_n_6,read_state2_carry_n_7}),
        .DI({read_state2_carry_i_1_n_0,read_state2_carry_i_2_n_0,read_state2_carry_i_3_n_0,read_state2_carry_i_4_n_0,read_state2_carry_i_5_n_0,read_state2_carry_i_6_n_0,read_state2_carry_i_7_n_0,read_state2_carry_i_8_n_0}),
        .O(NLW_read_state2_carry_O_UNCONNECTED[7:0]),
        .S({read_state2_carry_i_9_n_0,read_state2_carry_i_10_n_0,read_state2_carry_i_11_n_0,read_state2_carry_i_12_n_0,read_state2_carry_i_13_n_0,read_state2_carry_i_14_n_0,read_state2_carry_i_15_n_0,read_state2_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 read_state2_carry__0
       (.CI(read_state2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({read_state212_in,read_state2_carry__0_n_1,read_state2_carry__0_n_2,read_state2_carry__0_n_3,read_state2_carry__0_n_4,read_state2_carry__0_n_5,read_state2_carry__0_n_6,read_state2_carry__0_n_7}),
        .DI({read_state2_carry__0_i_1_n_0,read_state2_carry__0_i_2_n_0,read_state2_carry__0_i_3_n_0,read_state2_carry__0_i_4_n_0,read_state2_carry__0_i_5_n_0,read_state2_carry__0_i_6_n_0,read_state2_carry__0_i_7_n_0,read_state2_carry__0_i_8_n_0}),
        .O(NLW_read_state2_carry__0_O_UNCONNECTED[7:0]),
        .S({read_state2_carry__0_i_9_n_0,read_state2_carry__0_i_10_n_0,read_state2_carry__0_i_11_n_0,read_state2_carry__0_i_12_n_0,read_state2_carry__0_i_13_n_0,read_state2_carry__0_i_14_n_0,read_state2_carry__0_i_15_n_0,read_state2_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry__0_i_1
       (.I0(read_burst_count[31]),
        .I1(\read_burst_counter_reg_n_0_[31] ),
        .I2(read_burst_count[30]),
        .I3(\read_burst_counter_reg_n_0_[30] ),
        .O(read_state2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry__0_i_10
       (.I0(\read_burst_counter_reg_n_0_[29] ),
        .I1(read_burst_count[29]),
        .I2(\read_burst_counter_reg_n_0_[28] ),
        .I3(read_burst_count[28]),
        .O(read_state2_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry__0_i_11
       (.I0(\read_burst_counter_reg_n_0_[27] ),
        .I1(read_burst_count[27]),
        .I2(\read_burst_counter_reg_n_0_[26] ),
        .I3(read_burst_count[26]),
        .O(read_state2_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry__0_i_12
       (.I0(\read_burst_counter_reg_n_0_[25] ),
        .I1(read_burst_count[25]),
        .I2(\read_burst_counter_reg_n_0_[24] ),
        .I3(read_burst_count[24]),
        .O(read_state2_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry__0_i_13
       (.I0(\read_burst_counter_reg_n_0_[23] ),
        .I1(read_burst_count[23]),
        .I2(\read_burst_counter_reg_n_0_[22] ),
        .I3(read_burst_count[22]),
        .O(read_state2_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry__0_i_14
       (.I0(\read_burst_counter_reg_n_0_[21] ),
        .I1(read_burst_count[21]),
        .I2(\read_burst_counter_reg_n_0_[20] ),
        .I3(read_burst_count[20]),
        .O(read_state2_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry__0_i_15
       (.I0(\read_burst_counter_reg_n_0_[19] ),
        .I1(read_burst_count[19]),
        .I2(\read_burst_counter_reg_n_0_[18] ),
        .I3(read_burst_count[18]),
        .O(read_state2_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry__0_i_16
       (.I0(\read_burst_counter_reg_n_0_[17] ),
        .I1(read_burst_count[17]),
        .I2(\read_burst_counter_reg_n_0_[16] ),
        .I3(read_burst_count[16]),
        .O(read_state2_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry__0_i_2
       (.I0(read_burst_count[29]),
        .I1(\read_burst_counter_reg_n_0_[29] ),
        .I2(read_burst_count[28]),
        .I3(\read_burst_counter_reg_n_0_[28] ),
        .O(read_state2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry__0_i_3
       (.I0(read_burst_count[27]),
        .I1(\read_burst_counter_reg_n_0_[27] ),
        .I2(read_burst_count[26]),
        .I3(\read_burst_counter_reg_n_0_[26] ),
        .O(read_state2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry__0_i_4
       (.I0(read_burst_count[25]),
        .I1(\read_burst_counter_reg_n_0_[25] ),
        .I2(read_burst_count[24]),
        .I3(\read_burst_counter_reg_n_0_[24] ),
        .O(read_state2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry__0_i_5
       (.I0(read_burst_count[23]),
        .I1(\read_burst_counter_reg_n_0_[23] ),
        .I2(read_burst_count[22]),
        .I3(\read_burst_counter_reg_n_0_[22] ),
        .O(read_state2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry__0_i_6
       (.I0(read_burst_count[21]),
        .I1(\read_burst_counter_reg_n_0_[21] ),
        .I2(read_burst_count[20]),
        .I3(\read_burst_counter_reg_n_0_[20] ),
        .O(read_state2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry__0_i_7
       (.I0(read_burst_count[19]),
        .I1(\read_burst_counter_reg_n_0_[19] ),
        .I2(read_burst_count[18]),
        .I3(\read_burst_counter_reg_n_0_[18] ),
        .O(read_state2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry__0_i_8
       (.I0(read_burst_count[17]),
        .I1(\read_burst_counter_reg_n_0_[17] ),
        .I2(read_burst_count[16]),
        .I3(\read_burst_counter_reg_n_0_[16] ),
        .O(read_state2_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry__0_i_9
       (.I0(\read_burst_counter_reg_n_0_[31] ),
        .I1(read_burst_count[31]),
        .I2(\read_burst_counter_reg_n_0_[30] ),
        .I3(read_burst_count[30]),
        .O(read_state2_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry_i_1
       (.I0(read_burst_count[15]),
        .I1(\read_burst_counter_reg_n_0_[15] ),
        .I2(read_burst_count[14]),
        .I3(\read_burst_counter_reg_n_0_[14] ),
        .O(read_state2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry_i_10
       (.I0(\read_burst_counter_reg_n_0_[13] ),
        .I1(read_burst_count[13]),
        .I2(\read_burst_counter_reg_n_0_[12] ),
        .I3(read_burst_count[12]),
        .O(read_state2_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry_i_11
       (.I0(\read_burst_counter_reg_n_0_[11] ),
        .I1(read_burst_count[11]),
        .I2(\read_burst_counter_reg_n_0_[10] ),
        .I3(read_burst_count[10]),
        .O(read_state2_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry_i_12
       (.I0(\read_burst_counter_reg_n_0_[9] ),
        .I1(read_burst_count[9]),
        .I2(\read_burst_counter_reg_n_0_[8] ),
        .I3(read_burst_count[8]),
        .O(read_state2_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry_i_13
       (.I0(\read_burst_counter_reg_n_0_[7] ),
        .I1(read_burst_count[7]),
        .I2(\read_burst_counter_reg_n_0_[6] ),
        .I3(read_burst_count[6]),
        .O(read_state2_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry_i_14
       (.I0(\read_burst_counter_reg_n_0_[5] ),
        .I1(read_burst_count[5]),
        .I2(\read_burst_counter_reg_n_0_[4] ),
        .I3(read_burst_count[4]),
        .O(read_state2_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry_i_15
       (.I0(\read_burst_counter_reg_n_0_[3] ),
        .I1(read_burst_count[3]),
        .I2(\read_burst_counter_reg_n_0_[2] ),
        .I3(read_burst_count[2]),
        .O(read_state2_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry_i_16
       (.I0(\read_burst_counter_reg_n_0_[1] ),
        .I1(read_burst_count[1]),
        .I2(\read_burst_counter_reg_n_0_[0] ),
        .I3(read_burst_count[0]),
        .O(read_state2_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry_i_2
       (.I0(read_burst_count[13]),
        .I1(\read_burst_counter_reg_n_0_[13] ),
        .I2(read_burst_count[12]),
        .I3(\read_burst_counter_reg_n_0_[12] ),
        .O(read_state2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry_i_3
       (.I0(read_burst_count[11]),
        .I1(\read_burst_counter_reg_n_0_[11] ),
        .I2(read_burst_count[10]),
        .I3(\read_burst_counter_reg_n_0_[10] ),
        .O(read_state2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry_i_4
       (.I0(read_burst_count[9]),
        .I1(\read_burst_counter_reg_n_0_[9] ),
        .I2(read_burst_count[8]),
        .I3(\read_burst_counter_reg_n_0_[8] ),
        .O(read_state2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry_i_5
       (.I0(read_burst_count[7]),
        .I1(\read_burst_counter_reg_n_0_[7] ),
        .I2(read_burst_count[6]),
        .I3(\read_burst_counter_reg_n_0_[6] ),
        .O(read_state2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry_i_6
       (.I0(read_burst_count[5]),
        .I1(\read_burst_counter_reg_n_0_[5] ),
        .I2(read_burst_count[4]),
        .I3(\read_burst_counter_reg_n_0_[4] ),
        .O(read_state2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry_i_7
       (.I0(read_burst_count[3]),
        .I1(\read_burst_counter_reg_n_0_[3] ),
        .I2(read_burst_count[2]),
        .I3(\read_burst_counter_reg_n_0_[2] ),
        .O(read_state2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    read_state2_carry_i_8
       (.I0(read_burst_count[1]),
        .I1(\read_burst_counter_reg_n_0_[1] ),
        .I2(read_burst_count[0]),
        .I3(\read_burst_counter_reg_n_0_[0] ),
        .O(read_state2_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_state2_carry_i_9
       (.I0(\read_burst_counter_reg_n_0_[15] ),
        .I1(read_burst_count[15]),
        .I2(\read_burst_counter_reg_n_0_[14] ),
        .I3(read_burst_count[14]),
        .O(read_state2_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 read_total_burst_count0_carry
       (.CI(read_total_burst_count[0]),
        .CI_TOP(1'b0),
        .CO({read_total_burst_count0_carry_n_0,read_total_burst_count0_carry_n_1,read_total_burst_count0_carry_n_2,read_total_burst_count0_carry_n_3,read_total_burst_count0_carry_n_4,read_total_burst_count0_carry_n_5,read_total_burst_count0_carry_n_6,read_total_burst_count0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in11[8:1]),
        .S(read_total_burst_count[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 read_total_burst_count0_carry__0
       (.CI(read_total_burst_count0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({read_total_burst_count0_carry__0_n_0,read_total_burst_count0_carry__0_n_1,read_total_burst_count0_carry__0_n_2,read_total_burst_count0_carry__0_n_3,read_total_burst_count0_carry__0_n_4,read_total_burst_count0_carry__0_n_5,read_total_burst_count0_carry__0_n_6,read_total_burst_count0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in11[16:9]),
        .S(read_total_burst_count[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 read_total_burst_count0_carry__1
       (.CI(read_total_burst_count0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({read_total_burst_count0_carry__1_n_0,read_total_burst_count0_carry__1_n_1,read_total_burst_count0_carry__1_n_2,read_total_burst_count0_carry__1_n_3,read_total_burst_count0_carry__1_n_4,read_total_burst_count0_carry__1_n_5,read_total_burst_count0_carry__1_n_6,read_total_burst_count0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in11[24:17]),
        .S(read_total_burst_count[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 read_total_burst_count0_carry__2
       (.CI(read_total_burst_count0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_read_total_burst_count0_carry__2_CO_UNCONNECTED[7:6],read_total_burst_count0_carry__2_n_2,read_total_burst_count0_carry__2_n_3,read_total_burst_count0_carry__2_n_4,read_total_burst_count0_carry__2_n_5,read_total_burst_count0_carry__2_n_6,read_total_burst_count0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_read_total_burst_count0_carry__2_O_UNCONNECTED[7],in11[31:25]}),
        .S({1'b0,read_total_burst_count[31:25]}));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \read_total_burst_count[0]_i_1 
       (.I0(read_state[1]),
        .I1(read_total_burst_count[0]),
        .O(\read_total_burst_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[10]_i_1 
       (.I0(read_state[1]),
        .I1(in11[10]),
        .O(\read_total_burst_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[11]_i_1 
       (.I0(read_state[1]),
        .I1(in11[11]),
        .O(\read_total_burst_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[12]_i_1 
       (.I0(read_state[1]),
        .I1(in11[12]),
        .O(\read_total_burst_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[13]_i_1 
       (.I0(read_state[1]),
        .I1(in11[13]),
        .O(\read_total_burst_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[14]_i_1 
       (.I0(read_state[1]),
        .I1(in11[14]),
        .O(\read_total_burst_count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[15]_i_1 
       (.I0(read_state[1]),
        .I1(in11[15]),
        .O(\read_total_burst_count[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[16]_i_1 
       (.I0(read_state[1]),
        .I1(in11[16]),
        .O(\read_total_burst_count[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[17]_i_1 
       (.I0(read_state[1]),
        .I1(in11[17]),
        .O(\read_total_burst_count[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[18]_i_1 
       (.I0(read_state[1]),
        .I1(in11[18]),
        .O(\read_total_burst_count[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[19]_i_1 
       (.I0(read_state[1]),
        .I1(in11[19]),
        .O(\read_total_burst_count[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[1]_i_1 
       (.I0(read_state[1]),
        .I1(in11[1]),
        .O(\read_total_burst_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[20]_i_1 
       (.I0(read_state[1]),
        .I1(in11[20]),
        .O(\read_total_burst_count[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[21]_i_1 
       (.I0(read_state[1]),
        .I1(in11[21]),
        .O(\read_total_burst_count[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[22]_i_1 
       (.I0(read_state[1]),
        .I1(in11[22]),
        .O(\read_total_burst_count[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[23]_i_1 
       (.I0(read_state[1]),
        .I1(in11[23]),
        .O(\read_total_burst_count[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[24]_i_1 
       (.I0(read_state[1]),
        .I1(in11[24]),
        .O(\read_total_burst_count[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[25]_i_1 
       (.I0(read_state[1]),
        .I1(in11[25]),
        .O(\read_total_burst_count[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[26]_i_1 
       (.I0(read_state[1]),
        .I1(in11[26]),
        .O(\read_total_burst_count[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[27]_i_1 
       (.I0(read_state[1]),
        .I1(in11[27]),
        .O(\read_total_burst_count[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[28]_i_1 
       (.I0(read_state[1]),
        .I1(in11[28]),
        .O(\read_total_burst_count[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[29]_i_1 
       (.I0(read_state[1]),
        .I1(in11[29]),
        .O(\read_total_burst_count[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[2]_i_1 
       (.I0(read_state[1]),
        .I1(in11[2]),
        .O(\read_total_burst_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[30]_i_1 
       (.I0(read_state[1]),
        .I1(in11[30]),
        .O(\read_total_burst_count[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000008800000F)) 
    \read_total_burst_count[31]_i_1 
       (.I0(m_axi_rlast),
        .I1(m_axi_rvalid_0),
        .I2(read_enable),
        .I3(read_state[0]),
        .I4(read_state[1]),
        .I5(read_state[2]),
        .O(\read_total_burst_count[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[31]_i_2 
       (.I0(read_state[1]),
        .I1(in11[31]),
        .O(\read_total_burst_count[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[3]_i_1 
       (.I0(read_state[1]),
        .I1(in11[3]),
        .O(\read_total_burst_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[4]_i_1 
       (.I0(read_state[1]),
        .I1(in11[4]),
        .O(\read_total_burst_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[5]_i_1 
       (.I0(read_state[1]),
        .I1(in11[5]),
        .O(\read_total_burst_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[6]_i_1 
       (.I0(read_state[1]),
        .I1(in11[6]),
        .O(\read_total_burst_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[7]_i_1 
       (.I0(read_state[1]),
        .I1(in11[7]),
        .O(\read_total_burst_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[8]_i_1 
       (.I0(read_state[1]),
        .I1(in11[8]),
        .O(\read_total_burst_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \read_total_burst_count[9]_i_1 
       (.I0(read_state[1]),
        .I1(in11[9]),
        .O(\read_total_burst_count[9]_i_1_n_0 ));
  FDRE \read_total_burst_count_reg[0] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[0]_i_1_n_0 ),
        .Q(read_total_burst_count[0]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[10] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[10]_i_1_n_0 ),
        .Q(read_total_burst_count[10]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[11] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[11]_i_1_n_0 ),
        .Q(read_total_burst_count[11]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[12] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[12]_i_1_n_0 ),
        .Q(read_total_burst_count[12]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[13] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[13]_i_1_n_0 ),
        .Q(read_total_burst_count[13]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[14] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[14]_i_1_n_0 ),
        .Q(read_total_burst_count[14]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[15] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[15]_i_1_n_0 ),
        .Q(read_total_burst_count[15]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[16] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[16]_i_1_n_0 ),
        .Q(read_total_burst_count[16]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[17] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[17]_i_1_n_0 ),
        .Q(read_total_burst_count[17]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[18] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[18]_i_1_n_0 ),
        .Q(read_total_burst_count[18]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[19] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[19]_i_1_n_0 ),
        .Q(read_total_burst_count[19]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[1] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[1]_i_1_n_0 ),
        .Q(read_total_burst_count[1]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[20] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[20]_i_1_n_0 ),
        .Q(read_total_burst_count[20]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[21] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[21]_i_1_n_0 ),
        .Q(read_total_burst_count[21]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[22] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[22]_i_1_n_0 ),
        .Q(read_total_burst_count[22]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[23] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[23]_i_1_n_0 ),
        .Q(read_total_burst_count[23]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[24] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[24]_i_1_n_0 ),
        .Q(read_total_burst_count[24]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[25] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[25]_i_1_n_0 ),
        .Q(read_total_burst_count[25]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[26] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[26]_i_1_n_0 ),
        .Q(read_total_burst_count[26]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[27] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[27]_i_1_n_0 ),
        .Q(read_total_burst_count[27]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[28] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[28]_i_1_n_0 ),
        .Q(read_total_burst_count[28]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[29] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[29]_i_1_n_0 ),
        .Q(read_total_burst_count[29]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[2] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[2]_i_1_n_0 ),
        .Q(read_total_burst_count[2]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[30] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[30]_i_1_n_0 ),
        .Q(read_total_burst_count[30]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[31] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[31]_i_2_n_0 ),
        .Q(read_total_burst_count[31]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[3] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[3]_i_1_n_0 ),
        .Q(read_total_burst_count[3]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[4] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[4]_i_1_n_0 ),
        .Q(read_total_burst_count[4]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[5] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[5]_i_1_n_0 ),
        .Q(read_total_burst_count[5]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[6] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[6]_i_1_n_0 ),
        .Q(read_total_burst_count[6]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[7] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[7]_i_1_n_0 ),
        .Q(read_total_burst_count[7]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[8] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[8]_i_1_n_0 ),
        .Q(read_total_burst_count[8]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_total_burst_count_reg[9] 
       (.C(aclk),
        .CE(\read_total_burst_count[31]_i_1_n_0 ),
        .D(\read_total_burst_count[9]_i_1_n_0 ),
        .Q(read_total_burst_count[9]),
        .R(m_axi_arvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \read_underflow_count[0]_i_1 
       (.I0(read_state[0]),
        .I1(\read_underflow_count_reg[7]_0 [0]),
        .O(\read_underflow_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \read_underflow_count[1]_i_1 
       (.I0(read_state[0]),
        .I1(\read_underflow_count_reg[7]_0 [0]),
        .I2(\read_underflow_count_reg[7]_0 [1]),
        .O(\read_underflow_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \read_underflow_count[2]_i_1 
       (.I0(\read_underflow_count_reg[7]_0 [1]),
        .I1(\read_underflow_count_reg[7]_0 [0]),
        .I2(read_state[0]),
        .I3(\read_underflow_count_reg[7]_0 [2]),
        .O(\read_underflow_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \read_underflow_count[3]_i_1 
       (.I0(\read_underflow_count_reg[7]_0 [2]),
        .I1(\read_underflow_count_reg[7]_0 [0]),
        .I2(\read_underflow_count_reg[7]_0 [1]),
        .I3(read_state[0]),
        .I4(\read_underflow_count_reg[7]_0 [3]),
        .O(\read_underflow_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \read_underflow_count[4]_i_1 
       (.I0(\read_underflow_count_reg[7]_0 [3]),
        .I1(\read_underflow_count_reg[7]_0 [1]),
        .I2(\read_underflow_count_reg[7]_0 [0]),
        .I3(\read_underflow_count_reg[7]_0 [2]),
        .I4(ila_read_state[0]),
        .I5(\read_underflow_count_reg[7]_0 [4]),
        .O(\read_underflow_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \read_underflow_count[5]_i_1 
       (.I0(\read_underflow_count[5]_i_2_n_0 ),
        .I1(read_state[0]),
        .I2(\read_underflow_count_reg[7]_0 [5]),
        .O(\read_underflow_count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \read_underflow_count[5]_i_2 
       (.I0(\read_underflow_count_reg[7]_0 [4]),
        .I1(\read_underflow_count_reg[7]_0 [2]),
        .I2(\read_underflow_count_reg[7]_0 [0]),
        .I3(\read_underflow_count_reg[7]_0 [1]),
        .I4(\read_underflow_count_reg[7]_0 [3]),
        .O(\read_underflow_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \read_underflow_count[6]_i_1 
       (.I0(\read_underflow_count[7]_i_3_n_0 ),
        .I1(read_state[0]),
        .I2(\read_underflow_count_reg[7]_0 [6]),
        .O(\read_underflow_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000880F)) 
    \read_underflow_count[7]_i_1 
       (.I0(read_underflow_ins1),
        .I1(tx_fifo_empty),
        .I2(read_enable),
        .I3(read_state[0]),
        .I4(read_state[1]),
        .I5(read_state[2]),
        .O(\read_underflow_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \read_underflow_count[7]_i_2 
       (.I0(\read_underflow_count[7]_i_3_n_0 ),
        .I1(\read_underflow_count_reg[7]_0 [6]),
        .I2(read_state[0]),
        .I3(\read_underflow_count_reg[7]_0 [7]),
        .O(\read_underflow_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \read_underflow_count[7]_i_3 
       (.I0(\read_underflow_count_reg[7]_0 [5]),
        .I1(\read_underflow_count_reg[7]_0 [3]),
        .I2(\read_underflow_count_reg[7]_0 [1]),
        .I3(\read_underflow_count_reg[7]_0 [0]),
        .I4(\read_underflow_count_reg[7]_0 [2]),
        .I5(\read_underflow_count_reg[7]_0 [4]),
        .O(\read_underflow_count[7]_i_3_n_0 ));
  FDRE \read_underflow_count_reg[0] 
       (.C(aclk),
        .CE(\read_underflow_count[7]_i_1_n_0 ),
        .D(\read_underflow_count[0]_i_1_n_0 ),
        .Q(\read_underflow_count_reg[7]_0 [0]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_underflow_count_reg[1] 
       (.C(aclk),
        .CE(\read_underflow_count[7]_i_1_n_0 ),
        .D(\read_underflow_count[1]_i_1_n_0 ),
        .Q(\read_underflow_count_reg[7]_0 [1]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_underflow_count_reg[2] 
       (.C(aclk),
        .CE(\read_underflow_count[7]_i_1_n_0 ),
        .D(\read_underflow_count[2]_i_1_n_0 ),
        .Q(\read_underflow_count_reg[7]_0 [2]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_underflow_count_reg[3] 
       (.C(aclk),
        .CE(\read_underflow_count[7]_i_1_n_0 ),
        .D(\read_underflow_count[3]_i_1_n_0 ),
        .Q(\read_underflow_count_reg[7]_0 [3]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_underflow_count_reg[4] 
       (.C(aclk),
        .CE(\read_underflow_count[7]_i_1_n_0 ),
        .D(\read_underflow_count[4]_i_1_n_0 ),
        .Q(\read_underflow_count_reg[7]_0 [4]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_underflow_count_reg[5] 
       (.C(aclk),
        .CE(\read_underflow_count[7]_i_1_n_0 ),
        .D(\read_underflow_count[5]_i_1_n_0 ),
        .Q(\read_underflow_count_reg[7]_0 [5]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_underflow_count_reg[6] 
       (.C(aclk),
        .CE(\read_underflow_count[7]_i_1_n_0 ),
        .D(\read_underflow_count[6]_i_1_n_0 ),
        .Q(\read_underflow_count_reg[7]_0 [6]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \read_underflow_count_reg[7] 
       (.C(aclk),
        .CE(\read_underflow_count[7]_i_1_n_0 ),
        .D(\read_underflow_count[7]_i_2_n_0 ),
        .Q(\read_underflow_count_reg[7]_0 [7]),
        .R(m_axi_arvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF0F80000000800)) 
    read_underflow_ins_i_1
       (.I0(tx_fifo_empty),
        .I1(read_underflow_ins1),
        .I2(read_state[2]),
        .I3(read_state[0]),
        .I4(read_state[1]),
        .I5(read_underflow_ins),
        .O(read_underflow_ins_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    read_underflow_ins_i_2
       (.I0(read_underflow_ins_i_3_n_0),
        .I1(read_underflow_ins_i_4_n_0),
        .I2(read_total_burst_count[26]),
        .I3(read_total_burst_count[25]),
        .I4(read_total_burst_count[24]),
        .I5(read_total_burst_count[23]),
        .O(read_underflow_ins1));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    read_underflow_ins_i_3
       (.I0(read_underflow_ins_i_5_n_0),
        .I1(read_total_burst_count[27]),
        .I2(read_total_burst_count[28]),
        .I3(read_total_burst_count[29]),
        .I4(read_total_burst_count[30]),
        .O(read_underflow_ins_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    read_underflow_ins_i_4
       (.I0(read_total_burst_count[18]),
        .I1(read_total_burst_count[17]),
        .I2(read_underflow_ins_i_6_n_0),
        .I3(read_underflow_ins_i_7_n_0),
        .I4(read_underflow_ins_i_8_n_0),
        .I5(read_underflow_ins_i_9_n_0),
        .O(read_underflow_ins_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    read_underflow_ins_i_5
       (.I0(read_total_burst_count[19]),
        .I1(read_total_burst_count[20]),
        .I2(read_total_burst_count[21]),
        .I3(read_total_burst_count[22]),
        .I4(read_total_burst_count[0]),
        .I5(read_total_burst_count[31]),
        .O(read_underflow_ins_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    read_underflow_ins_i_6
       (.I0(read_total_burst_count[8]),
        .I1(read_total_burst_count[7]),
        .I2(read_total_burst_count[6]),
        .I3(read_total_burst_count[5]),
        .O(read_underflow_ins_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    read_underflow_ins_i_7
       (.I0(read_total_burst_count[4]),
        .I1(read_total_burst_count[3]),
        .I2(read_total_burst_count[2]),
        .I3(read_total_burst_count[1]),
        .O(read_underflow_ins_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    read_underflow_ins_i_8
       (.I0(read_total_burst_count[16]),
        .I1(read_total_burst_count[15]),
        .I2(read_total_burst_count[14]),
        .I3(read_total_burst_count[13]),
        .O(read_underflow_ins_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    read_underflow_ins_i_9
       (.I0(read_total_burst_count[12]),
        .I1(read_total_burst_count[11]),
        .I2(read_total_burst_count[10]),
        .I3(read_total_burst_count[9]),
        .O(read_underflow_ins_i_9_n_0));
  FDRE read_underflow_ins_reg
       (.C(aclk),
        .CE(1'b1),
        .D(read_underflow_ins_i_1_n_0),
        .Q(read_underflow_ins),
        .R(m_axi_arvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    s_axis_rx_tready_INST_0
       (.I0(write_state__0[0]),
        .I1(write_state__0[1]),
        .I2(write_state__0[2]),
        .I3(m_axi_wready),
        .O(ila_rx_ready));
  LUT5 #(
    .INIT(32'hE0CCCCCC)) 
    write_access_tick_ack_i_1
       (.I0(write_ddr_occupation1),
        .I1(ila_write_access_tick_ack),
        .I2(write_access_tick),
        .I3(write_burst_tick_ack_reg_0),
        .I4(write_burst_tick),
        .O(write_access_tick_ack_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    write_access_tick_ack_reg
       (.C(aclk),
        .CE(1'b1),
        .D(write_access_tick_ack_i_1_n_0),
        .Q(ila_write_access_tick_ack),
        .R(m_axi_arvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_bresp[0]_i_1 
       (.I0(write_state__0[2]),
        .I1(m_axi_bresp[0]),
        .O(\write_bresp[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000B)) 
    \write_bresp[1]_i_1 
       (.I0(m_axi_bvalid),
        .I1(write_state__0[2]),
        .I2(write_state__0[1]),
        .I3(write_state__0[0]),
        .O(\write_bresp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_bresp[1]_i_2 
       (.I0(write_state__0[2]),
        .I1(m_axi_bresp[1]),
        .O(\write_bresp[1]_i_2_n_0 ));
  FDRE \write_bresp_reg[0] 
       (.C(aclk),
        .CE(\write_bresp[1]_i_1_n_0 ),
        .D(\write_bresp[0]_i_1_n_0 ),
        .Q(ila_write_bresp[0]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_bresp_reg[1] 
       (.C(aclk),
        .CE(\write_bresp[1]_i_1_n_0 ),
        .D(\write_bresp[1]_i_2_n_0 ),
        .Q(ila_write_bresp[1]),
        .R(m_axi_arvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \write_burst_counter[0]_i_1 
       (.I0(write_state__0[1]),
        .I1(ila_write_burst_counter[0]),
        .O(write_burst_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[10]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[10]),
        .O(write_burst_counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[11]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[11]),
        .O(write_burst_counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[12]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[12]),
        .O(write_burst_counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[13]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[13]),
        .O(write_burst_counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[14]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[14]),
        .O(write_burst_counter[14]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[15]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[15]),
        .O(write_burst_counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[16]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[16]),
        .O(write_burst_counter[16]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[17]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[17]),
        .O(write_burst_counter[17]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[18]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[18]),
        .O(write_burst_counter[18]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[19]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[19]),
        .O(write_burst_counter[19]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[1]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[1]),
        .O(write_burst_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[20]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[20]),
        .O(write_burst_counter[20]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[21]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[21]),
        .O(write_burst_counter[21]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[22]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[22]),
        .O(write_burst_counter[22]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[23]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[23]),
        .O(write_burst_counter[23]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[24]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[24]),
        .O(write_burst_counter[24]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[25]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[25]),
        .O(write_burst_counter[25]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[26]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[26]),
        .O(write_burst_counter[26]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[27]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[27]),
        .O(write_burst_counter[27]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[28]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[28]),
        .O(write_burst_counter[28]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[29]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[29]),
        .O(write_burst_counter[29]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[2]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[2]),
        .O(write_burst_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[30]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[30]),
        .O(write_burst_counter[30]));
  LUT6 #(
    .INIT(64'h00080000000000FF)) 
    \write_burst_counter[31]_i_1 
       (.I0(ila_write_active),
        .I1(m_axi_wlast_reg_0),
        .I2(m_axi_wlast_i_2_n_0),
        .I3(write_state__0[2]),
        .I4(write_state__0[1]),
        .I5(write_state__0[0]),
        .O(\write_burst_counter[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[31]_i_2 
       (.I0(write_state__0[1]),
        .I1(in20[31]),
        .O(write_burst_counter[31]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[3]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[3]),
        .O(write_burst_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[4]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[4]),
        .O(write_burst_counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[5]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[5]),
        .O(write_burst_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[6]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[6]),
        .O(write_burst_counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[7]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[7]),
        .O(write_burst_counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[8]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[8]),
        .O(write_burst_counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_burst_counter[9]_i_1 
       (.I0(write_state__0[1]),
        .I1(in20[9]),
        .O(write_burst_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[0] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[0]),
        .Q(ila_write_burst_counter[0]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[10] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[10]),
        .Q(ila_write_burst_counter[10]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[11] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[11]),
        .Q(ila_write_burst_counter[11]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[12] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[12]),
        .Q(ila_write_burst_counter[12]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[13] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[13]),
        .Q(ila_write_burst_counter[13]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[14] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[14]),
        .Q(ila_write_burst_counter[14]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[15] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[15]),
        .Q(ila_write_burst_counter[15]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[16] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[16]),
        .Q(ila_write_burst_counter[16]),
        .R(m_axi_arvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \write_burst_counter_reg[16]_i_2 
       (.CI(\write_burst_counter_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\write_burst_counter_reg[16]_i_2_n_0 ,\write_burst_counter_reg[16]_i_2_n_1 ,\write_burst_counter_reg[16]_i_2_n_2 ,\write_burst_counter_reg[16]_i_2_n_3 ,\write_burst_counter_reg[16]_i_2_n_4 ,\write_burst_counter_reg[16]_i_2_n_5 ,\write_burst_counter_reg[16]_i_2_n_6 ,\write_burst_counter_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in20[16:9]),
        .S(ila_write_burst_counter[16:9]));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[17] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[17]),
        .Q(ila_write_burst_counter[17]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[18] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[18]),
        .Q(ila_write_burst_counter[18]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[19] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[19]),
        .Q(ila_write_burst_counter[19]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[1] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[1]),
        .Q(ila_write_burst_counter[1]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[20] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[20]),
        .Q(ila_write_burst_counter[20]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[21] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[21]),
        .Q(ila_write_burst_counter[21]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[22] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[22]),
        .Q(ila_write_burst_counter[22]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[23] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[23]),
        .Q(ila_write_burst_counter[23]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[24] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[24]),
        .Q(ila_write_burst_counter[24]),
        .R(m_axi_arvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \write_burst_counter_reg[24]_i_2 
       (.CI(\write_burst_counter_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\write_burst_counter_reg[24]_i_2_n_0 ,\write_burst_counter_reg[24]_i_2_n_1 ,\write_burst_counter_reg[24]_i_2_n_2 ,\write_burst_counter_reg[24]_i_2_n_3 ,\write_burst_counter_reg[24]_i_2_n_4 ,\write_burst_counter_reg[24]_i_2_n_5 ,\write_burst_counter_reg[24]_i_2_n_6 ,\write_burst_counter_reg[24]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in20[24:17]),
        .S(ila_write_burst_counter[24:17]));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[25] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[25]),
        .Q(ila_write_burst_counter[25]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[26] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[26]),
        .Q(ila_write_burst_counter[26]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[27] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[27]),
        .Q(ila_write_burst_counter[27]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[28] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[28]),
        .Q(ila_write_burst_counter[28]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[29] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[29]),
        .Q(ila_write_burst_counter[29]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[2] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[2]),
        .Q(ila_write_burst_counter[2]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[30] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[30]),
        .Q(ila_write_burst_counter[30]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[31] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[31]),
        .Q(ila_write_burst_counter[31]),
        .R(m_axi_arvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \write_burst_counter_reg[31]_i_3 
       (.CI(\write_burst_counter_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_write_burst_counter_reg[31]_i_3_CO_UNCONNECTED [7:6],\write_burst_counter_reg[31]_i_3_n_2 ,\write_burst_counter_reg[31]_i_3_n_3 ,\write_burst_counter_reg[31]_i_3_n_4 ,\write_burst_counter_reg[31]_i_3_n_5 ,\write_burst_counter_reg[31]_i_3_n_6 ,\write_burst_counter_reg[31]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_write_burst_counter_reg[31]_i_3_O_UNCONNECTED [7],in20[31:25]}),
        .S({1'b0,ila_write_burst_counter[31:25]}));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[3] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[3]),
        .Q(ila_write_burst_counter[3]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[4] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[4]),
        .Q(ila_write_burst_counter[4]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[5] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[5]),
        .Q(ila_write_burst_counter[5]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[6] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[6]),
        .Q(ila_write_burst_counter[6]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[7] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[7]),
        .Q(ila_write_burst_counter[7]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[8] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[8]),
        .Q(ila_write_burst_counter[8]),
        .R(m_axi_arvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \write_burst_counter_reg[8]_i_2 
       (.CI(ila_write_burst_counter[0]),
        .CI_TOP(1'b0),
        .CO({\write_burst_counter_reg[8]_i_2_n_0 ,\write_burst_counter_reg[8]_i_2_n_1 ,\write_burst_counter_reg[8]_i_2_n_2 ,\write_burst_counter_reg[8]_i_2_n_3 ,\write_burst_counter_reg[8]_i_2_n_4 ,\write_burst_counter_reg[8]_i_2_n_5 ,\write_burst_counter_reg[8]_i_2_n_6 ,\write_burst_counter_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in20[8:1]),
        .S(ila_write_burst_counter[8:1]));
  FDRE #(
    .INIT(1'b0)) 
    \write_burst_counter_reg[9] 
       (.C(aclk),
        .CE(\write_burst_counter[31]_i_1_n_0 ),
        .D(write_burst_counter[9]),
        .Q(ila_write_burst_counter[9]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    write_burst_tick_ack_reg
       (.C(aclk),
        .CE(1'b1),
        .D(write_burst_tick),
        .Q(write_burst_tick_ack_reg_0),
        .R(m_axi_arvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF0008000000080)) 
    write_burst_tick_i_1
       (.I0(CO),
        .I1(rx_fifo_data_ready),
        .I2(write_state__0[0]),
        .I3(write_state__0[1]),
        .I4(write_state__0[2]),
        .I5(write_burst_tick),
        .O(write_burst_tick_i_1_n_0));
  FDRE write_burst_tick_reg
       (.C(aclk),
        .CE(1'b1),
        .D(write_burst_tick_i_1_n_0),
        .Q(write_burst_tick),
        .R(m_axi_arvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    write_busy_INST_0
       (.I0(write_state__0[0]),
        .I1(write_state__0[1]),
        .I2(write_state__0[2]),
        .O(write_busy));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[0]_i_1 
       (.I0(m_axi_awaddr[0]),
        .I1(write_base_address[0]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[10]_i_1 
       (.I0(m_axi_awaddr[10]),
        .I1(write_base_address[10]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[11]_i_1 
       (.I0(m_axi_awaddr[11]),
        .I1(write_base_address[11]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[12]_i_1 
       (.I0(m_axi_awaddr[12]),
        .I1(write_base_address[12]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[13]_i_1 
       (.I0(m_axi_awaddr[13]),
        .I1(write_base_address[13]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[14]_i_1 
       (.I0(m_axi_awaddr[14]),
        .I1(write_base_address[14]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[15]_i_1 
       (.I0(m_axi_awaddr[15]),
        .I1(write_base_address[15]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[16]_i_1 
       (.I0(m_axi_awaddr[16]),
        .I1(write_base_address[16]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[17]_i_1 
       (.I0(m_axi_awaddr[17]),
        .I1(write_base_address[17]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[18]_i_1 
       (.I0(m_axi_awaddr[18]),
        .I1(write_base_address[18]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[19]_i_1 
       (.I0(m_axi_awaddr[19]),
        .I1(write_base_address[19]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[1]_i_1 
       (.I0(m_axi_awaddr[1]),
        .I1(write_base_address[1]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[20]_i_1 
       (.I0(m_axi_awaddr[20]),
        .I1(write_base_address[20]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[21]_i_1 
       (.I0(m_axi_awaddr[21]),
        .I1(write_base_address[21]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[22]_i_1 
       (.I0(m_axi_awaddr[22]),
        .I1(write_base_address[22]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[23]_i_1 
       (.I0(m_axi_awaddr[23]),
        .I1(write_base_address[23]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[24]_i_1 
       (.I0(m_axi_awaddr[24]),
        .I1(write_base_address[24]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[25]_i_1 
       (.I0(m_axi_awaddr[25]),
        .I1(write_base_address[25]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[26]_i_1 
       (.I0(m_axi_awaddr[26]),
        .I1(write_base_address[26]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[27]_i_1 
       (.I0(m_axi_awaddr[27]),
        .I1(write_base_address[27]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[28]_i_1 
       (.I0(m_axi_awaddr[28]),
        .I1(write_base_address[28]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[29]_i_1 
       (.I0(m_axi_awaddr[29]),
        .I1(write_base_address[29]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[2]_i_1 
       (.I0(m_axi_awaddr[2]),
        .I1(write_base_address[2]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[30]_i_1 
       (.I0(m_axi_awaddr[30]),
        .I1(write_base_address[30]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h555555555555F777)) 
    \write_current_burst_address[31]_i_1 
       (.I0(aresetn),
        .I1(write_state__0[0]),
        .I2(rx_fifo_data_ready),
        .I3(CO),
        .I4(write_state__0[1]),
        .I5(write_state__0[2]),
        .O(\write_current_burst_address[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[31]_i_2 
       (.I0(m_axi_awaddr[31]),
        .I1(write_base_address[31]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[3]_i_1 
       (.I0(m_axi_awaddr[3]),
        .I1(write_base_address[3]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[4]_i_1 
       (.I0(m_axi_awaddr[4]),
        .I1(write_base_address[4]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[5]_i_1 
       (.I0(m_axi_awaddr[5]),
        .I1(write_base_address[5]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[6]_i_1 
       (.I0(m_axi_awaddr[6]),
        .I1(write_base_address[6]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[7]_i_1 
       (.I0(m_axi_awaddr[7]),
        .I1(write_base_address[7]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[8]_i_1 
       (.I0(m_axi_awaddr[8]),
        .I1(write_base_address[8]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00ACCCCC)) 
    \write_current_burst_address[9]_i_1 
       (.I0(m_axi_awaddr[9]),
        .I1(write_base_address[9]),
        .I2(write_state__0[0]),
        .I3(write_state__0[2]),
        .I4(aresetn),
        .O(\write_current_burst_address[9]_i_1_n_0 ));
  FDRE \write_current_burst_address_reg[0] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[0]_i_1_n_0 ),
        .Q(write_current_burst_address[0]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[10] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[10]_i_1_n_0 ),
        .Q(write_current_burst_address[10]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[11] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[11]_i_1_n_0 ),
        .Q(write_current_burst_address[11]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[12] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[12]_i_1_n_0 ),
        .Q(write_current_burst_address[12]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[13] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[13]_i_1_n_0 ),
        .Q(write_current_burst_address[13]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[14] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[14]_i_1_n_0 ),
        .Q(write_current_burst_address[14]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[15] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[15]_i_1_n_0 ),
        .Q(write_current_burst_address[15]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[16] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[16]_i_1_n_0 ),
        .Q(write_current_burst_address[16]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[17] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[17]_i_1_n_0 ),
        .Q(write_current_burst_address[17]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[18] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[18]_i_1_n_0 ),
        .Q(write_current_burst_address[18]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[19] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[19]_i_1_n_0 ),
        .Q(write_current_burst_address[19]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[1] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[1]_i_1_n_0 ),
        .Q(write_current_burst_address[1]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[20] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[20]_i_1_n_0 ),
        .Q(write_current_burst_address[20]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[21] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[21]_i_1_n_0 ),
        .Q(write_current_burst_address[21]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[22] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[22]_i_1_n_0 ),
        .Q(write_current_burst_address[22]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[23] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[23]_i_1_n_0 ),
        .Q(write_current_burst_address[23]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[24] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[24]_i_1_n_0 ),
        .Q(write_current_burst_address[24]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[25] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[25]_i_1_n_0 ),
        .Q(write_current_burst_address[25]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[26] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[26]_i_1_n_0 ),
        .Q(write_current_burst_address[26]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[27] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[27]_i_1_n_0 ),
        .Q(write_current_burst_address[27]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[28] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[28]_i_1_n_0 ),
        .Q(write_current_burst_address[28]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[29] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[29]_i_1_n_0 ),
        .Q(write_current_burst_address[29]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[2] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[2]_i_1_n_0 ),
        .Q(write_current_burst_address[2]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[30] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[30]_i_1_n_0 ),
        .Q(write_current_burst_address[30]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[31] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[31]_i_2_n_0 ),
        .Q(write_current_burst_address[31]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[3] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[3]_i_1_n_0 ),
        .Q(write_current_burst_address[3]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[4] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[4]_i_1_n_0 ),
        .Q(write_current_burst_address[4]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[5] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[5]_i_1_n_0 ),
        .Q(write_current_burst_address[5]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[6] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[6]_i_1_n_0 ),
        .Q(write_current_burst_address[6]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[7] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[7]_i_1_n_0 ),
        .Q(write_current_burst_address[7]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[8] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[8]_i_1_n_0 ),
        .Q(write_current_burst_address[8]),
        .R(1'b0));
  FDRE \write_current_burst_address_reg[9] 
       (.C(aclk),
        .CE(\write_current_burst_address[31]_i_1_n_0 ),
        .D(\write_current_burst_address[9]_i_1_n_0 ),
        .Q(write_current_burst_address[9]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_ddr_full_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({write_ddr_full_carry_n_0,write_ddr_full_carry_n_1,write_ddr_full_carry_n_2,write_ddr_full_carry_n_3,write_ddr_full_carry_n_4,write_ddr_full_carry_n_5,write_ddr_full_carry_n_6,write_ddr_full_carry_n_7}),
        .DI({write_ddr_full_carry_i_1_n_0,write_ddr_full_carry_i_2_n_0,write_ddr_full_carry_i_3_n_0,write_ddr_full_carry_i_4_n_0,write_ddr_full_carry_i_5_n_0,write_ddr_full_carry_i_6_n_0,write_ddr_full_carry_i_7_n_0,write_ddr_full_carry_i_8_n_0}),
        .O(NLW_write_ddr_full_carry_O_UNCONNECTED[7:0]),
        .S({write_ddr_full_carry_i_9_n_0,write_ddr_full_carry_i_10_n_0,write_ddr_full_carry_i_11_n_0,write_ddr_full_carry_i_12_n_0,write_ddr_full_carry_i_13_n_0,write_ddr_full_carry_i_14_n_0,write_ddr_full_carry_i_15_n_0,write_ddr_full_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_ddr_full_carry__0
       (.CI(write_ddr_full_carry_n_0),
        .CI_TOP(1'b0),
        .CO({ila_write_ddr_full,write_ddr_full_carry__0_n_1,write_ddr_full_carry__0_n_2,write_ddr_full_carry__0_n_3,write_ddr_full_carry__0_n_4,write_ddr_full_carry__0_n_5,write_ddr_full_carry__0_n_6,write_ddr_full_carry__0_n_7}),
        .DI({write_ddr_full_carry__0_i_1_n_0,write_ddr_full_carry__0_i_2_n_0,write_ddr_full_carry__0_i_3_n_0,write_ddr_full_carry__0_i_4_n_0,write_ddr_full_carry__0_i_5_n_0,write_ddr_full_carry__0_i_6_n_0,write_ddr_full_carry__0_i_7_n_0,write_ddr_full_carry__0_i_8_n_0}),
        .O(NLW_write_ddr_full_carry__0_O_UNCONNECTED[7:0]),
        .S({write_ddr_full_carry__0_i_9_n_0,write_ddr_full_carry__0_i_10_n_0,write_ddr_full_carry__0_i_11_n_0,write_ddr_full_carry__0_i_12_n_0,write_ddr_full_carry__0_i_13_n_0,write_ddr_full_carry__0_i_14_n_0,write_ddr_full_carry__0_i_15_n_0,write_ddr_full_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry__0_i_1
       (.I0(\write_ddr_occupation_reg[31]_0 [31]),
        .I1(write_ddr_size[31]),
        .I2(\write_ddr_occupation_reg[31]_0 [30]),
        .I3(write_ddr_size[30]),
        .O(write_ddr_full_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry__0_i_10
       (.I0(write_ddr_size[29]),
        .I1(\write_ddr_occupation_reg[31]_0 [29]),
        .I2(write_ddr_size[28]),
        .I3(\write_ddr_occupation_reg[31]_0 [28]),
        .O(write_ddr_full_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry__0_i_11
       (.I0(write_ddr_size[27]),
        .I1(\write_ddr_occupation_reg[31]_0 [27]),
        .I2(write_ddr_size[26]),
        .I3(\write_ddr_occupation_reg[31]_0 [26]),
        .O(write_ddr_full_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry__0_i_12
       (.I0(write_ddr_size[25]),
        .I1(\write_ddr_occupation_reg[31]_0 [25]),
        .I2(write_ddr_size[24]),
        .I3(\write_ddr_occupation_reg[31]_0 [24]),
        .O(write_ddr_full_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry__0_i_13
       (.I0(write_ddr_size[23]),
        .I1(\write_ddr_occupation_reg[31]_0 [23]),
        .I2(write_ddr_size[22]),
        .I3(\write_ddr_occupation_reg[31]_0 [22]),
        .O(write_ddr_full_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry__0_i_14
       (.I0(write_ddr_size[21]),
        .I1(\write_ddr_occupation_reg[31]_0 [21]),
        .I2(write_ddr_size[20]),
        .I3(\write_ddr_occupation_reg[31]_0 [20]),
        .O(write_ddr_full_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry__0_i_15
       (.I0(write_ddr_size[19]),
        .I1(\write_ddr_occupation_reg[31]_0 [19]),
        .I2(write_ddr_size[18]),
        .I3(\write_ddr_occupation_reg[31]_0 [18]),
        .O(write_ddr_full_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry__0_i_16
       (.I0(write_ddr_size[17]),
        .I1(\write_ddr_occupation_reg[31]_0 [17]),
        .I2(write_ddr_size[16]),
        .I3(\write_ddr_occupation_reg[31]_0 [16]),
        .O(write_ddr_full_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry__0_i_2
       (.I0(\write_ddr_occupation_reg[31]_0 [29]),
        .I1(write_ddr_size[29]),
        .I2(\write_ddr_occupation_reg[31]_0 [28]),
        .I3(write_ddr_size[28]),
        .O(write_ddr_full_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry__0_i_3
       (.I0(\write_ddr_occupation_reg[31]_0 [27]),
        .I1(write_ddr_size[27]),
        .I2(\write_ddr_occupation_reg[31]_0 [26]),
        .I3(write_ddr_size[26]),
        .O(write_ddr_full_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry__0_i_4
       (.I0(\write_ddr_occupation_reg[31]_0 [25]),
        .I1(write_ddr_size[25]),
        .I2(\write_ddr_occupation_reg[31]_0 [24]),
        .I3(write_ddr_size[24]),
        .O(write_ddr_full_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry__0_i_5
       (.I0(\write_ddr_occupation_reg[31]_0 [23]),
        .I1(write_ddr_size[23]),
        .I2(\write_ddr_occupation_reg[31]_0 [22]),
        .I3(write_ddr_size[22]),
        .O(write_ddr_full_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry__0_i_6
       (.I0(\write_ddr_occupation_reg[31]_0 [21]),
        .I1(write_ddr_size[21]),
        .I2(\write_ddr_occupation_reg[31]_0 [20]),
        .I3(write_ddr_size[20]),
        .O(write_ddr_full_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry__0_i_7
       (.I0(\write_ddr_occupation_reg[31]_0 [19]),
        .I1(write_ddr_size[19]),
        .I2(\write_ddr_occupation_reg[31]_0 [18]),
        .I3(write_ddr_size[18]),
        .O(write_ddr_full_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry__0_i_8
       (.I0(\write_ddr_occupation_reg[31]_0 [17]),
        .I1(write_ddr_size[17]),
        .I2(\write_ddr_occupation_reg[31]_0 [16]),
        .I3(write_ddr_size[16]),
        .O(write_ddr_full_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry__0_i_9
       (.I0(write_ddr_size[31]),
        .I1(\write_ddr_occupation_reg[31]_0 [31]),
        .I2(write_ddr_size[30]),
        .I3(\write_ddr_occupation_reg[31]_0 [30]),
        .O(write_ddr_full_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry_i_1
       (.I0(\write_ddr_occupation_reg[31]_0 [15]),
        .I1(write_ddr_size[15]),
        .I2(\write_ddr_occupation_reg[31]_0 [14]),
        .I3(write_ddr_size[14]),
        .O(write_ddr_full_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry_i_10
       (.I0(write_ddr_size[13]),
        .I1(\write_ddr_occupation_reg[31]_0 [13]),
        .I2(write_ddr_size[12]),
        .I3(\write_ddr_occupation_reg[31]_0 [12]),
        .O(write_ddr_full_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry_i_11
       (.I0(write_ddr_size[11]),
        .I1(\write_ddr_occupation_reg[31]_0 [11]),
        .I2(write_ddr_size[10]),
        .I3(\write_ddr_occupation_reg[31]_0 [10]),
        .O(write_ddr_full_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry_i_12
       (.I0(write_ddr_size[9]),
        .I1(\write_ddr_occupation_reg[31]_0 [9]),
        .I2(write_ddr_size[8]),
        .I3(\write_ddr_occupation_reg[31]_0 [8]),
        .O(write_ddr_full_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry_i_13
       (.I0(write_ddr_size[7]),
        .I1(\write_ddr_occupation_reg[31]_0 [7]),
        .I2(write_ddr_size[6]),
        .I3(\write_ddr_occupation_reg[31]_0 [6]),
        .O(write_ddr_full_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry_i_14
       (.I0(write_ddr_size[5]),
        .I1(\write_ddr_occupation_reg[31]_0 [5]),
        .I2(write_ddr_size[4]),
        .I3(\write_ddr_occupation_reg[31]_0 [4]),
        .O(write_ddr_full_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry_i_15
       (.I0(write_ddr_size[3]),
        .I1(\write_ddr_occupation_reg[31]_0 [3]),
        .I2(write_ddr_size[2]),
        .I3(\write_ddr_occupation_reg[31]_0 [2]),
        .O(write_ddr_full_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry_i_16
       (.I0(write_ddr_size[1]),
        .I1(\write_ddr_occupation_reg[31]_0 [1]),
        .I2(write_ddr_size[0]),
        .I3(\write_ddr_occupation_reg[31]_0 [0]),
        .O(write_ddr_full_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry_i_2
       (.I0(\write_ddr_occupation_reg[31]_0 [13]),
        .I1(write_ddr_size[13]),
        .I2(\write_ddr_occupation_reg[31]_0 [12]),
        .I3(write_ddr_size[12]),
        .O(write_ddr_full_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry_i_3
       (.I0(\write_ddr_occupation_reg[31]_0 [11]),
        .I1(write_ddr_size[11]),
        .I2(\write_ddr_occupation_reg[31]_0 [10]),
        .I3(write_ddr_size[10]),
        .O(write_ddr_full_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry_i_4
       (.I0(\write_ddr_occupation_reg[31]_0 [9]),
        .I1(write_ddr_size[9]),
        .I2(\write_ddr_occupation_reg[31]_0 [8]),
        .I3(write_ddr_size[8]),
        .O(write_ddr_full_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry_i_5
       (.I0(\write_ddr_occupation_reg[31]_0 [7]),
        .I1(write_ddr_size[7]),
        .I2(\write_ddr_occupation_reg[31]_0 [6]),
        .I3(write_ddr_size[6]),
        .O(write_ddr_full_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry_i_6
       (.I0(\write_ddr_occupation_reg[31]_0 [5]),
        .I1(write_ddr_size[5]),
        .I2(\write_ddr_occupation_reg[31]_0 [4]),
        .I3(write_ddr_size[4]),
        .O(write_ddr_full_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry_i_7
       (.I0(\write_ddr_occupation_reg[31]_0 [3]),
        .I1(write_ddr_size[3]),
        .I2(\write_ddr_occupation_reg[31]_0 [2]),
        .I3(write_ddr_size[2]),
        .O(write_ddr_full_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_full_carry_i_8
       (.I0(\write_ddr_occupation_reg[31]_0 [1]),
        .I1(write_ddr_size[1]),
        .I2(\write_ddr_occupation_reg[31]_0 [0]),
        .I3(write_ddr_size[0]),
        .O(write_ddr_full_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_full_carry_i_9
       (.I0(write_ddr_size[15]),
        .I1(\write_ddr_occupation_reg[31]_0 [15]),
        .I2(write_ddr_size[14]),
        .I3(\write_ddr_occupation_reg[31]_0 [14]),
        .O(write_ddr_full_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_ddr_has_space0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({write_ddr_has_space0_carry_n_0,write_ddr_has_space0_carry_n_1,write_ddr_has_space0_carry_n_2,write_ddr_has_space0_carry_n_3,write_ddr_has_space0_carry_n_4,write_ddr_has_space0_carry_n_5,write_ddr_has_space0_carry_n_6,write_ddr_has_space0_carry_n_7}),
        .DI(write_ddr_size[7:0]),
        .O(write_ddr_has_space0[7:0]),
        .S({write_ddr_has_space0_carry_i_1_n_0,write_ddr_has_space0_carry_i_2_n_0,write_ddr_has_space0_carry_i_3_n_0,write_ddr_has_space0_carry_i_4_n_0,write_ddr_has_space0_carry_i_5_n_0,write_ddr_has_space0_carry_i_6_n_0,write_ddr_has_space0_carry_i_7_n_0,write_ddr_has_space0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_ddr_has_space0_carry__0
       (.CI(write_ddr_has_space0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({write_ddr_has_space0_carry__0_n_0,write_ddr_has_space0_carry__0_n_1,write_ddr_has_space0_carry__0_n_2,write_ddr_has_space0_carry__0_n_3,write_ddr_has_space0_carry__0_n_4,write_ddr_has_space0_carry__0_n_5,write_ddr_has_space0_carry__0_n_6,write_ddr_has_space0_carry__0_n_7}),
        .DI(write_ddr_size[15:8]),
        .O(write_ddr_has_space0[15:8]),
        .S({write_ddr_has_space0_carry__0_i_1_n_0,write_ddr_has_space0_carry__0_i_2_n_0,write_ddr_has_space0_carry__0_i_3_n_0,write_ddr_has_space0_carry__0_i_4_n_0,write_ddr_has_space0_carry__0_i_5_n_0,write_ddr_has_space0_carry__0_i_6_n_0,write_ddr_has_space0_carry__0_i_7_n_0,write_ddr_has_space0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__0_i_1
       (.I0(write_ddr_size[15]),
        .I1(\write_ddr_occupation_reg[31]_0 [15]),
        .O(write_ddr_has_space0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__0_i_2
       (.I0(write_ddr_size[14]),
        .I1(\write_ddr_occupation_reg[31]_0 [14]),
        .O(write_ddr_has_space0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__0_i_3
       (.I0(write_ddr_size[13]),
        .I1(\write_ddr_occupation_reg[31]_0 [13]),
        .O(write_ddr_has_space0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__0_i_4
       (.I0(write_ddr_size[12]),
        .I1(\write_ddr_occupation_reg[31]_0 [12]),
        .O(write_ddr_has_space0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__0_i_5
       (.I0(write_ddr_size[11]),
        .I1(\write_ddr_occupation_reg[31]_0 [11]),
        .O(write_ddr_has_space0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__0_i_6
       (.I0(write_ddr_size[10]),
        .I1(\write_ddr_occupation_reg[31]_0 [10]),
        .O(write_ddr_has_space0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__0_i_7
       (.I0(write_ddr_size[9]),
        .I1(\write_ddr_occupation_reg[31]_0 [9]),
        .O(write_ddr_has_space0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__0_i_8
       (.I0(write_ddr_size[8]),
        .I1(\write_ddr_occupation_reg[31]_0 [8]),
        .O(write_ddr_has_space0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_ddr_has_space0_carry__1
       (.CI(write_ddr_has_space0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({write_ddr_has_space0_carry__1_n_0,write_ddr_has_space0_carry__1_n_1,write_ddr_has_space0_carry__1_n_2,write_ddr_has_space0_carry__1_n_3,write_ddr_has_space0_carry__1_n_4,write_ddr_has_space0_carry__1_n_5,write_ddr_has_space0_carry__1_n_6,write_ddr_has_space0_carry__1_n_7}),
        .DI(write_ddr_size[23:16]),
        .O(write_ddr_has_space0[23:16]),
        .S({write_ddr_has_space0_carry__1_i_1_n_0,write_ddr_has_space0_carry__1_i_2_n_0,write_ddr_has_space0_carry__1_i_3_n_0,write_ddr_has_space0_carry__1_i_4_n_0,write_ddr_has_space0_carry__1_i_5_n_0,write_ddr_has_space0_carry__1_i_6_n_0,write_ddr_has_space0_carry__1_i_7_n_0,write_ddr_has_space0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__1_i_1
       (.I0(write_ddr_size[23]),
        .I1(\write_ddr_occupation_reg[31]_0 [23]),
        .O(write_ddr_has_space0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__1_i_2
       (.I0(write_ddr_size[22]),
        .I1(\write_ddr_occupation_reg[31]_0 [22]),
        .O(write_ddr_has_space0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__1_i_3
       (.I0(write_ddr_size[21]),
        .I1(\write_ddr_occupation_reg[31]_0 [21]),
        .O(write_ddr_has_space0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__1_i_4
       (.I0(write_ddr_size[20]),
        .I1(\write_ddr_occupation_reg[31]_0 [20]),
        .O(write_ddr_has_space0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__1_i_5
       (.I0(write_ddr_size[19]),
        .I1(\write_ddr_occupation_reg[31]_0 [19]),
        .O(write_ddr_has_space0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__1_i_6
       (.I0(write_ddr_size[18]),
        .I1(\write_ddr_occupation_reg[31]_0 [18]),
        .O(write_ddr_has_space0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__1_i_7
       (.I0(write_ddr_size[17]),
        .I1(\write_ddr_occupation_reg[31]_0 [17]),
        .O(write_ddr_has_space0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__1_i_8
       (.I0(write_ddr_size[16]),
        .I1(\write_ddr_occupation_reg[31]_0 [16]),
        .O(write_ddr_has_space0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_ddr_has_space0_carry__2
       (.CI(write_ddr_has_space0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_write_ddr_has_space0_carry__2_CO_UNCONNECTED[7],write_ddr_has_space0_carry__2_n_1,write_ddr_has_space0_carry__2_n_2,write_ddr_has_space0_carry__2_n_3,write_ddr_has_space0_carry__2_n_4,write_ddr_has_space0_carry__2_n_5,write_ddr_has_space0_carry__2_n_6,write_ddr_has_space0_carry__2_n_7}),
        .DI({1'b0,write_ddr_size[30:24]}),
        .O(write_ddr_has_space0[31:24]),
        .S({write_ddr_has_space0_carry__2_i_1_n_0,write_ddr_has_space0_carry__2_i_2_n_0,write_ddr_has_space0_carry__2_i_3_n_0,write_ddr_has_space0_carry__2_i_4_n_0,write_ddr_has_space0_carry__2_i_5_n_0,write_ddr_has_space0_carry__2_i_6_n_0,write_ddr_has_space0_carry__2_i_7_n_0,write_ddr_has_space0_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__2_i_1
       (.I0(write_ddr_size[31]),
        .I1(\write_ddr_occupation_reg[31]_0 [31]),
        .O(write_ddr_has_space0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__2_i_2
       (.I0(write_ddr_size[30]),
        .I1(\write_ddr_occupation_reg[31]_0 [30]),
        .O(write_ddr_has_space0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__2_i_3
       (.I0(write_ddr_size[29]),
        .I1(\write_ddr_occupation_reg[31]_0 [29]),
        .O(write_ddr_has_space0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__2_i_4
       (.I0(write_ddr_size[28]),
        .I1(\write_ddr_occupation_reg[31]_0 [28]),
        .O(write_ddr_has_space0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__2_i_5
       (.I0(write_ddr_size[27]),
        .I1(\write_ddr_occupation_reg[31]_0 [27]),
        .O(write_ddr_has_space0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__2_i_6
       (.I0(write_ddr_size[26]),
        .I1(\write_ddr_occupation_reg[31]_0 [26]),
        .O(write_ddr_has_space0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__2_i_7
       (.I0(write_ddr_size[25]),
        .I1(\write_ddr_occupation_reg[31]_0 [25]),
        .O(write_ddr_has_space0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry__2_i_8
       (.I0(write_ddr_size[24]),
        .I1(\write_ddr_occupation_reg[31]_0 [24]),
        .O(write_ddr_has_space0_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry_i_1
       (.I0(write_ddr_size[7]),
        .I1(\write_ddr_occupation_reg[31]_0 [7]),
        .O(write_ddr_has_space0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry_i_2
       (.I0(write_ddr_size[6]),
        .I1(\write_ddr_occupation_reg[31]_0 [6]),
        .O(write_ddr_has_space0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry_i_3
       (.I0(write_ddr_size[5]),
        .I1(\write_ddr_occupation_reg[31]_0 [5]),
        .O(write_ddr_has_space0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry_i_4
       (.I0(write_ddr_size[4]),
        .I1(\write_ddr_occupation_reg[31]_0 [4]),
        .O(write_ddr_has_space0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry_i_5
       (.I0(write_ddr_size[3]),
        .I1(\write_ddr_occupation_reg[31]_0 [3]),
        .O(write_ddr_has_space0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry_i_6
       (.I0(write_ddr_size[2]),
        .I1(\write_ddr_occupation_reg[31]_0 [2]),
        .O(write_ddr_has_space0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry_i_7
       (.I0(write_ddr_size[1]),
        .I1(\write_ddr_occupation_reg[31]_0 [1]),
        .O(write_ddr_has_space0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    write_ddr_has_space0_carry_i_8
       (.I0(write_ddr_size[0]),
        .I1(\write_ddr_occupation_reg[31]_0 [0]),
        .O(write_ddr_has_space0_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_ddr_has_space_carry
       (.CI(write_ddr_has_space_carry_i_1_n_0),
        .CI_TOP(1'b0),
        .CO({write_ddr_has_space_carry_n_0,write_ddr_has_space_carry_n_1,write_ddr_has_space_carry_n_2,write_ddr_has_space_carry_n_3,write_ddr_has_space_carry_n_4,write_ddr_has_space_carry_n_5,write_ddr_has_space_carry_n_6,write_ddr_has_space_carry_n_7}),
        .DI({write_ddr_has_space_carry_i_2_n_0,write_ddr_has_space_carry_i_3_n_0,write_ddr_has_space_carry_i_4_n_0,write_ddr_has_space_carry_i_5_n_0,write_ddr_has_space_carry_i_6_n_0,write_ddr_has_space_carry_i_7_n_0,write_ddr_has_space_carry_i_8_n_0,write_ddr_has_space_carry_i_9_n_0}),
        .O(NLW_write_ddr_has_space_carry_O_UNCONNECTED[7:0]),
        .S({write_ddr_has_space_carry_i_10_n_0,write_ddr_has_space_carry_i_11_n_0,write_ddr_has_space_carry_i_12_n_0,write_ddr_has_space_carry_i_13_n_0,write_ddr_has_space_carry_i_14_n_0,write_ddr_has_space_carry_i_15_n_0,write_ddr_has_space_carry_i_16_n_0,write_ddr_has_space_carry_i_17_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_ddr_has_space_carry__0
       (.CI(write_ddr_has_space_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_write_ddr_has_space_carry__0_CO_UNCONNECTED[7],CO,write_ddr_has_space_carry__0_n_2,write_ddr_has_space_carry__0_n_3,write_ddr_has_space_carry__0_n_4,write_ddr_has_space_carry__0_n_5,write_ddr_has_space_carry__0_n_6,write_ddr_has_space_carry__0_n_7}),
        .DI({1'b0,write_ddr_has_space_carry__0_i_1_n_0,write_ddr_has_space_carry__0_i_2_n_0,write_ddr_has_space_carry__0_i_3_n_0,write_ddr_has_space_carry__0_i_4_n_0,write_ddr_has_space_carry__0_i_5_n_0,write_ddr_has_space_carry__0_i_6_n_0,write_ddr_has_space_carry__0_i_7_n_0}),
        .O(NLW_write_ddr_has_space_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,write_ddr_has_space_carry__0_i_8_n_0,write_ddr_has_space_carry__0_i_9_n_0,write_ddr_has_space_carry__0_i_10_n_0,write_ddr_has_space_carry__0_i_11_n_0,write_ddr_has_space_carry__0_i_12_n_0,write_ddr_has_space_carry__0_i_13_n_0,write_ddr_has_space_carry__0_i_14_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    write_ddr_has_space_carry__0_i_1
       (.I0(write_ddr_has_space0[30]),
        .I1(write_ddr_has_space0[31]),
        .O(write_ddr_has_space_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_ddr_has_space_carry__0_i_10
       (.I0(write_ddr_has_space0[27]),
        .I1(write_ddr_has_space0[26]),
        .O(write_ddr_has_space_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_ddr_has_space_carry__0_i_11
       (.I0(write_ddr_has_space0[25]),
        .I1(write_ddr_has_space0[24]),
        .O(write_ddr_has_space_carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_ddr_has_space_carry__0_i_12
       (.I0(write_ddr_has_space0[23]),
        .I1(write_ddr_has_space0[22]),
        .O(write_ddr_has_space_carry__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_ddr_has_space_carry__0_i_13
       (.I0(write_ddr_has_space0[21]),
        .I1(write_ddr_has_space0[20]),
        .O(write_ddr_has_space_carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_ddr_has_space_carry__0_i_14
       (.I0(write_ddr_has_space0[19]),
        .I1(write_ddr_has_space0[18]),
        .O(write_ddr_has_space_carry__0_i_14_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_ddr_has_space_carry__0_i_2
       (.I0(write_ddr_has_space0[28]),
        .I1(write_ddr_has_space0[29]),
        .O(write_ddr_has_space_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_ddr_has_space_carry__0_i_3
       (.I0(write_ddr_has_space0[26]),
        .I1(write_ddr_has_space0[27]),
        .O(write_ddr_has_space_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_ddr_has_space_carry__0_i_4
       (.I0(write_ddr_has_space0[24]),
        .I1(write_ddr_has_space0[25]),
        .O(write_ddr_has_space_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_ddr_has_space_carry__0_i_5
       (.I0(write_ddr_has_space0[22]),
        .I1(write_ddr_has_space0[23]),
        .O(write_ddr_has_space_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_ddr_has_space_carry__0_i_6
       (.I0(write_ddr_has_space0[20]),
        .I1(write_ddr_has_space0[21]),
        .O(write_ddr_has_space_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_ddr_has_space_carry__0_i_7
       (.I0(write_ddr_has_space0[18]),
        .I1(write_ddr_has_space0[19]),
        .O(write_ddr_has_space_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_ddr_has_space_carry__0_i_8
       (.I0(write_ddr_has_space0[31]),
        .I1(write_ddr_has_space0[30]),
        .O(write_ddr_has_space_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_ddr_has_space_carry__0_i_9
       (.I0(write_ddr_has_space0[29]),
        .I1(write_ddr_has_space0[28]),
        .O(write_ddr_has_space_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_ddr_has_space_carry_i_1
       (.I0(write_ddr_has_space0[1]),
        .I1(write_ddr_has_space0[0]),
        .O(write_ddr_has_space_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_ddr_has_space_carry_i_10
       (.I0(write_ddr_has_space0[17]),
        .I1(write_ddr_has_space0[16]),
        .O(write_ddr_has_space_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_ddr_has_space_carry_i_11
       (.I0(write_ddr_has_space0[15]),
        .I1(write_ddr_has_space0[14]),
        .O(write_ddr_has_space_carry_i_11_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    write_ddr_has_space_carry_i_12
       (.I0(write_burst_len[8]),
        .I1(write_ddr_has_space0[12]),
        .I2(write_ddr_has_space0[13]),
        .O(write_ddr_has_space_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_has_space_carry_i_13
       (.I0(write_burst_len[7]),
        .I1(write_ddr_has_space0[11]),
        .I2(write_burst_len[6]),
        .I3(write_ddr_has_space0[10]),
        .O(write_ddr_has_space_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_has_space_carry_i_14
       (.I0(write_burst_len[5]),
        .I1(write_ddr_has_space0[9]),
        .I2(write_burst_len[4]),
        .I3(write_ddr_has_space0[8]),
        .O(write_ddr_has_space_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_has_space_carry_i_15
       (.I0(write_ddr_has_space0[7]),
        .I1(write_burst_len[3]),
        .I2(write_ddr_has_space0[6]),
        .I3(write_burst_len[2]),
        .O(write_ddr_has_space_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_ddr_has_space_carry_i_16
       (.I0(write_ddr_has_space0[4]),
        .I1(write_burst_len[0]),
        .I2(write_ddr_has_space0[5]),
        .I3(write_burst_len[1]),
        .O(write_ddr_has_space_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_ddr_has_space_carry_i_17
       (.I0(write_ddr_has_space0[3]),
        .I1(write_ddr_has_space0[2]),
        .O(write_ddr_has_space_carry_i_17_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_ddr_has_space_carry_i_2
       (.I0(write_ddr_has_space0[16]),
        .I1(write_ddr_has_space0[17]),
        .O(write_ddr_has_space_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_ddr_has_space_carry_i_3
       (.I0(write_ddr_has_space0[14]),
        .I1(write_ddr_has_space0[15]),
        .O(write_ddr_has_space_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hF4)) 
    write_ddr_has_space_carry_i_4
       (.I0(write_burst_len[8]),
        .I1(write_ddr_has_space0[12]),
        .I2(write_ddr_has_space0[13]),
        .O(write_ddr_has_space_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h50D4)) 
    write_ddr_has_space_carry_i_5
       (.I0(write_burst_len[7]),
        .I1(write_ddr_has_space0[10]),
        .I2(write_ddr_has_space0[11]),
        .I3(write_burst_len[6]),
        .O(write_ddr_has_space_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_ddr_has_space_carry_i_6
       (.I0(write_ddr_has_space0[9]),
        .I1(write_burst_len[5]),
        .I2(write_ddr_has_space0[8]),
        .I3(write_burst_len[4]),
        .O(write_ddr_has_space_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h50D4)) 
    write_ddr_has_space_carry_i_7
       (.I0(write_burst_len[3]),
        .I1(write_ddr_has_space0[6]),
        .I2(write_ddr_has_space0[7]),
        .I3(write_burst_len[2]),
        .O(write_ddr_has_space_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h50D4)) 
    write_ddr_has_space_carry_i_8
       (.I0(write_burst_len[1]),
        .I1(write_ddr_has_space0[4]),
        .I2(write_ddr_has_space0[5]),
        .I3(write_burst_len[0]),
        .O(write_ddr_has_space_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_ddr_has_space_carry_i_9
       (.I0(write_ddr_has_space0[2]),
        .I1(write_ddr_has_space0[3]),
        .O(write_ddr_has_space_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \write_ddr_occupation0_inferred__0/i__carry 
       (.CI(\write_ddr_occupation_reg[31]_0 [0]),
        .CI_TOP(1'b0),
        .CO({\write_ddr_occupation0_inferred__0/i__carry_n_0 ,\write_ddr_occupation0_inferred__0/i__carry_n_1 ,\write_ddr_occupation0_inferred__0/i__carry_n_2 ,\write_ddr_occupation0_inferred__0/i__carry_n_3 ,\write_ddr_occupation0_inferred__0/i__carry_n_4 ,\write_ddr_occupation0_inferred__0/i__carry_n_5 ,\write_ddr_occupation0_inferred__0/i__carry_n_6 ,\write_ddr_occupation0_inferred__0/i__carry_n_7 }),
        .DI({\write_ddr_occupation_reg[31]_0 [7:1],i__carry_i_1__0_n_0}),
        .O(write_ddr_occupation[7:0]),
        .S({i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0,i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0,i__carry_i_9__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \write_ddr_occupation0_inferred__0/i__carry__0 
       (.CI(\write_ddr_occupation0_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\write_ddr_occupation0_inferred__0/i__carry__0_n_0 ,\write_ddr_occupation0_inferred__0/i__carry__0_n_1 ,\write_ddr_occupation0_inferred__0/i__carry__0_n_2 ,\write_ddr_occupation0_inferred__0/i__carry__0_n_3 ,\write_ddr_occupation0_inferred__0/i__carry__0_n_4 ,\write_ddr_occupation0_inferred__0/i__carry__0_n_5 ,\write_ddr_occupation0_inferred__0/i__carry__0_n_6 ,\write_ddr_occupation0_inferred__0/i__carry__0_n_7 }),
        .DI(\write_ddr_occupation_reg[31]_0 [15:8]),
        .O(write_ddr_occupation[15:8]),
        .S({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0,i__carry__0_i_5__1_n_0,i__carry__0_i_6__1_n_0,i__carry__0_i_7__1_n_0,i__carry__0_i_8__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \write_ddr_occupation0_inferred__0/i__carry__1 
       (.CI(\write_ddr_occupation0_inferred__0/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\write_ddr_occupation0_inferred__0/i__carry__1_n_0 ,\write_ddr_occupation0_inferred__0/i__carry__1_n_1 ,\write_ddr_occupation0_inferred__0/i__carry__1_n_2 ,\write_ddr_occupation0_inferred__0/i__carry__1_n_3 ,\write_ddr_occupation0_inferred__0/i__carry__1_n_4 ,\write_ddr_occupation0_inferred__0/i__carry__1_n_5 ,\write_ddr_occupation0_inferred__0/i__carry__1_n_6 ,\write_ddr_occupation0_inferred__0/i__carry__1_n_7 }),
        .DI({\write_ddr_occupation_reg[31]_0 [22:17],write_ddr_occupation121_out,\write_ddr_occupation_reg[31]_0 [16]}),
        .O(write_ddr_occupation[23:16]),
        .S({i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0,i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8__0_n_0,i__carry__1_i_9__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \write_ddr_occupation0_inferred__0/i__carry__2 
       (.CI(\write_ddr_occupation0_inferred__0/i__carry__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_write_ddr_occupation0_inferred__0/i__carry__2_CO_UNCONNECTED [7],\write_ddr_occupation0_inferred__0/i__carry__2_n_1 ,\write_ddr_occupation0_inferred__0/i__carry__2_n_2 ,\write_ddr_occupation0_inferred__0/i__carry__2_n_3 ,\write_ddr_occupation0_inferred__0/i__carry__2_n_4 ,\write_ddr_occupation0_inferred__0/i__carry__2_n_5 ,\write_ddr_occupation0_inferred__0/i__carry__2_n_6 ,\write_ddr_occupation0_inferred__0/i__carry__2_n_7 }),
        .DI({1'b0,\write_ddr_occupation_reg[31]_0 [29:23]}),
        .O(write_ddr_occupation[31:24]),
        .S({i__carry__2_i_1__0_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0,i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \write_ddr_occupation1_inferred__0/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\write_ddr_occupation1_inferred__0/i__carry_n_0 ,\write_ddr_occupation1_inferred__0/i__carry_n_1 ,\write_ddr_occupation1_inferred__0/i__carry_n_2 ,\write_ddr_occupation1_inferred__0/i__carry_n_3 ,\write_ddr_occupation1_inferred__0/i__carry_n_4 ,\write_ddr_occupation1_inferred__0/i__carry_n_5 ,\write_ddr_occupation1_inferred__0/i__carry_n_6 ,\write_ddr_occupation1_inferred__0/i__carry_n_7 }),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}),
        .O(\NLW_write_ddr_occupation1_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({i__carry_i_9_n_0,i__carry_i_10_n_0,i__carry_i_11_n_0,i__carry_i_12_n_0,i__carry_i_13_n_0,i__carry_i_14_n_0,i__carry_i_15_n_0,i__carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \write_ddr_occupation1_inferred__0/i__carry__0 
       (.CI(\write_ddr_occupation1_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({write_ddr_occupation1,\write_ddr_occupation1_inferred__0/i__carry__0_n_1 ,\write_ddr_occupation1_inferred__0/i__carry__0_n_2 ,\write_ddr_occupation1_inferred__0/i__carry__0_n_3 ,\write_ddr_occupation1_inferred__0/i__carry__0_n_4 ,\write_ddr_occupation1_inferred__0/i__carry__0_n_5 ,\write_ddr_occupation1_inferred__0/i__carry__0_n_6 ,\write_ddr_occupation1_inferred__0/i__carry__0_n_7 }),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}),
        .O(\NLW_write_ddr_occupation1_inferred__0/i__carry__0_O_UNCONNECTED [7:0]),
        .S({i__carry__0_i_9_n_0,i__carry__0_i_10_n_0,i__carry__0_i_11_n_0,i__carry__0_i_12_n_0,i__carry__0_i_13_n_0,i__carry__0_i_14_n_0,i__carry__0_i_15_n_0,i__carry__0_i_16_n_0}));
  LUT5 #(
    .INIT(32'h08FF0000)) 
    \write_ddr_occupation[31]_i_1 
       (.I0(write_access_tick),
        .I1(write_ddr_occupation1),
        .I2(ila_write_access_tick_ack),
        .I3(write_burst_tick_ack_reg_0),
        .I4(write_burst_tick),
        .O(\write_ddr_occupation[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[0] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[0]),
        .Q(\write_ddr_occupation_reg[31]_0 [0]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[10] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[10]),
        .Q(\write_ddr_occupation_reg[31]_0 [10]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[11] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[11]),
        .Q(\write_ddr_occupation_reg[31]_0 [11]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[12] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[12]),
        .Q(\write_ddr_occupation_reg[31]_0 [12]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[13] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[13]),
        .Q(\write_ddr_occupation_reg[31]_0 [13]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[14] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[14]),
        .Q(\write_ddr_occupation_reg[31]_0 [14]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[15] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[15]),
        .Q(\write_ddr_occupation_reg[31]_0 [15]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[16] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[16]),
        .Q(\write_ddr_occupation_reg[31]_0 [16]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[17] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[17]),
        .Q(\write_ddr_occupation_reg[31]_0 [17]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[18] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[18]),
        .Q(\write_ddr_occupation_reg[31]_0 [18]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[19] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[19]),
        .Q(\write_ddr_occupation_reg[31]_0 [19]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[1] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[1]),
        .Q(\write_ddr_occupation_reg[31]_0 [1]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[20] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[20]),
        .Q(\write_ddr_occupation_reg[31]_0 [20]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[21] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[21]),
        .Q(\write_ddr_occupation_reg[31]_0 [21]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[22] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[22]),
        .Q(\write_ddr_occupation_reg[31]_0 [22]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[23] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[23]),
        .Q(\write_ddr_occupation_reg[31]_0 [23]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[24] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[24]),
        .Q(\write_ddr_occupation_reg[31]_0 [24]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[25] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[25]),
        .Q(\write_ddr_occupation_reg[31]_0 [25]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[26] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[26]),
        .Q(\write_ddr_occupation_reg[31]_0 [26]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[27] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[27]),
        .Q(\write_ddr_occupation_reg[31]_0 [27]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[28] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[28]),
        .Q(\write_ddr_occupation_reg[31]_0 [28]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[29] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[29]),
        .Q(\write_ddr_occupation_reg[31]_0 [29]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[2] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[2]),
        .Q(\write_ddr_occupation_reg[31]_0 [2]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[30] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[30]),
        .Q(\write_ddr_occupation_reg[31]_0 [30]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[31] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[31]),
        .Q(\write_ddr_occupation_reg[31]_0 [31]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[3] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[3]),
        .Q(\write_ddr_occupation_reg[31]_0 [3]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[4] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[4]),
        .Q(\write_ddr_occupation_reg[31]_0 [4]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[5] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[5]),
        .Q(\write_ddr_occupation_reg[31]_0 [5]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[6] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[6]),
        .Q(\write_ddr_occupation_reg[31]_0 [6]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[7] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[7]),
        .Q(\write_ddr_occupation_reg[31]_0 [7]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[8] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[8]),
        .Q(\write_ddr_occupation_reg[31]_0 [8]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_ddr_occupation_reg[9] 
       (.C(aclk),
        .CE(\write_ddr_occupation[31]_i_1_n_0 ),
        .D(write_ddr_occupation[9]),
        .Q(\write_ddr_occupation_reg[31]_0 [9]),
        .R(m_axi_arvalid_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_index1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_write_index1_carry_CO_UNCONNECTED[7:5],write_index1,write_index1_carry_n_4,write_index1_carry_n_5,write_index1_carry_n_6,write_index1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,write_index1_carry_i_1_n_0,write_index1_carry_i_2_n_0,write_index1_carry_i_3_n_0,write_index1_carry_i_4_n_0}),
        .O(NLW_write_index1_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,write_index1_carry_i_5_n_0,write_index1_carry_i_6_n_0,write_index1_carry_i_7_n_0,write_index1_carry_i_8_n_0,write_index1_carry_i_9_n_0}));
  LUT5 #(
    .INIT(32'h00A981EB)) 
    write_index1_carry_i_1
       (.I0(write_burst_len[7]),
        .I1(write_burst_len[6]),
        .I2(write_burst_len_4_sn_1),
        .I3(\write_index_reg[8]_0 [7]),
        .I4(\write_index_reg[8]_0 [6]),
        .O(write_index1_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    write_index1_carry_i_10
       (.I0(write_burst_len[3]),
        .I1(write_burst_len[2]),
        .I2(write_burst_len[0]),
        .I3(write_burst_len[1]),
        .O(write_index1_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h2221B227)) 
    write_index1_carry_i_2
       (.I0(write_burst_len[5]),
        .I1(\write_index_reg[8]_0 [5]),
        .I2(write_burst_len[4]),
        .I3(write_index1_carry_i_10_n_0),
        .I4(\write_index_reg[8]_0 [4]),
        .O(write_index1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000AAA98881EEEB)) 
    write_index1_carry_i_3
       (.I0(write_burst_len[3]),
        .I1(write_burst_len[2]),
        .I2(write_burst_len[0]),
        .I3(write_burst_len[1]),
        .I4(\write_index_reg[8]_0 [3]),
        .I5(\write_index_reg[8]_0 [2]),
        .O(write_index1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h4153)) 
    write_index1_carry_i_4
       (.I0(\write_index_reg[8]_0 [1]),
        .I1(write_burst_len[0]),
        .I2(write_burst_len[1]),
        .I3(\write_index_reg[8]_0 [0]),
        .O(write_index1_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    write_index1_carry_i_5
       (.I0(\write_index_reg[8]_0 [8]),
        .O(write_index1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h90060990)) 
    write_index1_carry_i_6
       (.I0(\write_index_reg[8]_0 [7]),
        .I1(write_burst_len[7]),
        .I2(write_burst_len[6]),
        .I3(write_burst_len_4_sn_1),
        .I4(\write_index_reg[8]_0 [6]),
        .O(write_index1_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h90060990)) 
    write_index1_carry_i_7
       (.I0(write_burst_len[5]),
        .I1(\write_index_reg[8]_0 [5]),
        .I2(write_burst_len[4]),
        .I3(write_index1_carry_i_10_n_0),
        .I4(\write_index_reg[8]_0 [4]),
        .O(write_index1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9090900609090990)) 
    write_index1_carry_i_8
       (.I0(\write_index_reg[8]_0 [3]),
        .I1(write_burst_len[3]),
        .I2(write_burst_len[2]),
        .I3(write_burst_len[0]),
        .I4(write_burst_len[1]),
        .I5(\write_index_reg[8]_0 [2]),
        .O(write_index1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h4218)) 
    write_index1_carry_i_9
       (.I0(\write_index_reg[8]_0 [0]),
        .I1(write_burst_len[1]),
        .I2(write_burst_len[0]),
        .I3(\write_index_reg[8]_0 [1]),
        .O(write_index1_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \write_index[0]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_state__0[0]),
        .I2(\write_index_reg[8]_0 [0]),
        .O(write_index[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \write_index[1]_i_1 
       (.I0(write_state__0[0]),
        .I1(write_state__0[1]),
        .I2(\write_index_reg[8]_0 [0]),
        .I3(\write_index_reg[8]_0 [1]),
        .O(write_index[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h08888000)) 
    \write_index[2]_i_1 
       (.I0(write_state__0[0]),
        .I1(write_state__0[1]),
        .I2(\write_index_reg[8]_0 [1]),
        .I3(\write_index_reg[8]_0 [0]),
        .I4(\write_index_reg[8]_0 [2]),
        .O(write_index[2]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \write_index[3]_i_1 
       (.I0(\write_index[8]_i_4_n_0 ),
        .I1(\write_index_reg[8]_0 [0]),
        .I2(\write_index_reg[8]_0 [1]),
        .I3(\write_index_reg[8]_0 [2]),
        .I4(\write_index_reg[8]_0 [3]),
        .O(write_index[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \write_index[4]_i_1 
       (.I0(\write_index_reg[8]_0 [0]),
        .I1(\write_index_reg[8]_0 [1]),
        .I2(\write_index_reg[8]_0 [2]),
        .I3(\write_index_reg[8]_0 [3]),
        .I4(\write_index[8]_i_4_n_0 ),
        .I5(\write_index_reg[8]_0 [4]),
        .O(write_index[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h4080)) 
    \write_index[5]_i_1 
       (.I0(\write_index[5]_i_2_n_0 ),
        .I1(write_state__0[1]),
        .I2(write_state__0[0]),
        .I3(\write_index_reg[8]_0 [5]),
        .O(write_index[5]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \write_index[5]_i_2 
       (.I0(\write_index_reg[8]_0 [4]),
        .I1(\write_index_reg[8]_0 [3]),
        .I2(\write_index_reg[8]_0 [2]),
        .I3(\write_index_reg[8]_0 [1]),
        .I4(\write_index_reg[8]_0 [0]),
        .O(\write_index[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8040)) 
    \write_index[6]_i_1 
       (.I0(\write_index[8]_i_3_n_0 ),
        .I1(write_state__0[1]),
        .I2(write_state__0[0]),
        .I3(\write_index_reg[8]_0 [6]),
        .O(write_index[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hD0002000)) 
    \write_index[7]_i_1 
       (.I0(\write_index_reg[8]_0 [6]),
        .I1(\write_index[8]_i_3_n_0 ),
        .I2(write_state__0[1]),
        .I3(write_state__0[0]),
        .I4(\write_index_reg[8]_0 [7]),
        .O(write_index[7]));
  LUT6 #(
    .INIT(64'h008000FF00FF00FF)) 
    \write_index[8]_i_1 
       (.I0(s_axis_rx_tvalid),
        .I1(m_axi_wready),
        .I2(write_index1),
        .I3(write_state__0[2]),
        .I4(write_state__0[1]),
        .I5(write_state__0[0]),
        .O(\write_index[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBF004000)) 
    \write_index[8]_i_2 
       (.I0(\write_index[8]_i_3_n_0 ),
        .I1(\write_index_reg[8]_0 [6]),
        .I2(\write_index_reg[8]_0 [7]),
        .I3(\write_index[8]_i_4_n_0 ),
        .I4(\write_index_reg[8]_0 [8]),
        .O(write_index[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \write_index[8]_i_3 
       (.I0(\write_index_reg[8]_0 [0]),
        .I1(\write_index_reg[8]_0 [1]),
        .I2(\write_index_reg[8]_0 [2]),
        .I3(\write_index_reg[8]_0 [3]),
        .I4(\write_index_reg[8]_0 [4]),
        .I5(\write_index_reg[8]_0 [5]),
        .O(\write_index[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \write_index[8]_i_4 
       (.I0(write_state__0[0]),
        .I1(write_state__0[1]),
        .I2(write_state__0[2]),
        .O(\write_index[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[0] 
       (.C(aclk),
        .CE(\write_index[8]_i_1_n_0 ),
        .D(write_index[0]),
        .Q(\write_index_reg[8]_0 [0]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[1] 
       (.C(aclk),
        .CE(\write_index[8]_i_1_n_0 ),
        .D(write_index[1]),
        .Q(\write_index_reg[8]_0 [1]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[2] 
       (.C(aclk),
        .CE(\write_index[8]_i_1_n_0 ),
        .D(write_index[2]),
        .Q(\write_index_reg[8]_0 [2]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[3] 
       (.C(aclk),
        .CE(\write_index[8]_i_1_n_0 ),
        .D(write_index[3]),
        .Q(\write_index_reg[8]_0 [3]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[4] 
       (.C(aclk),
        .CE(\write_index[8]_i_1_n_0 ),
        .D(write_index[4]),
        .Q(\write_index_reg[8]_0 [4]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[5] 
       (.C(aclk),
        .CE(\write_index[8]_i_1_n_0 ),
        .D(write_index[5]),
        .Q(\write_index_reg[8]_0 [5]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[6] 
       (.C(aclk),
        .CE(\write_index[8]_i_1_n_0 ),
        .D(write_index[6]),
        .Q(\write_index_reg[8]_0 [6]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[7] 
       (.C(aclk),
        .CE(\write_index[8]_i_1_n_0 ),
        .D(write_index[7]),
        .Q(\write_index_reg[8]_0 [7]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_index_reg[8] 
       (.C(aclk),
        .CE(\write_index[8]_i_1_n_0 ),
        .D(write_index[8]),
        .Q(\write_index_reg[8]_0 [8]),
        .R(m_axi_arvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \write_overflow_count[0]_i_1 
       (.I0(write_state__0[0]),
        .I1(\write_overflow_count_reg[7]_0 [0]),
        .O(\write_overflow_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \write_overflow_count[1]_i_1 
       (.I0(write_state__0[0]),
        .I1(\write_overflow_count_reg[7]_0 [0]),
        .I2(\write_overflow_count_reg[7]_0 [1]),
        .O(\write_overflow_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \write_overflow_count[2]_i_1 
       (.I0(\write_overflow_count_reg[7]_0 [1]),
        .I1(\write_overflow_count_reg[7]_0 [0]),
        .I2(write_state__0[0]),
        .I3(\write_overflow_count_reg[7]_0 [2]),
        .O(\write_overflow_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \write_overflow_count[3]_i_1 
       (.I0(\write_overflow_count_reg[7]_0 [2]),
        .I1(\write_overflow_count_reg[7]_0 [0]),
        .I2(\write_overflow_count_reg[7]_0 [1]),
        .I3(write_state__0[0]),
        .I4(\write_overflow_count_reg[7]_0 [3]),
        .O(\write_overflow_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \write_overflow_count[4]_i_1 
       (.I0(\write_overflow_count_reg[7]_0 [3]),
        .I1(\write_overflow_count_reg[7]_0 [1]),
        .I2(\write_overflow_count_reg[7]_0 [0]),
        .I3(\write_overflow_count_reg[7]_0 [2]),
        .I4(ila_write_state[0]),
        .I5(\write_overflow_count_reg[7]_0 [4]),
        .O(\write_overflow_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \write_overflow_count[5]_i_1 
       (.I0(\write_overflow_count[5]_i_2_n_0 ),
        .I1(write_state__0[0]),
        .I2(\write_overflow_count_reg[7]_0 [5]),
        .O(\write_overflow_count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \write_overflow_count[5]_i_2 
       (.I0(\write_overflow_count_reg[7]_0 [4]),
        .I1(\write_overflow_count_reg[7]_0 [2]),
        .I2(\write_overflow_count_reg[7]_0 [0]),
        .I3(\write_overflow_count_reg[7]_0 [1]),
        .I4(\write_overflow_count_reg[7]_0 [3]),
        .O(\write_overflow_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \write_overflow_count[6]_i_1 
       (.I0(\write_overflow_count[7]_i_3_n_0 ),
        .I1(write_state__0[0]),
        .I2(\write_overflow_count_reg[7]_0 [6]),
        .O(\write_overflow_count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0008000F)) 
    \write_overflow_count[7]_i_1 
       (.I0(write_overflow_ins1),
        .I1(ila_write_ddr_full),
        .I2(write_state__0[2]),
        .I3(write_state__0[1]),
        .I4(write_state__0[0]),
        .O(\write_overflow_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \write_overflow_count[7]_i_2 
       (.I0(\write_overflow_count[7]_i_3_n_0 ),
        .I1(\write_overflow_count_reg[7]_0 [6]),
        .I2(write_state__0[0]),
        .I3(\write_overflow_count_reg[7]_0 [7]),
        .O(\write_overflow_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \write_overflow_count[7]_i_3 
       (.I0(\write_overflow_count_reg[7]_0 [5]),
        .I1(\write_overflow_count_reg[7]_0 [3]),
        .I2(\write_overflow_count_reg[7]_0 [1]),
        .I3(\write_overflow_count_reg[7]_0 [0]),
        .I4(\write_overflow_count_reg[7]_0 [2]),
        .I5(\write_overflow_count_reg[7]_0 [4]),
        .O(\write_overflow_count[7]_i_3_n_0 ));
  FDRE \write_overflow_count_reg[0] 
       (.C(aclk),
        .CE(\write_overflow_count[7]_i_1_n_0 ),
        .D(\write_overflow_count[0]_i_1_n_0 ),
        .Q(\write_overflow_count_reg[7]_0 [0]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_overflow_count_reg[1] 
       (.C(aclk),
        .CE(\write_overflow_count[7]_i_1_n_0 ),
        .D(\write_overflow_count[1]_i_1_n_0 ),
        .Q(\write_overflow_count_reg[7]_0 [1]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_overflow_count_reg[2] 
       (.C(aclk),
        .CE(\write_overflow_count[7]_i_1_n_0 ),
        .D(\write_overflow_count[2]_i_1_n_0 ),
        .Q(\write_overflow_count_reg[7]_0 [2]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_overflow_count_reg[3] 
       (.C(aclk),
        .CE(\write_overflow_count[7]_i_1_n_0 ),
        .D(\write_overflow_count[3]_i_1_n_0 ),
        .Q(\write_overflow_count_reg[7]_0 [3]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_overflow_count_reg[4] 
       (.C(aclk),
        .CE(\write_overflow_count[7]_i_1_n_0 ),
        .D(\write_overflow_count[4]_i_1_n_0 ),
        .Q(\write_overflow_count_reg[7]_0 [4]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_overflow_count_reg[5] 
       (.C(aclk),
        .CE(\write_overflow_count[7]_i_1_n_0 ),
        .D(\write_overflow_count[5]_i_1_n_0 ),
        .Q(\write_overflow_count_reg[7]_0 [5]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_overflow_count_reg[6] 
       (.C(aclk),
        .CE(\write_overflow_count[7]_i_1_n_0 ),
        .D(\write_overflow_count[6]_i_1_n_0 ),
        .Q(\write_overflow_count_reg[7]_0 [6]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_overflow_count_reg[7] 
       (.C(aclk),
        .CE(\write_overflow_count[7]_i_1_n_0 ),
        .D(\write_overflow_count[7]_i_2_n_0 ),
        .Q(\write_overflow_count_reg[7]_0 [7]),
        .R(m_axi_arvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    write_overflow_ins_i_1
       (.I0(ila_write_ddr_full),
        .I1(write_state__0[0]),
        .I2(write_overflow_ins1),
        .O(write_overflow_ins_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    write_overflow_ins_i_2
       (.I0(write_overflow_ins_i_3_n_0),
        .I1(write_overflow_ins_i_4_n_0),
        .I2(write_total_burst_count[26]),
        .I3(write_total_burst_count[25]),
        .I4(write_total_burst_count[24]),
        .I5(write_total_burst_count[23]),
        .O(write_overflow_ins1));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    write_overflow_ins_i_3
       (.I0(write_overflow_ins_i_5_n_0),
        .I1(write_total_burst_count[27]),
        .I2(write_total_burst_count[28]),
        .I3(write_total_burst_count[29]),
        .I4(write_total_burst_count[30]),
        .O(write_overflow_ins_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    write_overflow_ins_i_4
       (.I0(write_total_burst_count[18]),
        .I1(write_total_burst_count[17]),
        .I2(write_overflow_ins_i_6_n_0),
        .I3(write_overflow_ins_i_7_n_0),
        .I4(write_overflow_ins_i_8_n_0),
        .I5(write_overflow_ins_i_9_n_0),
        .O(write_overflow_ins_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    write_overflow_ins_i_5
       (.I0(write_total_burst_count[19]),
        .I1(write_total_burst_count[20]),
        .I2(write_total_burst_count[21]),
        .I3(write_total_burst_count[22]),
        .I4(write_total_burst_count[0]),
        .I5(write_total_burst_count[31]),
        .O(write_overflow_ins_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    write_overflow_ins_i_6
       (.I0(write_total_burst_count[8]),
        .I1(write_total_burst_count[7]),
        .I2(write_total_burst_count[6]),
        .I3(write_total_burst_count[5]),
        .O(write_overflow_ins_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    write_overflow_ins_i_7
       (.I0(write_total_burst_count[4]),
        .I1(write_total_burst_count[3]),
        .I2(write_total_burst_count[2]),
        .I3(write_total_burst_count[1]),
        .O(write_overflow_ins_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    write_overflow_ins_i_8
       (.I0(write_total_burst_count[16]),
        .I1(write_total_burst_count[15]),
        .I2(write_total_burst_count[14]),
        .I3(write_total_burst_count[13]),
        .O(write_overflow_ins_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    write_overflow_ins_i_9
       (.I0(write_total_burst_count[12]),
        .I1(write_total_burst_count[11]),
        .I2(write_total_burst_count[10]),
        .I3(write_total_burst_count[9]),
        .O(write_overflow_ins_i_9_n_0));
  FDRE write_overflow_ins_reg
       (.C(aclk),
        .CE(m_axi_awvalid_i_1_n_0),
        .D(write_overflow_ins_i_1_n_0),
        .Q(write_overflow_ins),
        .R(m_axi_arvalid_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_state2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({write_state2_carry_n_0,write_state2_carry_n_1,write_state2_carry_n_2,write_state2_carry_n_3,write_state2_carry_n_4,write_state2_carry_n_5,write_state2_carry_n_6,write_state2_carry_n_7}),
        .DI({write_state2_carry_i_1_n_0,write_state2_carry_i_2_n_0,write_state2_carry_i_3_n_0,write_state2_carry_i_4_n_0,write_state2_carry_i_5_n_0,write_state2_carry_i_6_n_0,write_state2_carry_i_7_n_0,write_state2_carry_i_8_n_0}),
        .O(NLW_write_state2_carry_O_UNCONNECTED[7:0]),
        .S({write_state2_carry_i_9_n_0,write_state2_carry_i_10_n_0,write_state2_carry_i_11_n_0,write_state2_carry_i_12_n_0,write_state2_carry_i_13_n_0,write_state2_carry_i_14_n_0,write_state2_carry_i_15_n_0,write_state2_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_state2_carry__0
       (.CI(write_state2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({write_state218_in,write_state2_carry__0_n_1,write_state2_carry__0_n_2,write_state2_carry__0_n_3,write_state2_carry__0_n_4,write_state2_carry__0_n_5,write_state2_carry__0_n_6,write_state2_carry__0_n_7}),
        .DI({write_state2_carry__0_i_1_n_0,write_state2_carry__0_i_2_n_0,write_state2_carry__0_i_3_n_0,write_state2_carry__0_i_4_n_0,write_state2_carry__0_i_5_n_0,write_state2_carry__0_i_6_n_0,write_state2_carry__0_i_7_n_0,write_state2_carry__0_i_8_n_0}),
        .O(NLW_write_state2_carry__0_O_UNCONNECTED[7:0]),
        .S({write_state2_carry__0_i_9_n_0,write_state2_carry__0_i_10_n_0,write_state2_carry__0_i_11_n_0,write_state2_carry__0_i_12_n_0,write_state2_carry__0_i_13_n_0,write_state2_carry__0_i_14_n_0,write_state2_carry__0_i_15_n_0,write_state2_carry__0_i_16_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry__0_i_1
       (.I0(write_burst_count[31]),
        .I1(ila_write_burst_counter[31]),
        .I2(write_burst_count[30]),
        .I3(ila_write_burst_counter[30]),
        .O(write_state2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry__0_i_10
       (.I0(ila_write_burst_counter[29]),
        .I1(write_burst_count[29]),
        .I2(ila_write_burst_counter[28]),
        .I3(write_burst_count[28]),
        .O(write_state2_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry__0_i_11
       (.I0(ila_write_burst_counter[27]),
        .I1(write_burst_count[27]),
        .I2(ila_write_burst_counter[26]),
        .I3(write_burst_count[26]),
        .O(write_state2_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry__0_i_12
       (.I0(ila_write_burst_counter[25]),
        .I1(write_burst_count[25]),
        .I2(ila_write_burst_counter[24]),
        .I3(write_burst_count[24]),
        .O(write_state2_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry__0_i_13
       (.I0(ila_write_burst_counter[23]),
        .I1(write_burst_count[23]),
        .I2(ila_write_burst_counter[22]),
        .I3(write_burst_count[22]),
        .O(write_state2_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry__0_i_14
       (.I0(ila_write_burst_counter[21]),
        .I1(write_burst_count[21]),
        .I2(ila_write_burst_counter[20]),
        .I3(write_burst_count[20]),
        .O(write_state2_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry__0_i_15
       (.I0(ila_write_burst_counter[19]),
        .I1(write_burst_count[19]),
        .I2(ila_write_burst_counter[18]),
        .I3(write_burst_count[18]),
        .O(write_state2_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry__0_i_16
       (.I0(ila_write_burst_counter[17]),
        .I1(write_burst_count[17]),
        .I2(ila_write_burst_counter[16]),
        .I3(write_burst_count[16]),
        .O(write_state2_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry__0_i_2
       (.I0(write_burst_count[29]),
        .I1(ila_write_burst_counter[29]),
        .I2(write_burst_count[28]),
        .I3(ila_write_burst_counter[28]),
        .O(write_state2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry__0_i_3
       (.I0(write_burst_count[27]),
        .I1(ila_write_burst_counter[27]),
        .I2(write_burst_count[26]),
        .I3(ila_write_burst_counter[26]),
        .O(write_state2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry__0_i_4
       (.I0(write_burst_count[25]),
        .I1(ila_write_burst_counter[25]),
        .I2(write_burst_count[24]),
        .I3(ila_write_burst_counter[24]),
        .O(write_state2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry__0_i_5
       (.I0(write_burst_count[23]),
        .I1(ila_write_burst_counter[23]),
        .I2(write_burst_count[22]),
        .I3(ila_write_burst_counter[22]),
        .O(write_state2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry__0_i_6
       (.I0(write_burst_count[21]),
        .I1(ila_write_burst_counter[21]),
        .I2(write_burst_count[20]),
        .I3(ila_write_burst_counter[20]),
        .O(write_state2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry__0_i_7
       (.I0(write_burst_count[19]),
        .I1(ila_write_burst_counter[19]),
        .I2(write_burst_count[18]),
        .I3(ila_write_burst_counter[18]),
        .O(write_state2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry__0_i_8
       (.I0(write_burst_count[17]),
        .I1(ila_write_burst_counter[17]),
        .I2(write_burst_count[16]),
        .I3(ila_write_burst_counter[16]),
        .O(write_state2_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry__0_i_9
       (.I0(ila_write_burst_counter[31]),
        .I1(write_burst_count[31]),
        .I2(ila_write_burst_counter[30]),
        .I3(write_burst_count[30]),
        .O(write_state2_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry_i_1
       (.I0(write_burst_count[15]),
        .I1(ila_write_burst_counter[15]),
        .I2(write_burst_count[14]),
        .I3(ila_write_burst_counter[14]),
        .O(write_state2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry_i_10
       (.I0(ila_write_burst_counter[13]),
        .I1(write_burst_count[13]),
        .I2(ila_write_burst_counter[12]),
        .I3(write_burst_count[12]),
        .O(write_state2_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry_i_11
       (.I0(ila_write_burst_counter[11]),
        .I1(write_burst_count[11]),
        .I2(ila_write_burst_counter[10]),
        .I3(write_burst_count[10]),
        .O(write_state2_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry_i_12
       (.I0(ila_write_burst_counter[9]),
        .I1(write_burst_count[9]),
        .I2(ila_write_burst_counter[8]),
        .I3(write_burst_count[8]),
        .O(write_state2_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry_i_13
       (.I0(ila_write_burst_counter[7]),
        .I1(write_burst_count[7]),
        .I2(ila_write_burst_counter[6]),
        .I3(write_burst_count[6]),
        .O(write_state2_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry_i_14
       (.I0(ila_write_burst_counter[5]),
        .I1(write_burst_count[5]),
        .I2(ila_write_burst_counter[4]),
        .I3(write_burst_count[4]),
        .O(write_state2_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry_i_15
       (.I0(ila_write_burst_counter[3]),
        .I1(write_burst_count[3]),
        .I2(ila_write_burst_counter[2]),
        .I3(write_burst_count[2]),
        .O(write_state2_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry_i_16
       (.I0(ila_write_burst_counter[1]),
        .I1(write_burst_count[1]),
        .I2(ila_write_burst_counter[0]),
        .I3(write_burst_count[0]),
        .O(write_state2_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry_i_2
       (.I0(write_burst_count[13]),
        .I1(ila_write_burst_counter[13]),
        .I2(write_burst_count[12]),
        .I3(ila_write_burst_counter[12]),
        .O(write_state2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry_i_3
       (.I0(write_burst_count[11]),
        .I1(ila_write_burst_counter[11]),
        .I2(write_burst_count[10]),
        .I3(ila_write_burst_counter[10]),
        .O(write_state2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry_i_4
       (.I0(write_burst_count[9]),
        .I1(ila_write_burst_counter[9]),
        .I2(write_burst_count[8]),
        .I3(ila_write_burst_counter[8]),
        .O(write_state2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry_i_5
       (.I0(write_burst_count[7]),
        .I1(ila_write_burst_counter[7]),
        .I2(write_burst_count[6]),
        .I3(ila_write_burst_counter[6]),
        .O(write_state2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry_i_6
       (.I0(write_burst_count[5]),
        .I1(ila_write_burst_counter[5]),
        .I2(write_burst_count[4]),
        .I3(ila_write_burst_counter[4]),
        .O(write_state2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry_i_7
       (.I0(write_burst_count[3]),
        .I1(ila_write_burst_counter[3]),
        .I2(write_burst_count[2]),
        .I3(ila_write_burst_counter[2]),
        .O(write_state2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    write_state2_carry_i_8
       (.I0(write_burst_count[1]),
        .I1(ila_write_burst_counter[1]),
        .I2(write_burst_count[0]),
        .I3(ila_write_burst_counter[0]),
        .O(write_state2_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_state2_carry_i_9
       (.I0(ila_write_burst_counter[15]),
        .I1(write_burst_count[15]),
        .I2(ila_write_burst_counter[14]),
        .I3(write_burst_count[14]),
        .O(write_state2_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_total_burst_count0_carry
       (.CI(write_total_burst_count[0]),
        .CI_TOP(1'b0),
        .CO({write_total_burst_count0_carry_n_0,write_total_burst_count0_carry_n_1,write_total_burst_count0_carry_n_2,write_total_burst_count0_carry_n_3,write_total_burst_count0_carry_n_4,write_total_burst_count0_carry_n_5,write_total_burst_count0_carry_n_6,write_total_burst_count0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({write_total_burst_count0_carry_n_8,write_total_burst_count0_carry_n_9,write_total_burst_count0_carry_n_10,write_total_burst_count0_carry_n_11,write_total_burst_count0_carry_n_12,write_total_burst_count0_carry_n_13,write_total_burst_count0_carry_n_14,write_total_burst_count0_carry_n_15}),
        .S(write_total_burst_count[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_total_burst_count0_carry__0
       (.CI(write_total_burst_count0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({write_total_burst_count0_carry__0_n_0,write_total_burst_count0_carry__0_n_1,write_total_burst_count0_carry__0_n_2,write_total_burst_count0_carry__0_n_3,write_total_burst_count0_carry__0_n_4,write_total_burst_count0_carry__0_n_5,write_total_burst_count0_carry__0_n_6,write_total_burst_count0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({write_total_burst_count0_carry__0_n_8,write_total_burst_count0_carry__0_n_9,write_total_burst_count0_carry__0_n_10,write_total_burst_count0_carry__0_n_11,write_total_burst_count0_carry__0_n_12,write_total_burst_count0_carry__0_n_13,write_total_burst_count0_carry__0_n_14,write_total_burst_count0_carry__0_n_15}),
        .S(write_total_burst_count[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_total_burst_count0_carry__1
       (.CI(write_total_burst_count0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({write_total_burst_count0_carry__1_n_0,write_total_burst_count0_carry__1_n_1,write_total_burst_count0_carry__1_n_2,write_total_burst_count0_carry__1_n_3,write_total_burst_count0_carry__1_n_4,write_total_burst_count0_carry__1_n_5,write_total_burst_count0_carry__1_n_6,write_total_burst_count0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({write_total_burst_count0_carry__1_n_8,write_total_burst_count0_carry__1_n_9,write_total_burst_count0_carry__1_n_10,write_total_burst_count0_carry__1_n_11,write_total_burst_count0_carry__1_n_12,write_total_burst_count0_carry__1_n_13,write_total_burst_count0_carry__1_n_14,write_total_burst_count0_carry__1_n_15}),
        .S(write_total_burst_count[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 write_total_burst_count0_carry__2
       (.CI(write_total_burst_count0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_write_total_burst_count0_carry__2_CO_UNCONNECTED[7:6],write_total_burst_count0_carry__2_n_2,write_total_burst_count0_carry__2_n_3,write_total_burst_count0_carry__2_n_4,write_total_burst_count0_carry__2_n_5,write_total_burst_count0_carry__2_n_6,write_total_burst_count0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_write_total_burst_count0_carry__2_O_UNCONNECTED[7],write_total_burst_count0_carry__2_n_9,write_total_burst_count0_carry__2_n_10,write_total_burst_count0_carry__2_n_11,write_total_burst_count0_carry__2_n_12,write_total_burst_count0_carry__2_n_13,write_total_burst_count0_carry__2_n_14,write_total_burst_count0_carry__2_n_15}),
        .S({1'b0,write_total_burst_count[31:25]}));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \write_total_burst_count[0]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count[0]),
        .O(\write_total_burst_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[10]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__0_n_14),
        .O(\write_total_burst_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[11]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__0_n_13),
        .O(\write_total_burst_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[12]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__0_n_12),
        .O(\write_total_burst_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[13]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__0_n_11),
        .O(\write_total_burst_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[14]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__0_n_10),
        .O(\write_total_burst_count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[15]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__0_n_9),
        .O(\write_total_burst_count[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[16]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__0_n_8),
        .O(\write_total_burst_count[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[17]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__1_n_15),
        .O(\write_total_burst_count[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[18]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__1_n_14),
        .O(\write_total_burst_count[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[19]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__1_n_13),
        .O(\write_total_burst_count[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[1]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry_n_15),
        .O(\write_total_burst_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[20]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__1_n_12),
        .O(\write_total_burst_count[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[21]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__1_n_11),
        .O(\write_total_burst_count[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[22]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__1_n_10),
        .O(\write_total_burst_count[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[23]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__1_n_9),
        .O(\write_total_burst_count[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[24]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__1_n_8),
        .O(\write_total_burst_count[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[25]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__2_n_15),
        .O(\write_total_burst_count[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[26]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__2_n_14),
        .O(\write_total_burst_count[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[27]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__2_n_13),
        .O(\write_total_burst_count[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[28]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__2_n_12),
        .O(\write_total_burst_count[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[29]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__2_n_11),
        .O(\write_total_burst_count[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[2]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry_n_14),
        .O(\write_total_burst_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[30]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__2_n_10),
        .O(\write_total_burst_count[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002200000F)) 
    \write_total_burst_count[31]_i_1 
       (.I0(m_axi_bready_i_4_n_0),
        .I1(m_axi_wlast_i_2_n_0),
        .I2(write_enable),
        .I3(write_state__0[0]),
        .I4(write_state__0[1]),
        .I5(write_state__0[2]),
        .O(\write_total_burst_count[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[31]_i_2 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__2_n_9),
        .O(\write_total_burst_count[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[3]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry_n_13),
        .O(\write_total_burst_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[4]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry_n_12),
        .O(\write_total_burst_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[5]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry_n_11),
        .O(\write_total_burst_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[6]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry_n_10),
        .O(\write_total_burst_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[7]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry_n_9),
        .O(\write_total_burst_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[8]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry_n_8),
        .O(\write_total_burst_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_total_burst_count[9]_i_1 
       (.I0(write_state__0[1]),
        .I1(write_total_burst_count0_carry__0_n_15),
        .O(\write_total_burst_count[9]_i_1_n_0 ));
  FDRE \write_total_burst_count_reg[0] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[0]_i_1_n_0 ),
        .Q(write_total_burst_count[0]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[10] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[10]_i_1_n_0 ),
        .Q(write_total_burst_count[10]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[11] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[11]_i_1_n_0 ),
        .Q(write_total_burst_count[11]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[12] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[12]_i_1_n_0 ),
        .Q(write_total_burst_count[12]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[13] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[13]_i_1_n_0 ),
        .Q(write_total_burst_count[13]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[14] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[14]_i_1_n_0 ),
        .Q(write_total_burst_count[14]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[15] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[15]_i_1_n_0 ),
        .Q(write_total_burst_count[15]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[16] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[16]_i_1_n_0 ),
        .Q(write_total_burst_count[16]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[17] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[17]_i_1_n_0 ),
        .Q(write_total_burst_count[17]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[18] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[18]_i_1_n_0 ),
        .Q(write_total_burst_count[18]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[19] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[19]_i_1_n_0 ),
        .Q(write_total_burst_count[19]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[1] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[1]_i_1_n_0 ),
        .Q(write_total_burst_count[1]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[20] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[20]_i_1_n_0 ),
        .Q(write_total_burst_count[20]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[21] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[21]_i_1_n_0 ),
        .Q(write_total_burst_count[21]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[22] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[22]_i_1_n_0 ),
        .Q(write_total_burst_count[22]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[23] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[23]_i_1_n_0 ),
        .Q(write_total_burst_count[23]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[24] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[24]_i_1_n_0 ),
        .Q(write_total_burst_count[24]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[25] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[25]_i_1_n_0 ),
        .Q(write_total_burst_count[25]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[26] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[26]_i_1_n_0 ),
        .Q(write_total_burst_count[26]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[27] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[27]_i_1_n_0 ),
        .Q(write_total_burst_count[27]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[28] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[28]_i_1_n_0 ),
        .Q(write_total_burst_count[28]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[29] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[29]_i_1_n_0 ),
        .Q(write_total_burst_count[29]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[2] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[2]_i_1_n_0 ),
        .Q(write_total_burst_count[2]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[30] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[30]_i_1_n_0 ),
        .Q(write_total_burst_count[30]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[31] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[31]_i_2_n_0 ),
        .Q(write_total_burst_count[31]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[3] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[3]_i_1_n_0 ),
        .Q(write_total_burst_count[3]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[4] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[4]_i_1_n_0 ),
        .Q(write_total_burst_count[4]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[5] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[5]_i_1_n_0 ),
        .Q(write_total_burst_count[5]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[6] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[6]_i_1_n_0 ),
        .Q(write_total_burst_count[6]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[7] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[7]_i_1_n_0 ),
        .Q(write_total_burst_count[7]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[8] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[8]_i_1_n_0 ),
        .Q(write_total_burst_count[8]),
        .R(m_axi_arvalid_i_1_n_0));
  FDRE \write_total_burst_count_reg[9] 
       (.C(aclk),
        .CE(\write_total_burst_count[31]_i_1_n_0 ),
        .D(\write_total_burst_count[9]_i_1_n_0 ),
        .Q(write_total_burst_count[9]),
        .R(m_axi_arvalid_i_1_n_0));
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
