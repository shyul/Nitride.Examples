// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Thu Oct 14 10:24:21 2021
// Host        : LTUS435291 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/M300039/GitHub/Nitride.Examples/verilogTest/test_dmac/test_dmac.gen/sources_1/bd/top/ip/top_data_path_dmac_0_0/top_data_path_dmac_0_0_stub.v
// Design      : top_data_path_dmac_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3cg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "data_path_dmac,Vivado 2020.2.2" *)
module top_data_path_dmac_0_0(ilamaxi_arready, ilamaxi_arvalid, 
  ilamaxi_rready, ilamaxi_rvalid, ilamaxi_rlast, ilamaxi_awready, ilamaxi_awvalid, 
  ilamaxi_wready, ilamaxi_wvalid, ilamaxi_wlast, ilamaxi_bvalid, ilamaxi_bready, 
  ilamaxi_bresp, ilamaxi_araddr, ilamaxi_awaddr, ilamaxi_arlen, ilamaxi_awlen, ilamaxi_rdata, 
  ilamaxi_wdata, ila_tx_ready, ila_tx_valid, ila_tx_prog_empty, ila_rx_ready, ila_rx_valid, 
  ila_rx_fifo_data_ready, ila_tx_data, ila_rx_data, ila_read_state, ila_read_bresp, 
  ila_tx_fifo_wren, ila_read_active, ila_read_burst_count, ila_read_index, 
  ila_read_ddr_occupation, ila_read_burst_tick_ack, ila_read_access_tick_ack, 
  ila_read_ddr_has_data, ila_read_ddr_full, ila_write_state, ila_write_bresp, 
  ila_rx_fifo_rden, ila_write_active, ila_write_burst_counter, ila_write_index, 
  ila_write_ddr_occupation, ila_write_burst_tick_ack, ila_write_access_tick_ack, 
  ila_write_ddr_has_space, ila_write_ddr_full, aclk, aresetn, write_enable, write_busy, 
  write_base_address, write_burst_count, write_burst_len, write_ddr_size, write_bresp, 
  write_burst_tick, write_total_burst_count, write_current_burst_address, 
  write_access_size_bytes, write_access_tick, write_overflow_ins, write_overflow_count, 
  read_enable, read_busy, read_base_address, read_burst_count, read_burst_len, read_ddr_size, 
  read_burst_tick, read_total_burst_count, read_current_burst_address, 
  read_access_size_bytes, read_access_tick, read_underflow_ins, read_underflow_count, 
  s_axis_rx_tdata, s_axis_rx_tvalid, s_axis_rx_tready, rx_fifo_data_ready, m_axis_tx_tdata, 
  m_axis_tx_tvalid, m_axis_tx_tready, tx_fifo_has_space, tx_fifo_empty, m_axi_awaddr, 
  m_axi_awlen, m_axi_awsize, m_axi_awburst, m_axi_awvalid, m_axi_awready, m_axi_awlock, 
  m_axi_awcache, m_axi_awprot, m_axi_awqos, m_axi_wdata, m_axi_wlast, m_axi_wvalid, 
  m_axi_wready, m_axi_wstrb, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_araddr, 
  m_axi_arlen, m_axi_arsize, m_axi_arburst, m_axi_arvalid, m_axi_arready, m_axi_arlock, 
  m_axi_arcache, m_axi_arprot, m_axi_arqos, m_axi_rdata, m_axi_rresp, m_axi_rlast, 
  m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="ilamaxi_arready,ilamaxi_arvalid,ilamaxi_rready,ilamaxi_rvalid,ilamaxi_rlast,ilamaxi_awready,ilamaxi_awvalid,ilamaxi_wready,ilamaxi_wvalid,ilamaxi_wlast,ilamaxi_bvalid,ilamaxi_bready,ilamaxi_bresp[1:0],ilamaxi_araddr[47:0],ilamaxi_awaddr[47:0],ilamaxi_arlen[7:0],ilamaxi_awlen[7:0],ilamaxi_rdata[127:0],ilamaxi_wdata[127:0],ila_tx_ready,ila_tx_valid,ila_tx_prog_empty,ila_rx_ready,ila_rx_valid,ila_rx_fifo_data_ready,ila_tx_data[127:0],ila_rx_data[127:0],ila_read_state[2:0],ila_read_bresp[1:0],ila_tx_fifo_wren,ila_read_active,ila_read_burst_count[32:0],ila_read_index[8:0],ila_read_ddr_occupation[31:0],ila_read_burst_tick_ack,ila_read_access_tick_ack,ila_read_ddr_has_data,ila_read_ddr_full,ila_write_state[2:0],ila_write_bresp[1:0],ila_rx_fifo_rden,ila_write_active,ila_write_burst_counter[31:0],ila_write_index[8:0],ila_write_ddr_occupation[31:0],ila_write_burst_tick_ack,ila_write_access_tick_ack,ila_write_ddr_has_space,ila_write_ddr_full,aclk,aresetn,write_enable,write_busy,write_base_address[47:0],write_burst_count[31:0],write_burst_len[8:0],write_ddr_size[31:0],write_bresp[1:0],write_burst_tick,write_total_burst_count[31:0],write_current_burst_address[31:0],write_access_size_bytes[16:0],write_access_tick,write_overflow_ins,write_overflow_count[7:0],read_enable,read_busy,read_base_address[47:0],read_burst_count[31:0],read_burst_len[8:0],read_ddr_size[31:0],read_burst_tick,read_total_burst_count[31:0],read_current_burst_address[31:0],read_access_size_bytes[16:0],read_access_tick,read_underflow_ins,read_underflow_count[7:0],s_axis_rx_tdata[127:0],s_axis_rx_tvalid,s_axis_rx_tready,rx_fifo_data_ready,m_axis_tx_tdata[127:0],m_axis_tx_tvalid,m_axis_tx_tready,tx_fifo_has_space,tx_fifo_empty,m_axi_awaddr[47:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awvalid,m_axi_awready,m_axi_awlock,m_axi_awcache[3:0],m_axi_awprot[2:0],m_axi_awqos[3:0],m_axi_wdata[127:0],m_axi_wlast,m_axi_wvalid,m_axi_wready,m_axi_wstrb[15:0],m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,m_axi_araddr[47:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arvalid,m_axi_arready,m_axi_arlock,m_axi_arcache[3:0],m_axi_arprot[2:0],m_axi_arqos[3:0],m_axi_rdata[127:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,m_axi_rready" */;
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
  input aclk;
  input aresetn;
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
  input [127:0]s_axis_rx_tdata;
  input s_axis_rx_tvalid;
  output s_axis_rx_tready;
  input rx_fifo_data_ready;
  output [127:0]m_axis_tx_tdata;
  output m_axis_tx_tvalid;
  input m_axis_tx_tready;
  input tx_fifo_has_space;
  input tx_fifo_empty;
  output [47:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output m_axi_awvalid;
  input m_axi_awready;
  output m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [127:0]m_axi_wdata;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  output [15:0]m_axi_wstrb;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [47:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output m_axi_arvalid;
  input m_axi_arready;
  output m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
endmodule
