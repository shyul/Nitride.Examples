-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Thu Oct 14 10:24:21 2021
-- Host        : LTUS435291 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/M300039/GitHub/Nitride.Examples/verilogTest/test_dmac/test_dmac.gen/sources_1/bd/top/ip/top_data_path_dmac_0_0/top_data_path_dmac_0_0_stub.vhdl
-- Design      : top_data_path_dmac_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_data_path_dmac_0_0 is
  Port ( 
    ilamaxi_arready : out STD_LOGIC;
    ilamaxi_arvalid : out STD_LOGIC;
    ilamaxi_rready : out STD_LOGIC;
    ilamaxi_rvalid : out STD_LOGIC;
    ilamaxi_rlast : out STD_LOGIC;
    ilamaxi_awready : out STD_LOGIC;
    ilamaxi_awvalid : out STD_LOGIC;
    ilamaxi_wready : out STD_LOGIC;
    ilamaxi_wvalid : out STD_LOGIC;
    ilamaxi_wlast : out STD_LOGIC;
    ilamaxi_bvalid : out STD_LOGIC;
    ilamaxi_bready : out STD_LOGIC;
    ilamaxi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ilamaxi_araddr : out STD_LOGIC_VECTOR ( 47 downto 0 );
    ilamaxi_awaddr : out STD_LOGIC_VECTOR ( 47 downto 0 );
    ilamaxi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ilamaxi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ilamaxi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    ilamaxi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    ila_tx_ready : out STD_LOGIC;
    ila_tx_valid : out STD_LOGIC;
    ila_tx_prog_empty : out STD_LOGIC;
    ila_rx_ready : out STD_LOGIC;
    ila_rx_valid : out STD_LOGIC;
    ila_rx_fifo_data_ready : out STD_LOGIC;
    ila_tx_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    ila_rx_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    ila_read_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ila_read_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ila_tx_fifo_wren : out STD_LOGIC;
    ila_read_active : out STD_LOGIC;
    ila_read_burst_count : out STD_LOGIC_VECTOR ( 32 downto 0 );
    ila_read_index : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ila_read_ddr_occupation : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_read_burst_tick_ack : out STD_LOGIC;
    ila_read_access_tick_ack : out STD_LOGIC;
    ila_read_ddr_has_data : out STD_LOGIC;
    ila_read_ddr_full : out STD_LOGIC;
    ila_write_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ila_write_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ila_rx_fifo_rden : out STD_LOGIC;
    ila_write_active : out STD_LOGIC;
    ila_write_burst_counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_write_index : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ila_write_ddr_occupation : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_write_burst_tick_ack : out STD_LOGIC;
    ila_write_access_tick_ack : out STD_LOGIC;
    ila_write_ddr_has_space : out STD_LOGIC;
    ila_write_ddr_full : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    write_enable : in STD_LOGIC;
    write_busy : out STD_LOGIC;
    write_base_address : in STD_LOGIC_VECTOR ( 47 downto 0 );
    write_burst_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_burst_len : in STD_LOGIC_VECTOR ( 8 downto 0 );
    write_ddr_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    write_burst_tick : out STD_LOGIC;
    write_total_burst_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    write_current_burst_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    write_access_size_bytes : in STD_LOGIC_VECTOR ( 16 downto 0 );
    write_access_tick : in STD_LOGIC;
    write_overflow_ins : out STD_LOGIC;
    write_overflow_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    read_enable : in STD_LOGIC;
    read_busy : out STD_LOGIC;
    read_base_address : in STD_LOGIC_VECTOR ( 47 downto 0 );
    read_burst_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_burst_len : in STD_LOGIC_VECTOR ( 8 downto 0 );
    read_ddr_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_burst_tick : out STD_LOGIC;
    read_total_burst_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_current_burst_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_access_size_bytes : in STD_LOGIC_VECTOR ( 16 downto 0 );
    read_access_tick : in STD_LOGIC;
    read_underflow_ins : out STD_LOGIC;
    read_underflow_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_rx_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_rx_tvalid : in STD_LOGIC;
    s_axis_rx_tready : out STD_LOGIC;
    rx_fifo_data_ready : in STD_LOGIC;
    m_axis_tx_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tx_tvalid : out STD_LOGIC;
    m_axis_tx_tready : in STD_LOGIC;
    tx_fifo_has_space : in STD_LOGIC;
    tx_fifo_empty : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awlock : out STD_LOGIC;
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_arlock : out STD_LOGIC;
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );

end top_data_path_dmac_0_0;

architecture stub of top_data_path_dmac_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ilamaxi_arready,ilamaxi_arvalid,ilamaxi_rready,ilamaxi_rvalid,ilamaxi_rlast,ilamaxi_awready,ilamaxi_awvalid,ilamaxi_wready,ilamaxi_wvalid,ilamaxi_wlast,ilamaxi_bvalid,ilamaxi_bready,ilamaxi_bresp[1:0],ilamaxi_araddr[47:0],ilamaxi_awaddr[47:0],ilamaxi_arlen[7:0],ilamaxi_awlen[7:0],ilamaxi_rdata[127:0],ilamaxi_wdata[127:0],ila_tx_ready,ila_tx_valid,ila_tx_prog_empty,ila_rx_ready,ila_rx_valid,ila_rx_fifo_data_ready,ila_tx_data[127:0],ila_rx_data[127:0],ila_read_state[2:0],ila_read_bresp[1:0],ila_tx_fifo_wren,ila_read_active,ila_read_burst_count[32:0],ila_read_index[8:0],ila_read_ddr_occupation[31:0],ila_read_burst_tick_ack,ila_read_access_tick_ack,ila_read_ddr_has_data,ila_read_ddr_full,ila_write_state[2:0],ila_write_bresp[1:0],ila_rx_fifo_rden,ila_write_active,ila_write_burst_counter[31:0],ila_write_index[8:0],ila_write_ddr_occupation[31:0],ila_write_burst_tick_ack,ila_write_access_tick_ack,ila_write_ddr_has_space,ila_write_ddr_full,aclk,aresetn,write_enable,write_busy,write_base_address[47:0],write_burst_count[31:0],write_burst_len[8:0],write_ddr_size[31:0],write_bresp[1:0],write_burst_tick,write_total_burst_count[31:0],write_current_burst_address[31:0],write_access_size_bytes[16:0],write_access_tick,write_overflow_ins,write_overflow_count[7:0],read_enable,read_busy,read_base_address[47:0],read_burst_count[31:0],read_burst_len[8:0],read_ddr_size[31:0],read_burst_tick,read_total_burst_count[31:0],read_current_burst_address[31:0],read_access_size_bytes[16:0],read_access_tick,read_underflow_ins,read_underflow_count[7:0],s_axis_rx_tdata[127:0],s_axis_rx_tvalid,s_axis_rx_tready,rx_fifo_data_ready,m_axis_tx_tdata[127:0],m_axis_tx_tvalid,m_axis_tx_tready,tx_fifo_has_space,tx_fifo_empty,m_axi_awaddr[47:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awvalid,m_axi_awready,m_axi_awlock,m_axi_awcache[3:0],m_axi_awprot[2:0],m_axi_awqos[3:0],m_axi_wdata[127:0],m_axi_wlast,m_axi_wvalid,m_axi_wready,m_axi_wstrb[15:0],m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,m_axi_araddr[47:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arvalid,m_axi_arready,m_axi_arlock,m_axi_arcache[3:0],m_axi_arprot[2:0],m_axi_arqos[3:0],m_axi_rdata[127:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,m_axi_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "data_path_dmac,Vivado 2020.2.2";
begin
end;
