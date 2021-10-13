-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
-- Date        : Tue Oct 12 20:32:26 2021
-- Host        : xu-pc running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/uxli/Documents/Tidalloft/tungsten-grid-dev/unit_test/fifo_dma_controller_test/test_rx_fifo/test_rx_fifo.gen/sources_1/bd/top/ip/top_rx_fifo_axis_0_0/top_rx_fifo_axis_0_0_sim_netlist.vhdl
-- Design      : top_rx_fifo_axis_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_rx_fifo_axis_0_0_rx_fifo_axis is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    fifo_rd_en : out STD_LOGIC;
    ila_wr_data_buf : out STD_LOGIC_VECTOR ( 119 downto 0 );
    fifo_wr_data : out STD_LOGIC_VECTOR ( 127 downto 0 );
    fifo_srst : out STD_LOGIC;
    data_ready : out STD_LOGIC;
    fifo_wr_en : out STD_LOGIC;
    data_valid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    fifo_wr_rst_busy : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_rx_tready : in STD_LOGIC;
    fifo_rd_empty : in STD_LOGIC;
    fifo_rd_rst_busy : in STD_LOGIC;
    fifo_prog_full : in STD_LOGIC;
    aclk : in STD_LOGIC;
    rx_enable : in STD_LOGIC;
    data_clk : in STD_LOGIC;
    data_format : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_rx_fifo_axis_0_0_rx_fifo_axis : entity is "rx_fifo_axis";
end top_rx_fifo_axis_0_0_rx_fifo_axis;

architecture STRUCTURE of top_rx_fifo_axis_0_0_rx_fifo_axis is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \data_write_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_write_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_write_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_write_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_write_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_write_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_write_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_write_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_write_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_write_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_write_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_write_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_write_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_write_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_write_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_write_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_write_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_write_state[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_write_state[6]_i_4_n_0\ : STD_LOGIC;
  signal \data_write_state[6]_i_5_n_0\ : STD_LOGIC;
  signal fifo_prog_full_ff : STD_LOGIC;
  signal fifo_prog_full_ff2 : STD_LOGIC;
  signal \fifo_rd_en0__0\ : STD_LOGIC;
  signal fifo_rd_en_i_1_n_0 : STD_LOGIC;
  signal \fifo_wr_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[100]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[100]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[100]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[101]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[101]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[101]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[102]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[102]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[102]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[103]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[103]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[103]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[104]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[104]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[104]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[105]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[105]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[105]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[106]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[106]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[106]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[107]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[107]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[107]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[108]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[108]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[108]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[109]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[109]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[109]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[110]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[110]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[110]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[111]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[111]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[111]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[112]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[112]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[112]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[112]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[113]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[113]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[113]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[113]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[114]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[114]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[114]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[114]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[115]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[115]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[115]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[115]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[116]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[116]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[116]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[116]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[117]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[117]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[117]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[117]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[118]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[118]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[118]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[118]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[119]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[119]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[119]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[119]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[120]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[120]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[120]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[120]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[121]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[121]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[121]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[121]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[122]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[122]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[122]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[122]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[123]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[123]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[123]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[123]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[124]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[124]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[124]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[124]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[125]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[125]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[125]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[125]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[126]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[126]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[126]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[126]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_10_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_11_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_12_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_13_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_14_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_15_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_16_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_17_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_18_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_19_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_20_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_21_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_22_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_23_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_24_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_8_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[127]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[32]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[33]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[34]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[35]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[36]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[37]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[38]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[39]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[40]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[41]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[42]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[43]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[44]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[45]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[46]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[47]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[48]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[49]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[50]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[51]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[52]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[53]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[54]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[55]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[56]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[57]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[58]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[59]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[60]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[61]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[62]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[62]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[63]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[63]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[63]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[64]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[64]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[64]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[65]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[65]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[65]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[66]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[66]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[66]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[67]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[67]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[67]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[68]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[68]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[68]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[69]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[69]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[69]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[70]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[70]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[70]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[71]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[71]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[71]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[72]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[72]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[72]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[73]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[73]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[73]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[74]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[74]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[74]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[75]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[75]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[75]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[76]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[76]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[76]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[77]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[77]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[77]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[78]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[78]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[78]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[79]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[79]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[79]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[80]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[80]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[81]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[81]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[82]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[82]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[83]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[83]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[84]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[84]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[85]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[85]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[86]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[86]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[87]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[87]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[88]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[88]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[89]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[89]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[90]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[90]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[91]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[91]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[92]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[92]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[93]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[93]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[94]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[94]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[95]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[95]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[95]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[95]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[95]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[95]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[96]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[96]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[96]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[97]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[97]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[97]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[98]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[98]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[98]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[99]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[99]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[99]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_wr_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \^fifo_wr_en\ : STD_LOGIC;
  signal fifo_wr_en_ff : STD_LOGIC;
  signal fifo_wr_en_ff2 : STD_LOGIC;
  signal fifo_wr_en_i_10_n_0 : STD_LOGIC;
  signal fifo_wr_en_i_11_n_0 : STD_LOGIC;
  signal fifo_wr_en_i_1_n_0 : STD_LOGIC;
  signal fifo_wr_en_i_2_n_0 : STD_LOGIC;
  signal fifo_wr_en_i_3_n_0 : STD_LOGIC;
  signal fifo_wr_en_i_4_n_0 : STD_LOGIC;
  signal fifo_wr_en_i_5_n_0 : STD_LOGIC;
  signal fifo_wr_en_i_6_n_0 : STD_LOGIC;
  signal fifo_wr_en_i_7_n_0 : STD_LOGIC;
  signal fifo_wr_en_i_8_n_0 : STD_LOGIC;
  signal fifo_wr_en_i_9_n_0 : STD_LOGIC;
  signal \^ila_wr_data_buf\ : STD_LOGIC_VECTOR ( 119 downto 0 );
  signal \wr_data_buf[103]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[103]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[104]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[105]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[106]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[107]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[108]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[109]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[10]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[110]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[111]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[111]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[111]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[111]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data_buf[119]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[119]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[11]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[12]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[13]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[14]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[15]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[15]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[15]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[15]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data_buf[15]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data_buf[16]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[17]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[18]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[19]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[20]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[21]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[22]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[23]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[23]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[23]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[23]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data_buf[23]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data_buf[23]_i_6_n_0\ : STD_LOGIC;
  signal \wr_data_buf[23]_i_7_n_0\ : STD_LOGIC;
  signal \wr_data_buf[23]_i_8_n_0\ : STD_LOGIC;
  signal \wr_data_buf[24]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[24]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[24]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[25]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[25]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[25]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[26]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[26]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[26]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[27]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[27]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[27]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[28]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[28]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[28]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[29]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[29]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[29]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[30]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[30]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[30]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[30]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data_buf[30]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data_buf[31]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[31]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[31]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[31]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data_buf[31]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data_buf[31]_i_6_n_0\ : STD_LOGIC;
  signal \wr_data_buf[32]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[33]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[34]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[35]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[36]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[37]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[38]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[39]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[39]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[39]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data_buf[40]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[40]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[41]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[41]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[42]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[42]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[43]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[43]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[44]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[44]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[45]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[45]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[46]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[46]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[47]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[47]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[47]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[47]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data_buf[47]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data_buf[47]_i_6_n_0\ : STD_LOGIC;
  signal \wr_data_buf[47]_i_7_n_0\ : STD_LOGIC;
  signal \wr_data_buf[47]_i_8_n_0\ : STD_LOGIC;
  signal \wr_data_buf[48]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[48]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[48]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[49]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[49]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[49]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[50]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[50]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[50]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[51]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[51]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[51]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[52]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[52]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[52]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[53]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[53]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[53]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[54]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[54]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[54]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[55]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[55]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[55]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[55]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data_buf[55]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data_buf[56]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[56]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[56]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[57]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[57]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[57]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[58]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[58]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[58]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[59]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[59]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[59]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[60]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[60]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[60]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[61]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[61]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[61]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[62]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[62]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[62]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[63]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[63]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[63]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[63]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data_buf[63]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data_buf[63]_i_6_n_0\ : STD_LOGIC;
  signal \wr_data_buf[71]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[71]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[72]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[73]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[74]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[75]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[76]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[77]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[78]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[79]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[79]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[79]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[79]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data_buf[79]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data_buf[7]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[7]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[80]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[81]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[82]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[83]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[84]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[85]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[86]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[87]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[87]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[87]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[87]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data_buf[87]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data_buf[88]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[88]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[89]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[89]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[8]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[90]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[90]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[91]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[91]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[92]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[92]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[93]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[93]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[94]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[94]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[95]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf[95]_i_2_n_0\ : STD_LOGIC;
  signal \wr_data_buf[95]_i_3_n_0\ : STD_LOGIC;
  signal \wr_data_buf[95]_i_4_n_0\ : STD_LOGIC;
  signal \wr_data_buf[95]_i_5_n_0\ : STD_LOGIC;
  signal \wr_data_buf[9]_i_1_n_0\ : STD_LOGIC;
  signal \wr_data_buf_reg[39]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_write_state[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_write_state[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_write_state[1]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \data_write_state[2]_i_3\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \data_write_state[3]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_write_state[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_write_state[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_write_state[6]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \data_write_state[6]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \fifo_wr_data[100]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fifo_wr_data[101]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \fifo_wr_data[102]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \fifo_wr_data[103]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \fifo_wr_data[104]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \fifo_wr_data[105]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \fifo_wr_data[106]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \fifo_wr_data[107]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \fifo_wr_data[108]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \fifo_wr_data[109]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \fifo_wr_data[110]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \fifo_wr_data[111]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \fifo_wr_data[112]_i_4\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \fifo_wr_data[113]_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \fifo_wr_data[114]_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \fifo_wr_data[115]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \fifo_wr_data[116]_i_4\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \fifo_wr_data[117]_i_4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \fifo_wr_data[118]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \fifo_wr_data[119]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \fifo_wr_data[120]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fifo_wr_data[121]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \fifo_wr_data[122]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \fifo_wr_data[123]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fifo_wr_data[124]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fifo_wr_data[125]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \fifo_wr_data[126]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \fifo_wr_data[127]_i_14\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \fifo_wr_data[127]_i_15\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \fifo_wr_data[127]_i_17\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \fifo_wr_data[127]_i_22\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \fifo_wr_data[127]_i_24\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifo_wr_data[127]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \fifo_wr_data[127]_i_7\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \fifo_wr_data[127]_i_8\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \fifo_wr_data[64]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \fifo_wr_data[64]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \fifo_wr_data[65]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \fifo_wr_data[65]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \fifo_wr_data[66]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \fifo_wr_data[66]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \fifo_wr_data[67]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \fifo_wr_data[67]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \fifo_wr_data[68]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \fifo_wr_data[68]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \fifo_wr_data[69]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \fifo_wr_data[69]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \fifo_wr_data[70]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \fifo_wr_data[70]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \fifo_wr_data[71]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \fifo_wr_data[71]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \fifo_wr_data[72]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \fifo_wr_data[73]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \fifo_wr_data[74]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \fifo_wr_data[75]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \fifo_wr_data[76]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \fifo_wr_data[77]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \fifo_wr_data[78]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \fifo_wr_data[79]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \fifo_wr_data[95]_i_4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \fifo_wr_data[95]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \fifo_wr_data[96]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fifo_wr_data[97]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \fifo_wr_data[98]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \fifo_wr_data[99]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of fifo_wr_en_i_10 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of fifo_wr_en_i_11 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of fifo_wr_en_i_9 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \wr_data_buf[103]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wr_data_buf[111]_i_3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \wr_data_buf[111]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \wr_data_buf[119]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wr_data_buf[15]_i_4\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \wr_data_buf[15]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_data_buf[23]_i_6\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \wr_data_buf[23]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_data_buf[23]_i_8\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wr_data_buf[24]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \wr_data_buf[26]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wr_data_buf[26]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wr_data_buf[27]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_data_buf[27]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \wr_data_buf[28]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wr_data_buf[28]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \wr_data_buf[29]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wr_data_buf[29]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \wr_data_buf[30]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \wr_data_buf[30]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wr_data_buf[30]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \wr_data_buf[30]_i_5\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \wr_data_buf[47]_i_5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \wr_data_buf[47]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wr_data_buf[47]_i_8\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \wr_data_buf[48]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \wr_data_buf[49]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \wr_data_buf[50]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \wr_data_buf[51]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \wr_data_buf[52]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \wr_data_buf[53]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \wr_data_buf[54]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \wr_data_buf[55]_i_4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \wr_data_buf[56]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \wr_data_buf[57]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \wr_data_buf[58]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \wr_data_buf[59]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \wr_data_buf[60]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \wr_data_buf[61]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \wr_data_buf[62]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \wr_data_buf[63]_i_4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \wr_data_buf[63]_i_6\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \wr_data_buf[71]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \wr_data_buf[79]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wr_data_buf[79]_i_5\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \wr_data_buf[87]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \wr_data_buf[87]_i_5\ : label is "soft_lutpair60";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  fifo_wr_en <= \^fifo_wr_en\;
  ila_wr_data_buf(119 downto 0) <= \^ila_wr_data_buf\(119 downto 0);
data_ready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fifo_prog_full_ff,
      I1 => fifo_prog_full_ff2,
      O => data_ready
    );
\data_write_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => aresetn,
      I1 => fifo_wr_en_ff,
      I2 => fifo_wr_en_ff2,
      I3 => fifo_wr_rst_busy,
      I4 => \^q\(0),
      O => \data_write_state[0]_i_1_n_0\
    );
\data_write_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0353F353F353F353"
    )
        port map (
      I0 => \data_write_state[1]_i_2_n_0\,
      I1 => data_format(0),
      I2 => \data_write_state[6]_i_5_n_0\,
      I3 => \^q\(1),
      I4 => \data_write_state[1]_i_3_n_0\,
      I5 => \^q\(0),
      O => \data_write_state[1]_i_1_n_0\
    );
\data_write_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(6),
      I4 => \^q\(0),
      O => \data_write_state[1]_i_2_n_0\
    );
\data_write_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \data_write_state[1]_i_3_n_0\
    );
\data_write_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \data_write_state[2]_i_2_n_0\,
      I1 => \data_write_state[6]_i_5_n_0\,
      I2 => data_format(0),
      I3 => data_format(1),
      O => \data_write_state[2]_i_1_n_0\
    );
\data_write_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077BBF700"
    )
        port map (
      I0 => \^q\(0),
      I1 => \data_write_state[1]_i_3_n_0\,
      I2 => \wr_data_buf[30]_i_2_n_0\,
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \data_write_state[2]_i_3_n_0\,
      O => \data_write_state[2]_i_2_n_0\
    );
\data_write_state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      O => \data_write_state[2]_i_3_n_0\
    );
\data_write_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0059FF59FF59FF59"
    )
        port map (
      I0 => data_format(2),
      I1 => data_format(0),
      I2 => data_format(1),
      I3 => \data_write_state[6]_i_5_n_0\,
      I4 => \data_write_state[3]_i_2_n_0\,
      I5 => \data_write_state[3]_i_3_n_0\,
      O => \data_write_state[3]_i_1_n_0\
    );
\data_write_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FF00FF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(2),
      O => \data_write_state[3]_i_2_n_0\
    );
\data_write_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF777777777777"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \data_write_state[1]_i_3_n_0\,
      O => \data_write_state[3]_i_3_n_0\
    );
\data_write_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAAC0AA"
    )
        port map (
      I0 => \data_write_state[4]_i_2_n_0\,
      I1 => \data_write_state[4]_i_3_n_0\,
      I2 => \^q\(4),
      I3 => \data_write_state[6]_i_5_n_0\,
      I4 => \^q\(1),
      O => \data_write_state[4]_i_1_n_0\
    );
\data_write_state[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B6"
    )
        port map (
      I0 => data_format(0),
      I1 => data_format(1),
      I2 => data_format(2),
      O => \data_write_state[4]_i_2_n_0\
    );
\data_write_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F00FF55FF50FF55"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(5),
      I2 => \^q\(0),
      I3 => \^q\(4),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \data_write_state[4]_i_3_n_0\
    );
\data_write_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88BBB888"
    )
        port map (
      I0 => \data_write_state[5]_i_2_n_0\,
      I1 => \data_write_state[6]_i_5_n_0\,
      I2 => data_format(0),
      I3 => data_format(1),
      I4 => data_format(2),
      O => \data_write_state[5]_i_1_n_0\
    );
\data_write_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2223AA20AAAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(2),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data_write_state[5]_i_2_n_0\
    );
\data_write_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4FFFFFFF"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => data_valid,
      I2 => aresetn,
      I3 => fifo_wr_en_ff,
      I4 => fifo_wr_en_ff2,
      I5 => fifo_wr_rst_busy,
      O => \data_write_state[6]_i_1_n_0\
    );
