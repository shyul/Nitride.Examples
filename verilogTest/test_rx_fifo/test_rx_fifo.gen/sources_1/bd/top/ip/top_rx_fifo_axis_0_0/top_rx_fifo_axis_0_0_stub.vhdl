-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
-- Date        : Tue Oct 12 20:32:26 2021
-- Host        : xu-pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/uxli/Documents/Tidalloft/tungsten-grid-dev/unit_test/fifo_dma_controller_test/test_rx_fifo/test_rx_fifo.gen/sources_1/bd/top/ip/top_rx_fifo_axis_0_0/top_rx_fifo_axis_0_0_stub.vhdl
-- Design      : top_rx_fifo_axis_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_rx_fifo_axis_0_0 is
  Port ( 
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    rx_enable : in STD_LOGIC;
    data_format : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_ready : out STD_LOGIC;
    data_clk : in STD_LOGIC;
    data_valid : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_rx_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_rx_tvalid : out STD_LOGIC;
    m_axis_rx_tready : in STD_LOGIC;
    fifo_srst : out STD_LOGIC;
    fifo_prog_full : in STD_LOGIC;
    fifo_rd_rst_busy : in STD_LOGIC;
    fifo_rd_clk : out STD_LOGIC;
    fifo_rd_data : in STD_LOGIC_VECTOR ( 127 downto 0 );
    fifo_rd_en : out STD_LOGIC;
    fifo_rd_empty : in STD_LOGIC;
    fifo_rd_valid : in STD_LOGIC;
    fifo_wr_rst_busy : in STD_LOGIC;
    fifo_wr_clk : out STD_LOGIC;
    fifo_wr_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    fifo_wr_en : out STD_LOGIC;
    fifo_wr_full : in STD_LOGIC;
    ila_data_write_state : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_wr_data_buf : out STD_LOGIC_VECTOR ( 119 downto 0 )
  );

end top_rx_fifo_axis_0_0;

architecture stub of top_rx_fifo_axis_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aresetn,aclk,rx_enable,data_format[2:0],data_ready,data_clk,data_valid,data_in[127:0],m_axis_rx_tdata[127:0],m_axis_rx_tvalid,m_axis_rx_tready,fifo_srst,fifo_prog_full,fifo_rd_rst_busy,fifo_rd_clk,fifo_rd_data[127:0],fifo_rd_en,fifo_rd_empty,fifo_rd_valid,fifo_wr_rst_busy,fifo_wr_clk,fifo_wr_data[127:0],fifo_wr_en,fifo_wr_full,ila_data_write_state[7:0],ila_wr_data_buf[119:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rx_fifo_axis,Vivado 2021.1.1";
begin
end;
