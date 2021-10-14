//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
//Date        : Thu Oct 14 10:23:16 2021
//Host        : LTUS435291 running 64-bit major release  (build 9200)
//Command     : generate_target top.bd
//Design      : top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top.hwdef" *) 
module top
   (aclk,
    aresetn,
    ila_read_access_tick_ack,
    ila_read_active,
    ila_read_bresp,
    ila_read_burst_count,
    ila_read_burst_tick_ack,
    ila_read_ddr_full,
    ila_read_ddr_has_data,
    ila_read_ddr_occupation,
    ila_read_index,
    ila_read_state,
    ila_rx_data,
    ila_rx_fifo_data_ready,
    ila_rx_fifo_rden,
    ila_rx_ready,
    ila_rx_valid,
    ila_tx_data,
    ila_tx_fifo_wren,
    ila_tx_prog_empty,
    ila_tx_ready,
    ila_tx_valid,
    ila_write_access_tick_ack,
    ila_write_active,
    ila_write_bresp,
    ila_write_burst_counter,
    ila_write_burst_tick_ack,
    ila_write_ddr_full,
    ila_write_ddr_has_space,
    ila_write_ddr_occupation,
    ila_write_index,
    ila_write_state,
    ilamaxi_araddr,
    ilamaxi_arlen,
    ilamaxi_arready,
    ilamaxi_arvalid,
    ilamaxi_awaddr,
    ilamaxi_awlen,
    ilamaxi_awready,
    ilamaxi_awvalid,
    ilamaxi_bready,
    ilamaxi_bresp,
    ilamaxi_bvalid,
    ilamaxi_rdata,
    ilamaxi_rlast,
    ilamaxi_rready,
    ilamaxi_rvalid,
    ilamaxi_wdata,
    ilamaxi_wlast,
    ilamaxi_wready,
    ilamaxi_wvalid,
    m_axis_tx_tdata,
    m_axis_tx_tready,
    m_axis_tx_tvalid,
    read_access_size_bytes,
    read_access_tick,
    read_base_address,
    read_burst_count,
    read_burst_len,
    read_burst_tick,
    read_busy,
    read_current_burst_address,
    read_ddr_size,
    read_enable,
    read_total_burst_count,
    read_underflow_count,
    read_underflow_ins,
    rsta_busy,
    rx_fifo_data_ready,
    s_axis_rx_tdata,
    s_axis_rx_tready,
    s_axis_rx_tvalid,
    tx_fifo_empty,
    tx_fifo_has_space,
    write_access_size_bytes,
    write_access_tick,
    write_base_address,
    write_bresp,
    write_burst_count,
    write_burst_len,
    write_burst_tick,
    write_busy,
    write_current_burst_address,
    write_ddr_size,
    write_enable,
    write_overflow_count,
    write_overflow_ins,
    write_total_burst_count);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF m_axis_tx:s_axis_rx, ASSOCIATED_RESET aresetn, CLK_DOMAIN top_aclk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  output ila_read_access_tick_ack;
  output ila_read_active;
  output [1:0]ila_read_bresp;
  output [32:0]ila_read_burst_count;
  output ila_read_burst_tick_ack;
  output ila_read_ddr_full;
  output ila_read_ddr_has_data;
  output [31:0]ila_read_ddr_occupation;
  output [8:0]ila_read_index;
  output [2:0]ila_read_state;
  output [127:0]ila_rx_data;
  output ila_rx_fifo_data_ready;
  output ila_rx_fifo_rden;
  output ila_rx_ready;
  output ila_rx_valid;
  output [127:0]ila_tx_data;
  output ila_tx_fifo_wren;
  output ila_tx_prog_empty;
  output ila_tx_ready;
  output ila_tx_valid;
  output ila_write_access_tick_ack;
  output ila_write_active;
  output [1:0]ila_write_bresp;
  output [31:0]ila_write_burst_counter;
  output ila_write_burst_tick_ack;
  output ila_write_ddr_full;
  output ila_write_ddr_has_space;
  output [31:0]ila_write_ddr_occupation;
  output [8:0]ila_write_index;
  output [2:0]ila_write_state;
  output [47:0]ilamaxi_araddr;
  output [7:0]ilamaxi_arlen;
  output ilamaxi_arready;
  output ilamaxi_arvalid;
  output [47:0]ilamaxi_awaddr;
  output [7:0]ilamaxi_awlen;
  output ilamaxi_awready;
  output ilamaxi_awvalid;
  output ilamaxi_bready;
  output [1:0]ilamaxi_bresp;
  output ilamaxi_bvalid;
  output [127:0]ilamaxi_rdata;
  output ilamaxi_rlast;
  output ilamaxi_rready;
  output ilamaxi_rvalid;
  output [127:0]ilamaxi_wdata;
  output ilamaxi_wlast;
  output ilamaxi_wready;
  output ilamaxi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_tx, CLK_DOMAIN top_aclk, FREQ_HZ 200000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [127:0]m_axis_tx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TREADY" *) input m_axis_tx_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_tx TVALID" *) output m_axis_tx_tvalid;
  input [16:0]read_access_size_bytes;
  input read_access_tick;
  input [47:0]read_base_address;
  input [31:0]read_burst_count;
  input [8:0]read_burst_len;
  output read_burst_tick;
  output read_busy;
  output [31:0]read_current_burst_address;
  input [31:0]read_ddr_size;
  input read_enable;
  output [31:0]read_total_burst_count;
  output [7:0]read_underflow_count;
  output read_underflow_ins;
  output rsta_busy;
  input rx_fifo_data_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_rx, CLK_DOMAIN top_aclk, FREQ_HZ 200000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [127:0]s_axis_rx_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx TREADY" *) output s_axis_rx_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_rx TVALID" *) input s_axis_rx_tvalid;
  input tx_fifo_empty;
  input tx_fifo_has_space;
  input [16:0]write_access_size_bytes;
  input write_access_tick;
  input [47:0]write_base_address;
  output [1:0]write_bresp;
  input [31:0]write_burst_count;
  input [8:0]write_burst_len;
  output write_burst_tick;
  output write_busy;
  output [31:0]write_current_burst_address;
  input [31:0]write_ddr_size;
  input write_enable;
  output [7:0]write_overflow_count;
  output write_overflow_ins;
  output [31:0]write_total_burst_count;

  wire aclk_1;
  wire aresetn_1;
  wire [13:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [127:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [127:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [15:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire blk_mem_gen_0_rsta_busy;
  wire data_path_dmac_0_ila_read_access_tick_ack;
  wire data_path_dmac_0_ila_read_active;
  wire [1:0]data_path_dmac_0_ila_read_bresp;
  wire [32:0]data_path_dmac_0_ila_read_burst_count;
  wire data_path_dmac_0_ila_read_burst_tick_ack;
  wire data_path_dmac_0_ila_read_ddr_full;
  wire data_path_dmac_0_ila_read_ddr_has_data;
  wire [31:0]data_path_dmac_0_ila_read_ddr_occupation;
  wire [8:0]data_path_dmac_0_ila_read_index;
  wire [2:0]data_path_dmac_0_ila_read_state;
  wire [127:0]data_path_dmac_0_ila_rx_data;
  wire data_path_dmac_0_ila_rx_fifo_data_ready;
  wire data_path_dmac_0_ila_rx_fifo_rden;
  wire data_path_dmac_0_ila_rx_ready;
  wire data_path_dmac_0_ila_rx_valid;
  wire [127:0]data_path_dmac_0_ila_tx_data;
  wire data_path_dmac_0_ila_tx_fifo_wren;
  wire data_path_dmac_0_ila_tx_prog_empty;
  wire data_path_dmac_0_ila_tx_ready;
  wire data_path_dmac_0_ila_tx_valid;
  wire data_path_dmac_0_ila_write_access_tick_ack;
  wire data_path_dmac_0_ila_write_active;
  wire [1:0]data_path_dmac_0_ila_write_bresp;
  wire [31:0]data_path_dmac_0_ila_write_burst_counter;
  wire data_path_dmac_0_ila_write_burst_tick_ack;
  wire data_path_dmac_0_ila_write_ddr_full;
  wire data_path_dmac_0_ila_write_ddr_has_space;
  wire [31:0]data_path_dmac_0_ila_write_ddr_occupation;
  wire [8:0]data_path_dmac_0_ila_write_index;
  wire [2:0]data_path_dmac_0_ila_write_state;
  wire [47:0]data_path_dmac_0_ilamaxi_araddr;
  wire [7:0]data_path_dmac_0_ilamaxi_arlen;
  wire data_path_dmac_0_ilamaxi_arready;
  wire data_path_dmac_0_ilamaxi_arvalid;
  wire [47:0]data_path_dmac_0_ilamaxi_awaddr;
  wire [7:0]data_path_dmac_0_ilamaxi_awlen;
  wire data_path_dmac_0_ilamaxi_awready;
  wire data_path_dmac_0_ilamaxi_awvalid;
  wire data_path_dmac_0_ilamaxi_bready;
  wire [1:0]data_path_dmac_0_ilamaxi_bresp;
  wire data_path_dmac_0_ilamaxi_bvalid;
  wire [127:0]data_path_dmac_0_ilamaxi_rdata;
  wire data_path_dmac_0_ilamaxi_rlast;
  wire data_path_dmac_0_ilamaxi_rready;
  wire data_path_dmac_0_ilamaxi_rvalid;
  wire [127:0]data_path_dmac_0_ilamaxi_wdata;
  wire data_path_dmac_0_ilamaxi_wlast;
  wire data_path_dmac_0_ilamaxi_wready;
  wire data_path_dmac_0_ilamaxi_wvalid;
  wire [47:0]data_path_dmac_0_m_axi_ARADDR;
  wire [1:0]data_path_dmac_0_m_axi_ARBURST;
  wire [3:0]data_path_dmac_0_m_axi_ARCACHE;
  wire [7:0]data_path_dmac_0_m_axi_ARLEN;
  wire data_path_dmac_0_m_axi_ARLOCK;
  wire [2:0]data_path_dmac_0_m_axi_ARPROT;
  wire data_path_dmac_0_m_axi_ARREADY;
  wire [2:0]data_path_dmac_0_m_axi_ARSIZE;
  wire data_path_dmac_0_m_axi_ARVALID;
  wire [47:0]data_path_dmac_0_m_axi_AWADDR;
  wire [1:0]data_path_dmac_0_m_axi_AWBURST;
  wire [3:0]data_path_dmac_0_m_axi_AWCACHE;
  wire [7:0]data_path_dmac_0_m_axi_AWLEN;
  wire data_path_dmac_0_m_axi_AWLOCK;
  wire [2:0]data_path_dmac_0_m_axi_AWPROT;
  wire data_path_dmac_0_m_axi_AWREADY;
  wire [2:0]data_path_dmac_0_m_axi_AWSIZE;
  wire data_path_dmac_0_m_axi_AWVALID;
  wire data_path_dmac_0_m_axi_BREADY;
  wire [1:0]data_path_dmac_0_m_axi_BRESP;
  wire data_path_dmac_0_m_axi_BVALID;
  wire [127:0]data_path_dmac_0_m_axi_RDATA;
  wire data_path_dmac_0_m_axi_RLAST;
  wire data_path_dmac_0_m_axi_RREADY;
  wire [1:0]data_path_dmac_0_m_axi_RRESP;
  wire data_path_dmac_0_m_axi_RVALID;
  wire [127:0]data_path_dmac_0_m_axi_WDATA;
  wire data_path_dmac_0_m_axi_WLAST;
  wire data_path_dmac_0_m_axi_WREADY;
  wire [15:0]data_path_dmac_0_m_axi_WSTRB;
  wire data_path_dmac_0_m_axi_WVALID;
  wire [127:0]data_path_dmac_0_m_axis_tx_TDATA;
  wire data_path_dmac_0_m_axis_tx_TREADY;
  wire data_path_dmac_0_m_axis_tx_TVALID;
  wire data_path_dmac_0_read_burst_tick;
  wire data_path_dmac_0_read_busy;
  wire [31:0]data_path_dmac_0_read_current_burst_address;
  wire [31:0]data_path_dmac_0_read_total_burst_count;
  wire [7:0]data_path_dmac_0_read_underflow_count;
  wire data_path_dmac_0_read_underflow_ins;
  wire [1:0]data_path_dmac_0_write_bresp;
  wire data_path_dmac_0_write_burst_tick;
  wire data_path_dmac_0_write_busy;
  wire [31:0]data_path_dmac_0_write_current_burst_address;
  wire [7:0]data_path_dmac_0_write_overflow_count;
  wire data_path_dmac_0_write_overflow_ins;
  wire [31:0]data_path_dmac_0_write_total_burst_count;
  wire [16:0]read_access_size_bytes_1;
  wire read_access_tick_1;
  wire [47:0]read_base_address_1;
  wire [31:0]read_burst_count_1;
  wire [8:0]read_burst_len_1;
  wire [31:0]read_ddr_size_1;
  wire read_enable_1;
  wire rx_fifo_data_ready_1;
  wire [127:0]s_axis_rx_1_TDATA;
  wire s_axis_rx_1_TREADY;
  wire s_axis_rx_1_TVALID;
  wire tx_fifo_empty_1;
  wire tx_fifo_has_space_1;
  wire [16:0]write_access_size_bytes_1;
  wire write_access_tick_1;
  wire [47:0]write_base_address_1;
  wire [31:0]write_burst_count_1;
  wire [8:0]write_burst_len_1;
  wire [31:0]write_ddr_size_1;
  wire write_enable_1;

  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign data_path_dmac_0_m_axis_tx_TREADY = m_axis_tx_tready;
  assign ila_read_access_tick_ack = data_path_dmac_0_ila_read_access_tick_ack;
  assign ila_read_active = data_path_dmac_0_ila_read_active;
  assign ila_read_bresp[1:0] = data_path_dmac_0_ila_read_bresp;
  assign ila_read_burst_count[32:0] = data_path_dmac_0_ila_read_burst_count;
  assign ila_read_burst_tick_ack = data_path_dmac_0_ila_read_burst_tick_ack;
  assign ila_read_ddr_full = data_path_dmac_0_ila_read_ddr_full;
  assign ila_read_ddr_has_data = data_path_dmac_0_ila_read_ddr_has_data;
  assign ila_read_ddr_occupation[31:0] = data_path_dmac_0_ila_read_ddr_occupation;
  assign ila_read_index[8:0] = data_path_dmac_0_ila_read_index;
  assign ila_read_state[2:0] = data_path_dmac_0_ila_read_state;
  assign ila_rx_data[127:0] = data_path_dmac_0_ila_rx_data;
  assign ila_rx_fifo_data_ready = data_path_dmac_0_ila_rx_fifo_data_ready;
  assign ila_rx_fifo_rden = data_path_dmac_0_ila_rx_fifo_rden;
  assign ila_rx_ready = data_path_dmac_0_ila_rx_ready;
  assign ila_rx_valid = data_path_dmac_0_ila_rx_valid;
  assign ila_tx_data[127:0] = data_path_dmac_0_ila_tx_data;
  assign ila_tx_fifo_wren = data_path_dmac_0_ila_tx_fifo_wren;
  assign ila_tx_prog_empty = data_path_dmac_0_ila_tx_prog_empty;
  assign ila_tx_ready = data_path_dmac_0_ila_tx_ready;
  assign ila_tx_valid = data_path_dmac_0_ila_tx_valid;
  assign ila_write_access_tick_ack = data_path_dmac_0_ila_write_access_tick_ack;
  assign ila_write_active = data_path_dmac_0_ila_write_active;
  assign ila_write_bresp[1:0] = data_path_dmac_0_ila_write_bresp;
  assign ila_write_burst_counter[31:0] = data_path_dmac_0_ila_write_burst_counter;
  assign ila_write_burst_tick_ack = data_path_dmac_0_ila_write_burst_tick_ack;
  assign ila_write_ddr_full = data_path_dmac_0_ila_write_ddr_full;
  assign ila_write_ddr_has_space = data_path_dmac_0_ila_write_ddr_has_space;
  assign ila_write_ddr_occupation[31:0] = data_path_dmac_0_ila_write_ddr_occupation;
  assign ila_write_index[8:0] = data_path_dmac_0_ila_write_index;
  assign ila_write_state[2:0] = data_path_dmac_0_ila_write_state;
  assign ilamaxi_araddr[47:0] = data_path_dmac_0_ilamaxi_araddr;
  assign ilamaxi_arlen[7:0] = data_path_dmac_0_ilamaxi_arlen;
  assign ilamaxi_arready = data_path_dmac_0_ilamaxi_arready;
  assign ilamaxi_arvalid = data_path_dmac_0_ilamaxi_arvalid;
  assign ilamaxi_awaddr[47:0] = data_path_dmac_0_ilamaxi_awaddr;
  assign ilamaxi_awlen[7:0] = data_path_dmac_0_ilamaxi_awlen;
  assign ilamaxi_awready = data_path_dmac_0_ilamaxi_awready;
  assign ilamaxi_awvalid = data_path_dmac_0_ilamaxi_awvalid;
  assign ilamaxi_bready = data_path_dmac_0_ilamaxi_bready;
  assign ilamaxi_bresp[1:0] = data_path_dmac_0_ilamaxi_bresp;
  assign ilamaxi_bvalid = data_path_dmac_0_ilamaxi_bvalid;
  assign ilamaxi_rdata[127:0] = data_path_dmac_0_ilamaxi_rdata;
  assign ilamaxi_rlast = data_path_dmac_0_ilamaxi_rlast;
  assign ilamaxi_rready = data_path_dmac_0_ilamaxi_rready;
  assign ilamaxi_rvalid = data_path_dmac_0_ilamaxi_rvalid;
  assign ilamaxi_wdata[127:0] = data_path_dmac_0_ilamaxi_wdata;
  assign ilamaxi_wlast = data_path_dmac_0_ilamaxi_wlast;
  assign ilamaxi_wready = data_path_dmac_0_ilamaxi_wready;
  assign ilamaxi_wvalid = data_path_dmac_0_ilamaxi_wvalid;
  assign m_axis_tx_tdata[127:0] = data_path_dmac_0_m_axis_tx_TDATA;
  assign m_axis_tx_tvalid = data_path_dmac_0_m_axis_tx_TVALID;
  assign read_access_size_bytes_1 = read_access_size_bytes[16:0];
  assign read_access_tick_1 = read_access_tick;
  assign read_base_address_1 = read_base_address[47:0];
  assign read_burst_count_1 = read_burst_count[31:0];
  assign read_burst_len_1 = read_burst_len[8:0];
  assign read_burst_tick = data_path_dmac_0_read_burst_tick;
  assign read_busy = data_path_dmac_0_read_busy;
  assign read_current_burst_address[31:0] = data_path_dmac_0_read_current_burst_address;
  assign read_ddr_size_1 = read_ddr_size[31:0];
  assign read_enable_1 = read_enable;
  assign read_total_burst_count[31:0] = data_path_dmac_0_read_total_burst_count;
  assign read_underflow_count[7:0] = data_path_dmac_0_read_underflow_count;
  assign read_underflow_ins = data_path_dmac_0_read_underflow_ins;
  assign rsta_busy = blk_mem_gen_0_rsta_busy;
  assign rx_fifo_data_ready_1 = rx_fifo_data_ready;
  assign s_axis_rx_1_TDATA = s_axis_rx_tdata[127:0];
  assign s_axis_rx_1_TVALID = s_axis_rx_tvalid;
  assign s_axis_rx_tready = s_axis_rx_1_TREADY;
  assign tx_fifo_empty_1 = tx_fifo_empty;
  assign tx_fifo_has_space_1 = tx_fifo_has_space;
  assign write_access_size_bytes_1 = write_access_size_bytes[16:0];
  assign write_access_tick_1 = write_access_tick;
  assign write_base_address_1 = write_base_address[47:0];
  assign write_bresp[1:0] = data_path_dmac_0_write_bresp;
  assign write_burst_count_1 = write_burst_count[31:0];
  assign write_burst_len_1 = write_burst_len[8:0];
  assign write_burst_tick = data_path_dmac_0_write_burst_tick;
  assign write_busy = data_path_dmac_0_write_busy;
  assign write_current_burst_address[31:0] = data_path_dmac_0_write_current_burst_address;
  assign write_ddr_size_1 = write_ddr_size[31:0];
  assign write_enable_1 = write_enable;
  assign write_overflow_count[7:0] = data_path_dmac_0_write_overflow_count;
  assign write_overflow_ins = data_path_dmac_0_write_overflow_ins;
  assign write_total_burst_count[31:0] = data_path_dmac_0_write_total_burst_count;
  top_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(aclk_1),
        .s_axi_araddr(data_path_dmac_0_m_axi_ARADDR[13:0]),
        .s_axi_arburst(data_path_dmac_0_m_axi_ARBURST),
        .s_axi_arcache(data_path_dmac_0_m_axi_ARCACHE),
        .s_axi_aresetn(aresetn_1),
        .s_axi_arlen(data_path_dmac_0_m_axi_ARLEN),
        .s_axi_arlock(data_path_dmac_0_m_axi_ARLOCK),
        .s_axi_arprot(data_path_dmac_0_m_axi_ARPROT),
        .s_axi_arready(data_path_dmac_0_m_axi_ARREADY),
        .s_axi_arsize(data_path_dmac_0_m_axi_ARSIZE),
        .s_axi_arvalid(data_path_dmac_0_m_axi_ARVALID),
        .s_axi_awaddr(data_path_dmac_0_m_axi_AWADDR[13:0]),
        .s_axi_awburst(data_path_dmac_0_m_axi_AWBURST),
        .s_axi_awcache(data_path_dmac_0_m_axi_AWCACHE),
        .s_axi_awlen(data_path_dmac_0_m_axi_AWLEN),
        .s_axi_awlock(data_path_dmac_0_m_axi_AWLOCK),
        .s_axi_awprot(data_path_dmac_0_m_axi_AWPROT),
        .s_axi_awready(data_path_dmac_0_m_axi_AWREADY),
        .s_axi_awsize(data_path_dmac_0_m_axi_AWSIZE),
        .s_axi_awvalid(data_path_dmac_0_m_axi_AWVALID),
        .s_axi_bready(data_path_dmac_0_m_axi_BREADY),
        .s_axi_bresp(data_path_dmac_0_m_axi_BRESP),
        .s_axi_bvalid(data_path_dmac_0_m_axi_BVALID),
        .s_axi_rdata(data_path_dmac_0_m_axi_RDATA),
        .s_axi_rlast(data_path_dmac_0_m_axi_RLAST),
        .s_axi_rready(data_path_dmac_0_m_axi_RREADY),
        .s_axi_rresp(data_path_dmac_0_m_axi_RRESP),
        .s_axi_rvalid(data_path_dmac_0_m_axi_RVALID),
        .s_axi_wdata(data_path_dmac_0_m_axi_WDATA),
        .s_axi_wlast(data_path_dmac_0_m_axi_WLAST),
        .s_axi_wready(data_path_dmac_0_m_axi_WREADY),
        .s_axi_wstrb(data_path_dmac_0_m_axi_WSTRB),
        .s_axi_wvalid(data_path_dmac_0_m_axi_WVALID));
  top_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rsta_busy(blk_mem_gen_0_rsta_busy),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  top_data_path_dmac_0_0 data_path_dmac_0
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .ila_read_access_tick_ack(data_path_dmac_0_ila_read_access_tick_ack),
        .ila_read_active(data_path_dmac_0_ila_read_active),
        .ila_read_bresp(data_path_dmac_0_ila_read_bresp),
        .ila_read_burst_count(data_path_dmac_0_ila_read_burst_count),
        .ila_read_burst_tick_ack(data_path_dmac_0_ila_read_burst_tick_ack),
        .ila_read_ddr_full(data_path_dmac_0_ila_read_ddr_full),
        .ila_read_ddr_has_data(data_path_dmac_0_ila_read_ddr_has_data),
        .ila_read_ddr_occupation(data_path_dmac_0_ila_read_ddr_occupation),
        .ila_read_index(data_path_dmac_0_ila_read_index),
        .ila_read_state(data_path_dmac_0_ila_read_state),
        .ila_rx_data(data_path_dmac_0_ila_rx_data),
        .ila_rx_fifo_data_ready(data_path_dmac_0_ila_rx_fifo_data_ready),
        .ila_rx_fifo_rden(data_path_dmac_0_ila_rx_fifo_rden),
        .ila_rx_ready(data_path_dmac_0_ila_rx_ready),
        .ila_rx_valid(data_path_dmac_0_ila_rx_valid),
        .ila_tx_data(data_path_dmac_0_ila_tx_data),
        .ila_tx_fifo_wren(data_path_dmac_0_ila_tx_fifo_wren),
        .ila_tx_prog_empty(data_path_dmac_0_ila_tx_prog_empty),
        .ila_tx_ready(data_path_dmac_0_ila_tx_ready),
        .ila_tx_valid(data_path_dmac_0_ila_tx_valid),
        .ila_write_access_tick_ack(data_path_dmac_0_ila_write_access_tick_ack),
        .ila_write_active(data_path_dmac_0_ila_write_active),
        .ila_write_bresp(data_path_dmac_0_ila_write_bresp),
        .ila_write_burst_counter(data_path_dmac_0_ila_write_burst_counter),
        .ila_write_burst_tick_ack(data_path_dmac_0_ila_write_burst_tick_ack),
        .ila_write_ddr_full(data_path_dmac_0_ila_write_ddr_full),
        .ila_write_ddr_has_space(data_path_dmac_0_ila_write_ddr_has_space),
        .ila_write_ddr_occupation(data_path_dmac_0_ila_write_ddr_occupation),
        .ila_write_index(data_path_dmac_0_ila_write_index),
        .ila_write_state(data_path_dmac_0_ila_write_state),
        .ilamaxi_araddr(data_path_dmac_0_ilamaxi_araddr),
        .ilamaxi_arlen(data_path_dmac_0_ilamaxi_arlen),
        .ilamaxi_arready(data_path_dmac_0_ilamaxi_arready),
        .ilamaxi_arvalid(data_path_dmac_0_ilamaxi_arvalid),
        .ilamaxi_awaddr(data_path_dmac_0_ilamaxi_awaddr),
        .ilamaxi_awlen(data_path_dmac_0_ilamaxi_awlen),
        .ilamaxi_awready(data_path_dmac_0_ilamaxi_awready),
        .ilamaxi_awvalid(data_path_dmac_0_ilamaxi_awvalid),
        .ilamaxi_bready(data_path_dmac_0_ilamaxi_bready),
        .ilamaxi_bresp(data_path_dmac_0_ilamaxi_bresp),
        .ilamaxi_bvalid(data_path_dmac_0_ilamaxi_bvalid),
        .ilamaxi_rdata(data_path_dmac_0_ilamaxi_rdata),
        .ilamaxi_rlast(data_path_dmac_0_ilamaxi_rlast),
        .ilamaxi_rready(data_path_dmac_0_ilamaxi_rready),
        .ilamaxi_rvalid(data_path_dmac_0_ilamaxi_rvalid),
        .ilamaxi_wdata(data_path_dmac_0_ilamaxi_wdata),
        .ilamaxi_wlast(data_path_dmac_0_ilamaxi_wlast),
        .ilamaxi_wready(data_path_dmac_0_ilamaxi_wready),
        .ilamaxi_wvalid(data_path_dmac_0_ilamaxi_wvalid),
        .m_axi_araddr(data_path_dmac_0_m_axi_ARADDR),
        .m_axi_arburst(data_path_dmac_0_m_axi_ARBURST),
        .m_axi_arcache(data_path_dmac_0_m_axi_ARCACHE),
        .m_axi_arlen(data_path_dmac_0_m_axi_ARLEN),
        .m_axi_arlock(data_path_dmac_0_m_axi_ARLOCK),
        .m_axi_arprot(data_path_dmac_0_m_axi_ARPROT),
        .m_axi_arready(data_path_dmac_0_m_axi_ARREADY),
        .m_axi_arsize(data_path_dmac_0_m_axi_ARSIZE),
        .m_axi_arvalid(data_path_dmac_0_m_axi_ARVALID),
        .m_axi_awaddr(data_path_dmac_0_m_axi_AWADDR),
        .m_axi_awburst(data_path_dmac_0_m_axi_AWBURST),
        .m_axi_awcache(data_path_dmac_0_m_axi_AWCACHE),
        .m_axi_awlen(data_path_dmac_0_m_axi_AWLEN),
        .m_axi_awlock(data_path_dmac_0_m_axi_AWLOCK),
        .m_axi_awprot(data_path_dmac_0_m_axi_AWPROT),
        .m_axi_awready(data_path_dmac_0_m_axi_AWREADY),
        .m_axi_awsize(data_path_dmac_0_m_axi_AWSIZE),
        .m_axi_awvalid(data_path_dmac_0_m_axi_AWVALID),
        .m_axi_bready(data_path_dmac_0_m_axi_BREADY),
        .m_axi_bresp(data_path_dmac_0_m_axi_BRESP),
        .m_axi_bvalid(data_path_dmac_0_m_axi_BVALID),
        .m_axi_rdata(data_path_dmac_0_m_axi_RDATA),
        .m_axi_rlast(data_path_dmac_0_m_axi_RLAST),
        .m_axi_rready(data_path_dmac_0_m_axi_RREADY),
        .m_axi_rresp(data_path_dmac_0_m_axi_RRESP),
        .m_axi_rvalid(data_path_dmac_0_m_axi_RVALID),
        .m_axi_wdata(data_path_dmac_0_m_axi_WDATA),
        .m_axi_wlast(data_path_dmac_0_m_axi_WLAST),
        .m_axi_wready(data_path_dmac_0_m_axi_WREADY),
        .m_axi_wstrb(data_path_dmac_0_m_axi_WSTRB),
        .m_axi_wvalid(data_path_dmac_0_m_axi_WVALID),
        .m_axis_tx_tdata(data_path_dmac_0_m_axis_tx_TDATA),
        .m_axis_tx_tready(data_path_dmac_0_m_axis_tx_TREADY),
        .m_axis_tx_tvalid(data_path_dmac_0_m_axis_tx_TVALID),
        .read_access_size_bytes(read_access_size_bytes_1),
        .read_access_tick(read_access_tick_1),
        .read_base_address(read_base_address_1),
        .read_burst_count(read_burst_count_1),
        .read_burst_len(read_burst_len_1),
        .read_burst_tick(data_path_dmac_0_read_burst_tick),
        .read_busy(data_path_dmac_0_read_busy),
        .read_current_burst_address(data_path_dmac_0_read_current_burst_address),
        .read_ddr_size(read_ddr_size_1),
        .read_enable(read_enable_1),
        .read_total_burst_count(data_path_dmac_0_read_total_burst_count),
        .read_underflow_count(data_path_dmac_0_read_underflow_count),
        .read_underflow_ins(data_path_dmac_0_read_underflow_ins),
        .rx_fifo_data_ready(rx_fifo_data_ready_1),
        .s_axis_rx_tdata(s_axis_rx_1_TDATA),
        .s_axis_rx_tready(s_axis_rx_1_TREADY),
        .s_axis_rx_tvalid(s_axis_rx_1_TVALID),
        .tx_fifo_empty(tx_fifo_empty_1),
        .tx_fifo_has_space(tx_fifo_has_space_1),
        .write_access_size_bytes(write_access_size_bytes_1),
        .write_access_tick(write_access_tick_1),
        .write_base_address(write_base_address_1),
        .write_bresp(data_path_dmac_0_write_bresp),
        .write_burst_count(write_burst_count_1),
        .write_burst_len(write_burst_len_1),
        .write_burst_tick(data_path_dmac_0_write_burst_tick),
        .write_busy(data_path_dmac_0_write_busy),
        .write_current_burst_address(data_path_dmac_0_write_current_burst_address),
        .write_ddr_size(write_ddr_size_1),
        .write_enable(write_enable_1),
        .write_overflow_count(data_path_dmac_0_write_overflow_count),
        .write_overflow_ins(data_path_dmac_0_write_overflow_ins),
        .write_total_burst_count(data_path_dmac_0_write_total_burst_count));
endmodule