\data_write_state[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => \data_write_state[6]_i_3_n_0\,
      I1 => \data_write_state[6]_i_4_n_0\,
      I2 => \data_write_state[6]_i_5_n_0\,
      I3 => data_format(1),
      I4 => data_format(2),
      O => \data_write_state[6]_i_2_n_0\
    );
\data_write_state[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFF0EFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(5),
      I5 => \^q\(0),
      O => \data_write_state[6]_i_3_n_0\
    );
\data_write_state[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(5),
      O => \data_write_state[6]_i_4_n_0\
    );
\data_write_state[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => fifo_wr_rst_busy,
      I1 => fifo_wr_en_ff2,
      I2 => fifo_wr_en_ff,
      I3 => aresetn,
      O => \data_write_state[6]_i_5_n_0\
    );
\data_write_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \data_write_state[6]_i_1_n_0\,
      D => \data_write_state[0]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\data_write_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => data_clk,
      CE => \data_write_state[6]_i_1_n_0\,
      D => \data_write_state[1]_i_1_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\data_write_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \data_write_state[6]_i_1_n_0\,
      D => \data_write_state[2]_i_1_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\data_write_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \data_write_state[6]_i_1_n_0\,
      D => \data_write_state[3]_i_1_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\data_write_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => data_clk,
      CE => \data_write_state[6]_i_1_n_0\,
      D => \data_write_state[4]_i_1_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\data_write_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => data_clk,
      CE => \data_write_state[6]_i_1_n_0\,
      D => \data_write_state[5]_i_1_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\data_write_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \data_write_state[6]_i_1_n_0\,
      D => \data_write_state[6]_i_2_n_0\,
      Q => \^q\(6),
      R => '0'
    );
fifo_prog_full_ff2_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => fifo_rd_en_i_1_n_0,
      D => fifo_prog_full_ff,
      Q => fifo_prog_full_ff2
    );
fifo_prog_full_ff_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => fifo_rd_en_i_1_n_0,
      D => fifo_prog_full,
      Q => fifo_prog_full_ff
    );
fifo_rd_en0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => m_axis_rx_tready,
      I1 => fifo_rd_empty,
      I2 => fifo_rd_rst_busy,
      O => \fifo_rd_en0__0\
    );
fifo_rd_en_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => fifo_rd_en_i_1_n_0
    );
fifo_rd_en_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => fifo_rd_en_i_1_n_0,
      D => \fifo_rd_en0__0\,
      Q => fifo_rd_en
    );
fifo_srst_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => aresetn,
      I1 => fifo_wr_en_ff,
      I2 => fifo_wr_en_ff2,
      O => fifo_srst
    );
\fifo_wr_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(0),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(0),
      O => \fifo_wr_data[0]_i_1_n_0\
    );
\fifo_wr_data[100]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[100]_i_2_n_0\,
      I1 => \fifo_wr_data[100]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(100),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[100]_i_1_n_0\
    );
\fifo_wr_data[100]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(100),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(36),
      O => \fifo_wr_data[100]_i_2_n_0\
    );
\fifo_wr_data[100]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(68),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(100),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(4),
      O => \fifo_wr_data[100]_i_3_n_0\
    );
\fifo_wr_data[101]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[101]_i_2_n_0\,
      I1 => \fifo_wr_data[101]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(101),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[101]_i_1_n_0\
    );
\fifo_wr_data[101]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(101),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(37),
      O => \fifo_wr_data[101]_i_2_n_0\
    );
\fifo_wr_data[101]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(69),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(101),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(5),
      O => \fifo_wr_data[101]_i_3_n_0\
    );
\fifo_wr_data[102]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[102]_i_2_n_0\,
      I1 => \fifo_wr_data[102]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(102),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[102]_i_1_n_0\
    );
\fifo_wr_data[102]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(102),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(38),
      O => \fifo_wr_data[102]_i_2_n_0\
    );
\fifo_wr_data[102]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(70),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(102),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(6),
      O => \fifo_wr_data[102]_i_3_n_0\
    );
\fifo_wr_data[103]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[103]_i_2_n_0\,
      I1 => \fifo_wr_data[103]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(103),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[103]_i_1_n_0\
    );
\fifo_wr_data[103]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(103),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(39),
      O => \fifo_wr_data[103]_i_2_n_0\
    );
\fifo_wr_data[103]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(71),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(103),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(7),
      O => \fifo_wr_data[103]_i_3_n_0\
    );
\fifo_wr_data[104]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[104]_i_2_n_0\,
      I1 => \fifo_wr_data[104]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(104),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[104]_i_1_n_0\
    );
\fifo_wr_data[104]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(104),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(40),
      O => \fifo_wr_data[104]_i_2_n_0\
    );
\fifo_wr_data[104]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(72),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(104),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(8),
      O => \fifo_wr_data[104]_i_3_n_0\
    );
\fifo_wr_data[105]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[105]_i_2_n_0\,
      I1 => \fifo_wr_data[105]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(105),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[105]_i_1_n_0\
    );
\fifo_wr_data[105]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(105),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(41),
      O => \fifo_wr_data[105]_i_2_n_0\
    );
\fifo_wr_data[105]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(73),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(105),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(9),
      O => \fifo_wr_data[105]_i_3_n_0\
    );
\fifo_wr_data[106]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[106]_i_2_n_0\,
      I1 => \fifo_wr_data[106]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(106),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[106]_i_1_n_0\
    );
\fifo_wr_data[106]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(106),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(42),
      O => \fifo_wr_data[106]_i_2_n_0\
    );
\fifo_wr_data[106]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(74),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(106),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(10),
      O => \fifo_wr_data[106]_i_3_n_0\
    );
\fifo_wr_data[107]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[107]_i_2_n_0\,
      I1 => \fifo_wr_data[107]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(107),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[107]_i_1_n_0\
    );
\fifo_wr_data[107]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(107),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(43),
      O => \fifo_wr_data[107]_i_2_n_0\
    );
\fifo_wr_data[107]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(75),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(107),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(11),
      O => \fifo_wr_data[107]_i_3_n_0\
    );
\fifo_wr_data[108]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[108]_i_2_n_0\,
      I1 => \fifo_wr_data[108]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(108),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[108]_i_1_n_0\
    );
\fifo_wr_data[108]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(108),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(44),
      O => \fifo_wr_data[108]_i_2_n_0\
    );
\fifo_wr_data[108]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(76),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(108),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(12),
      O => \fifo_wr_data[108]_i_3_n_0\
    );
\fifo_wr_data[109]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[109]_i_2_n_0\,
      I1 => \fifo_wr_data[109]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(109),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[109]_i_1_n_0\
    );
\fifo_wr_data[109]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(109),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(45),
      O => \fifo_wr_data[109]_i_2_n_0\
    );
\fifo_wr_data[109]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(77),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(109),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(13),
      O => \fifo_wr_data[109]_i_3_n_0\
    );
\fifo_wr_data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(10),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(10),
      O => \fifo_wr_data[10]_i_1_n_0\
    );
\fifo_wr_data[110]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[110]_i_2_n_0\,
      I1 => \fifo_wr_data[110]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(110),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[110]_i_1_n_0\
    );
\fifo_wr_data[110]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(110),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(46),
      O => \fifo_wr_data[110]_i_2_n_0\
    );
\fifo_wr_data[110]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(78),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(110),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(14),
      O => \fifo_wr_data[110]_i_3_n_0\
    );
\fifo_wr_data[111]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[111]_i_2_n_0\,
      I1 => \fifo_wr_data[111]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(111),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[111]_i_1_n_0\
    );
\fifo_wr_data[111]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(111),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(47),
      O => \fifo_wr_data[111]_i_2_n_0\
    );
\fifo_wr_data[111]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(79),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(111),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(15),
      O => \fifo_wr_data[111]_i_3_n_0\
    );
\fifo_wr_data[112]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \fifo_wr_data[112]_i_2_n_0\,
      I1 => \fifo_wr_data[112]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \fifo_wr_data[127]_i_11_n_0\,
      I4 => \fifo_wr_data[112]_i_4_n_0\,
      O => \fifo_wr_data[112]_i_1_n_0\
    );
\fifo_wr_data[112]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(112),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(48),
      O => \fifo_wr_data[112]_i_2_n_0\
    );
\fifo_wr_data[112]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(16),
      I1 => data_in(80),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(0),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(64),
      O => \fifo_wr_data[112]_i_3_n_0\
    );
\fifo_wr_data[112]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ila_wr_data_buf\(112),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(0),
      O => \fifo_wr_data[112]_i_4_n_0\
    );
\fifo_wr_data[113]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[113]_i_2_n_0\,
      I1 => \fifo_wr_data[113]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \fifo_wr_data[113]_i_4_n_0\,
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[113]_i_1_n_0\
    );
\fifo_wr_data[113]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(113),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(49),
      O => \fifo_wr_data[113]_i_2_n_0\
    );
\fifo_wr_data[113]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(17),
      I1 => data_in(81),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(1),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(65),
      O => \fifo_wr_data[113]_i_3_n_0\
    );
\fifo_wr_data[113]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ila_wr_data_buf\(113),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(1),
      O => \fifo_wr_data[113]_i_4_n_0\
    );
\fifo_wr_data[114]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \fifo_wr_data[114]_i_2_n_0\,
      I1 => \fifo_wr_data[114]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \fifo_wr_data[127]_i_11_n_0\,
      I4 => \fifo_wr_data[114]_i_4_n_0\,
      O => \fifo_wr_data[114]_i_1_n_0\
    );
\fifo_wr_data[114]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(114),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(50),
      O => \fifo_wr_data[114]_i_2_n_0\
    );
\fifo_wr_data[114]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(18),
      I1 => data_in(82),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(2),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(66),
      O => \fifo_wr_data[114]_i_3_n_0\
    );
\fifo_wr_data[114]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ila_wr_data_buf\(114),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(2),
      O => \fifo_wr_data[114]_i_4_n_0\
    );
\fifo_wr_data[115]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[115]_i_2_n_0\,
      I1 => \fifo_wr_data[115]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \fifo_wr_data[115]_i_4_n_0\,
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[115]_i_1_n_0\
    );
\fifo_wr_data[115]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(115),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(51),
      O => \fifo_wr_data[115]_i_2_n_0\
    );
\fifo_wr_data[115]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(19),
      I1 => data_in(83),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(3),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(67),
      O => \fifo_wr_data[115]_i_3_n_0\
    );
\fifo_wr_data[115]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ila_wr_data_buf\(115),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(3),
      O => \fifo_wr_data[115]_i_4_n_0\
    );
\fifo_wr_data[116]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[116]_i_2_n_0\,
      I1 => \fifo_wr_data[116]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \fifo_wr_data[116]_i_4_n_0\,
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[116]_i_1_n_0\
    );
\fifo_wr_data[116]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(116),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(52),
      O => \fifo_wr_data[116]_i_2_n_0\
    );
\fifo_wr_data[116]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(20),
      I1 => data_in(84),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(4),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(68),
      O => \fifo_wr_data[116]_i_3_n_0\
    );
\fifo_wr_data[116]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ila_wr_data_buf\(116),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(4),
      O => \fifo_wr_data[116]_i_4_n_0\
    );
\fifo_wr_data[117]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \fifo_wr_data[117]_i_2_n_0\,
      I1 => \fifo_wr_data[117]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \fifo_wr_data[127]_i_11_n_0\,
      I4 => \fifo_wr_data[117]_i_4_n_0\,
      O => \fifo_wr_data[117]_i_1_n_0\
    );
\fifo_wr_data[117]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(117),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(53),
      O => \fifo_wr_data[117]_i_2_n_0\
    );
\fifo_wr_data[117]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(21),
      I1 => data_in(85),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(5),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(69),
      O => \fifo_wr_data[117]_i_3_n_0\
    );
\fifo_wr_data[117]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ila_wr_data_buf\(117),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(5),
      O => \fifo_wr_data[117]_i_4_n_0\
    );
\fifo_wr_data[118]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[118]_i_2_n_0\,
      I1 => \fifo_wr_data[118]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \fifo_wr_data[118]_i_4_n_0\,
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[118]_i_1_n_0\
    );
\fifo_wr_data[118]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(118),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(54),
      O => \fifo_wr_data[118]_i_2_n_0\
    );
\fifo_wr_data[118]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(22),
      I1 => data_in(86),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(6),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(70),
      O => \fifo_wr_data[118]_i_3_n_0\
    );
\fifo_wr_data[118]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ila_wr_data_buf\(118),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(6),
      O => \fifo_wr_data[118]_i_4_n_0\
    );
\fifo_wr_data[119]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \fifo_wr_data[119]_i_2_n_0\,
      I1 => \fifo_wr_data[119]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \fifo_wr_data[127]_i_11_n_0\,
      I4 => \fifo_wr_data[119]_i_4_n_0\,
      O => \fifo_wr_data[119]_i_1_n_0\
    );
\fifo_wr_data[119]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(119),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(55),
      O => \fifo_wr_data[119]_i_2_n_0\
    );
\fifo_wr_data[119]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(23),
      I1 => data_in(87),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(7),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(71),
      O => \fifo_wr_data[119]_i_3_n_0\
    );
\fifo_wr_data[119]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^ila_wr_data_buf\(119),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(7),
      O => \fifo_wr_data[119]_i_4_n_0\
    );
\fifo_wr_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(11),
      I1 => \^ila_wr_data_buf\(11),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[11]_i_1_n_0\
    );
\fifo_wr_data[120]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fifo_wr_data[120]_i_2_n_0\,
      I1 => \fifo_wr_data[127]_i_11_n_0\,
      I2 => \fifo_wr_data[120]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[120]_i_4_n_0\,
      O => \fifo_wr_data[120]_i_1_n_0\
    );
\fifo_wr_data[120]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(120),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(56),
      O => \fifo_wr_data[120]_i_2_n_0\
    );
\fifo_wr_data[120]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(24),
      I1 => data_in(88),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(8),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(72),
      O => \fifo_wr_data[120]_i_3_n_0\
    );
\fifo_wr_data[120]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => data_in(64),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(0),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[120]_i_4_n_0\
    );
\fifo_wr_data[121]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fifo_wr_data[121]_i_2_n_0\,
      I1 => \fifo_wr_data[127]_i_11_n_0\,
      I2 => \fifo_wr_data[121]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[121]_i_4_n_0\,
      O => \fifo_wr_data[121]_i_1_n_0\
    );
\fifo_wr_data[121]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(121),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(57),
      O => \fifo_wr_data[121]_i_2_n_0\
    );
\fifo_wr_data[121]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(25),
      I1 => data_in(89),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(9),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(73),
      O => \fifo_wr_data[121]_i_3_n_0\
    );
\fifo_wr_data[121]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => data_in(65),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(1),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[121]_i_4_n_0\
    );
\fifo_wr_data[122]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fifo_wr_data[122]_i_2_n_0\,
      I1 => \fifo_wr_data[127]_i_11_n_0\,
      I2 => \fifo_wr_data[122]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[122]_i_4_n_0\,
      O => \fifo_wr_data[122]_i_1_n_0\
    );
\fifo_wr_data[122]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(122),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(58),
      O => \fifo_wr_data[122]_i_2_n_0\
    );
\fifo_wr_data[122]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(26),
      I1 => data_in(90),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(10),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(74),
      O => \fifo_wr_data[122]_i_3_n_0\
    );
\fifo_wr_data[122]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => data_in(66),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(2),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[122]_i_4_n_0\
    );
\fifo_wr_data[123]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fifo_wr_data[123]_i_2_n_0\,
      I1 => \fifo_wr_data[127]_i_11_n_0\,
      I2 => \fifo_wr_data[123]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[123]_i_4_n_0\,
      O => \fifo_wr_data[123]_i_1_n_0\
    );
\fifo_wr_data[123]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(123),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(59),
      O => \fifo_wr_data[123]_i_2_n_0\
    );
\fifo_wr_data[123]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(27),
      I1 => data_in(91),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(11),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(75),
      O => \fifo_wr_data[123]_i_3_n_0\
    );
\fifo_wr_data[123]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => data_in(67),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(3),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[123]_i_4_n_0\
    );
\fifo_wr_data[124]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fifo_wr_data[124]_i_2_n_0\,
      I1 => \fifo_wr_data[127]_i_11_n_0\,
      I2 => \fifo_wr_data[124]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[124]_i_4_n_0\,
      O => \fifo_wr_data[124]_i_1_n_0\
    );
\fifo_wr_data[124]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(124),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(60),
      O => \fifo_wr_data[124]_i_2_n_0\
    );
\fifo_wr_data[124]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(28),
      I1 => data_in(92),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(12),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(76),
      O => \fifo_wr_data[124]_i_3_n_0\
    );
\fifo_wr_data[124]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => data_in(68),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(4),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[124]_i_4_n_0\
    );
\fifo_wr_data[125]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fifo_wr_data[125]_i_2_n_0\,
      I1 => \fifo_wr_data[127]_i_11_n_0\,
      I2 => \fifo_wr_data[125]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[125]_i_4_n_0\,
      O => \fifo_wr_data[125]_i_1_n_0\
    );
