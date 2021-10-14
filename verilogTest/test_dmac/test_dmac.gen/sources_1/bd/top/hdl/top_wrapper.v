//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
//Date        : Thu Oct 14 10:23:17 2021
//Host        : LTUS435291 running 64-bit major release  (build 9200)
//Command     : generate_target top_wrapper.bd
//Design      : top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_wrapper
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
  input aclk;
  input aresetn;
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
  output [127:0]m_axis_tx_tdata;
  input m_axis_tx_tready;
  output m_axis_tx_tvalid;
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
  input [127:0]s_axis_rx_tdata;
  output s_axis_rx_tready;
  input s_axis_rx_tvalid;
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

  wire aclk;
  wire aresetn;
  wire ila_read_access_tick_ack;
  wire ila_read_active;
  wire [1:0]ila_read_bresp;
  wire [32:0]ila_read_burst_count;
  wire ila_read_burst_tick_ack;
  wire ila_read_ddr_full;
  wire ila_read_ddr_has_data;
  wire [31:0]ila_read_ddr_occupation;
  wire [8:0]ila_read_index;
  wire [2:0]ila_read_state;
  wire [127:0]ila_rx_data;
  wire ila_rx_fifo_data_ready;
  wire ila_rx_fifo_rden;
  wire ila_rx_ready;
  wire ila_rx_valid;
  wire [127:0]ila_tx_data;
  wire ila_tx_fifo_wren;
  wire ila_tx_prog_empty;
  wire ila_tx_ready;
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
  wire [47:0]ilamaxi_araddr;
  wire [7:0]ilamaxi_arlen;
  wire ilamaxi_arready;
  wire ilamaxi_arvalid;
  wire [47:0]ilamaxi_awaddr;
  wire [7:0]ilamaxi_awlen;
  wire ilamaxi_awready;
  wire ilamaxi_awvalid;
  wire ilamaxi_bready;
  wire [1:0]ilamaxi_bresp;
  wire ilamaxi_bvalid;
  wire [127:0]ilamaxi_rdata;
  wire ilamaxi_rlast;
  wire ilamaxi_rready;
  wire ilamaxi_rvalid;
  wire [127:0]ilamaxi_wdata;
  wire ilamaxi_wlast;
  wire ilamaxi_wready;
  wire ilamaxi_wvalid;
  wire [127:0]m_axis_tx_tdata;
  wire m_axis_tx_tready;
  wire m_axis_tx_tvalid;
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
  wire rsta_busy;
  wire rx_fifo_data_ready;
  wire [127:0]s_axis_rx_tdata;
  wire s_axis_rx_tready;
  wire s_axis_rx_tvalid;
  wire tx_fifo_empty;
  wire tx_fifo_has_space;
  wire [16:0]write_access_size_bytes;
  wire write_access_tick;
  wire [47:0]write_base_address;
  wire [1:0]write_bresp;
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

  top top_i
       (.aclk(aclk),
        .aresetn(aresetn),
        .ila_read_access_tick_ack(ila_read_access_tick_ack),
        .ila_read_active(ila_read_active),
        .ila_read_bresp(ila_read_bresp),
        .ila_read_burst_count(ila_read_burst_count),
        .ila_read_burst_tick_ack(ila_read_burst_tick_ack),
        .ila_read_ddr_full(ila_read_ddr_full),
        .ila_read_ddr_has_data(ila_read_ddr_has_data),
        .ila_read_ddr_occupation(ila_read_ddr_occupation),
        .ila_read_index(ila_read_index),
        .ila_read_state(ila_read_state),
        .ila_rx_data(ila_rx_data),
        .ila_rx_fifo_data_ready(ila_rx_fifo_data_ready),
        .ila_rx_fifo_rden(ila_rx_fifo_rden),
        .ila_rx_ready(ila_rx_ready),
        .ila_rx_valid(ila_rx_valid),
        .ila_tx_data(ila_tx_data),
        .ila_tx_fifo_wren(ila_tx_fifo_wren),
        .ila_tx_prog_empty(ila_tx_prog_empty),
        .ila_tx_ready(ila_tx_ready),
        .ila_tx_valid(ila_tx_valid),
        .ila_write_access_tick_ack(ila_write_access_tick_ack),
        .ila_write_active(ila_write_active),
        .ila_write_bresp(ila_write_bresp),
        .ila_write_burst_counter(ila_write_burst_counter),
        .ila_write_burst_tick_ack(ila_write_burst_tick_ack),
        .ila_write_ddr_full(ila_write_ddr_full),
        .ila_write_ddr_has_space(ila_write_ddr_has_space),
        .ila_write_ddr_occupation(ila_write_ddr_occupation),
        .ila_write_index(ila_write_index),
        .ila_write_state(ila_write_state),
        .ilamaxi_araddr(ilamaxi_araddr),
        .ilamaxi_arlen(ilamaxi_arlen),
        .ilamaxi_arready(ilamaxi_arready),
        .ilamaxi_arvalid(ilamaxi_arvalid),
        .ilamaxi_awaddr(ilamaxi_awaddr),
        .ilamaxi_awlen(ilamaxi_awlen),
        .ilamaxi_awready(ilamaxi_awready),
        .ilamaxi_awvalid(ilamaxi_awvalid),
        .ilamaxi_bready(ilamaxi_bready),
        .ilamaxi_bresp(ilamaxi_bresp),
        .ilamaxi_bvalid(ilamaxi_bvalid),
        .ilamaxi_rdata(ilamaxi_rdata),
        .ilamaxi_rlast(ilamaxi_rlast),
        .ilamaxi_rready(ilamaxi_rready),
        .ilamaxi_rvalid(ilamaxi_rvalid),
        .ilamaxi_wdata(ilamaxi_wdata),
        .ilamaxi_wlast(ilamaxi_wlast),
        .ilamaxi_wready(ilamaxi_wready),
        .ilamaxi_wvalid(ilamaxi_wvalid),
        .m_axis_tx_tdata(m_axis_tx_tdata),
        .m_axis_tx_tready(m_axis_tx_tready),
        .m_axis_tx_tvalid(m_axis_tx_tvalid),
        .read_access_size_bytes(read_access_size_bytes),
        .read_access_tick(read_access_tick),
        .read_base_address(read_base_address),
        .read_burst_count(read_burst_count),
        .read_burst_len(read_burst_len),
        .read_burst_tick(read_burst_tick),
        .read_busy(read_busy),
        .read_current_burst_address(read_current_burst_address),
        .read_ddr_size(read_ddr_size),
        .read_enable(read_enable),
        .read_total_burst_count(read_total_burst_count),
        .read_underflow_count(read_underflow_count),
        .read_underflow_ins(read_underflow_ins),
        .rsta_busy(rsta_busy),
        .rx_fifo_data_ready(rx_fifo_data_ready),
        .s_axis_rx_tdata(s_axis_rx_tdata),
        .s_axis_rx_tready(s_axis_rx_tready),
        .s_axis_rx_tvalid(s_axis_rx_tvalid),
        .tx_fifo_empty(tx_fifo_empty),
        .tx_fifo_has_space(tx_fifo_has_space),
        .write_access_size_bytes(write_access_size_bytes),
        .write_access_tick(write_access_tick),
        .write_base_address(write_base_address),
        .write_bresp(write_bresp),
        .write_burst_count(write_burst_count),
        .write_burst_len(write_burst_len),
        .write_burst_tick(write_burst_tick),
        .write_busy(write_busy),
        .write_current_burst_address(write_current_burst_address),
        .write_ddr_size(write_ddr_size),
        .write_enable(write_enable),
        .write_overflow_count(write_overflow_count),
        .write_overflow_ins(write_overflow_ins),
        .write_total_burst_count(write_total_burst_count));
endmodule