\fifo_wr_data[125]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(125),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(61),
      O => \fifo_wr_data[125]_i_2_n_0\
    );
\fifo_wr_data[125]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(29),
      I1 => data_in(93),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(13),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(77),
      O => \fifo_wr_data[125]_i_3_n_0\
    );
\fifo_wr_data[125]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => data_in(69),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(5),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[125]_i_4_n_0\
    );
\fifo_wr_data[126]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fifo_wr_data[126]_i_2_n_0\,
      I1 => \fifo_wr_data[127]_i_11_n_0\,
      I2 => \fifo_wr_data[126]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[126]_i_4_n_0\,
      O => \fifo_wr_data[126]_i_1_n_0\
    );
\fifo_wr_data[126]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(126),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(62),
      O => \fifo_wr_data[126]_i_2_n_0\
    );
\fifo_wr_data[126]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(30),
      I1 => data_in(94),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(14),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(78),
      O => \fifo_wr_data[126]_i_3_n_0\
    );
\fifo_wr_data[126]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => data_in(70),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(6),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[126]_i_4_n_0\
    );
\fifo_wr_data[127]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => aresetn,
      I1 => fifo_wr_en_ff,
      I2 => fifo_wr_en_ff2,
      I3 => fifo_wr_rst_busy,
      O => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data[127]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(127),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(63),
      O => \fifo_wr_data[127]_i_10_n_0\
    );
\fifo_wr_data[127]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EE"
    )
        port map (
      I0 => \fifo_wr_data[62]_i_2_n_0\,
      I1 => \fifo_wr_data[127]_i_13_n_0\,
      I2 => \fifo_wr_data[127]_i_20_n_0\,
      I3 => \^q\(0),
      O => \fifo_wr_data[127]_i_11_n_0\
    );
\fifo_wr_data[127]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(31),
      I1 => data_in(95),
      I2 => \fifo_wr_data[62]_i_2_n_0\,
      I3 => data_in(15),
      I4 => \fifo_wr_data[127]_i_21_n_0\,
      I5 => data_in(79),
      O => \fifo_wr_data[127]_i_12_n_0\
    );
\fifo_wr_data[127]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F6FFFFFF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(2),
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \fifo_wr_data[127]_i_22_n_0\,
      I5 => \fifo_wr_data[127]_i_23_n_0\,
      O => \fifo_wr_data[127]_i_13_n_0\
    );
\fifo_wr_data[127]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => data_in(71),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(7),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[127]_i_14_n_0\
    );
\fifo_wr_data[127]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08448000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(5),
      O => \fifo_wr_data[127]_i_15_n_0\
    );
\fifo_wr_data[127]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C024120000001000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => \fifo_wr_data[127]_i_16_n_0\
    );
\fifo_wr_data[127]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => \fifo_wr_data[127]_i_17_n_0\
    );
\fifo_wr_data[127]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6233"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(5),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \fifo_wr_data[127]_i_18_n_0\
    );
\fifo_wr_data[127]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FBF7FF7FFFFFFF7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(6),
      I5 => \^q\(0),
      O => \fifo_wr_data[127]_i_19_n_0\
    );
\fifo_wr_data[127]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFEFEFF"
    )
        port map (
      I0 => \fifo_wr_data[127]_i_4_n_0\,
      I1 => \fifo_wr_data[127]_i_5_n_0\,
      I2 => \fifo_wr_data[127]_i_6_n_0\,
      I3 => \fifo_wr_data[127]_i_7_n_0\,
      I4 => \fifo_wr_data[127]_i_8_n_0\,
      I5 => \fifo_wr_data[127]_i_9_n_0\,
      O => \fifo_wr_data[127]_i_2_n_0\
    );
\fifo_wr_data[127]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFBFFBFFFDFF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \fifo_wr_data[127]_i_20_n_0\
    );
\fifo_wr_data[127]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5500550055005530"
    )
        port map (
      I0 => \fifo_wr_data[95]_i_6_n_0\,
      I1 => \data_write_state[1]_i_3_n_0\,
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => \fifo_wr_data[127]_i_24_n_0\,
      O => \fifo_wr_data[127]_i_21_n_0\
    );
\fifo_wr_data[127]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(4),
      O => \fifo_wr_data[127]_i_22_n_0\
    );
\fifo_wr_data[127]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F6FDF7460F0F47"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(6),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \fifo_wr_data[127]_i_23_n_0\
    );
\fifo_wr_data[127]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      O => \fifo_wr_data[127]_i_24_n_0\
    );
\fifo_wr_data[127]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \fifo_wr_data[127]_i_10_n_0\,
      I1 => \fifo_wr_data[127]_i_11_n_0\,
      I2 => \fifo_wr_data[127]_i_12_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[127]_i_14_n_0\,
      O => \fifo_wr_data[127]_i_3_n_0\
    );
\fifo_wr_data[127]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF14451415"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(2),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(1),
      I5 => \fifo_wr_data[127]_i_15_n_0\,
      O => \fifo_wr_data[127]_i_4_n_0\
    );
\fifo_wr_data[127]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100410041004DFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \fifo_wr_data[127]_i_5_n_0\
    );
\fifo_wr_data[127]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040C00"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      O => \fifo_wr_data[127]_i_6_n_0\
    );
\fifo_wr_data[127]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \fifo_wr_data[127]_i_7_n_0\
    );
\fifo_wr_data[127]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(0),
      O => \fifo_wr_data[127]_i_8_n_0\
    );
\fifo_wr_data[127]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2002220202020202"
    )
        port map (
      I0 => \fifo_wr_data[127]_i_16_n_0\,
      I1 => data_valid,
      I2 => \^q\(5),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \fifo_wr_data[127]_i_17_n_0\,
      O => \fifo_wr_data[127]_i_9_n_0\
    );
\fifo_wr_data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(12),
      I1 => \^ila_wr_data_buf\(12),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[12]_i_1_n_0\
    );
\fifo_wr_data[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(13),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(13),
      O => \fifo_wr_data[13]_i_1_n_0\
    );
\fifo_wr_data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(14),
      I1 => \^ila_wr_data_buf\(14),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[14]_i_1_n_0\
    );
\fifo_wr_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(15),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(15),
      O => \fifo_wr_data[15]_i_1_n_0\
    );
\fifo_wr_data[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(16),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(16),
      O => \fifo_wr_data[16]_i_1_n_0\
    );
\fifo_wr_data[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(17),
      I1 => \^ila_wr_data_buf\(17),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[17]_i_1_n_0\
    );
\fifo_wr_data[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(18),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(18),
      O => \fifo_wr_data[18]_i_1_n_0\
    );
\fifo_wr_data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(19),
      I1 => \^ila_wr_data_buf\(19),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[19]_i_1_n_0\
    );
\fifo_wr_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(1),
      I1 => \^ila_wr_data_buf\(1),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[1]_i_1_n_0\
    );
\fifo_wr_data[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(20),
      I1 => \^ila_wr_data_buf\(20),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[20]_i_1_n_0\
    );
\fifo_wr_data[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(21),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(21),
      O => \fifo_wr_data[21]_i_1_n_0\
    );
\fifo_wr_data[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(22),
      I1 => \^ila_wr_data_buf\(22),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[22]_i_1_n_0\
    );
\fifo_wr_data[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(23),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(23),
      O => \fifo_wr_data[23]_i_1_n_0\
    );
\fifo_wr_data[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(24),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(24),
      O => \fifo_wr_data[24]_i_1_n_0\
    );
\fifo_wr_data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(25),
      I1 => \^ila_wr_data_buf\(25),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[25]_i_1_n_0\
    );
\fifo_wr_data[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(26),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(26),
      O => \fifo_wr_data[26]_i_1_n_0\
    );
\fifo_wr_data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(27),
      I1 => \^ila_wr_data_buf\(27),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[27]_i_1_n_0\
    );
\fifo_wr_data[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(28),
      I1 => \^ila_wr_data_buf\(28),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[28]_i_1_n_0\
    );
\fifo_wr_data[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(29),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(29),
      O => \fifo_wr_data[29]_i_1_n_0\
    );
\fifo_wr_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(2),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(2),
      O => \fifo_wr_data[2]_i_1_n_0\
    );
\fifo_wr_data[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(30),
      I1 => \^ila_wr_data_buf\(30),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[30]_i_1_n_0\
    );
\fifo_wr_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(31),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(31),
      O => \fifo_wr_data[31]_i_1_n_0\
    );
\fifo_wr_data[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(32),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(32),
      O => \fifo_wr_data[32]_i_1_n_0\
    );
\fifo_wr_data[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(33),
      I1 => \^ila_wr_data_buf\(33),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[33]_i_1_n_0\
    );
\fifo_wr_data[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(34),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(34),
      O => \fifo_wr_data[34]_i_1_n_0\
    );
\fifo_wr_data[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(35),
      I1 => \^ila_wr_data_buf\(35),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[35]_i_1_n_0\
    );
\fifo_wr_data[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(36),
      I1 => \^ila_wr_data_buf\(36),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[36]_i_1_n_0\
    );
\fifo_wr_data[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(37),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(37),
      O => \fifo_wr_data[37]_i_1_n_0\
    );
\fifo_wr_data[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(38),
      I1 => \^ila_wr_data_buf\(38),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[38]_i_1_n_0\
    );
\fifo_wr_data[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(39),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(39),
      O => \fifo_wr_data[39]_i_1_n_0\
    );
\fifo_wr_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(3),
      I1 => \^ila_wr_data_buf\(3),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[3]_i_1_n_0\
    );
\fifo_wr_data[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(40),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(40),
      O => \fifo_wr_data[40]_i_1_n_0\
    );
\fifo_wr_data[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(41),
      I1 => \^ila_wr_data_buf\(41),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[41]_i_1_n_0\
    );
\fifo_wr_data[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(42),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(42),
      O => \fifo_wr_data[42]_i_1_n_0\
    );
\fifo_wr_data[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(43),
      I1 => \^ila_wr_data_buf\(43),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[43]_i_1_n_0\
    );
\fifo_wr_data[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(44),
      I1 => \^ila_wr_data_buf\(44),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[44]_i_1_n_0\
    );
\fifo_wr_data[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(45),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(45),
      O => \fifo_wr_data[45]_i_1_n_0\
    );
\fifo_wr_data[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(46),
      I1 => \^ila_wr_data_buf\(46),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[46]_i_1_n_0\
    );
\fifo_wr_data[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(47),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(47),
      O => \fifo_wr_data[47]_i_1_n_0\
    );
\fifo_wr_data[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(48),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(48),
      O => \fifo_wr_data[48]_i_1_n_0\
    );
\fifo_wr_data[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(49),
      I1 => \^ila_wr_data_buf\(49),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[49]_i_1_n_0\
    );
\fifo_wr_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(4),
      I1 => \^ila_wr_data_buf\(4),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[4]_i_1_n_0\
    );
\fifo_wr_data[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(50),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(50),
      O => \fifo_wr_data[50]_i_1_n_0\
    );
\fifo_wr_data[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(51),
      I1 => \^ila_wr_data_buf\(51),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[51]_i_1_n_0\
    );
\fifo_wr_data[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(52),
      I1 => \^ila_wr_data_buf\(52),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[52]_i_1_n_0\
    );
\fifo_wr_data[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(53),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(53),
      O => \fifo_wr_data[53]_i_1_n_0\
    );
\fifo_wr_data[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(54),
      I1 => \^ila_wr_data_buf\(54),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[54]_i_1_n_0\
    );
\fifo_wr_data[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(55),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(55),
      O => \fifo_wr_data[55]_i_1_n_0\
    );
\fifo_wr_data[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(56),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(56),
      O => \fifo_wr_data[56]_i_1_n_0\
    );
\fifo_wr_data[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(57),
      I1 => \^ila_wr_data_buf\(57),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[57]_i_1_n_0\
    );
\fifo_wr_data[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(58),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(58),
      O => \fifo_wr_data[58]_i_1_n_0\
    );
\fifo_wr_data[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(59),
      I1 => \^ila_wr_data_buf\(59),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[59]_i_1_n_0\
    );
\fifo_wr_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(5),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(5),
      O => \fifo_wr_data[5]_i_1_n_0\
    );
\fifo_wr_data[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(60),
      I1 => \^ila_wr_data_buf\(60),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[60]_i_1_n_0\
    );
\fifo_wr_data[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(61),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(61),
      O => \fifo_wr_data[61]_i_1_n_0\
    );
\fifo_wr_data[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(62),
      I1 => \^ila_wr_data_buf\(62),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[62]_i_1_n_0\
    );
\fifo_wr_data[62]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000F85"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(5),
      I3 => \^q\(2),
      I4 => \fifo_wr_data[127]_i_19_n_0\,
      O => \fifo_wr_data[62]_i_2_n_0\
    );
\fifo_wr_data[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_2_n_0\,
      I1 => data_in(63),
      I2 => \fifo_wr_data[63]_i_3_n_0\,
      I3 => \^ila_wr_data_buf\(63),
      O => \fifo_wr_data[63]_i_1_n_0\
    );
\fifo_wr_data[63]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(4),
      I3 => \^q\(0),
      I4 => \^q\(3),
      I5 => \data_write_state[1]_i_3_n_0\,
      O => \fifo_wr_data[63]_i_2_n_0\
    );
\fifo_wr_data[63]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \fifo_wr_data[62]_i_2_n_0\,
      I1 => \fifo_wr_data[127]_i_13_n_0\,
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      O => \fifo_wr_data[63]_i_3_n_0\
    );
\fifo_wr_data[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[64]_i_2_n_0\,
      I1 => \fifo_wr_data[64]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(64),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[64]_i_1_n_0\
    );
\fifo_wr_data[64]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(64),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(0),
      O => \fifo_wr_data[64]_i_2_n_0\
    );
\fifo_wr_data[64]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(64),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(0),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[64]_i_3_n_0\
    );
\fifo_wr_data[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[65]_i_2_n_0\,
      I1 => \fifo_wr_data[65]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(65),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[65]_i_1_n_0\
    );
\fifo_wr_data[65]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(65),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(1),
      O => \fifo_wr_data[65]_i_2_n_0\
    );
\fifo_wr_data[65]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(65),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(1),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[65]_i_3_n_0\
    );
\fifo_wr_data[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[66]_i_2_n_0\,
      I1 => \fifo_wr_data[66]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(66),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[66]_i_1_n_0\
    );
\fifo_wr_data[66]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(66),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(2),
      O => \fifo_wr_data[66]_i_2_n_0\
    );
\fifo_wr_data[66]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(66),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(2),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[66]_i_3_n_0\
    );
\fifo_wr_data[67]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[67]_i_2_n_0\,
      I1 => \fifo_wr_data[67]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(67),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[67]_i_1_n_0\
    );
\fifo_wr_data[67]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(67),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(3),
      O => \fifo_wr_data[67]_i_2_n_0\
    );
\fifo_wr_data[67]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(67),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(3),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[67]_i_3_n_0\
    );
\fifo_wr_data[68]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[68]_i_2_n_0\,
      I1 => \fifo_wr_data[68]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(68),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[68]_i_1_n_0\
    );
\fifo_wr_data[68]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(68),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(4),
      O => \fifo_wr_data[68]_i_2_n_0\
    );
\fifo_wr_data[68]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(68),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(4),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[68]_i_3_n_0\
    );
\fifo_wr_data[69]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[69]_i_2_n_0\,
      I1 => \fifo_wr_data[69]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(69),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[69]_i_1_n_0\
    );
\fifo_wr_data[69]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(69),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(5),
      O => \fifo_wr_data[69]_i_2_n_0\
    );
\fifo_wr_data[69]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(69),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(5),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[69]_i_3_n_0\
    );
\fifo_wr_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(6),
      I1 => \^ila_wr_data_buf\(6),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[6]_i_1_n_0\
    );
\fifo_wr_data[70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[70]_i_2_n_0\,
      I1 => \fifo_wr_data[70]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(70),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[70]_i_1_n_0\
    );
\fifo_wr_data[70]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(70),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(6),
      O => \fifo_wr_data[70]_i_2_n_0\
    );
\fifo_wr_data[70]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(70),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(6),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[70]_i_3_n_0\
    );
\fifo_wr_data[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[71]_i_2_n_0\,
      I1 => \fifo_wr_data[71]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(71),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[71]_i_1_n_0\
    );
\fifo_wr_data[71]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(71),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(7),
      O => \fifo_wr_data[71]_i_2_n_0\
    );
\fifo_wr_data[71]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(71),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(7),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[71]_i_3_n_0\
    );
\fifo_wr_data[72]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[72]_i_2_n_0\,
      I1 => \fifo_wr_data[72]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(72),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[72]_i_1_n_0\
    );
\fifo_wr_data[72]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(72),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(8),
      O => \fifo_wr_data[72]_i_2_n_0\
    );
\fifo_wr_data[72]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(72),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(8),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[72]_i_3_n_0\
    );
\fifo_wr_data[73]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[73]_i_2_n_0\,
      I1 => \fifo_wr_data[73]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(73),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[73]_i_1_n_0\
    );
\fifo_wr_data[73]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(73),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(9),
      O => \fifo_wr_data[73]_i_2_n_0\
    );
\fifo_wr_data[73]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(73),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(9),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[73]_i_3_n_0\
    );
\fifo_wr_data[74]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[74]_i_2_n_0\,
      I1 => \fifo_wr_data[74]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(74),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[74]_i_1_n_0\
    );
\fifo_wr_data[74]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(74),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(10),
      O => \fifo_wr_data[74]_i_2_n_0\
    );
\fifo_wr_data[74]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(74),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(10),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[74]_i_3_n_0\
    );
\fifo_wr_data[75]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[75]_i_2_n_0\,
      I1 => \fifo_wr_data[75]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(75),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[75]_i_1_n_0\
    );
\fifo_wr_data[75]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(75),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(11),
      O => \fifo_wr_data[75]_i_2_n_0\
    );
\fifo_wr_data[75]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(75),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(11),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[75]_i_3_n_0\
    );
\fifo_wr_data[76]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[76]_i_2_n_0\,
      I1 => \fifo_wr_data[76]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(76),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[76]_i_1_n_0\
    );
\fifo_wr_data[76]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(76),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(12),
      O => \fifo_wr_data[76]_i_2_n_0\
    );
\fifo_wr_data[76]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(76),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(12),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[76]_i_3_n_0\
    );
\fifo_wr_data[77]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[77]_i_2_n_0\,
      I1 => \fifo_wr_data[77]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(77),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[77]_i_1_n_0\
    );
\fifo_wr_data[77]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(77),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(13),
      O => \fifo_wr_data[77]_i_2_n_0\
    );
\fifo_wr_data[77]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(77),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(13),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[77]_i_3_n_0\
    );
\fifo_wr_data[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[78]_i_2_n_0\,
      I1 => \fifo_wr_data[78]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(78),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[78]_i_1_n_0\
    );
\fifo_wr_data[78]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(78),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(14),
      O => \fifo_wr_data[78]_i_2_n_0\
    );
\fifo_wr_data[78]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(78),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(14),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[78]_i_3_n_0\
    );
\fifo_wr_data[79]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[79]_i_2_n_0\,
      I1 => \fifo_wr_data[79]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(79),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[79]_i_1_n_0\
    );
\fifo_wr_data[79]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(79),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => data_in(15),
      O => \fifo_wr_data[79]_i_2_n_0\
    );
\fifo_wr_data[79]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8AA"
    )
        port map (
      I0 => \^ila_wr_data_buf\(79),
      I1 => \fifo_wr_data[127]_i_21_n_0\,
      I2 => data_in(15),
      I3 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[79]_i_3_n_0\
    );
\fifo_wr_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(7),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(7),
      O => \fifo_wr_data[7]_i_1_n_0\
    );
\fifo_wr_data[80]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CF00C000"
    )
        port map (
      I0 => \fifo_wr_data[80]_i_2_n_0\,
      I1 => data_in(16),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(80),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[80]_i_1_n_0\
    );
\fifo_wr_data[80]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(80),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(16),
      O => \fifo_wr_data[80]_i_2_n_0\
    );
\fifo_wr_data[81]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CFFFC0FF"
    )
        port map (
      I0 => \fifo_wr_data[81]_i_2_n_0\,
      I1 => data_in(17),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(81),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[81]_i_1_n_0\
    );
\fifo_wr_data[81]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(81),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(17),
      O => \fifo_wr_data[81]_i_2_n_0\
    );
\fifo_wr_data[82]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CF00C000"
    )
        port map (
      I0 => \fifo_wr_data[82]_i_2_n_0\,
      I1 => data_in(18),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(82),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[82]_i_1_n_0\
    );
\fifo_wr_data[82]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(82),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(18),
      O => \fifo_wr_data[82]_i_2_n_0\
    );
\fifo_wr_data[83]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CFFFC0FF"
    )
        port map (
      I0 => \fifo_wr_data[83]_i_2_n_0\,
      I1 => data_in(19),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(83),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[83]_i_1_n_0\
    );
\fifo_wr_data[83]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(83),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(19),
      O => \fifo_wr_data[83]_i_2_n_0\
    );
\fifo_wr_data[84]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CFFFC0FF"
    )
        port map (
      I0 => \fifo_wr_data[84]_i_2_n_0\,
      I1 => data_in(20),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(84),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[84]_i_1_n_0\
    );
\fifo_wr_data[84]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(84),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(20),
      O => \fifo_wr_data[84]_i_2_n_0\
    );
\fifo_wr_data[85]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CF00C000"
    )
        port map (
      I0 => \fifo_wr_data[85]_i_2_n_0\,
      I1 => data_in(21),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(85),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[85]_i_1_n_0\
    );
\fifo_wr_data[85]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(85),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(21),
      O => \fifo_wr_data[85]_i_2_n_0\
    );
\fifo_wr_data[86]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CFFFC0FF"
    )
        port map (
      I0 => \fifo_wr_data[86]_i_2_n_0\,
      I1 => data_in(22),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(86),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[86]_i_1_n_0\
    );
\fifo_wr_data[86]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(86),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(22),
      O => \fifo_wr_data[86]_i_2_n_0\
    );
\fifo_wr_data[87]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CF00C000"
    )
        port map (
      I0 => \fifo_wr_data[87]_i_2_n_0\,
      I1 => data_in(23),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(87),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[87]_i_1_n_0\
    );
\fifo_wr_data[87]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(87),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(23),
      O => \fifo_wr_data[87]_i_2_n_0\
    );
\fifo_wr_data[88]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CF00C000"
    )
        port map (
      I0 => \fifo_wr_data[88]_i_2_n_0\,
      I1 => data_in(24),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(88),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[88]_i_1_n_0\
    );
\fifo_wr_data[88]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(88),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(24),
      O => \fifo_wr_data[88]_i_2_n_0\
    );
\fifo_wr_data[89]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CFFFC0FF"
    )
        port map (
      I0 => \fifo_wr_data[89]_i_2_n_0\,
      I1 => data_in(25),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(89),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[89]_i_1_n_0\
    );
\fifo_wr_data[89]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(89),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(25),
      O => \fifo_wr_data[89]_i_2_n_0\
    );
\fifo_wr_data[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \fifo_wr_data[63]_i_3_n_0\,
      I1 => \^ila_wr_data_buf\(8),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => data_in(8),
      O => \fifo_wr_data[8]_i_1_n_0\
    );
\fifo_wr_data[90]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CF00C000"
    )
        port map (
      I0 => \fifo_wr_data[90]_i_2_n_0\,
      I1 => data_in(26),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(90),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[90]_i_1_n_0\
    );
\fifo_wr_data[90]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(90),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(26),
      O => \fifo_wr_data[90]_i_2_n_0\
    );
\fifo_wr_data[91]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CFFFC0FF"
    )
        port map (
      I0 => \fifo_wr_data[91]_i_2_n_0\,
      I1 => data_in(27),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(91),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[91]_i_1_n_0\
    );
\fifo_wr_data[91]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(91),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(27),
      O => \fifo_wr_data[91]_i_2_n_0\
    );
\fifo_wr_data[92]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CFFFC0FF"
    )
        port map (
      I0 => \fifo_wr_data[92]_i_2_n_0\,
      I1 => data_in(28),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(92),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[92]_i_1_n_0\
    );
\fifo_wr_data[92]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(92),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(28),
      O => \fifo_wr_data[92]_i_2_n_0\
    );
\fifo_wr_data[93]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CF00C000"
    )
        port map (
      I0 => \fifo_wr_data[93]_i_2_n_0\,
      I1 => data_in(29),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(93),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[93]_i_1_n_0\
    );
\fifo_wr_data[93]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(93),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(29),
      O => \fifo_wr_data[93]_i_2_n_0\
    );
\fifo_wr_data[94]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CFFFC0FF"
    )
        port map (
      I0 => \fifo_wr_data[94]_i_2_n_0\,
      I1 => data_in(30),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(94),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[94]_i_1_n_0\
    );
\fifo_wr_data[94]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(94),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(30),
      O => \fifo_wr_data[94]_i_2_n_0\
    );
\fifo_wr_data[95]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CF00C000"
    )
        port map (
      I0 => \fifo_wr_data[95]_i_2_n_0\,
      I1 => data_in(31),
      I2 => \fifo_wr_data[95]_i_3_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \^ila_wr_data_buf\(95),
      I5 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[95]_i_1_n_0\
    );
\fifo_wr_data[95]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(95),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(31),
      O => \fifo_wr_data[95]_i_2_n_0\
    );
\fifo_wr_data[95]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440444000004440"
    )
        port map (
      I0 => \fifo_wr_data[127]_i_19_n_0\,
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[95]_i_4_n_0\,
      I3 => \fifo_wr_data[95]_i_5_n_0\,
      I4 => \^q\(0),
      I5 => \fifo_wr_data[95]_i_6_n_0\,
      O => \fifo_wr_data[95]_i_3_n_0\
    );
\fifo_wr_data[95]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \fifo_wr_data[95]_i_4_n_0\
    );
\fifo_wr_data[95]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \fifo_wr_data[95]_i_5_n_0\
    );
\fifo_wr_data[95]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFEFFFFDF7FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(5),
      I4 => \^q\(6),
      I5 => \^q\(4),
      O => \fifo_wr_data[95]_i_6_n_0\
    );
\fifo_wr_data[96]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[96]_i_2_n_0\,
      I1 => \fifo_wr_data[96]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(96),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[96]_i_1_n_0\
    );
\fifo_wr_data[96]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(96),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(32),
      O => \fifo_wr_data[96]_i_2_n_0\
    );
\fifo_wr_data[96]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(64),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(96),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(0),
      O => \fifo_wr_data[96]_i_3_n_0\
    );
\fifo_wr_data[97]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[97]_i_2_n_0\,
      I1 => \fifo_wr_data[97]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(97),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[97]_i_1_n_0\
    );
\fifo_wr_data[97]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(97),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(33),
      O => \fifo_wr_data[97]_i_2_n_0\
    );
\fifo_wr_data[97]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(65),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(97),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(1),
      O => \fifo_wr_data[97]_i_3_n_0\
    );
\fifo_wr_data[98]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \fifo_wr_data[98]_i_2_n_0\,
      I1 => \fifo_wr_data[98]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(98),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[98]_i_1_n_0\
    );
\fifo_wr_data[98]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(98),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(34),
      O => \fifo_wr_data[98]_i_2_n_0\
    );
\fifo_wr_data[98]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(66),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(98),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(2),
      O => \fifo_wr_data[98]_i_3_n_0\
    );
\fifo_wr_data[99]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => \fifo_wr_data[99]_i_2_n_0\,
      I1 => \fifo_wr_data[99]_i_3_n_0\,
      I2 => \fifo_wr_data[127]_i_13_n_0\,
      I3 => \^ila_wr_data_buf\(99),
      I4 => \fifo_wr_data[127]_i_11_n_0\,
      O => \fifo_wr_data[99]_i_1_n_0\
    );
\fifo_wr_data[99]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_in(99),
      I1 => \fifo_wr_data[127]_i_18_n_0\,
      I2 => \fifo_wr_data[127]_i_19_n_0\,
      I3 => data_in(35),
      O => \fifo_wr_data[99]_i_2_n_0\
    );
\fifo_wr_data[99]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(67),
      I1 => \fifo_wr_data[62]_i_2_n_0\,
      I2 => \^ila_wr_data_buf\(99),
      I3 => \fifo_wr_data[127]_i_21_n_0\,
      I4 => data_in(3),
      O => \fifo_wr_data[99]_i_3_n_0\
    );
\fifo_wr_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACAFF"
    )
        port map (
      I0 => data_in(9),
      I1 => \^ila_wr_data_buf\(9),
      I2 => \fifo_wr_data[63]_i_2_n_0\,
      I3 => \fifo_wr_data[127]_i_13_n_0\,
      I4 => \fifo_wr_data[62]_i_2_n_0\,
      O => \fifo_wr_data[9]_i_1_n_0\
    );
\fifo_wr_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[0]_i_1_n_0\,
      Q => fifo_wr_data(0),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[100]_i_1_n_0\,
      Q => fifo_wr_data(100),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[101]_i_1_n_0\,
      Q => fifo_wr_data(101),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[102]_i_1_n_0\,
      Q => fifo_wr_data(102),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[103]_i_1_n_0\,
      Q => fifo_wr_data(103),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[104]_i_1_n_0\,
      Q => fifo_wr_data(104),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[105]_i_1_n_0\,
      Q => fifo_wr_data(105),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[106]_i_1_n_0\,
      Q => fifo_wr_data(106),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[107]_i_1_n_0\,
      Q => fifo_wr_data(107),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[108]_i_1_n_0\,
      Q => fifo_wr_data(108),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[109]_i_1_n_0\,
      Q => fifo_wr_data(109),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[10]_i_1_n_0\,
      Q => fifo_wr_data(10),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[110]_i_1_n_0\,
      Q => fifo_wr_data(110),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[111]_i_1_n_0\,
      Q => fifo_wr_data(111),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[112]_i_1_n_0\,
      Q => fifo_wr_data(112),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[113]_i_1_n_0\,
      Q => fifo_wr_data(113),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[114]_i_1_n_0\,
      Q => fifo_wr_data(114),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[115]_i_1_n_0\,
      Q => fifo_wr_data(115),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[116]_i_1_n_0\,
      Q => fifo_wr_data(116),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[117]_i_1_n_0\,
      Q => fifo_wr_data(117),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[118]_i_1_n_0\,
      Q => fifo_wr_data(118),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[119]_i_1_n_0\,
      Q => fifo_wr_data(119),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[11]_i_1_n_0\,
      Q => fifo_wr_data(11),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[120]_i_1_n_0\,
      Q => fifo_wr_data(120),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[121]_i_1_n_0\,
      Q => fifo_wr_data(121),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[122]_i_1_n_0\,
      Q => fifo_wr_data(122),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[123]_i_1_n_0\,
      Q => fifo_wr_data(123),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[124]_i_1_n_0\,
      Q => fifo_wr_data(124),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[125]_i_1_n_0\,
      Q => fifo_wr_data(125),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[126]_i_1_n_0\,
      Q => fifo_wr_data(126),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[127]_i_3_n_0\,
      Q => fifo_wr_data(127),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[12]_i_1_n_0\,
      Q => fifo_wr_data(12),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[13]_i_1_n_0\,
      Q => fifo_wr_data(13),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[14]_i_1_n_0\,
      Q => fifo_wr_data(14),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[15]_i_1_n_0\,
      Q => fifo_wr_data(15),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[16]_i_1_n_0\,
      Q => fifo_wr_data(16),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[17]_i_1_n_0\,
      Q => fifo_wr_data(17),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[18]_i_1_n_0\,
      Q => fifo_wr_data(18),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[19]_i_1_n_0\,
      Q => fifo_wr_data(19),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[1]_i_1_n_0\,
      Q => fifo_wr_data(1),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[20]_i_1_n_0\,
      Q => fifo_wr_data(20),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[21]_i_1_n_0\,
      Q => fifo_wr_data(21),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[22]_i_1_n_0\,
      Q => fifo_wr_data(22),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[23]_i_1_n_0\,
      Q => fifo_wr_data(23),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[24]_i_1_n_0\,
      Q => fifo_wr_data(24),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[25]_i_1_n_0\,
      Q => fifo_wr_data(25),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[26]_i_1_n_0\,
      Q => fifo_wr_data(26),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[27]_i_1_n_0\,
      Q => fifo_wr_data(27),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[28]_i_1_n_0\,
      Q => fifo_wr_data(28),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[29]_i_1_n_0\,
      Q => fifo_wr_data(29),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[2]_i_1_n_0\,
      Q => fifo_wr_data(2),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[30]_i_1_n_0\,
      Q => fifo_wr_data(30),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[31]_i_1_n_0\,
      Q => fifo_wr_data(31),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[32]_i_1_n_0\,
      Q => fifo_wr_data(32),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[33]_i_1_n_0\,
      Q => fifo_wr_data(33),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[34]_i_1_n_0\,
      Q => fifo_wr_data(34),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[35]_i_1_n_0\,
      Q => fifo_wr_data(35),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[36]_i_1_n_0\,
      Q => fifo_wr_data(36),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[37]_i_1_n_0\,
      Q => fifo_wr_data(37),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[38]_i_1_n_0\,
      Q => fifo_wr_data(38),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[39]_i_1_n_0\,
      Q => fifo_wr_data(39),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[3]_i_1_n_0\,
      Q => fifo_wr_data(3),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[40]_i_1_n_0\,
      Q => fifo_wr_data(40),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[41]_i_1_n_0\,
      Q => fifo_wr_data(41),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[42]_i_1_n_0\,
      Q => fifo_wr_data(42),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[43]_i_1_n_0\,
      Q => fifo_wr_data(43),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[44]_i_1_n_0\,
      Q => fifo_wr_data(44),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[45]_i_1_n_0\,
      Q => fifo_wr_data(45),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[46]_i_1_n_0\,
      Q => fifo_wr_data(46),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[47]_i_1_n_0\,
      Q => fifo_wr_data(47),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[48]_i_1_n_0\,
      Q => fifo_wr_data(48),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[49]_i_1_n_0\,
      Q => fifo_wr_data(49),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[4]_i_1_n_0\,
      Q => fifo_wr_data(4),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[50]_i_1_n_0\,
      Q => fifo_wr_data(50),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[51]_i_1_n_0\,
      Q => fifo_wr_data(51),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[52]_i_1_n_0\,
      Q => fifo_wr_data(52),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[53]_i_1_n_0\,
      Q => fifo_wr_data(53),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[54]_i_1_n_0\,
      Q => fifo_wr_data(54),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[55]_i_1_n_0\,
      Q => fifo_wr_data(55),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[56]_i_1_n_0\,
      Q => fifo_wr_data(56),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[57]_i_1_n_0\,
      Q => fifo_wr_data(57),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[58]_i_1_n_0\,
      Q => fifo_wr_data(58),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[59]_i_1_n_0\,
      Q => fifo_wr_data(59),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[5]_i_1_n_0\,
      Q => fifo_wr_data(5),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[60]_i_1_n_0\,
      Q => fifo_wr_data(60),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[61]_i_1_n_0\,
      Q => fifo_wr_data(61),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[62]_i_1_n_0\,
      Q => fifo_wr_data(62),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[63]_i_1_n_0\,
      Q => fifo_wr_data(63),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[64]_i_1_n_0\,
      Q => fifo_wr_data(64),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[65]_i_1_n_0\,
      Q => fifo_wr_data(65),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[66]_i_1_n_0\,
      Q => fifo_wr_data(66),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[67]_i_1_n_0\,
      Q => fifo_wr_data(67),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[68]_i_1_n_0\,
      Q => fifo_wr_data(68),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[69]_i_1_n_0\,
      Q => fifo_wr_data(69),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[6]_i_1_n_0\,
      Q => fifo_wr_data(6),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[70]_i_1_n_0\,
      Q => fifo_wr_data(70),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[71]_i_1_n_0\,
      Q => fifo_wr_data(71),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[72]_i_1_n_0\,
      Q => fifo_wr_data(72),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[73]_i_1_n_0\,
      Q => fifo_wr_data(73),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[74]_i_1_n_0\,
      Q => fifo_wr_data(74),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[75]_i_1_n_0\,
      Q => fifo_wr_data(75),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[76]_i_1_n_0\,
      Q => fifo_wr_data(76),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[77]_i_1_n_0\,
      Q => fifo_wr_data(77),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[78]_i_1_n_0\,
      Q => fifo_wr_data(78),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[79]_i_1_n_0\,
      Q => fifo_wr_data(79),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[7]_i_1_n_0\,
      Q => fifo_wr_data(7),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[80]_i_1_n_0\,
      Q => fifo_wr_data(80),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[81]_i_1_n_0\,
      Q => fifo_wr_data(81),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[82]_i_1_n_0\,
      Q => fifo_wr_data(82),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[83]_i_1_n_0\,
      Q => fifo_wr_data(83),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[84]_i_1_n_0\,
      Q => fifo_wr_data(84),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[85]_i_1_n_0\,
      Q => fifo_wr_data(85),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[86]_i_1_n_0\,
      Q => fifo_wr_data(86),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[87]_i_1_n_0\,
      Q => fifo_wr_data(87),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[88]_i_1_n_0\,
      Q => fifo_wr_data(88),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[89]_i_1_n_0\,
      Q => fifo_wr_data(89),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[8]_i_1_n_0\,
      Q => fifo_wr_data(8),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[90]_i_1_n_0\,
      Q => fifo_wr_data(90),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[91]_i_1_n_0\,
      Q => fifo_wr_data(91),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[92]_i_1_n_0\,
      Q => fifo_wr_data(92),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[93]_i_1_n_0\,
      Q => fifo_wr_data(93),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[94]_i_1_n_0\,
      Q => fifo_wr_data(94),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[95]_i_1_n_0\,
      Q => fifo_wr_data(95),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[96]_i_1_n_0\,
      Q => fifo_wr_data(96),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[97]_i_1_n_0\,
      Q => fifo_wr_data(97),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[98]_i_1_n_0\,
      Q => fifo_wr_data(98),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[99]_i_1_n_0\,
      Q => fifo_wr_data(99),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\fifo_wr_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => \fifo_wr_data[127]_i_2_n_0\,
      D => \fifo_wr_data[9]_i_1_n_0\,
      Q => fifo_wr_data(9),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
fifo_wr_en_ff2_reg: unisim.vcomponents.FDCE
     port map (
      C => data_in(0),
      CE => '1',
      CLR => fifo_rd_en_i_1_n_0,
      D => fifo_wr_en_ff,
      Q => fifo_wr_en_ff2
    );
fifo_wr_en_ff_reg: unisim.vcomponents.FDCE
     port map (
      C => data_in(0),
      CE => '1',
      CLR => fifo_rd_en_i_1_n_0,
      D => rx_enable,
      Q => fifo_wr_en_ff
    );
fifo_wr_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002E22"
    )
        port map (
      I0 => \^fifo_wr_en\,
      I1 => fifo_wr_en_i_2_n_0,
      I2 => fifo_wr_en_i_3_n_0,
      I3 => data_valid,
      I4 => \fifo_wr_data[127]_i_1_n_0\,
      O => fifo_wr_en_i_1_n_0
    );
fifo_wr_en_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11F3C7CF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => fifo_wr_en_i_10_n_0
    );
fifo_wr_en_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA2A"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(1),
      O => fifo_wr_en_i_11_n_0
    );
fifo_wr_en_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => fifo_wr_en_i_4_n_0,
      I1 => fifo_wr_en_i_5_n_0,
      I2 => fifo_wr_en_i_6_n_0,
      I3 => fifo_wr_en_i_7_n_0,
      I4 => data_valid,
      O => fifo_wr_en_i_2_n_0
    );
fifo_wr_en_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F0B0FFCFFFBF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => \^q\(3),
      I5 => fifo_wr_en_i_8_n_0,
      O => fifo_wr_en_i_3_n_0
    );
fifo_wr_en_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFAD0000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(6),
      I5 => \^q\(0),
      O => fifo_wr_en_i_4_n_0
    );
fifo_wr_en_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABBBFBBBBABBBFBB"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(1),
      O => fifo_wr_en_i_5_n_0
    );
fifo_wr_en_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6FBF7F6FFFFF7F"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      I2 => fifo_wr_en_i_9_n_0,
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(0),
      O => fifo_wr_en_i_6_n_0
    );
fifo_wr_en_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBBBFFFBBFFF"
    )
        port map (
      I0 => fifo_wr_en_i_10_n_0,
      I1 => fifo_wr_en_i_11_n_0,
      I2 => \^q\(5),
      I3 => \^q\(3),
      I4 => \^q\(6),
      I5 => \^q\(2),
      O => fifo_wr_en_i_7_n_0
    );
fifo_wr_en_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000A0000D00000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(4),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => fifo_wr_en_i_8_n_0
    );
fifo_wr_en_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => fifo_wr_en_i_9_n_0
    );
fifo_wr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => data_clk,
      CE => '1',
      D => fifo_wr_en_i_1_n_0,
      Q => \^fifo_wr_en\,
      R => '0'
    );
\wr_data_buf[103]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020002040"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(6),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \wr_data_buf[103]_i_2_n_0\,
      O => \wr_data_buf[103]_i_1_n_0\
    );
\wr_data_buf[103]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => data_valid,
      I1 => \^q\(0),
      I2 => \^q\(5),
      O => \wr_data_buf[103]_i_2_n_0\
    );
\wr_data_buf[104]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(0),
      I1 => \^q\(0),
      I2 => data_in(8),
      I3 => \^q\(1),
      I4 => data_in(64),
      O => \wr_data_buf[104]_i_1_n_0\
    );
\wr_data_buf[105]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(1),
      I1 => \^q\(0),
      I2 => data_in(9),
      I3 => \^q\(1),
      I4 => data_in(65),
      O => \wr_data_buf[105]_i_1_n_0\
    );
\wr_data_buf[106]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(2),
      I1 => \^q\(0),
      I2 => data_in(10),
      I3 => \^q\(1),
      I4 => data_in(66),
      O => \wr_data_buf[106]_i_1_n_0\
    );
\wr_data_buf[107]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(3),
      I1 => \^q\(0),
      I2 => data_in(11),
      I3 => \^q\(1),
      I4 => data_in(67),
      O => \wr_data_buf[107]_i_1_n_0\
    );
\wr_data_buf[108]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(4),
      I1 => \^q\(0),
      I2 => data_in(12),
      I3 => \^q\(1),
      I4 => data_in(68),
      O => \wr_data_buf[108]_i_1_n_0\
    );
\wr_data_buf[109]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(5),
      I1 => \^q\(0),
      I2 => data_in(13),
      I3 => \^q\(1),
      I4 => data_in(69),
      O => \wr_data_buf[109]_i_1_n_0\
    );
\wr_data_buf[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFECFFE30020002"
    )
        port map (
      I0 => data_in(2),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => data_in(66),
      I5 => data_in(10),
      O => \wr_data_buf[10]_i_1_n_0\
    );
\wr_data_buf[110]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(6),
      I1 => \^q\(0),
      I2 => data_in(14),
      I3 => \^q\(1),
      I4 => data_in(70),
      O => \wr_data_buf[110]_i_1_n_0\
    );
\wr_data_buf[111]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000800080"
    )
        port map (
      I0 => \wr_data_buf[111]_i_3_n_0\,
      I1 => data_valid,
      I2 => \wr_data_buf[111]_i_4_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(4),
      O => \wr_data_buf[111]_i_1_n_0\
    );
\wr_data_buf[111]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(7),
      I1 => \^q\(0),
      I2 => data_in(15),
      I3 => \^q\(1),
      I4 => data_in(71),
      O => \wr_data_buf[111]_i_2_n_0\
    );
\wr_data_buf[111]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      O => \wr_data_buf[111]_i_3_n_0\
    );
\wr_data_buf[111]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      O => \wr_data_buf[111]_i_4_n_0\
    );
\wr_data_buf[119]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \wr_data_buf[119]_i_2_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(6),
      O => \wr_data_buf[119]_i_1_n_0\
    );
\wr_data_buf[119]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(5),
      I3 => \^q\(0),
      I4 => data_valid,
      O => \wr_data_buf[119]_i_2_n_0\
    );
\wr_data_buf[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFECFFE30020002"
    )
        port map (
      I0 => data_in(3),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => data_in(67),
      I5 => data_in(11),
      O => \wr_data_buf[11]_i_1_n_0\
    );
\wr_data_buf[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFECFFE30020002"
    )
        port map (
      I0 => data_in(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => data_in(68),
      I5 => data_in(12),
      O => \wr_data_buf[12]_i_1_n_0\
    );
\wr_data_buf[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFECFFE30020002"
    )
        port map (
      I0 => data_in(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => data_in(69),
      I5 => data_in(13),
      O => \wr_data_buf[13]_i_1_n_0\
    );
\wr_data_buf[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFECFFE30020002"
    )
        port map (
      I0 => data_in(6),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => data_in(70),
      I5 => data_in(14),
      O => \wr_data_buf[14]_i_1_n_0\
    );
\wr_data_buf[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000000055550000"
    )
        port map (
      I0 => \wr_data_buf[15]_i_3_n_0\,
      I1 => \wr_data_buf[15]_i_4_n_0\,
      I2 => \wr_data_buf[15]_i_5_n_0\,
      I3 => \wr_data_buf[111]_i_3_n_0\,
      I4 => data_valid,
      I5 => \^q\(0),
      O => \wr_data_buf[15]_i_1_n_0\
    );
\wr_data_buf[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFECFFE30020002"
    )
        port map (
      I0 => data_in(7),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => data_in(71),
      I5 => data_in(15),
      O => \wr_data_buf[15]_i_2_n_0\
    );
\wr_data_buf[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF6FDFFF7FFBFF7"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(6),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \wr_data_buf[15]_i_3_n_0\
    );
\wr_data_buf[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      O => \wr_data_buf[15]_i_4_n_0\
    );
\wr_data_buf[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      O => \wr_data_buf[15]_i_5_n_0\
    );
\wr_data_buf[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF44444444444"
    )
        port map (
      I0 => \wr_data_buf[23]_i_6_n_0\,
      I1 => data_in(16),
      I2 => data_in(0),
      I3 => \wr_data_buf[23]_i_7_n_0\,
      I4 => data_in(64),
      I5 => \wr_data_buf[23]_i_8_n_0\,
      O => \wr_data_buf[16]_i_1_n_0\
    );
\wr_data_buf[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF444F444444444"
    )
        port map (
      I0 => \wr_data_buf[23]_i_6_n_0\,
      I1 => data_in(17),
      I2 => data_in(65),
      I3 => \wr_data_buf[23]_i_7_n_0\,
      I4 => data_in(1),
      I5 => \wr_data_buf[23]_i_8_n_0\,
      O => \wr_data_buf[17]_i_1_n_0\
    );
\wr_data_buf[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF44444444444"
    )
        port map (
      I0 => \wr_data_buf[23]_i_6_n_0\,
      I1 => data_in(18),
      I2 => data_in(2),
      I3 => \wr_data_buf[23]_i_7_n_0\,
      I4 => data_in(66),
      I5 => \wr_data_buf[23]_i_8_n_0\,
      O => \wr_data_buf[18]_i_1_n_0\
    );
\wr_data_buf[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF444F444444444"
    )
        port map (
      I0 => \wr_data_buf[23]_i_6_n_0\,
      I1 => data_in(19),
      I2 => data_in(67),
      I3 => \wr_data_buf[23]_i_7_n_0\,
      I4 => data_in(3),
      I5 => \wr_data_buf[23]_i_8_n_0\,
      O => \wr_data_buf[19]_i_1_n_0\
    );
\wr_data_buf[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF444F444444444"
    )
        port map (
      I0 => \wr_data_buf[23]_i_6_n_0\,
      I1 => data_in(20),
      I2 => data_in(68),
      I3 => \wr_data_buf[23]_i_7_n_0\,
      I4 => data_in(4),
      I5 => \wr_data_buf[23]_i_8_n_0\,
      O => \wr_data_buf[20]_i_1_n_0\
    );
\wr_data_buf[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF44444444444"
    )
        port map (
      I0 => \wr_data_buf[23]_i_6_n_0\,
      I1 => data_in(21),
      I2 => data_in(5),
      I3 => \wr_data_buf[23]_i_7_n_0\,
      I4 => data_in(69),
      I5 => \wr_data_buf[23]_i_8_n_0\,
      O => \wr_data_buf[21]_i_1_n_0\
    );
\wr_data_buf[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF444F444444444"
    )
        port map (
      I0 => \wr_data_buf[23]_i_6_n_0\,
      I1 => data_in(22),
      I2 => data_in(70),
      I3 => \wr_data_buf[23]_i_7_n_0\,
      I4 => data_in(6),
      I5 => \wr_data_buf[23]_i_8_n_0\,
      O => \wr_data_buf[22]_i_1_n_0\
    );
\wr_data_buf[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444F4F444444"
    )
        port map (
      I0 => \wr_data_buf[23]_i_3_n_0\,
      I1 => \wr_data_buf[23]_i_4_n_0\,
      I2 => \wr_data_buf[23]_i_5_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(1),
      O => \wr_data_buf[23]_i_1_n_0\
    );
\wr_data_buf[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF44444444444"
    )
        port map (
      I0 => \wr_data_buf[23]_i_6_n_0\,
      I1 => data_in(23),
      I2 => data_in(7),
      I3 => \wr_data_buf[23]_i_7_n_0\,
      I4 => data_in(71),
      I5 => \wr_data_buf[23]_i_8_n_0\,
      O => \wr_data_buf[23]_i_2_n_0\
    );
\wr_data_buf[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFDFFFBD7FF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => \wr_data_buf[23]_i_3_n_0\
    );
\wr_data_buf[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_valid,
      I1 => \^q\(0),
      O => \wr_data_buf[23]_i_4_n_0\
    );
\wr_data_buf[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFF7FFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => data_valid,
      I4 => \^q\(0),
      I5 => \^q\(4),
      O => \wr_data_buf[23]_i_5_n_0\
    );
\wr_data_buf[23]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      O => \wr_data_buf[23]_i_6_n_0\
    );
\wr_data_buf[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(5),
      O => \wr_data_buf[23]_i_7_n_0\
    );
\wr_data_buf[23]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      O => \wr_data_buf[23]_i_8_n_0\
    );
\wr_data_buf[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF272F0000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(5),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => data_in(24),
      I5 => \wr_data_buf[24]_i_2_n_0\,
      O => \wr_data_buf[24]_i_1_n_0\
    );
\wr_data_buf[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2C200000"
    )
        port map (
      I0 => data_in(8),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => data_in(64),
      I4 => \^q\(2),
      I5 => \wr_data_buf[24]_i_3_n_0\,
      O => \wr_data_buf[24]_i_2_n_0\
    );
\wr_data_buf[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"444400F0"
    )
        port map (
      I0 => \^q\(3),
      I1 => data_in(72),
      I2 => data_in(0),
      I3 => \^q\(2),
      I4 => \^q\(5),
      O => \wr_data_buf[24]_i_3_n_0\
    );
\wr_data_buf[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF383A082A"
    )
        port map (
      I0 => data_in(25),
      I1 => \^q\(3),
      I2 => \^q\(5),
      I3 => \^q\(1),
      I4 => data_in(73),
      I5 => \wr_data_buf[25]_i_2_n_0\,
      O => \wr_data_buf[25]_i_1_n_0\
    );
\wr_data_buf[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2C200000"
    )
        port map (
      I0 => data_in(9),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => data_in(65),
      I4 => \^q\(2),
      I5 => \wr_data_buf[25]_i_3_n_0\,
      O => \wr_data_buf[25]_i_2_n_0\
    );
\wr_data_buf[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04550404"
    )
        port map (
      I0 => \^q\(2),
      I1 => data_in(25),
      I2 => \^q\(1),
      I3 => \^q\(5),
      I4 => data_in(1),
      O => \wr_data_buf[25]_i_3_n_0\
    );
\wr_data_buf[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => data_in(74),
      I1 => \wr_data_buf[30]_i_2_n_0\,
      I2 => \wr_data_buf[26]_i_2_n_0\,
      I3 => data_in(26),
      I4 => \wr_data_buf[30]_i_4_n_0\,
      I5 => \wr_data_buf[26]_i_3_n_0\,
      O => \wr_data_buf[26]_i_1_n_0\
    );
\wr_data_buf[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04550404"
    )
        port map (
      I0 => \^q\(2),
      I1 => data_in(26),
      I2 => \^q\(1),
      I3 => \^q\(5),
      I4 => data_in(2),
      O => \wr_data_buf[26]_i_2_n_0\
    );
\wr_data_buf[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00800"
    )
        port map (
      I0 => \^q\(2),
      I1 => data_in(66),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => data_in(10),
      O => \wr_data_buf[26]_i_3_n_0\
    );
\wr_data_buf[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => data_in(75),
      I1 => \wr_data_buf[30]_i_2_n_0\,
      I2 => \wr_data_buf[27]_i_2_n_0\,
      I3 => data_in(27),
      I4 => \wr_data_buf[30]_i_4_n_0\,
      I5 => \wr_data_buf[27]_i_3_n_0\,
      O => \wr_data_buf[27]_i_1_n_0\
    );
\wr_data_buf[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04550404"
    )
        port map (
      I0 => \^q\(2),
      I1 => data_in(27),
      I2 => \^q\(1),
      I3 => \^q\(5),
      I4 => data_in(3),
      O => \wr_data_buf[27]_i_2_n_0\
    );
\wr_data_buf[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00800"
    )
        port map (
      I0 => \^q\(2),
      I1 => data_in(67),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => data_in(11),
      O => \wr_data_buf[27]_i_3_n_0\
    );
\wr_data_buf[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => data_in(76),
      I1 => \wr_data_buf[30]_i_2_n_0\,
      I2 => \wr_data_buf[28]_i_2_n_0\,
      I3 => data_in(28),
      I4 => \wr_data_buf[30]_i_4_n_0\,
      I5 => \wr_data_buf[28]_i_3_n_0\,
      O => \wr_data_buf[28]_i_1_n_0\
    );
\wr_data_buf[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04550404"
    )
        port map (
      I0 => \^q\(2),
      I1 => data_in(28),
      I2 => \^q\(1),
      I3 => \^q\(5),
      I4 => data_in(4),
      O => \wr_data_buf[28]_i_2_n_0\
    );
\wr_data_buf[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00800"
    )
        port map (
      I0 => \^q\(2),
      I1 => data_in(68),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => data_in(12),
      O => \wr_data_buf[28]_i_3_n_0\
    );
\wr_data_buf[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => data_in(77),
      I1 => \wr_data_buf[30]_i_2_n_0\,
      I2 => \wr_data_buf[29]_i_2_n_0\,
      I3 => data_in(29),
      I4 => \wr_data_buf[30]_i_4_n_0\,
      I5 => \wr_data_buf[29]_i_3_n_0\,
      O => \wr_data_buf[29]_i_1_n_0\
    );
\wr_data_buf[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04550404"
    )
        port map (
      I0 => \^q\(2),
      I1 => data_in(29),
      I2 => \^q\(1),
      I3 => \^q\(5),
      I4 => data_in(5),
      O => \wr_data_buf[29]_i_2_n_0\
    );
\wr_data_buf[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00800"
    )
        port map (
      I0 => \^q\(2),
      I1 => data_in(69),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => data_in(13),
      O => \wr_data_buf[29]_i_3_n_0\
    );
\wr_data_buf[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => data_in(78),
      I1 => \wr_data_buf[30]_i_2_n_0\,
      I2 => \wr_data_buf[30]_i_3_n_0\,
      I3 => data_in(30),
      I4 => \wr_data_buf[30]_i_4_n_0\,
      I5 => \wr_data_buf[30]_i_5_n_0\,
      O => \wr_data_buf[30]_i_1_n_0\
    );
\wr_data_buf[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(5),
      O => \wr_data_buf[30]_i_2_n_0\
    );
\wr_data_buf[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04550404"
    )
        port map (
      I0 => \^q\(2),
      I1 => data_in(30),
      I2 => \^q\(1),
      I3 => \^q\(5),
      I4 => data_in(6),
      O => \wr_data_buf[30]_i_3_n_0\
    );
\wr_data_buf[30]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(5),
      I2 => \^q\(3),
      O => \wr_data_buf[30]_i_4_n_0\
    );
\wr_data_buf[30]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08A00800"
    )
        port map (
      I0 => \^q\(2),
      I1 => data_in(70),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => data_in(14),
      O => \wr_data_buf[30]_i_5_n_0\
    );
\wr_data_buf[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3500"
    )
        port map (
      I0 => \wr_data_buf[31]_i_3_n_0\,
      I1 => \wr_data_buf[31]_i_4_n_0\,
      I2 => \^q\(0),
      I3 => data_valid,
      O => \wr_data_buf[31]_i_1_n_0\
    );
\wr_data_buf[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF272F0000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(5),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => data_in(31),
      I5 => \wr_data_buf[31]_i_5_n_0\,
      O => \wr_data_buf[31]_i_2_n_0\
    );
\wr_data_buf[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFDFFF7FFFBFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(6),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \wr_data_buf[31]_i_3_n_0\
    );
\wr_data_buf[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7EFFFEFFFFFFF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(6),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \wr_data_buf[31]_i_4_n_0\
    );
\wr_data_buf[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2C200000"
    )
        port map (
      I0 => data_in(15),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => data_in(71),
      I4 => \^q\(2),
      I5 => \wr_data_buf[31]_i_6_n_0\,
      O => \wr_data_buf[31]_i_5_n_0\
    );
\wr_data_buf[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404F40"
    )
        port map (
      I0 => \^q\(3),
      I1 => data_in(79),
      I2 => \^q\(5),
      I3 => data_in(7),
      I4 => \^q\(2),
      O => \wr_data_buf[31]_i_6_n_0\
    );
\wr_data_buf[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => data_in(0),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(64),
      I4 => \^q\(1),
      I5 => data_in(32),
      O => \wr_data_buf[32]_i_1_n_0\
    );
\wr_data_buf[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => data_in(1),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(65),
      I4 => \^q\(1),
      I5 => data_in(33),
      O => \wr_data_buf[33]_i_1_n_0\
    );
\wr_data_buf[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => data_in(2),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(66),
      I4 => \^q\(1),
      I5 => data_in(34),
      O => \wr_data_buf[34]_i_1_n_0\
    );
\wr_data_buf[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => data_in(3),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(67),
      I4 => \^q\(1),
      I5 => data_in(35),
      O => \wr_data_buf[35]_i_1_n_0\
    );
\wr_data_buf[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => data_in(4),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(68),
      I4 => \^q\(1),
      I5 => data_in(36),
      O => \wr_data_buf[36]_i_1_n_0\
    );
\wr_data_buf[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => data_in(5),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(69),
      I4 => \^q\(1),
      I5 => data_in(37),
      O => \wr_data_buf[37]_i_1_n_0\
    );
\wr_data_buf[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => data_in(6),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(70),
      I4 => \^q\(1),
      I5 => data_in(38),
      O => \wr_data_buf[38]_i_1_n_0\
    );
\wr_data_buf[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => data_in(7),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(71),
      I4 => \^q\(1),
      I5 => data_in(39),
      O => \wr_data_buf[39]_i_2_n_0\
    );
\wr_data_buf[39]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0000002000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \wr_data_buf[47]_i_7_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(4),
      I4 => data_valid,
      I5 => \wr_data_buf[47]_i_8_n_0\,
      O => \wr_data_buf[39]_i_3_n_0\
    );
\wr_data_buf[39]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000400"
    )
        port map (
      I0 => \^q\(6),
      I1 => data_valid,
      I2 => \wr_data_buf[23]_i_7_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(1),
      O => \wr_data_buf[39]_i_4_n_0\
    );
\wr_data_buf[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => \wr_data_buf[40]_i_2_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(72),
      I4 => \^q\(1),
      I5 => data_in(40),
      O => \wr_data_buf[40]_i_1_n_0\
    );
\wr_data_buf[40]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(8),
      I1 => \^q\(5),
      I2 => data_in(0),
      I3 => \^q\(2),
      I4 => data_in(64),
      O => \wr_data_buf[40]_i_2_n_0\
    );
\wr_data_buf[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => \wr_data_buf[41]_i_2_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(73),
      I4 => \^q\(1),
      I5 => data_in(41),
      O => \wr_data_buf[41]_i_1_n_0\
    );
\wr_data_buf[41]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(9),
      I1 => \^q\(5),
      I2 => data_in(1),
      I3 => \^q\(2),
      I4 => data_in(65),
      O => \wr_data_buf[41]_i_2_n_0\
    );
\wr_data_buf[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => \wr_data_buf[42]_i_2_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(74),
      I4 => \^q\(1),
      I5 => data_in(42),
      O => \wr_data_buf[42]_i_1_n_0\
    );
\wr_data_buf[42]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(10),
      I1 => \^q\(5),
      I2 => data_in(2),
      I3 => \^q\(2),
      I4 => data_in(66),
      O => \wr_data_buf[42]_i_2_n_0\
    );
\wr_data_buf[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => \wr_data_buf[43]_i_2_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(75),
      I4 => \^q\(1),
      I5 => data_in(43),
      O => \wr_data_buf[43]_i_1_n_0\
    );
\wr_data_buf[43]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(11),
      I1 => \^q\(5),
      I2 => data_in(3),
      I3 => \^q\(2),
      I4 => data_in(67),
      O => \wr_data_buf[43]_i_2_n_0\
    );
\wr_data_buf[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => \wr_data_buf[44]_i_2_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(76),
      I4 => \^q\(1),
      I5 => data_in(44),
      O => \wr_data_buf[44]_i_1_n_0\
    );
\wr_data_buf[44]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(12),
      I1 => \^q\(5),
      I2 => data_in(4),
      I3 => \^q\(2),
      I4 => data_in(68),
      O => \wr_data_buf[44]_i_2_n_0\
    );
\wr_data_buf[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => \wr_data_buf[45]_i_2_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(77),
      I4 => \^q\(1),
      I5 => data_in(45),
      O => \wr_data_buf[45]_i_1_n_0\
    );
\wr_data_buf[45]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(13),
      I1 => \^q\(5),
      I2 => data_in(5),
      I3 => \^q\(2),
      I4 => data_in(69),
      O => \wr_data_buf[45]_i_2_n_0\
    );
\wr_data_buf[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => \wr_data_buf[46]_i_2_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(78),
      I4 => \^q\(1),
      I5 => data_in(46),
      O => \wr_data_buf[46]_i_1_n_0\
    );
\wr_data_buf[46]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(14),
      I1 => \^q\(5),
      I2 => data_in(6),
      I3 => \^q\(2),
      I4 => data_in(70),
      O => \wr_data_buf[46]_i_2_n_0\
    );
\wr_data_buf[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAEEAAAAAAAA"
    )
        port map (
      I0 => \wr_data_buf[47]_i_3_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \wr_data_buf[47]_i_4_n_0\,
      I5 => \wr_data_buf[47]_i_5_n_0\,
      O => \wr_data_buf[47]_i_1_n_0\
    );
\wr_data_buf[47]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA8ABABABA8A8A8"
    )
        port map (
      I0 => \wr_data_buf[47]_i_6_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => data_in(79),
      I4 => \^q\(1),
      I5 => data_in(47),
      O => \wr_data_buf[47]_i_2_n_0\
    );
\wr_data_buf[47]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0F20000000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \wr_data_buf[47]_i_7_n_0\,
      I2 => \wr_data_buf[47]_i_8_n_0\,
      I3 => \^q\(4),
      I4 => \^q\(6),
      I5 => \wr_data_buf[23]_i_4_n_0\,
      O => \wr_data_buf[47]_i_3_n_0\
    );
\wr_data_buf[47]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F7F7F777F7F7"
    )
        port map (
      I0 => data_valid,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \wr_data_buf[30]_i_2_n_0\,
      O => \wr_data_buf[47]_i_4_n_0\
    );
\wr_data_buf[47]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0434"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(4),
      I4 => \^q\(1),
      O => \wr_data_buf[47]_i_5_n_0\
    );
\wr_data_buf[47]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_in(15),
      I1 => \^q\(5),
      I2 => data_in(7),
      I3 => \^q\(2),
      I4 => data_in(71),
      O => \wr_data_buf[47]_i_6_n_0\
    );
\wr_data_buf[47]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      O => \wr_data_buf[47]_i_7_n_0\
    );
\wr_data_buf[47]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000042"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(5),
      I4 => \^q\(1),
      O => \wr_data_buf[47]_i_8_n_0\
    );
\wr_data_buf[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[48]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[48]_i_3_n_0\,
      I4 => data_in(64),
      O => \wr_data_buf[48]_i_1_n_0\
    );
\wr_data_buf[48]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(0),
      I1 => \^q\(1),
      I2 => data_in(48),
      O => \wr_data_buf[48]_i_2_n_0\
    );
\wr_data_buf[48]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(80),
      I1 => \^q\(2),
      I2 => data_in(16),
      I3 => \^q\(5),
      I4 => data_in(0),
      O => \wr_data_buf[48]_i_3_n_0\
    );
\wr_data_buf[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[49]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[49]_i_3_n_0\,
      I4 => data_in(65),
      O => \wr_data_buf[49]_i_1_n_0\
    );
\wr_data_buf[49]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(1),
      I1 => \^q\(1),
      I2 => data_in(49),
      O => \wr_data_buf[49]_i_2_n_0\
    );
\wr_data_buf[49]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(81),
      I1 => \^q\(2),
      I2 => data_in(17),
      I3 => \^q\(5),
      I4 => data_in(1),
      O => \wr_data_buf[49]_i_3_n_0\
    );
\wr_data_buf[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[50]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[50]_i_3_n_0\,
      I4 => data_in(66),
      O => \wr_data_buf[50]_i_1_n_0\
    );
\wr_data_buf[50]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(2),
      I1 => \^q\(1),
      I2 => data_in(50),
      O => \wr_data_buf[50]_i_2_n_0\
    );
\wr_data_buf[50]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(82),
      I1 => \^q\(2),
      I2 => data_in(18),
      I3 => \^q\(5),
      I4 => data_in(2),
      O => \wr_data_buf[50]_i_3_n_0\
    );
\wr_data_buf[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[51]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[51]_i_3_n_0\,
      I4 => data_in(67),
      O => \wr_data_buf[51]_i_1_n_0\
    );
\wr_data_buf[51]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(3),
      I1 => \^q\(1),
      I2 => data_in(51),
      O => \wr_data_buf[51]_i_2_n_0\
    );
\wr_data_buf[51]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(83),
      I1 => \^q\(2),
      I2 => data_in(19),
      I3 => \^q\(5),
      I4 => data_in(3),
      O => \wr_data_buf[51]_i_3_n_0\
    );
\wr_data_buf[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[52]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[52]_i_3_n_0\,
      I4 => data_in(68),
      O => \wr_data_buf[52]_i_1_n_0\
    );
\wr_data_buf[52]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(4),
      I1 => \^q\(1),
      I2 => data_in(52),
      O => \wr_data_buf[52]_i_2_n_0\
    );
\wr_data_buf[52]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(84),
      I1 => \^q\(2),
      I2 => data_in(20),
      I3 => \^q\(5),
      I4 => data_in(4),
      O => \wr_data_buf[52]_i_3_n_0\
    );
\wr_data_buf[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[53]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[53]_i_3_n_0\,
      I4 => data_in(69),
      O => \wr_data_buf[53]_i_1_n_0\
    );
\wr_data_buf[53]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(5),
      I1 => \^q\(1),
      I2 => data_in(53),
      O => \wr_data_buf[53]_i_2_n_0\
    );
\wr_data_buf[53]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(85),
      I1 => \^q\(2),
      I2 => data_in(21),
      I3 => \^q\(5),
      I4 => data_in(5),
      O => \wr_data_buf[53]_i_3_n_0\
    );
\wr_data_buf[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[54]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[54]_i_3_n_0\,
      I4 => data_in(70),
      O => \wr_data_buf[54]_i_1_n_0\
    );
\wr_data_buf[54]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(6),
      I1 => \^q\(1),
      I2 => data_in(54),
      O => \wr_data_buf[54]_i_2_n_0\
    );
\wr_data_buf[54]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(86),
      I1 => \^q\(2),
      I2 => data_in(22),
      I3 => \^q\(5),
      I4 => data_in(6),
      O => \wr_data_buf[54]_i_3_n_0\
    );
\wr_data_buf[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAEAAE"
    )
        port map (
      I0 => \wr_data_buf[55]_i_3_n_0\,
      I1 => \wr_data_buf[119]_i_2_n_0\,
      I2 => \^q\(1),
      I3 => \^q\(6),
      I4 => \^q\(3),
      O => \wr_data_buf[55]_i_1_n_0\
    );
\wr_data_buf[55]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[55]_i_4_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[55]_i_5_n_0\,
      I4 => data_in(71),
      O => \wr_data_buf[55]_i_2_n_0\
    );
\wr_data_buf[55]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000030400"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \wr_data_buf[63]_i_6_n_0\,
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => \wr_data_buf[55]_i_3_n_0\
    );
\wr_data_buf[55]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(7),
      I1 => \^q\(1),
      I2 => data_in(55),
      O => \wr_data_buf[55]_i_4_n_0\
    );
\wr_data_buf[55]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBB3088"
    )
        port map (
      I0 => data_in(87),
      I1 => \^q\(2),
      I2 => data_in(23),
      I3 => \^q\(5),
      I4 => data_in(7),
      O => \wr_data_buf[55]_i_5_n_0\
    );
\wr_data_buf[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[56]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[56]_i_3_n_0\,
      I4 => data_in(72),
      O => \wr_data_buf[56]_i_1_n_0\
    );
\wr_data_buf[56]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(0),
      I1 => \^q\(1),
      I2 => data_in(56),
      O => \wr_data_buf[56]_i_2_n_0\
    );
\wr_data_buf[56]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(8),
      I1 => data_in(88),
      I2 => \^q\(2),
      I3 => data_in(24),
      I4 => \^q\(5),
      I5 => data_in(64),
      O => \wr_data_buf[56]_i_3_n_0\
    );
\wr_data_buf[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[57]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[57]_i_3_n_0\,
      I4 => data_in(73),
      O => \wr_data_buf[57]_i_1_n_0\
    );
\wr_data_buf[57]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(1),
      I1 => \^q\(1),
      I2 => data_in(57),
      O => \wr_data_buf[57]_i_2_n_0\
    );
\wr_data_buf[57]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(9),
      I1 => data_in(89),
      I2 => \^q\(2),
      I3 => data_in(25),
      I4 => \^q\(5),
      I5 => data_in(65),
      O => \wr_data_buf[57]_i_3_n_0\
    );
\wr_data_buf[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[58]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[58]_i_3_n_0\,
      I4 => data_in(74),
      O => \wr_data_buf[58]_i_1_n_0\
    );
\wr_data_buf[58]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(2),
      I1 => \^q\(1),
      I2 => data_in(58),
      O => \wr_data_buf[58]_i_2_n_0\
    );
\wr_data_buf[58]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(10),
      I1 => data_in(90),
      I2 => \^q\(2),
      I3 => data_in(26),
      I4 => \^q\(5),
      I5 => data_in(66),
      O => \wr_data_buf[58]_i_3_n_0\
    );
\wr_data_buf[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[59]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[59]_i_3_n_0\,
      I4 => data_in(75),
      O => \wr_data_buf[59]_i_1_n_0\
    );
\wr_data_buf[59]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(3),
      I1 => \^q\(1),
      I2 => data_in(59),
      O => \wr_data_buf[59]_i_2_n_0\
    );
\wr_data_buf[59]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(11),
      I1 => data_in(91),
      I2 => \^q\(2),
      I3 => data_in(27),
      I4 => \^q\(5),
      I5 => data_in(67),
      O => \wr_data_buf[59]_i_3_n_0\
    );
\wr_data_buf[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[60]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[60]_i_3_n_0\,
      I4 => data_in(76),
      O => \wr_data_buf[60]_i_1_n_0\
    );
\wr_data_buf[60]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(4),
      I1 => \^q\(1),
      I2 => data_in(60),
      O => \wr_data_buf[60]_i_2_n_0\
    );
\wr_data_buf[60]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(12),
      I1 => data_in(92),
      I2 => \^q\(2),
      I3 => data_in(28),
      I4 => \^q\(5),
      I5 => data_in(68),
      O => \wr_data_buf[60]_i_3_n_0\
    );
\wr_data_buf[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[61]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[61]_i_3_n_0\,
      I4 => data_in(77),
      O => \wr_data_buf[61]_i_1_n_0\
    );
\wr_data_buf[61]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(5),
      I1 => \^q\(1),
      I2 => data_in(61),
      O => \wr_data_buf[61]_i_2_n_0\
    );
\wr_data_buf[61]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(13),
      I1 => data_in(93),
      I2 => \^q\(2),
      I3 => data_in(29),
      I4 => \^q\(5),
      I5 => data_in(69),
      O => \wr_data_buf[61]_i_3_n_0\
    );
\wr_data_buf[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[62]_i_2_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[62]_i_3_n_0\,
      I4 => data_in(78),
      O => \wr_data_buf[62]_i_1_n_0\
    );
\wr_data_buf[62]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(6),
      I1 => \^q\(1),
      I2 => data_in(62),
      O => \wr_data_buf[62]_i_2_n_0\
    );
\wr_data_buf[62]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(14),
      I1 => data_in(94),
      I2 => \^q\(2),
      I3 => data_in(30),
      I4 => \^q\(5),
      I5 => data_in(70),
      O => \wr_data_buf[62]_i_3_n_0\
    );
\wr_data_buf[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4100"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \wr_data_buf[119]_i_2_n_0\,
      I4 => \wr_data_buf[63]_i_3_n_0\,
      O => \wr_data_buf[63]_i_1_n_0\
    );
\wr_data_buf[63]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => \wr_data_buf[63]_i_4_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \wr_data_buf[63]_i_5_n_0\,
      I4 => data_in(79),
      O => \wr_data_buf[63]_i_2_n_0\
    );
\wr_data_buf[63]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080004000030080"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \wr_data_buf[63]_i_6_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => \wr_data_buf[63]_i_3_n_0\
    );
\wr_data_buf[63]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(7),
      I1 => \^q\(1),
      I2 => data_in(63),
      O => \wr_data_buf[63]_i_4_n_0\
    );
\wr_data_buf[63]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(15),
      I1 => data_in(95),
      I2 => \^q\(2),
      I3 => data_in(31),
      I4 => \^q\(5),
      I5 => data_in(71),
      O => \wr_data_buf[63]_i_5_n_0\
    );
\wr_data_buf[63]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9FFF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => data_valid,
      I3 => \^q\(0),
      O => \wr_data_buf[63]_i_6_n_0\
    );
\wr_data_buf[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \wr_data_buf[71]_i_2_n_0\,
      I1 => data_valid,
      I2 => \^q\(0),
      I3 => \^q\(5),
      I4 => \^q\(6),
      O => \wr_data_buf[71]_i_1_n_0\
    );
\wr_data_buf[71]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"040010A1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(5),
      I2 => \^q\(3),
      I3 => \^q\(4),
      I4 => \^q\(2),
      O => \wr_data_buf[71]_i_2_n_0\
    );
\wr_data_buf[72]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => data_in(0),
      I1 => \^q\(0),
      I2 => data_in(64),
      I3 => \^q\(6),
      I4 => \^q\(1),
      I5 => data_in(8),
      O => \wr_data_buf[72]_i_1_n_0\
    );
\wr_data_buf[73]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => data_in(1),
      I1 => \^q\(0),
      I2 => data_in(65),
      I3 => \^q\(6),
      I4 => \^q\(1),
      I5 => data_in(9),
      O => \wr_data_buf[73]_i_1_n_0\
    );
\wr_data_buf[74]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => data_in(2),
      I1 => \^q\(0),
      I2 => data_in(66),
      I3 => \^q\(6),
      I4 => \^q\(1),
      I5 => data_in(10),
      O => \wr_data_buf[74]_i_1_n_0\
    );
\wr_data_buf[75]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => data_in(3),
      I1 => \^q\(0),
      I2 => data_in(67),
      I3 => \^q\(6),
      I4 => \^q\(1),
      I5 => data_in(11),
      O => \wr_data_buf[75]_i_1_n_0\
    );
\wr_data_buf[76]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => data_in(4),
      I1 => \^q\(0),
      I2 => data_in(68),
      I3 => \^q\(6),
      I4 => \^q\(1),
      I5 => data_in(12),
      O => \wr_data_buf[76]_i_1_n_0\
    );
\wr_data_buf[77]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => data_in(5),
      I1 => \^q\(0),
      I2 => data_in(69),
      I3 => \^q\(6),
      I4 => \^q\(1),
      I5 => data_in(13),
      O => \wr_data_buf[77]_i_1_n_0\
    );
\wr_data_buf[78]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => data_in(6),
      I1 => \^q\(0),
      I2 => data_in(70),
      I3 => \^q\(6),
      I4 => \^q\(1),
      I5 => data_in(14),
      O => \wr_data_buf[78]_i_1_n_0\
    );
\wr_data_buf[79]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808000008080"
    )
        port map (
      I0 => \wr_data_buf[79]_i_3_n_0\,
      I1 => \fifo_wr_data[127]_i_7_n_0\,
      I2 => data_valid,
      I3 => \wr_data_buf[79]_i_4_n_0\,
      I4 => \^q\(0),
      I5 => \wr_data_buf[79]_i_5_n_0\,
      O => \wr_data_buf[79]_i_1_n_0\
    );
\wr_data_buf[79]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBBBB8888888"
    )
        port map (
      I0 => data_in(7),
      I1 => \^q\(0),
      I2 => data_in(71),
      I3 => \^q\(6),
      I4 => \^q\(1),
      I5 => data_in(15),
      O => \wr_data_buf[79]_i_2_n_0\
    );
\wr_data_buf[79]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200C01"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(4),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(0),
      O => \wr_data_buf[79]_i_3_n_0\
    );
\wr_data_buf[79]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(5),
      O => \wr_data_buf[79]_i_4_n_0\
    );
\wr_data_buf[79]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(4),
      I2 => \^q\(3),
      O => \wr_data_buf[79]_i_5_n_0\
    );
\wr_data_buf[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => data_valid,
      I2 => \wr_data_buf[7]_i_2_n_0\,
      O => \wr_data_buf[7]_i_1_n_0\
    );
\wr_data_buf[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDBEFFFFE6FFFF7"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(6),
      I4 => \^q\(4),
      I5 => \^q\(1),
      O => \wr_data_buf[7]_i_2_n_0\
    );
\wr_data_buf[80]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^q\(0),
      I1 => data_in(0),
      I2 => \^q\(4),
      I3 => data_in(16),
      I4 => \^q\(1),
      I5 => data_in(64),
      O => \wr_data_buf[80]_i_1_n_0\
    );
\wr_data_buf[81]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^q\(0),
      I1 => data_in(1),
      I2 => \^q\(4),
      I3 => data_in(17),
      I4 => \^q\(1),
      I5 => data_in(65),
      O => \wr_data_buf[81]_i_1_n_0\
    );
\wr_data_buf[82]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^q\(0),
      I1 => data_in(2),
      I2 => \^q\(4),
      I3 => data_in(18),
      I4 => \^q\(1),
      I5 => data_in(66),
      O => \wr_data_buf[82]_i_1_n_0\
    );
\wr_data_buf[83]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^q\(0),
      I1 => data_in(3),
      I2 => \^q\(4),
      I3 => data_in(19),
      I4 => \^q\(1),
      I5 => data_in(67),
      O => \wr_data_buf[83]_i_1_n_0\
    );
\wr_data_buf[84]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^q\(0),
      I1 => data_in(4),
      I2 => \^q\(4),
      I3 => data_in(20),
      I4 => \^q\(1),
      I5 => data_in(68),
      O => \wr_data_buf[84]_i_1_n_0\
    );
\wr_data_buf[85]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^q\(0),
      I1 => data_in(5),
      I2 => \^q\(4),
      I3 => data_in(21),
      I4 => \^q\(1),
      I5 => data_in(69),
      O => \wr_data_buf[85]_i_1_n_0\
    );
\wr_data_buf[86]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^q\(0),
      I1 => data_in(6),
      I2 => \^q\(4),
      I3 => data_in(22),
      I4 => \^q\(1),
      I5 => data_in(70),
      O => \wr_data_buf[86]_i_1_n_0\
    );
\wr_data_buf[87]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020202A20202"
    )
        port map (
      I0 => data_valid,
      I1 => \wr_data_buf[87]_i_3_n_0\,
      I2 => \^q\(0),
      I3 => \wr_data_buf[87]_i_4_n_0\,
      I4 => \wr_data_buf[111]_i_3_n_0\,
      I5 => \wr_data_buf[87]_i_5_n_0\,
      O => \wr_data_buf[87]_i_1_n_0\
    );
\wr_data_buf[87]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8DDDDCDC88888"
    )
        port map (
      I0 => \^q\(0),
      I1 => data_in(7),
      I2 => \^q\(4),
      I3 => data_in(23),
      I4 => \^q\(1),
      I5 => data_in(71),
      O => \wr_data_buf[87]_i_2_n_0\
    );
\wr_data_buf[87]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBDFFFFF7FFFF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(6),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \wr_data_buf[87]_i_3_n_0\
    );
\wr_data_buf[87]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      O => \wr_data_buf[87]_i_4_n_0\
    );
\wr_data_buf[87]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      O => \wr_data_buf[87]_i_5_n_0\
    );
\wr_data_buf[88]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \wr_data_buf[88]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => data_in(24),
      I3 => \^q\(1),
      I4 => data_in(72),
      O => \wr_data_buf[88]_i_1_n_0\
    );
\wr_data_buf[88]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(0),
      I1 => \^q\(4),
      I2 => data_in(64),
      I3 => \^q\(1),
      I4 => data_in(8),
      O => \wr_data_buf[88]_i_2_n_0\
    );
\wr_data_buf[89]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \wr_data_buf[89]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => data_in(25),
      I3 => \^q\(1),
      I4 => data_in(73),
      O => \wr_data_buf[89]_i_1_n_0\
    );
\wr_data_buf[89]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(1),
      I1 => \^q\(4),
      I2 => data_in(65),
      I3 => \^q\(1),
      I4 => data_in(9),
      O => \wr_data_buf[89]_i_2_n_0\
    );
\wr_data_buf[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFECFFE30020002"
    )
        port map (
      I0 => data_in(0),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => data_in(64),
      I5 => data_in(8),
      O => \wr_data_buf[8]_i_1_n_0\
    );
\wr_data_buf[90]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \wr_data_buf[90]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => data_in(26),
      I3 => \^q\(1),
      I4 => data_in(74),
      O => \wr_data_buf[90]_i_1_n_0\
    );
\wr_data_buf[90]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(2),
      I1 => \^q\(4),
      I2 => data_in(66),
      I3 => \^q\(1),
      I4 => data_in(10),
      O => \wr_data_buf[90]_i_2_n_0\
    );
\wr_data_buf[91]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \wr_data_buf[91]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => data_in(27),
      I3 => \^q\(1),
      I4 => data_in(75),
      O => \wr_data_buf[91]_i_1_n_0\
    );
\wr_data_buf[91]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(3),
      I1 => \^q\(4),
      I2 => data_in(67),
      I3 => \^q\(1),
      I4 => data_in(11),
      O => \wr_data_buf[91]_i_2_n_0\
    );
\wr_data_buf[92]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \wr_data_buf[92]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => data_in(28),
      I3 => \^q\(1),
      I4 => data_in(76),
      O => \wr_data_buf[92]_i_1_n_0\
    );
\wr_data_buf[92]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(4),
      I1 => \^q\(4),
      I2 => data_in(68),
      I3 => \^q\(1),
      I4 => data_in(12),
      O => \wr_data_buf[92]_i_2_n_0\
    );
\wr_data_buf[93]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \wr_data_buf[93]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => data_in(29),
      I3 => \^q\(1),
      I4 => data_in(77),
      O => \wr_data_buf[93]_i_1_n_0\
    );
\wr_data_buf[93]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(5),
      I1 => \^q\(4),
      I2 => data_in(69),
      I3 => \^q\(1),
      I4 => data_in(13),
      O => \wr_data_buf[93]_i_2_n_0\
    );
\wr_data_buf[94]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \wr_data_buf[94]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => data_in(30),
      I3 => \^q\(1),
      I4 => data_in(78),
      O => \wr_data_buf[94]_i_1_n_0\
    );
\wr_data_buf[94]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(6),
      I1 => \^q\(4),
      I2 => data_in(70),
      I3 => \^q\(1),
      I4 => data_in(14),
      O => \wr_data_buf[94]_i_2_n_0\
    );
\wr_data_buf[95]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => data_valid,
      I1 => \wr_data_buf[95]_i_3_n_0\,
      I2 => \^q\(0),
      I3 => \wr_data_buf[95]_i_4_n_0\,
      O => \wr_data_buf[95]_i_1_n_0\
    );
\wr_data_buf[95]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \wr_data_buf[95]_i_5_n_0\,
      I1 => \^q\(0),
      I2 => data_in(31),
      I3 => \^q\(1),
      I4 => data_in(79),
      O => \wr_data_buf[95]_i_2_n_0\
    );
\wr_data_buf[95]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFDFFFFF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => \wr_data_buf[95]_i_3_n_0\
    );
\wr_data_buf[95]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF3EFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(6),
      I4 => \^q\(2),
      I5 => \^q\(5),
      O => \wr_data_buf[95]_i_4_n_0\
    );
\wr_data_buf[95]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data_in(7),
      I1 => \^q\(4),
      I2 => data_in(71),
      I3 => \^q\(1),
      I4 => data_in(15),
      O => \wr_data_buf[95]_i_5_n_0\
    );
\wr_data_buf[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFECFFE30020002"
    )
        port map (
      I0 => data_in(1),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => data_in(65),
      I5 => data_in(9),
      O => \wr_data_buf[9]_i_1_n_0\
    );
\wr_data_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[7]_i_1_n_0\,
      D => data_in(0),
      Q => \^ila_wr_data_buf\(0),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[103]_i_1_n_0\,
      D => data_in(4),
      Q => \^ila_wr_data_buf\(100),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[103]_i_1_n_0\,
      D => data_in(5),
      Q => \^ila_wr_data_buf\(101),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[103]_i_1_n_0\,
      D => data_in(6),
      Q => \^ila_wr_data_buf\(102),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[103]_i_1_n_0\,
      D => data_in(7),
      Q => \^ila_wr_data_buf\(103),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[111]_i_1_n_0\,
      D => \wr_data_buf[104]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(104),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[111]_i_1_n_0\,
      D => \wr_data_buf[105]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(105),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[111]_i_1_n_0\,
      D => \wr_data_buf[106]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(106),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[111]_i_1_n_0\,
      D => \wr_data_buf[107]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(107),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[111]_i_1_n_0\,
      D => \wr_data_buf[108]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(108),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[111]_i_1_n_0\,
      D => \wr_data_buf[109]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(109),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[15]_i_1_n_0\,
      D => \wr_data_buf[10]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(10),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[111]_i_1_n_0\,
      D => \wr_data_buf[110]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(110),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[111]_i_1_n_0\,
      D => \wr_data_buf[111]_i_2_n_0\,
      Q => \^ila_wr_data_buf\(111),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[119]_i_1_n_0\,
      D => data_in(0),
      Q => \^ila_wr_data_buf\(112),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[119]_i_1_n_0\,
      D => data_in(1),
      Q => \^ila_wr_data_buf\(113),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[119]_i_1_n_0\,
      D => data_in(2),
      Q => \^ila_wr_data_buf\(114),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[119]_i_1_n_0\,
      D => data_in(3),
      Q => \^ila_wr_data_buf\(115),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[119]_i_1_n_0\,
      D => data_in(4),
      Q => \^ila_wr_data_buf\(116),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[119]_i_1_n_0\,
      D => data_in(5),
      Q => \^ila_wr_data_buf\(117),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[119]_i_1_n_0\,
      D => data_in(6),
      Q => \^ila_wr_data_buf\(118),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[119]_i_1_n_0\,
      D => data_in(7),
      Q => \^ila_wr_data_buf\(119),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[15]_i_1_n_0\,
      D => \wr_data_buf[11]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(11),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[15]_i_1_n_0\,
      D => \wr_data_buf[12]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(12),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[15]_i_1_n_0\,
      D => \wr_data_buf[13]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(13),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[15]_i_1_n_0\,
      D => \wr_data_buf[14]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(14),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[15]_i_1_n_0\,
      D => \wr_data_buf[15]_i_2_n_0\,
      Q => \^ila_wr_data_buf\(15),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[23]_i_1_n_0\,
      D => \wr_data_buf[16]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(16),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[23]_i_1_n_0\,
      D => \wr_data_buf[17]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(17),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[23]_i_1_n_0\,
      D => \wr_data_buf[18]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(18),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[23]_i_1_n_0\,
      D => \wr_data_buf[19]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(19),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[7]_i_1_n_0\,
      D => data_in(1),
      Q => \^ila_wr_data_buf\(1),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[23]_i_1_n_0\,
      D => \wr_data_buf[20]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(20),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[23]_i_1_n_0\,
      D => \wr_data_buf[21]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(21),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[23]_i_1_n_0\,
      D => \wr_data_buf[22]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(22),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[23]_i_1_n_0\,
      D => \wr_data_buf[23]_i_2_n_0\,
      Q => \^ila_wr_data_buf\(23),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[31]_i_1_n_0\,
      D => \wr_data_buf[24]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(24),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[31]_i_1_n_0\,
      D => \wr_data_buf[25]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(25),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[31]_i_1_n_0\,
      D => \wr_data_buf[26]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(26),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[31]_i_1_n_0\,
      D => \wr_data_buf[27]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(27),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[31]_i_1_n_0\,
      D => \wr_data_buf[28]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(28),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[31]_i_1_n_0\,
      D => \wr_data_buf[29]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(29),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[7]_i_1_n_0\,
      D => data_in(2),
      Q => \^ila_wr_data_buf\(2),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[31]_i_1_n_0\,
      D => \wr_data_buf[30]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(30),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[31]_i_1_n_0\,
      D => \wr_data_buf[31]_i_2_n_0\,
      Q => \^ila_wr_data_buf\(31),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf_reg[39]_i_1_n_0\,
      D => \wr_data_buf[32]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(32),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf_reg[39]_i_1_n_0\,
      D => \wr_data_buf[33]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(33),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf_reg[39]_i_1_n_0\,
      D => \wr_data_buf[34]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(34),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf_reg[39]_i_1_n_0\,
      D => \wr_data_buf[35]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(35),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf_reg[39]_i_1_n_0\,
      D => \wr_data_buf[36]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(36),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf_reg[39]_i_1_n_0\,
      D => \wr_data_buf[37]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(37),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf_reg[39]_i_1_n_0\,
      D => \wr_data_buf[38]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(38),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf_reg[39]_i_1_n_0\,
      D => \wr_data_buf[39]_i_2_n_0\,
      Q => \^ila_wr_data_buf\(39),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[39]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \wr_data_buf[39]_i_3_n_0\,
      I1 => \wr_data_buf[39]_i_4_n_0\,
      O => \wr_data_buf_reg[39]_i_1_n_0\,
      S => \^q\(0)
    );
\wr_data_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[7]_i_1_n_0\,
      D => data_in(3),
      Q => \^ila_wr_data_buf\(3),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[47]_i_1_n_0\,
      D => \wr_data_buf[40]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(40),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[47]_i_1_n_0\,
      D => \wr_data_buf[41]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(41),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[47]_i_1_n_0\,
      D => \wr_data_buf[42]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(42),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[47]_i_1_n_0\,
      D => \wr_data_buf[43]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(43),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[47]_i_1_n_0\,
      D => \wr_data_buf[44]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(44),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[47]_i_1_n_0\,
      D => \wr_data_buf[45]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(45),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[47]_i_1_n_0\,
      D => \wr_data_buf[46]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(46),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[47]_i_1_n_0\,
      D => \wr_data_buf[47]_i_2_n_0\,
      Q => \^ila_wr_data_buf\(47),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[55]_i_1_n_0\,
      D => \wr_data_buf[48]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(48),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[55]_i_1_n_0\,
      D => \wr_data_buf[49]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(49),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[7]_i_1_n_0\,
      D => data_in(4),
      Q => \^ila_wr_data_buf\(4),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[55]_i_1_n_0\,
      D => \wr_data_buf[50]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(50),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[55]_i_1_n_0\,
      D => \wr_data_buf[51]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(51),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[55]_i_1_n_0\,
      D => \wr_data_buf[52]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(52),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[55]_i_1_n_0\,
      D => \wr_data_buf[53]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(53),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[55]_i_1_n_0\,
      D => \wr_data_buf[54]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(54),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[55]_i_1_n_0\,
      D => \wr_data_buf[55]_i_2_n_0\,
      Q => \^ila_wr_data_buf\(55),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[63]_i_1_n_0\,
      D => \wr_data_buf[56]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(56),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[63]_i_1_n_0\,
      D => \wr_data_buf[57]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(57),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[63]_i_1_n_0\,
      D => \wr_data_buf[58]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(58),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[63]_i_1_n_0\,
      D => \wr_data_buf[59]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(59),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[7]_i_1_n_0\,
      D => data_in(5),
      Q => \^ila_wr_data_buf\(5),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[63]_i_1_n_0\,
      D => \wr_data_buf[60]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(60),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[63]_i_1_n_0\,
      D => \wr_data_buf[61]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(61),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[63]_i_1_n_0\,
      D => \wr_data_buf[62]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(62),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[63]_i_1_n_0\,
      D => \wr_data_buf[63]_i_2_n_0\,
      Q => \^ila_wr_data_buf\(63),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[71]_i_1_n_0\,
      D => data_in(0),
      Q => \^ila_wr_data_buf\(64),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[71]_i_1_n_0\,
      D => data_in(1),
      Q => \^ila_wr_data_buf\(65),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[71]_i_1_n_0\,
      D => data_in(2),
      Q => \^ila_wr_data_buf\(66),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[71]_i_1_n_0\,
      D => data_in(3),
      Q => \^ila_wr_data_buf\(67),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[71]_i_1_n_0\,
      D => data_in(4),
      Q => \^ila_wr_data_buf\(68),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[71]_i_1_n_0\,
      D => data_in(5),
      Q => \^ila_wr_data_buf\(69),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[7]_i_1_n_0\,
      D => data_in(6),
      Q => \^ila_wr_data_buf\(6),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[71]_i_1_n_0\,
      D => data_in(6),
      Q => \^ila_wr_data_buf\(70),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[71]_i_1_n_0\,
      D => data_in(7),
      Q => \^ila_wr_data_buf\(71),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[79]_i_1_n_0\,
      D => \wr_data_buf[72]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(72),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[79]_i_1_n_0\,
      D => \wr_data_buf[73]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(73),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[79]_i_1_n_0\,
      D => \wr_data_buf[74]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(74),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[79]_i_1_n_0\,
      D => \wr_data_buf[75]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(75),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[79]_i_1_n_0\,
      D => \wr_data_buf[76]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(76),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[79]_i_1_n_0\,
      D => \wr_data_buf[77]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(77),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[79]_i_1_n_0\,
      D => \wr_data_buf[78]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(78),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[79]_i_1_n_0\,
      D => \wr_data_buf[79]_i_2_n_0\,
      Q => \^ila_wr_data_buf\(79),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[7]_i_1_n_0\,
      D => data_in(7),
      Q => \^ila_wr_data_buf\(7),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[87]_i_1_n_0\,
      D => \wr_data_buf[80]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(80),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[87]_i_1_n_0\,
      D => \wr_data_buf[81]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(81),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[87]_i_1_n_0\,
      D => \wr_data_buf[82]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(82),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[87]_i_1_n_0\,
      D => \wr_data_buf[83]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(83),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[87]_i_1_n_0\,
      D => \wr_data_buf[84]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(84),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[87]_i_1_n_0\,
      D => \wr_data_buf[85]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(85),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[87]_i_1_n_0\,
      D => \wr_data_buf[86]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(86),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[87]_i_1_n_0\,
      D => \wr_data_buf[87]_i_2_n_0\,
      Q => \^ila_wr_data_buf\(87),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[95]_i_1_n_0\,
      D => \wr_data_buf[88]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(88),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[95]_i_1_n_0\,
      D => \wr_data_buf[89]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(89),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[15]_i_1_n_0\,
      D => \wr_data_buf[8]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(8),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[95]_i_1_n_0\,
      D => \wr_data_buf[90]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(90),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[95]_i_1_n_0\,
      D => \wr_data_buf[91]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(91),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[95]_i_1_n_0\,
      D => \wr_data_buf[92]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(92),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[95]_i_1_n_0\,
      D => \wr_data_buf[93]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(93),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[95]_i_1_n_0\,
      D => \wr_data_buf[94]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(94),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[95]_i_1_n_0\,
      D => \wr_data_buf[95]_i_2_n_0\,
      Q => \^ila_wr_data_buf\(95),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[103]_i_1_n_0\,
      D => data_in(0),
      Q => \^ila_wr_data_buf\(96),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[103]_i_1_n_0\,
      D => data_in(1),
      Q => \^ila_wr_data_buf\(97),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[103]_i_1_n_0\,
      D => data_in(2),
      Q => \^ila_wr_data_buf\(98),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[103]_i_1_n_0\,
      D => data_in(3),
      Q => \^ila_wr_data_buf\(99),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
\wr_data_buf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_clk,
      CE => \wr_data_buf[15]_i_1_n_0\,
      D => \wr_data_buf[9]_i_1_n_0\,
      Q => \^ila_wr_data_buf\(9),
      R => \fifo_wr_data[127]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_rx_fifo_axis_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_rx_fifo_axis_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_rx_fifo_axis_0_0 : entity is "top_rx_fifo_axis_0_0,rx_fifo_axis,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_rx_fifo_axis_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of top_rx_fifo_axis_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of top_rx_fifo_axis_0_0 : entity is "rx_fifo_axis,Vivado 2021.1.1";
end top_rx_fifo_axis_0_0;

architecture STRUCTURE of top_rx_fifo_axis_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^aclk\ : STD_LOGIC;
  signal \^data_in\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \^fifo_rd_data\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \^fifo_rd_valid\ : STD_LOGIC;
  signal \^ila_data_write_state\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_rx, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN top_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_rx_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_rx_tready : signal is "XIL_INTERFACENAME m_axis_rx, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN top_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_rx_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TVALID";
  attribute X_INTERFACE_INFO of m_axis_rx_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_rx TDATA";
begin
  \^aclk\ <= aclk;
  \^data_in\(127 downto 0) <= data_in(127 downto 0);
  \^fifo_rd_data\(127 downto 0) <= fifo_rd_data(127 downto 0);
  \^fifo_rd_valid\ <= fifo_rd_valid;
  fifo_rd_clk <= \^aclk\;
  fifo_wr_clk <= \^data_in\(0);
  ila_data_write_state(7) <= \<const0>\;
  ila_data_write_state(6 downto 0) <= \^ila_data_write_state\(6 downto 0);
  m_axis_rx_tdata(127 downto 0) <= \^fifo_rd_data\(127 downto 0);
  m_axis_rx_tvalid <= \^fifo_rd_valid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.top_rx_fifo_axis_0_0_rx_fifo_axis
     port map (
      Q(6 downto 0) => \^ila_data_write_state\(6 downto 0),
      aclk => \^aclk\,
      aresetn => aresetn,
      data_clk => data_clk,
      data_format(2 downto 0) => data_format(2 downto 0),
      data_in(127 downto 0) => \^data_in\(127 downto 0),
      data_ready => data_ready,
      data_valid => data_valid,
      fifo_prog_full => fifo_prog_full,
      fifo_rd_empty => fifo_rd_empty,
      fifo_rd_en => fifo_rd_en,
      fifo_rd_rst_busy => fifo_rd_rst_busy,
      fifo_srst => fifo_srst,
      fifo_wr_data(127 downto 0) => fifo_wr_data(127 downto 0),
      fifo_wr_en => fifo_wr_en,
      fifo_wr_rst_busy => fifo_wr_rst_busy,
      ila_wr_data_buf(119 downto 0) => ila_wr_data_buf(119 downto 0),
      m_axis_rx_tready => m_axis_rx_tready,
      rx_enable => rx_enable
    );
end STRUCTURE;
