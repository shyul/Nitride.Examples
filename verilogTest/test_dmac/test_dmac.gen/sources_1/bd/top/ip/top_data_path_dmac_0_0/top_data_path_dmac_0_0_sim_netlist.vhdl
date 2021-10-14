-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Thu Oct 14 10:24:21 2021
-- Host        : LTUS435291 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/M300039/GitHub/Nitride.Examples/verilogTest/test_dmac/test_dmac.gen/sources_1/bd/top/ip/top_data_path_dmac_0_0/top_data_path_dmac_0_0_sim_netlist.vhdl
-- Design      : top_data_path_dmac_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3cg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_data_path_dmac_0_0_data_path_dmac is
  port (
    ilamaxi_awvalid : out STD_LOGIC;
    write_overflow_ins : out STD_LOGIC;
    read_total_burst_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \write_ddr_occupation_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    write_total_burst_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_write_ddr_full : out STD_LOGIC;
    ila_read_ddr_full : out STD_LOGIC;
    read_burst_tick_reg_0 : out STD_LOGIC;
    read_burst_tick_ack_reg_0 : out STD_LOGIC;
    ila_read_access_tick_ack : out STD_LOGIC;
    ilamaxi_arvalid : out STD_LOGIC;
    write_burst_tick : out STD_LOGIC;
    write_burst_tick_ack_reg_0 : out STD_LOGIC;
    ila_write_access_tick_ack : out STD_LOGIC;
    m_axi_wlast_reg_0 : out STD_LOGIC;
    ilamaxi_bready : out STD_LOGIC;
    read_underflow_ins : out STD_LOGIC;
    ila_tx_valid : out STD_LOGIC;
    ilamaxi_rready : out STD_LOGIC;
    \read_ddr_occupation_reg[30]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid_0 : out STD_LOGIC;
    ila_tx_fifo_wren : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 47 downto 0 );
    ila_read_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ilamaxi_wvalid : out STD_LOGIC;
    ila_rx_ready : out STD_LOGIC;
    ila_write_active : out STD_LOGIC;
    ila_rx_fifo_rden : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 47 downto 0 );
    ila_write_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \read_index_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    read_burst_len_2_sp_1 : out STD_LOGIC;
    \write_index_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    write_burst_len_4_sp_1 : out STD_LOGIC;
    ila_write_burst_counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ila_read_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    read_busy : out STD_LOGIC;
    \read_underflow_count_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    write_busy : out STD_LOGIC;
    \write_overflow_count_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ila_write_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    write_current_burst_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_current_burst_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    write_ddr_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_access_tick : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axis_tx_tready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    tx_fifo_has_space : in STD_LOGIC;
    read_enable : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    read_base_address : in STD_LOGIC_VECTOR ( 47 downto 0 );
    aresetn : in STD_LOGIC;
    write_access_tick : in STD_LOGIC;
    s_axis_rx_tvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    write_enable : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    write_base_address : in STD_LOGIC_VECTOR ( 47 downto 0 );
    read_burst_len : in STD_LOGIC_VECTOR ( 8 downto 0 );
    read_burst_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_access_size_bytes : in STD_LOGIC_VECTOR ( 16 downto 0 );
    write_burst_len : in STD_LOGIC_VECTOR ( 8 downto 0 );
    write_burst_count : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_ddr_size : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_fifo_empty : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_fifo_data_ready : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    read_access_size_bytes : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_data_path_dmac_0_0_data_path_dmac : entity is "data_path_dmac";
end top_data_path_dmac_0_0_data_path_dmac;

architecture STRUCTURE of top_data_path_dmac_0_0_data_path_dmac is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_read_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_read_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_write_state[2]_i_9_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \i__carry__0_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_12_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_13_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_14_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_15_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_16_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_9__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_9_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_11_n_0\ : STD_LOGIC;
  signal \i__carry_i_12_n_0\ : STD_LOGIC;
  signal \i__carry_i_13_n_0\ : STD_LOGIC;
  signal \i__carry_i_14_n_0\ : STD_LOGIC;
  signal \i__carry_i_15_n_0\ : STD_LOGIC;
  signal \i__carry_i_16_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_9__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_9__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal \^ila_read_access_tick_ack\ : STD_LOGIC;
  signal \^ila_read_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ila_read_ddr_has_data_INST_0_i_10_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_11_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_12_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_13_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_14_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_15_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_16_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_17_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_18_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_19_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_1_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_1_n_1 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_1_n_2 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_1_n_3 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_1_n_4 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_1_n_5 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_1_n_6 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_1_n_7 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_20_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_21_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_22_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_23_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_24_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_25_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_26_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_27_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_28_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_29_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_2_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_30_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_31_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_32_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_3_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_4_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_5_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_6_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_7_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_8_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_i_9_n_0 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_n_2 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_n_3 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_n_4 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_n_5 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_n_6 : STD_LOGIC;
  signal ila_read_ddr_has_data_INST_0_n_7 : STD_LOGIC;
  signal \^ila_read_state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^ila_rx_fifo_rden\ : STD_LOGIC;
  signal \^ila_tx_fifo_wren\ : STD_LOGIC;
  signal \^ila_write_access_tick_ack\ : STD_LOGIC;
  signal \^ila_write_active\ : STD_LOGIC;
  signal \^ila_write_burst_counter\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^ila_write_ddr_full\ : STD_LOGIC;
  signal \^ila_write_state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^ilamaxi_arvalid\ : STD_LOGIC;
  signal \^ilamaxi_bready\ : STD_LOGIC;
  signal in10 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal in11 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal in18 : STD_LOGIC_VECTOR ( 47 downto 3 );
  signal in20 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal in9 : STD_LOGIC_VECTOR ( 47 downto 3 );
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \m_axi_araddr[10]_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[10]_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[10]_i_5_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[10]_i_6_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[10]_i_7_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[10]_i_8_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[10]_i_9_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[18]_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[18]_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_araddr[47]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_araddr_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_araddr_reg[10]_i_2_n_1\ : STD_LOGIC;
  signal \m_axi_araddr_reg[10]_i_2_n_2\ : STD_LOGIC;
  signal \m_axi_araddr_reg[10]_i_2_n_3\ : STD_LOGIC;
  signal \m_axi_araddr_reg[10]_i_2_n_4\ : STD_LOGIC;
  signal \m_axi_araddr_reg[10]_i_2_n_5\ : STD_LOGIC;
  signal \m_axi_araddr_reg[10]_i_2_n_6\ : STD_LOGIC;
  signal \m_axi_araddr_reg[10]_i_2_n_7\ : STD_LOGIC;
  signal \m_axi_araddr_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_araddr_reg[18]_i_2_n_1\ : STD_LOGIC;
  signal \m_axi_araddr_reg[18]_i_2_n_2\ : STD_LOGIC;
  signal \m_axi_araddr_reg[18]_i_2_n_3\ : STD_LOGIC;
  signal \m_axi_araddr_reg[18]_i_2_n_4\ : STD_LOGIC;
  signal \m_axi_araddr_reg[18]_i_2_n_5\ : STD_LOGIC;
  signal \m_axi_araddr_reg[18]_i_2_n_6\ : STD_LOGIC;
  signal \m_axi_araddr_reg[18]_i_2_n_7\ : STD_LOGIC;
  signal \m_axi_araddr_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_araddr_reg[26]_i_2_n_1\ : STD_LOGIC;
  signal \m_axi_araddr_reg[26]_i_2_n_2\ : STD_LOGIC;
  signal \m_axi_araddr_reg[26]_i_2_n_3\ : STD_LOGIC;
  signal \m_axi_araddr_reg[26]_i_2_n_4\ : STD_LOGIC;
  signal \m_axi_araddr_reg[26]_i_2_n_5\ : STD_LOGIC;
  signal \m_axi_araddr_reg[26]_i_2_n_6\ : STD_LOGIC;
  signal \m_axi_araddr_reg[26]_i_2_n_7\ : STD_LOGIC;
  signal \m_axi_araddr_reg[34]_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_araddr_reg[34]_i_2_n_1\ : STD_LOGIC;
  signal \m_axi_araddr_reg[34]_i_2_n_2\ : STD_LOGIC;
  signal \m_axi_araddr_reg[34]_i_2_n_3\ : STD_LOGIC;
  signal \m_axi_araddr_reg[34]_i_2_n_4\ : STD_LOGIC;
  signal \m_axi_araddr_reg[34]_i_2_n_5\ : STD_LOGIC;
  signal \m_axi_araddr_reg[34]_i_2_n_6\ : STD_LOGIC;
  signal \m_axi_araddr_reg[34]_i_2_n_7\ : STD_LOGIC;
  signal \m_axi_araddr_reg[42]_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_araddr_reg[42]_i_2_n_1\ : STD_LOGIC;
  signal \m_axi_araddr_reg[42]_i_2_n_2\ : STD_LOGIC;
  signal \m_axi_araddr_reg[42]_i_2_n_3\ : STD_LOGIC;
  signal \m_axi_araddr_reg[42]_i_2_n_4\ : STD_LOGIC;
  signal \m_axi_araddr_reg[42]_i_2_n_5\ : STD_LOGIC;
  signal \m_axi_araddr_reg[42]_i_2_n_6\ : STD_LOGIC;
  signal \m_axi_araddr_reg[42]_i_2_n_7\ : STD_LOGIC;
  signal \m_axi_araddr_reg[47]_i_3_n_4\ : STD_LOGIC;
  signal \m_axi_araddr_reg[47]_i_3_n_5\ : STD_LOGIC;
  signal \m_axi_araddr_reg[47]_i_3_n_6\ : STD_LOGIC;
  signal \m_axi_araddr_reg[47]_i_3_n_7\ : STD_LOGIC;
  signal m_axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal m_axi_arvalid_i_2_n_0 : STD_LOGIC;
  signal m_axi_arvalid_i_3_n_0 : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \m_axi_awaddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[10]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[10]_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[10]_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[10]_i_5_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[10]_i_6_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[10]_i_7_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[10]_i_8_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[10]_i_9_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[11]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[12]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[13]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[14]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[15]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[16]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[17]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[18]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[18]_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[18]_i_4_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[19]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[20]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[21]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[22]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[23]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[24]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[25]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[26]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[27]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[28]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[29]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[30]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[31]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[32]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[33]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[34]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[35]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[36]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[37]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[38]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[39]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[40]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[41]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[42]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[43]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[44]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[45]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[46]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[47]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[47]_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[8]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr[9]_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[10]_i_2_n_1\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[10]_i_2_n_2\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[10]_i_2_n_3\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[10]_i_2_n_4\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[10]_i_2_n_5\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[10]_i_2_n_6\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[10]_i_2_n_7\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[18]_i_2_n_1\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[18]_i_2_n_2\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[18]_i_2_n_3\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[18]_i_2_n_4\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[18]_i_2_n_5\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[18]_i_2_n_6\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[18]_i_2_n_7\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[26]_i_2_n_1\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[26]_i_2_n_2\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[26]_i_2_n_3\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[26]_i_2_n_4\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[26]_i_2_n_5\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[26]_i_2_n_6\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[26]_i_2_n_7\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[34]_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[34]_i_2_n_1\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[34]_i_2_n_2\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[34]_i_2_n_3\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[34]_i_2_n_4\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[34]_i_2_n_5\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[34]_i_2_n_6\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[34]_i_2_n_7\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[42]_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[42]_i_2_n_1\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[42]_i_2_n_2\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[42]_i_2_n_3\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[42]_i_2_n_4\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[42]_i_2_n_5\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[42]_i_2_n_6\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[42]_i_2_n_7\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[47]_i_3_n_4\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[47]_i_3_n_5\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[47]_i_3_n_6\ : STD_LOGIC;
  signal \m_axi_awaddr_reg[47]_i_3_n_7\ : STD_LOGIC;
  signal m_axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal m_axi_awvalid_i_2_n_0 : STD_LOGIC;
  signal m_axi_bready_i_1_n_0 : STD_LOGIC;
  signal m_axi_bready_i_2_n_0 : STD_LOGIC;
  signal m_axi_bready_i_3_n_0 : STD_LOGIC;
  signal m_axi_bready_i_4_n_0 : STD_LOGIC;
  signal \^m_axi_rvalid_0\ : STD_LOGIC;
  signal m_axi_wlast_i_10_n_0 : STD_LOGIC;
  signal m_axi_wlast_i_11_n_0 : STD_LOGIC;
  signal m_axi_wlast_i_12_n_0 : STD_LOGIC;
  signal m_axi_wlast_i_13_n_0 : STD_LOGIC;
  signal m_axi_wlast_i_1_n_0 : STD_LOGIC;
  signal m_axi_wlast_i_2_n_0 : STD_LOGIC;
  signal m_axi_wlast_i_3_n_0 : STD_LOGIC;
  signal m_axi_wlast_i_5_n_0 : STD_LOGIC;
  signal m_axi_wlast_i_6_n_0 : STD_LOGIC;
  signal m_axi_wlast_i_7_n_0 : STD_LOGIC;
  signal m_axi_wlast_i_8_n_0 : STD_LOGIC;
  signal m_axi_wlast_i_9_n_0 : STD_LOGIC;
  signal \^m_axi_wlast_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal read_access_tick_ack_i_1_n_0 : STD_LOGIC;
  signal read_bresp : STD_LOGIC;
  signal \read_bresp[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_bresp[1]_i_2_n_0\ : STD_LOGIC;
  signal read_burst_counter : STD_LOGIC;
  signal \read_burst_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[16]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[17]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[18]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[19]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[20]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[21]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[22]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[23]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[24]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[25]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[26]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[27]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[28]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[29]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[30]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[31]_i_2_n_0\ : STD_LOGIC;
  signal \read_burst_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \read_burst_counter_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \read_burst_counter_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \read_burst_counter_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \read_burst_counter_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \read_burst_counter_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \read_burst_counter_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \read_burst_counter_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \read_burst_counter_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \read_burst_counter_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \read_burst_counter_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \read_burst_counter_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \read_burst_counter_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \read_burst_counter_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \read_burst_counter_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \read_burst_counter_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \read_burst_counter_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \read_burst_counter_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \read_burst_counter_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \read_burst_counter_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \read_burst_counter_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \read_burst_counter_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \read_burst_counter_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \read_burst_counter_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[23]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[24]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[25]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[26]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[27]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[28]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[29]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[30]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[31]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \read_burst_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal read_burst_len_2_sn_1 : STD_LOGIC;
  signal read_burst_tick_ack_i_1_n_0 : STD_LOGIC;
  signal \^read_burst_tick_ack_reg_0\ : STD_LOGIC;
  signal read_burst_tick_i_1_n_0 : STD_LOGIC;
  signal \^read_burst_tick_reg_0\ : STD_LOGIC;
  signal \read_current_burst_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[10]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[11]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[12]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[13]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[14]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[15]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[16]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[17]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[18]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[19]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[20]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[21]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[22]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[23]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[24]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[25]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[26]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[27]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[28]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[29]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[30]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[31]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[31]_i_2_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[6]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[7]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[8]_i_1_n_0\ : STD_LOGIC;
  signal \read_current_burst_address[9]_i_1_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_n_1\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_n_2\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_n_3\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_n_4\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_n_5\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_n_6\ : STD_LOGIC;
  signal \read_ddr_full_carry__0_n_7\ : STD_LOGIC;
  signal read_ddr_full_carry_i_10_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_11_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_12_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_13_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_14_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_15_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_16_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_1_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_2_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_3_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_4_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_5_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_6_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_7_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_8_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_i_9_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_n_0 : STD_LOGIC;
  signal read_ddr_full_carry_n_1 : STD_LOGIC;
  signal read_ddr_full_carry_n_2 : STD_LOGIC;
  signal read_ddr_full_carry_n_3 : STD_LOGIC;
  signal read_ddr_full_carry_n_4 : STD_LOGIC;
  signal read_ddr_full_carry_n_5 : STD_LOGIC;
  signal read_ddr_full_carry_n_6 : STD_LOGIC;
  signal read_ddr_full_carry_n_7 : STD_LOGIC;
  signal read_ddr_occupation : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \read_ddr_occupation0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \read_ddr_occupation0_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal read_ddr_occupation114_out : STD_LOGIC;
  signal read_ddr_occupation2 : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_10_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_11_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_12_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_13_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_14_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_15_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_16_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_17_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_18_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_19_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_1_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_20_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_21_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_22_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_23_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_24_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_25_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_26_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_27_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_28_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_29_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_30_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_31_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_32_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_33_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_34_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_35_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_4_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_5_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_6_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_7_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_8_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation[31]_i_9_n_0\ : STD_LOGIC;
  signal \^read_ddr_occupation_reg[30]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \read_ddr_occupation_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \read_ddr_occupation_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \read_ddr_occupation_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \read_ddr_occupation_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \read_ddr_occupation_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \read_ddr_occupation_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \read_ddr_occupation_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \read_ddr_occupation_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \read_ddr_occupation_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \read_ddr_occupation_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \read_ddr_occupation_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \read_ddr_occupation_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \read_ddr_occupation_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \read_ddr_occupation_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \read_ddr_occupation_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal read_index : STD_LOGIC;
  signal read_index1 : STD_LOGIC;
  signal read_index1_carry_i_10_n_0 : STD_LOGIC;
  signal read_index1_carry_i_1_n_0 : STD_LOGIC;
  signal read_index1_carry_i_2_n_0 : STD_LOGIC;
  signal read_index1_carry_i_3_n_0 : STD_LOGIC;
  signal read_index1_carry_i_4_n_0 : STD_LOGIC;
  signal read_index1_carry_i_5_n_0 : STD_LOGIC;
  signal read_index1_carry_i_6_n_0 : STD_LOGIC;
  signal read_index1_carry_i_7_n_0 : STD_LOGIC;
  signal read_index1_carry_i_8_n_0 : STD_LOGIC;
  signal read_index1_carry_i_9_n_0 : STD_LOGIC;
  signal read_index1_carry_n_4 : STD_LOGIC;
  signal read_index1_carry_n_5 : STD_LOGIC;
  signal read_index1_carry_n_6 : STD_LOGIC;
  signal read_index1_carry_n_7 : STD_LOGIC;
  signal \read_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[5]_i_2_n_0\ : STD_LOGIC;
  signal \read_index[6]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[7]_i_1_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_2_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_3_n_0\ : STD_LOGIC;
  signal \read_index[8]_i_4_n_0\ : STD_LOGIC;
  signal \^read_index_reg[8]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal read_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal read_state212_in : STD_LOGIC;
  signal \read_state2_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \read_state2_carry__0_n_1\ : STD_LOGIC;
  signal \read_state2_carry__0_n_2\ : STD_LOGIC;
  signal \read_state2_carry__0_n_3\ : STD_LOGIC;
  signal \read_state2_carry__0_n_4\ : STD_LOGIC;
  signal \read_state2_carry__0_n_5\ : STD_LOGIC;
  signal \read_state2_carry__0_n_6\ : STD_LOGIC;
  signal \read_state2_carry__0_n_7\ : STD_LOGIC;
  signal read_state2_carry_i_10_n_0 : STD_LOGIC;
  signal read_state2_carry_i_11_n_0 : STD_LOGIC;
  signal read_state2_carry_i_12_n_0 : STD_LOGIC;
  signal read_state2_carry_i_13_n_0 : STD_LOGIC;
  signal read_state2_carry_i_14_n_0 : STD_LOGIC;
  signal read_state2_carry_i_15_n_0 : STD_LOGIC;
  signal read_state2_carry_i_16_n_0 : STD_LOGIC;
  signal read_state2_carry_i_1_n_0 : STD_LOGIC;
  signal read_state2_carry_i_2_n_0 : STD_LOGIC;
  signal read_state2_carry_i_3_n_0 : STD_LOGIC;
  signal read_state2_carry_i_4_n_0 : STD_LOGIC;
  signal read_state2_carry_i_5_n_0 : STD_LOGIC;
  signal read_state2_carry_i_6_n_0 : STD_LOGIC;
  signal read_state2_carry_i_7_n_0 : STD_LOGIC;
  signal read_state2_carry_i_8_n_0 : STD_LOGIC;
  signal read_state2_carry_i_9_n_0 : STD_LOGIC;
  signal read_state2_carry_n_0 : STD_LOGIC;
  signal read_state2_carry_n_1 : STD_LOGIC;
  signal read_state2_carry_n_2 : STD_LOGIC;
  signal read_state2_carry_n_3 : STD_LOGIC;
  signal read_state2_carry_n_4 : STD_LOGIC;
  signal read_state2_carry_n_5 : STD_LOGIC;
  signal read_state2_carry_n_6 : STD_LOGIC;
  signal read_state2_carry_n_7 : STD_LOGIC;
  signal \read_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^read_total_burst_count\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \read_total_burst_count0_carry__0_n_0\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__0_n_1\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__0_n_2\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__0_n_3\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__0_n_4\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__0_n_5\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__0_n_6\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__0_n_7\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__1_n_1\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__1_n_2\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__1_n_3\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__1_n_4\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__1_n_5\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__1_n_6\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__1_n_7\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__2_n_2\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__2_n_3\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__2_n_4\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__2_n_5\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__2_n_6\ : STD_LOGIC;
  signal \read_total_burst_count0_carry__2_n_7\ : STD_LOGIC;
  signal read_total_burst_count0_carry_n_0 : STD_LOGIC;
  signal read_total_burst_count0_carry_n_1 : STD_LOGIC;
  signal read_total_burst_count0_carry_n_2 : STD_LOGIC;
  signal read_total_burst_count0_carry_n_3 : STD_LOGIC;
  signal read_total_burst_count0_carry_n_4 : STD_LOGIC;
  signal read_total_burst_count0_carry_n_5 : STD_LOGIC;
  signal read_total_burst_count0_carry_n_6 : STD_LOGIC;
  signal read_total_burst_count0_carry_n_7 : STD_LOGIC;
  signal \read_total_burst_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[11]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[12]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[13]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[14]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[15]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[16]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[17]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[18]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[19]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[20]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[21]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[22]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[23]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[24]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[25]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[26]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[27]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[28]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[29]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[30]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[31]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[31]_i_2_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \read_total_burst_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \read_underflow_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_underflow_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_underflow_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_underflow_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_underflow_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_underflow_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \read_underflow_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \read_underflow_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \read_underflow_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \read_underflow_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \read_underflow_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \^read_underflow_count_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^read_underflow_ins\ : STD_LOGIC;
  signal read_underflow_ins1 : STD_LOGIC;
  signal read_underflow_ins_i_1_n_0 : STD_LOGIC;
  signal read_underflow_ins_i_3_n_0 : STD_LOGIC;
  signal read_underflow_ins_i_4_n_0 : STD_LOGIC;
  signal read_underflow_ins_i_5_n_0 : STD_LOGIC;
  signal read_underflow_ins_i_6_n_0 : STD_LOGIC;
  signal read_underflow_ins_i_7_n_0 : STD_LOGIC;
  signal read_underflow_ins_i_8_n_0 : STD_LOGIC;
  signal read_underflow_ins_i_9_n_0 : STD_LOGIC;
  signal write_access_tick_ack_i_1_n_0 : STD_LOGIC;
  signal \write_bresp[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_bresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_bresp[1]_i_2_n_0\ : STD_LOGIC;
  signal write_burst_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \write_burst_counter[31]_i_1_n_0\ : STD_LOGIC;
  signal \write_burst_counter_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \write_burst_counter_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \write_burst_counter_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \write_burst_counter_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \write_burst_counter_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \write_burst_counter_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \write_burst_counter_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \write_burst_counter_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \write_burst_counter_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \write_burst_counter_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \write_burst_counter_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \write_burst_counter_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \write_burst_counter_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \write_burst_counter_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \write_burst_counter_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \write_burst_counter_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \write_burst_counter_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \write_burst_counter_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \write_burst_counter_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \write_burst_counter_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \write_burst_counter_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \write_burst_counter_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \write_burst_counter_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal write_burst_len_4_sn_1 : STD_LOGIC;
  signal \^write_burst_tick\ : STD_LOGIC;
  signal \^write_burst_tick_ack_reg_0\ : STD_LOGIC;
  signal write_burst_tick_i_1_n_0 : STD_LOGIC;
  signal \write_current_burst_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[10]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[11]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[12]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[13]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[14]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[15]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[16]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[17]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[18]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[19]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[20]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[21]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[22]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[23]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[24]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[25]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[26]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[27]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[28]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[29]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[30]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[31]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[31]_i_2_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[3]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[5]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[6]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[7]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[8]_i_1_n_0\ : STD_LOGIC;
  signal \write_current_burst_address[9]_i_1_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_n_1\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_n_2\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_n_3\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_n_4\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_n_5\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_n_6\ : STD_LOGIC;
  signal \write_ddr_full_carry__0_n_7\ : STD_LOGIC;
  signal write_ddr_full_carry_i_10_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_11_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_12_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_13_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_14_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_15_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_16_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_1_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_2_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_3_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_4_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_5_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_6_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_7_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_8_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_i_9_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_n_0 : STD_LOGIC;
  signal write_ddr_full_carry_n_1 : STD_LOGIC;
  signal write_ddr_full_carry_n_2 : STD_LOGIC;
  signal write_ddr_full_carry_n_3 : STD_LOGIC;
  signal write_ddr_full_carry_n_4 : STD_LOGIC;
  signal write_ddr_full_carry_n_5 : STD_LOGIC;
  signal write_ddr_full_carry_n_6 : STD_LOGIC;
  signal write_ddr_full_carry_n_7 : STD_LOGIC;
  signal write_ddr_has_space0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \write_ddr_has_space0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_n_1\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_n_2\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_n_3\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_n_4\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_n_5\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_n_6\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__0_n_7\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_n_1\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_n_2\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_n_3\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_n_4\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_n_5\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_n_6\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__1_n_7\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_n_1\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_n_2\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_n_3\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_n_4\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_n_5\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_n_6\ : STD_LOGIC;
  signal \write_ddr_has_space0_carry__2_n_7\ : STD_LOGIC;
  signal write_ddr_has_space0_carry_i_1_n_0 : STD_LOGIC;
  signal write_ddr_has_space0_carry_i_2_n_0 : STD_LOGIC;
  signal write_ddr_has_space0_carry_i_3_n_0 : STD_LOGIC;
  signal write_ddr_has_space0_carry_i_4_n_0 : STD_LOGIC;
  signal write_ddr_has_space0_carry_i_5_n_0 : STD_LOGIC;
  signal write_ddr_has_space0_carry_i_6_n_0 : STD_LOGIC;
  signal write_ddr_has_space0_carry_i_7_n_0 : STD_LOGIC;
  signal write_ddr_has_space0_carry_i_8_n_0 : STD_LOGIC;
  signal write_ddr_has_space0_carry_n_0 : STD_LOGIC;
  signal write_ddr_has_space0_carry_n_1 : STD_LOGIC;
  signal write_ddr_has_space0_carry_n_2 : STD_LOGIC;
  signal write_ddr_has_space0_carry_n_3 : STD_LOGIC;
  signal write_ddr_has_space0_carry_n_4 : STD_LOGIC;
  signal write_ddr_has_space0_carry_n_5 : STD_LOGIC;
  signal write_ddr_has_space0_carry_n_6 : STD_LOGIC;
  signal write_ddr_has_space0_carry_n_7 : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_n_2\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_n_3\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_n_4\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_n_5\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_n_6\ : STD_LOGIC;
  signal \write_ddr_has_space_carry__0_n_7\ : STD_LOGIC;
  signal write_ddr_has_space_carry_i_10_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_11_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_12_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_13_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_14_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_15_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_16_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_17_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_1_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_2_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_3_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_4_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_5_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_6_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_7_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_8_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_i_9_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_n_0 : STD_LOGIC;
  signal write_ddr_has_space_carry_n_1 : STD_LOGIC;
  signal write_ddr_has_space_carry_n_2 : STD_LOGIC;
  signal write_ddr_has_space_carry_n_3 : STD_LOGIC;
  signal write_ddr_has_space_carry_n_4 : STD_LOGIC;
  signal write_ddr_has_space_carry_n_5 : STD_LOGIC;
  signal write_ddr_has_space_carry_n_6 : STD_LOGIC;
  signal write_ddr_has_space_carry_n_7 : STD_LOGIC;
  signal write_ddr_occupation : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \write_ddr_occupation0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \write_ddr_occupation0_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal write_ddr_occupation1 : STD_LOGIC;
  signal write_ddr_occupation121_out : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \write_ddr_occupation1_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \write_ddr_occupation[31]_i_1_n_0\ : STD_LOGIC;
  signal \^write_ddr_occupation_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal write_index : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal write_index1 : STD_LOGIC;
  signal write_index1_carry_i_10_n_0 : STD_LOGIC;
  signal write_index1_carry_i_1_n_0 : STD_LOGIC;
  signal write_index1_carry_i_2_n_0 : STD_LOGIC;
  signal write_index1_carry_i_3_n_0 : STD_LOGIC;
  signal write_index1_carry_i_4_n_0 : STD_LOGIC;
  signal write_index1_carry_i_5_n_0 : STD_LOGIC;
  signal write_index1_carry_i_6_n_0 : STD_LOGIC;
  signal write_index1_carry_i_7_n_0 : STD_LOGIC;
  signal write_index1_carry_i_8_n_0 : STD_LOGIC;
  signal write_index1_carry_i_9_n_0 : STD_LOGIC;
  signal write_index1_carry_n_4 : STD_LOGIC;
  signal write_index1_carry_n_5 : STD_LOGIC;
  signal write_index1_carry_n_6 : STD_LOGIC;
  signal write_index1_carry_n_7 : STD_LOGIC;
  signal \write_index[5]_i_2_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_1_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_3_n_0\ : STD_LOGIC;
  signal \write_index[8]_i_4_n_0\ : STD_LOGIC;
  signal \^write_index_reg[8]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \write_overflow_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_overflow_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_overflow_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_overflow_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \write_overflow_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_overflow_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \write_overflow_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \write_overflow_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \write_overflow_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \write_overflow_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \write_overflow_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \^write_overflow_count_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal write_overflow_ins1 : STD_LOGIC;
  signal write_overflow_ins_i_1_n_0 : STD_LOGIC;
  signal write_overflow_ins_i_3_n_0 : STD_LOGIC;
  signal write_overflow_ins_i_4_n_0 : STD_LOGIC;
  signal write_overflow_ins_i_5_n_0 : STD_LOGIC;
  signal write_overflow_ins_i_6_n_0 : STD_LOGIC;
  signal write_overflow_ins_i_7_n_0 : STD_LOGIC;
  signal write_overflow_ins_i_8_n_0 : STD_LOGIC;
  signal write_overflow_ins_i_9_n_0 : STD_LOGIC;
  signal write_state218_in : STD_LOGIC;
  signal \write_state2_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \write_state2_carry__0_n_1\ : STD_LOGIC;
  signal \write_state2_carry__0_n_2\ : STD_LOGIC;
  signal \write_state2_carry__0_n_3\ : STD_LOGIC;
  signal \write_state2_carry__0_n_4\ : STD_LOGIC;
  signal \write_state2_carry__0_n_5\ : STD_LOGIC;
  signal \write_state2_carry__0_n_6\ : STD_LOGIC;
  signal \write_state2_carry__0_n_7\ : STD_LOGIC;
  signal write_state2_carry_i_10_n_0 : STD_LOGIC;
  signal write_state2_carry_i_11_n_0 : STD_LOGIC;
  signal write_state2_carry_i_12_n_0 : STD_LOGIC;
  signal write_state2_carry_i_13_n_0 : STD_LOGIC;
  signal write_state2_carry_i_14_n_0 : STD_LOGIC;
  signal write_state2_carry_i_15_n_0 : STD_LOGIC;
  signal write_state2_carry_i_16_n_0 : STD_LOGIC;
  signal write_state2_carry_i_1_n_0 : STD_LOGIC;
  signal write_state2_carry_i_2_n_0 : STD_LOGIC;
  signal write_state2_carry_i_3_n_0 : STD_LOGIC;
  signal write_state2_carry_i_4_n_0 : STD_LOGIC;
  signal write_state2_carry_i_5_n_0 : STD_LOGIC;
  signal write_state2_carry_i_6_n_0 : STD_LOGIC;
  signal write_state2_carry_i_7_n_0 : STD_LOGIC;
  signal write_state2_carry_i_8_n_0 : STD_LOGIC;
  signal write_state2_carry_i_9_n_0 : STD_LOGIC;
  signal write_state2_carry_n_0 : STD_LOGIC;
  signal write_state2_carry_n_1 : STD_LOGIC;
  signal write_state2_carry_n_2 : STD_LOGIC;
  signal write_state2_carry_n_3 : STD_LOGIC;
  signal write_state2_carry_n_4 : STD_LOGIC;
  signal write_state2_carry_n_5 : STD_LOGIC;
  signal write_state2_carry_n_6 : STD_LOGIC;
  signal write_state2_carry_n_7 : STD_LOGIC;
  signal write_state3 : STD_LOGIC;
  signal \write_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \write_state__1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^write_total_burst_count\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \write_total_burst_count0_carry__0_n_0\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_1\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_10\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_11\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_12\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_13\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_14\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_15\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_2\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_3\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_4\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_5\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_6\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_7\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_8\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__0_n_9\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_1\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_10\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_11\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_12\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_13\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_14\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_15\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_2\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_3\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_4\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_5\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_6\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_7\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_8\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__1_n_9\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__2_n_10\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__2_n_11\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__2_n_12\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__2_n_13\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__2_n_14\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__2_n_15\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__2_n_2\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__2_n_3\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__2_n_4\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__2_n_5\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__2_n_6\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__2_n_7\ : STD_LOGIC;
  signal \write_total_burst_count0_carry__2_n_9\ : STD_LOGIC;
  signal write_total_burst_count0_carry_n_0 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_1 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_10 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_11 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_12 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_13 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_14 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_15 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_2 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_3 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_4 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_5 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_6 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_7 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_8 : STD_LOGIC;
  signal write_total_burst_count0_carry_n_9 : STD_LOGIC;
  signal \write_total_burst_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[11]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[12]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[13]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[14]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[15]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[16]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[17]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[18]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[19]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[20]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[21]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[22]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[23]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[24]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[25]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[26]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[27]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[28]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[29]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[30]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[31]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[31]_i_2_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \write_total_burst_count[9]_i_1_n_0\ : STD_LOGIC;
  signal NLW_ila_read_ddr_has_data_INST_0_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_ila_read_ddr_has_data_INST_0_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ila_read_ddr_has_data_INST_0_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_m_axi_araddr_reg[47]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_m_axi_araddr_reg[47]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_m_axi_awaddr_reg[47]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_m_axi_awaddr_reg[47]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_read_burst_counter_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_read_burst_counter_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_read_ddr_full_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_read_ddr_full_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_read_ddr_occupation0_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_read_ddr_occupation_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_read_ddr_occupation_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_read_index1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal NLW_read_index1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_read_state2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_read_state2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_read_total_burst_count0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_read_total_burst_count0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_write_burst_counter_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_write_burst_counter_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_write_ddr_full_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_write_ddr_full_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_write_ddr_has_space0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_write_ddr_has_space_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_write_ddr_has_space_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_write_ddr_has_space_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_write_ddr_occupation0_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_write_ddr_occupation1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_write_ddr_occupation1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_write_index1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal NLW_write_index1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_write_state2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_write_state2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_write_total_burst_count0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_write_total_burst_count0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_read_state[1]_i_1\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_read_state_reg[0]\ : label is "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:000,iSTATE3:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_read_state_reg[1]\ : label is "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:000,iSTATE3:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_read_state_reg[2]\ : label is "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:000,iSTATE3:001";
  attribute SOFT_HLUTNM of \FSM_sequential_write_state[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_write_state[2]_i_10\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_write_state[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_write_state[2]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_write_state[2]_i_6\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \FSM_sequential_write_state[2]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_write_state[2]_i_9\ : label is "soft_lutpair13";
  attribute FSM_ENCODED_STATES of \FSM_sequential_write_state_reg[0]\ : label is "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:000,iSTATE3:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_write_state_reg[1]\ : label is "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:000,iSTATE3:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_write_state_reg[2]\ : label is "iSTATE:010,iSTATE0:011,iSTATE1:100,iSTATE2:000,iSTATE3:001";
  attribute SOFT_HLUTNM of ila_read_active_INST_0 : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of ila_read_ddr_has_data_INST_0 : label is 11;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ila_read_ddr_has_data_INST_0 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of ila_read_ddr_has_data_INST_0_i_1 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of ila_read_ddr_has_data_INST_0_i_1 : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \ila_read_state[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ila_read_state[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ila_read_state[2]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of ila_rx_fifo_rden_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ila_tx_fifo_wren_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ila_write_active_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ila_write_state[0]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ila_write_state[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ila_write_state[2]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axi_araddr[0]_i_1\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \m_axi_araddr_reg[10]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \m_axi_araddr_reg[10]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \m_axi_araddr_reg[18]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \m_axi_araddr_reg[18]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \m_axi_araddr_reg[26]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \m_axi_araddr_reg[26]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \m_axi_araddr_reg[34]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \m_axi_araddr_reg[34]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \m_axi_araddr_reg[42]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \m_axi_araddr_reg[42]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \m_axi_araddr_reg[47]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \m_axi_araddr_reg[47]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \m_axi_awaddr[0]_i_1\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD of \m_axi_awaddr_reg[10]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \m_axi_awaddr_reg[10]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \m_axi_awaddr_reg[18]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \m_axi_awaddr_reg[18]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \m_axi_awaddr_reg[26]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \m_axi_awaddr_reg[26]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \m_axi_awaddr_reg[34]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \m_axi_awaddr_reg[34]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \m_axi_awaddr_reg[42]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \m_axi_awaddr_reg[42]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \m_axi_awaddr_reg[47]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \m_axi_awaddr_reg[47]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of m_axi_bready_i_2 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of m_axi_bready_i_3 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of m_axi_rready_INST_0 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of m_axi_wlast_i_10 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of m_axi_wlast_i_11 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of m_axi_wlast_i_12 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of m_axi_wlast_i_13 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of m_axi_wlast_i_6 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of m_axi_wvalid_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of m_axis_tx_tvalid_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of read_access_tick_ack_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \read_bresp[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \read_bresp[1]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \read_burst_counter[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \read_burst_counter[10]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \read_burst_counter[11]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \read_burst_counter[12]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \read_burst_counter[13]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \read_burst_counter[14]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \read_burst_counter[15]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \read_burst_counter[16]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \read_burst_counter[17]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \read_burst_counter[18]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \read_burst_counter[19]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \read_burst_counter[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \read_burst_counter[20]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \read_burst_counter[21]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \read_burst_counter[22]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \read_burst_counter[23]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \read_burst_counter[24]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \read_burst_counter[25]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \read_burst_counter[26]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \read_burst_counter[27]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \read_burst_counter[28]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \read_burst_counter[29]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \read_burst_counter[2]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \read_burst_counter[30]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \read_burst_counter[31]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \read_burst_counter[3]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \read_burst_counter[4]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \read_burst_counter[5]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \read_burst_counter[6]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \read_burst_counter[7]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \read_burst_counter[8]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \read_burst_counter[9]_i_1\ : label is "soft_lutpair60";
  attribute ADDER_THRESHOLD of \read_burst_counter_reg[16]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \read_burst_counter_reg[16]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \read_burst_counter_reg[24]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \read_burst_counter_reg[24]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \read_burst_counter_reg[31]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \read_burst_counter_reg[31]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \read_burst_counter_reg[8]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \read_burst_counter_reg[8]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of read_burst_tick_ack_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of read_busy_INST_0 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \read_current_burst_address[0]_i_1\ : label is "soft_lutpair6";
  attribute COMPARATOR_THRESHOLD of read_ddr_full_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of read_ddr_full_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \read_ddr_full_carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \read_ddr_full_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \read_ddr_occupation0_inferred__0/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \read_ddr_occupation0_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \read_ddr_occupation0_inferred__0/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \read_ddr_occupation0_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \read_ddr_occupation0_inferred__0/i__carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \read_ddr_occupation0_inferred__0/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \read_ddr_occupation0_inferred__0/i__carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \read_ddr_occupation0_inferred__0/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \read_ddr_occupation_reg[31]_i_2\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \read_ddr_occupation_reg[31]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \read_ddr_occupation_reg[31]_i_3\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \read_ddr_occupation_reg[31]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of read_index1_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of read_index1_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \read_index[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_index[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_index[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \read_index[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \read_index[8]_i_4\ : label is "soft_lutpair26";
  attribute COMPARATOR_THRESHOLD of read_state2_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of read_state2_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \read_state2_carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \read_state2_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of read_total_burst_count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \read_total_burst_count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \read_total_burst_count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \read_total_burst_count0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \read_total_burst_count[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \read_total_burst_count[10]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \read_total_burst_count[11]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \read_total_burst_count[12]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \read_total_burst_count[13]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \read_total_burst_count[14]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \read_total_burst_count[15]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \read_total_burst_count[16]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \read_total_burst_count[17]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \read_total_burst_count[18]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \read_total_burst_count[19]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \read_total_burst_count[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \read_total_burst_count[20]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \read_total_burst_count[21]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \read_total_burst_count[22]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \read_total_burst_count[23]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \read_total_burst_count[24]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \read_total_burst_count[25]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \read_total_burst_count[26]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \read_total_burst_count[27]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \read_total_burst_count[28]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \read_total_burst_count[29]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \read_total_burst_count[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \read_total_burst_count[30]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \read_total_burst_count[31]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \read_total_burst_count[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \read_total_burst_count[4]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \read_total_burst_count[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \read_total_burst_count[6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \read_total_burst_count[7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \read_total_burst_count[8]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \read_total_burst_count[9]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \read_underflow_count[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \read_underflow_count[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \read_underflow_count[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \read_underflow_count[5]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \read_underflow_count[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \read_underflow_count[7]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of s_axis_rx_tready_INST_0 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \write_bresp[0]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \write_bresp[1]_i_2\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \write_burst_counter[0]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \write_burst_counter[10]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \write_burst_counter[11]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \write_burst_counter[12]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \write_burst_counter[13]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \write_burst_counter[14]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \write_burst_counter[15]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \write_burst_counter[16]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \write_burst_counter[17]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \write_burst_counter[18]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \write_burst_counter[19]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \write_burst_counter[1]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \write_burst_counter[20]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \write_burst_counter[21]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \write_burst_counter[22]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \write_burst_counter[23]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \write_burst_counter[24]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \write_burst_counter[25]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \write_burst_counter[26]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \write_burst_counter[27]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \write_burst_counter[28]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \write_burst_counter[29]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \write_burst_counter[2]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \write_burst_counter[30]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \write_burst_counter[31]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \write_burst_counter[3]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \write_burst_counter[4]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \write_burst_counter[5]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \write_burst_counter[6]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \write_burst_counter[7]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \write_burst_counter[8]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \write_burst_counter[9]_i_1\ : label is "soft_lutpair92";
  attribute ADDER_THRESHOLD of \write_burst_counter_reg[16]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \write_burst_counter_reg[16]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \write_burst_counter_reg[24]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \write_burst_counter_reg[24]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \write_burst_counter_reg[31]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \write_burst_counter_reg[31]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \write_burst_counter_reg[8]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \write_burst_counter_reg[8]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of write_busy_INST_0 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \write_current_burst_address[0]_i_1\ : label is "soft_lutpair11";
  attribute COMPARATOR_THRESHOLD of write_ddr_full_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of write_ddr_full_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \write_ddr_full_carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \write_ddr_full_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of write_ddr_has_space0_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS of write_ddr_has_space0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \write_ddr_has_space0_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \write_ddr_has_space0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \write_ddr_has_space0_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \write_ddr_has_space0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \write_ddr_has_space0_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \write_ddr_has_space0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of write_ddr_has_space_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of write_ddr_has_space_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \write_ddr_has_space_carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \write_ddr_has_space_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \write_ddr_occupation0_inferred__0/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \write_ddr_occupation0_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \write_ddr_occupation0_inferred__0/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \write_ddr_occupation0_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \write_ddr_occupation0_inferred__0/i__carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \write_ddr_occupation0_inferred__0/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \write_ddr_occupation0_inferred__0/i__carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \write_ddr_occupation0_inferred__0/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \write_ddr_occupation1_inferred__0/i__carry\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \write_ddr_occupation1_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \write_ddr_occupation1_inferred__0/i__carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \write_ddr_occupation1_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of write_index1_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of write_index1_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of write_index1_carry_i_10 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \write_index[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \write_index[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \write_index[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \write_index[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \write_index[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \write_index[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \write_index[8]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \write_overflow_count[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \write_overflow_count[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \write_overflow_count[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \write_overflow_count[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \write_overflow_count[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \write_overflow_count[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \write_overflow_count[7]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of write_overflow_ins_i_1 : label is "soft_lutpair31";
  attribute COMPARATOR_THRESHOLD of write_state2_carry : label is 11;
  attribute METHODOLOGY_DRC_VIOS of write_state2_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \write_state2_carry__0\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \write_state2_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of write_total_burst_count0_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS of write_total_burst_count0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \write_total_burst_count0_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \write_total_burst_count0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \write_total_burst_count0_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \write_total_burst_count0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \write_total_burst_count0_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \write_total_burst_count0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \write_total_burst_count[0]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \write_total_burst_count[10]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \write_total_burst_count[11]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \write_total_burst_count[12]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \write_total_burst_count[13]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \write_total_burst_count[14]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \write_total_burst_count[15]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \write_total_burst_count[16]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \write_total_burst_count[17]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \write_total_burst_count[18]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \write_total_burst_count[19]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \write_total_burst_count[1]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \write_total_burst_count[20]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \write_total_burst_count[21]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \write_total_burst_count[22]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \write_total_burst_count[23]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \write_total_burst_count[24]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \write_total_burst_count[25]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \write_total_burst_count[26]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \write_total_burst_count[27]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \write_total_burst_count[28]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \write_total_burst_count[29]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \write_total_burst_count[2]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \write_total_burst_count[30]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \write_total_burst_count[31]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \write_total_burst_count[3]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \write_total_burst_count[4]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \write_total_burst_count[5]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \write_total_burst_count[6]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \write_total_burst_count[7]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \write_total_burst_count[8]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \write_total_burst_count[9]_i_1\ : label is "soft_lutpair76";
begin
  CO(0) <= \^co\(0);
  Q(31 downto 0) <= \^q\(31 downto 0);
  ila_read_access_tick_ack <= \^ila_read_access_tick_ack\;
  ila_read_bresp(1 downto 0) <= \^ila_read_bresp\(1 downto 0);
  ila_read_state(2 downto 0) <= \^ila_read_state\(2 downto 0);
  ila_rx_fifo_rden <= \^ila_rx_fifo_rden\;
  ila_tx_fifo_wren <= \^ila_tx_fifo_wren\;
  ila_write_access_tick_ack <= \^ila_write_access_tick_ack\;
  ila_write_active <= \^ila_write_active\;
  ila_write_burst_counter(31 downto 0) <= \^ila_write_burst_counter\(31 downto 0);
  ila_write_ddr_full <= \^ila_write_ddr_full\;
  ila_write_state(2 downto 0) <= \^ila_write_state\(2 downto 0);
  ilamaxi_arvalid <= \^ilamaxi_arvalid\;
  ilamaxi_bready <= \^ilamaxi_bready\;
  m_axi_araddr(47 downto 0) <= \^m_axi_araddr\(47 downto 0);
  m_axi_awaddr(47 downto 0) <= \^m_axi_awaddr\(47 downto 0);
  m_axi_rvalid_0 <= \^m_axi_rvalid_0\;
  m_axi_wlast_reg_0 <= \^m_axi_wlast_reg_0\;
  read_burst_len_2_sp_1 <= read_burst_len_2_sn_1;
  read_burst_tick_ack_reg_0 <= \^read_burst_tick_ack_reg_0\;
  read_burst_tick_reg_0 <= \^read_burst_tick_reg_0\;
  \read_ddr_occupation_reg[30]_0\(0) <= \^read_ddr_occupation_reg[30]_0\(0);
  \read_index_reg[8]_0\(8 downto 0) <= \^read_index_reg[8]_0\(8 downto 0);
  read_total_burst_count(31 downto 0) <= \^read_total_burst_count\(31 downto 0);
  \read_underflow_count_reg[7]_0\(7 downto 0) <= \^read_underflow_count_reg[7]_0\(7 downto 0);
  read_underflow_ins <= \^read_underflow_ins\;
  write_burst_len_4_sp_1 <= write_burst_len_4_sn_1;
  write_burst_tick <= \^write_burst_tick\;
  write_burst_tick_ack_reg_0 <= \^write_burst_tick_ack_reg_0\;
  \write_ddr_occupation_reg[31]_0\(31 downto 0) <= \^write_ddr_occupation_reg[31]_0\(31 downto 0);
  \write_index_reg[8]_0\(8 downto 0) <= \^write_index_reg[8]_0\(8 downto 0);
  \write_overflow_count_reg[7]_0\(7 downto 0) <= \^write_overflow_count_reg[7]_0\(7 downto 0);
  write_total_burst_count(31 downto 0) <= \^write_total_burst_count\(31 downto 0);
\FSM_sequential_read_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000400000FFFF"
    )
        port map (
      I0 => read_state(1),
      I1 => read_enable,
      I2 => read_state212_in,
      I3 => \^ila_read_bresp\(1),
      I4 => read_state(0),
      I5 => read_state(2),
      O => \read_state__0\(0)
    );
\FSM_sequential_read_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => read_state(1),
      I1 => read_state(0),
      I2 => read_state(2),
      O => \read_state__0\(1)
    );
\FSM_sequential_read_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFEAAAEAAAEAAAEA"
    )
        port map (
      I0 => \FSM_sequential_read_state[2]_i_2_n_0\,
      I1 => m_axi_arready,
      I2 => read_state(1),
      I3 => read_state(0),
      I4 => \^read_ddr_occupation_reg[30]_0\(0),
      I5 => tx_fifo_has_space,
      O => \FSM_sequential_read_state[2]_i_1_n_0\
    );
\FSM_sequential_read_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAEAAAEAAAEAAAE"
    )
        port map (
      I0 => read_state(2),
      I1 => read_enable,
      I2 => read_state(1),
      I3 => read_state(0),
      I4 => m_axi_rlast,
      I5 => \^m_axi_rvalid_0\,
      O => \FSM_sequential_read_state[2]_i_2_n_0\
    );
\FSM_sequential_read_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_sequential_read_state[2]_i_1_n_0\,
      D => \read_state__0\(0),
      Q => read_state(0),
      R => m_axi_arvalid_i_1_n_0
    );
\FSM_sequential_read_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_sequential_read_state[2]_i_1_n_0\,
      D => \read_state__0\(1),
      Q => read_state(1),
      R => m_axi_arvalid_i_1_n_0
    );
\FSM_sequential_read_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_sequential_read_state[2]_i_1_n_0\,
      D => \^ila_tx_fifo_wren\,
      Q => read_state(2),
      R => m_axi_arvalid_i_1_n_0
    );
\FSM_sequential_write_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000400000FFFF"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => write_enable,
      I2 => write_state218_in,
      I3 => m_axi_bresp(1),
      I4 => \write_state__0\(0),
      I5 => \write_state__0\(2),
      O => \write_state__1\(0)
    );
\FSM_sequential_write_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_state__0\(0),
      I2 => \write_state__0\(2),
      O => \write_state__1\(1)
    );
\FSM_sequential_write_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => \FSM_sequential_write_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_write_state[2]_i_3_n_0\,
      I2 => \FSM_sequential_write_state[2]_i_4_n_0\,
      I3 => m_axi_bvalid,
      I4 => \write_state__0\(2),
      O => \FSM_sequential_write_state[2]_i_1_n_0\
    );
\FSM_sequential_write_state[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_index_reg[8]_0\(6),
      I1 => write_burst_len(6),
      O => \FSM_sequential_write_state[2]_i_10_n_0\
    );
\FSM_sequential_write_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555000000000000"
    )
        port map (
      I0 => m_axi_wlast_i_3_n_0,
      I1 => \FSM_sequential_write_state[2]_i_5_n_0\,
      I2 => m_axi_wlast_i_7_n_0,
      I3 => m_axi_wlast_i_8_n_0,
      I4 => m_axi_bready_i_4_n_0,
      I5 => \^ila_rx_fifo_rden\,
      O => \FSM_sequential_write_state[2]_i_2_n_0\
    );
\FSM_sequential_write_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00230020"
    )
        port map (
      I0 => m_axi_awready,
      I1 => \write_state__0\(0),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => write_enable,
      O => \FSM_sequential_write_state[2]_i_3_n_0\
    );
\FSM_sequential_write_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_state__0\(0),
      I2 => \write_state__0\(2),
      I3 => \^co\(0),
      I4 => rx_fifo_data_ready,
      O => \FSM_sequential_write_state[2]_i_4_n_0\
    );
\FSM_sequential_write_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E00000000000E0"
    )
        port map (
      I0 => \FSM_sequential_write_state[2]_i_6_n_0\,
      I1 => \FSM_sequential_write_state[2]_i_7_n_0\,
      I2 => \FSM_sequential_write_state[2]_i_8_n_0\,
      I3 => \^write_index_reg[8]_0\(8),
      I4 => \FSM_sequential_write_state[2]_i_9_n_0\,
      I5 => \FSM_sequential_write_state[2]_i_10_n_0\,
      O => \FSM_sequential_write_state[2]_i_5_n_0\
    );
\FSM_sequential_write_state[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => write_burst_len(4),
      I1 => write_burst_len(5),
      I2 => write_burst_len(8),
      O => \FSM_sequential_write_state[2]_i_6_n_0\
    );
\FSM_sequential_write_state[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => write_burst_len(7),
      I1 => write_burst_len(6),
      I2 => write_burst_len(3),
      I3 => write_burst_len(1),
      I4 => write_burst_len(2),
      O => \FSM_sequential_write_state[2]_i_7_n_0\
    );
\FSM_sequential_write_state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000900909000"
    )
        port map (
      I0 => \^write_index_reg[8]_0\(0),
      I1 => write_burst_len(0),
      I2 => \^write_index_reg[8]_0\(1),
      I3 => \^write_index_reg[8]_0\(2),
      I4 => write_burst_len(2),
      I5 => write_burst_len(1),
      O => \FSM_sequential_write_state[2]_i_8_n_0\
    );
\FSM_sequential_write_state[2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => write_burst_len(4),
      I1 => write_burst_len(2),
      I2 => write_burst_len(1),
      I3 => write_burst_len(3),
      I4 => write_burst_len(5),
      O => \FSM_sequential_write_state[2]_i_9_n_0\
    );
\FSM_sequential_write_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_sequential_write_state[2]_i_1_n_0\,
      D => \write_state__1\(0),
      Q => \write_state__0\(0),
      R => m_axi_arvalid_i_1_n_0
    );
\FSM_sequential_write_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_sequential_write_state[2]_i_1_n_0\,
      D => \write_state__1\(1),
      Q => \write_state__0\(1),
      R => m_axi_arvalid_i_1_n_0
    );
\FSM_sequential_write_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_sequential_write_state[2]_i_1_n_0\,
      D => \^ila_rx_fifo_rden\,
      Q => \write_state__0\(2),
      R => m_axi_arvalid_i_1_n_0
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(30),
      I1 => \^write_ddr_occupation_reg[31]_0\(31),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(29),
      I1 => \^write_ddr_occupation_reg[31]_0\(28),
      O => \i__carry__0_i_10_n_0\
    );
\i__carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(27),
      I1 => \^write_ddr_occupation_reg[31]_0\(26),
      O => \i__carry__0_i_11_n_0\
    );
\i__carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(25),
      I1 => \^write_ddr_occupation_reg[31]_0\(24),
      O => \i__carry__0_i_12_n_0\
    );
\i__carry__0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(23),
      I1 => \^write_ddr_occupation_reg[31]_0\(22),
      O => \i__carry__0_i_13_n_0\
    );
\i__carry__0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(21),
      I1 => \^write_ddr_occupation_reg[31]_0\(20),
      O => \i__carry__0_i_14_n_0\
    );
\i__carry__0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(19),
      I1 => \^write_ddr_occupation_reg[31]_0\(18),
      O => \i__carry__0_i_15_n_0\
    );
\i__carry__0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => write_access_size_bytes(16),
      I1 => \^write_ddr_occupation_reg[31]_0\(16),
      I2 => \^write_ddr_occupation_reg[31]_0\(17),
      O => \i__carry__0_i_16_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BFFF40"
    )
        port map (
      I0 => \^read_burst_tick_ack_reg_0\,
      I1 => \^read_burst_tick_reg_0\,
      I2 => read_ddr_occupation2,
      I3 => read_access_size_bytes(15),
      I4 => \^q\(15),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE51"
    )
        port map (
      I0 => write_access_size_bytes(15),
      I1 => \^write_burst_tick\,
      I2 => \^write_burst_tick_ack_reg_0\,
      I3 => \^write_ddr_occupation_reg[31]_0\(15),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(28),
      I1 => \^write_ddr_occupation_reg[31]_0\(29),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BFFF40"
    )
        port map (
      I0 => \^read_burst_tick_ack_reg_0\,
      I1 => \^read_burst_tick_reg_0\,
      I2 => read_ddr_occupation2,
      I3 => read_access_size_bytes(14),
      I4 => \^q\(14),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE51"
    )
        port map (
      I0 => write_access_size_bytes(14),
      I1 => \^write_burst_tick\,
      I2 => \^write_burst_tick_ack_reg_0\,
      I3 => \^write_ddr_occupation_reg[31]_0\(14),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(26),
      I1 => \^write_ddr_occupation_reg[31]_0\(27),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BFFF40"
    )
        port map (
      I0 => \^read_burst_tick_ack_reg_0\,
      I1 => \^read_burst_tick_reg_0\,
      I2 => read_ddr_occupation2,
      I3 => read_access_size_bytes(13),
      I4 => \^q\(13),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE51"
    )
        port map (
      I0 => write_access_size_bytes(13),
      I1 => \^write_burst_tick\,
      I2 => \^write_burst_tick_ack_reg_0\,
      I3 => \^write_ddr_occupation_reg[31]_0\(13),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(24),
      I1 => \^write_ddr_occupation_reg[31]_0\(25),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D55515AA2AAAEA"
    )
        port map (
      I0 => read_access_size_bytes(12),
      I1 => read_ddr_occupation2,
      I2 => \^read_burst_tick_reg_0\,
      I3 => \^read_burst_tick_ack_reg_0\,
      I4 => read_burst_len(8),
      I5 => \^q\(12),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8ABA7545"
    )
        port map (
      I0 => write_access_size_bytes(12),
      I1 => \^write_burst_tick_ack_reg_0\,
      I2 => \^write_burst_tick\,
      I3 => write_burst_len(8),
      I4 => \^write_ddr_occupation_reg[31]_0\(12),
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(22),
      I1 => \^write_ddr_occupation_reg[31]_0\(23),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D55515AA2AAAEA"
    )
        port map (
      I0 => read_access_size_bytes(11),
      I1 => read_ddr_occupation2,
      I2 => \^read_burst_tick_reg_0\,
      I3 => \^read_burst_tick_ack_reg_0\,
      I4 => read_burst_len(7),
      I5 => \^q\(11),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8ABA7545"
    )
        port map (
      I0 => write_access_size_bytes(11),
      I1 => \^write_burst_tick_ack_reg_0\,
      I2 => \^write_burst_tick\,
      I3 => write_burst_len(7),
      I4 => \^write_ddr_occupation_reg[31]_0\(11),
      O => \i__carry__0_i_5__1_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(20),
      I1 => \^write_ddr_occupation_reg[31]_0\(21),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D55515AA2AAAEA"
    )
        port map (
      I0 => read_access_size_bytes(10),
      I1 => read_ddr_occupation2,
      I2 => \^read_burst_tick_reg_0\,
      I3 => \^read_burst_tick_ack_reg_0\,
      I4 => read_burst_len(6),
      I5 => \^q\(10),
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8ABA7545"
    )
        port map (
      I0 => write_access_size_bytes(10),
      I1 => \^write_burst_tick_ack_reg_0\,
      I2 => \^write_burst_tick\,
      I3 => write_burst_len(6),
      I4 => \^write_ddr_occupation_reg[31]_0\(10),
      O => \i__carry__0_i_6__1_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(18),
      I1 => \^write_ddr_occupation_reg[31]_0\(19),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D55515AA2AAAEA"
    )
        port map (
      I0 => read_access_size_bytes(9),
      I1 => read_ddr_occupation2,
      I2 => \^read_burst_tick_reg_0\,
      I3 => \^read_burst_tick_ack_reg_0\,
      I4 => read_burst_len(5),
      I5 => \^q\(9),
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry__0_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8ABA7545"
    )
        port map (
      I0 => write_access_size_bytes(9),
      I1 => \^write_burst_tick_ack_reg_0\,
      I2 => \^write_burst_tick\,
      I3 => write_burst_len(5),
      I4 => \^write_ddr_occupation_reg[31]_0\(9),
      O => \i__carry__0_i_7__1_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => write_access_size_bytes(16),
      I1 => \^write_ddr_occupation_reg[31]_0\(16),
      I2 => \^write_ddr_occupation_reg[31]_0\(17),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__0_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D55515AA2AAAEA"
    )
        port map (
      I0 => read_access_size_bytes(8),
      I1 => read_ddr_occupation2,
      I2 => \^read_burst_tick_reg_0\,
      I3 => \^read_burst_tick_ack_reg_0\,
      I4 => read_burst_len(4),
      I5 => \^q\(8),
      O => \i__carry__0_i_8__0_n_0\
    );
\i__carry__0_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8ABA7545"
    )
        port map (
      I0 => write_access_size_bytes(8),
      I1 => \^write_burst_tick_ack_reg_0\,
      I2 => \^write_burst_tick\,
      I3 => write_burst_len(4),
      I4 => \^write_ddr_occupation_reg[31]_0\(8),
      O => \i__carry__0_i_8__1_n_0\
    );
\i__carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(31),
      I1 => \^write_ddr_occupation_reg[31]_0\(30),
      O => \i__carry__0_i_9_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^write_burst_tick\,
      I1 => \^write_burst_tick_ack_reg_0\,
      O => write_ddr_occupation121_out
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(17),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(22),
      I1 => \^write_ddr_occupation_reg[31]_0\(23),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(22),
      I1 => \^q\(23),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(21),
      I1 => \^write_ddr_occupation_reg[31]_0\(22),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(22),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(20),
      I1 => \^write_ddr_occupation_reg[31]_0\(21),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(20),
      I1 => \^q\(21),
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(19),
      I1 => \^write_ddr_occupation_reg[31]_0\(20),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(19),
      I1 => \^q\(20),
      O => \i__carry__1_i_5__0_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(18),
      I1 => \^write_ddr_occupation_reg[31]_0\(19),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^q\(19),
      O => \i__carry__1_i_6__0_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(17),
      I1 => \^write_ddr_occupation_reg[31]_0\(18),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^q\(18),
      O => \i__carry__1_i_7__0_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \^q\(17),
      I1 => read_ddr_occupation2,
      I2 => \^read_burst_tick_reg_0\,
      I3 => \^read_burst_tick_ack_reg_0\,
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__1_i_8__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(17),
      I1 => \^write_burst_tick_ack_reg_0\,
      I2 => \^write_burst_tick\,
      O => \i__carry__1_i_8__0_n_0\
    );
\i__carry__1_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BFFF40"
    )
        port map (
      I0 => \^read_burst_tick_ack_reg_0\,
      I1 => \^read_burst_tick_reg_0\,
      I2 => read_ddr_occupation2,
      I3 => read_access_size_bytes(16),
      I4 => \^q\(16),
      O => \i__carry__1_i_9_n_0\
    );
\i__carry__1_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE51"
    )
        port map (
      I0 => write_access_size_bytes(16),
      I1 => \^write_burst_tick\,
      I2 => \^write_burst_tick_ack_reg_0\,
      I3 => \^write_ddr_occupation_reg[31]_0\(16),
      O => \i__carry__1_i_9__0_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(30),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(31),
      I1 => \^write_ddr_occupation_reg[31]_0\(30),
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(29),
      I1 => \^write_ddr_occupation_reg[31]_0\(30),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(30),
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(28),
      I1 => \^write_ddr_occupation_reg[31]_0\(29),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(28),
      I1 => \^q\(29),
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(27),
      I1 => \^write_ddr_occupation_reg[31]_0\(28),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^q\(28),
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(26),
      I1 => \^write_ddr_occupation_reg[31]_0\(27),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(26),
      I1 => \^q\(27),
      O => \i__carry__2_i_5__0_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(25),
      I1 => \^write_ddr_occupation_reg[31]_0\(26),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(25),
      I1 => \^q\(26),
      O => \i__carry__2_i_6__0_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(24),
      I1 => \^write_ddr_occupation_reg[31]_0\(25),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(24),
      I1 => \^q\(25),
      O => \i__carry__2_i_7__0_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(23),
      I1 => \^write_ddr_occupation_reg[31]_0\(24),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry__2_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(23),
      I1 => \^q\(24),
      O => \i__carry__2_i_8__0_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^read_burst_tick_ack_reg_0\,
      I1 => \^read_burst_tick_reg_0\,
      I2 => read_ddr_occupation2,
      O => read_ddr_occupation114_out
    );
\i__carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_access_size_bytes(13),
      I1 => \^write_ddr_occupation_reg[31]_0\(13),
      I2 => write_access_size_bytes(12),
      I3 => \^write_ddr_occupation_reg[31]_0\(12),
      O => \i__carry_i_10_n_0\
    );
\i__carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_access_size_bytes(11),
      I1 => \^write_ddr_occupation_reg[31]_0\(11),
      I2 => write_access_size_bytes(10),
      I3 => \^write_ddr_occupation_reg[31]_0\(10),
      O => \i__carry_i_11_n_0\
    );
\i__carry_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_access_size_bytes(9),
      I1 => \^write_ddr_occupation_reg[31]_0\(9),
      I2 => write_access_size_bytes(8),
      I3 => \^write_ddr_occupation_reg[31]_0\(8),
      O => \i__carry_i_12_n_0\
    );
\i__carry_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_access_size_bytes(7),
      I1 => \^write_ddr_occupation_reg[31]_0\(7),
      I2 => write_access_size_bytes(6),
      I3 => \^write_ddr_occupation_reg[31]_0\(6),
      O => \i__carry_i_13_n_0\
    );
\i__carry_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_access_size_bytes(5),
      I1 => \^write_ddr_occupation_reg[31]_0\(5),
      I2 => write_access_size_bytes(4),
      I3 => \^write_ddr_occupation_reg[31]_0\(4),
      O => \i__carry_i_14_n_0\
    );
\i__carry_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_access_size_bytes(3),
      I1 => \^write_ddr_occupation_reg[31]_0\(3),
      I2 => write_access_size_bytes(2),
      I3 => \^write_ddr_occupation_reg[31]_0\(2),
      O => \i__carry_i_15_n_0\
    );
\i__carry_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_access_size_bytes(1),
      I1 => \^write_ddr_occupation_reg[31]_0\(1),
      I2 => write_access_size_bytes(0),
      I3 => \^write_ddr_occupation_reg[31]_0\(0),
      O => \i__carry_i_16_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^write_burst_tick_ack_reg_0\,
      I1 => \^write_burst_tick\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(15),
      I1 => write_access_size_bytes(15),
      I2 => \^write_ddr_occupation_reg[31]_0\(14),
      I3 => write_access_size_bytes(14),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(13),
      I1 => write_access_size_bytes(13),
      I2 => \^write_ddr_occupation_reg[31]_0\(12),
      I3 => write_access_size_bytes(12),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D55515AA2AAAEA"
    )
        port map (
      I0 => read_access_size_bytes(7),
      I1 => read_ddr_occupation2,
      I2 => \^read_burst_tick_reg_0\,
      I3 => \^read_burst_tick_ack_reg_0\,
      I4 => read_burst_len(3),
      I5 => \^q\(7),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8ABA7545"
    )
        port map (
      I0 => write_access_size_bytes(7),
      I1 => \^write_burst_tick_ack_reg_0\,
      I2 => \^write_burst_tick\,
      I3 => write_burst_len(3),
      I4 => \^write_ddr_occupation_reg[31]_0\(7),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(11),
      I1 => write_access_size_bytes(11),
      I2 => \^write_ddr_occupation_reg[31]_0\(10),
      I3 => write_access_size_bytes(10),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D55515AA2AAAEA"
    )
        port map (
      I0 => read_access_size_bytes(6),
      I1 => read_ddr_occupation2,
      I2 => \^read_burst_tick_reg_0\,
      I3 => \^read_burst_tick_ack_reg_0\,
      I4 => read_burst_len(2),
      I5 => \^q\(6),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8ABA7545"
    )
        port map (
      I0 => write_access_size_bytes(6),
      I1 => \^write_burst_tick_ack_reg_0\,
      I2 => \^write_burst_tick\,
      I3 => write_burst_len(2),
      I4 => \^write_ddr_occupation_reg[31]_0\(6),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(9),
      I1 => write_access_size_bytes(9),
      I2 => \^write_ddr_occupation_reg[31]_0\(8),
      I3 => write_access_size_bytes(8),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D55515AA2AAAEA"
    )
        port map (
      I0 => read_access_size_bytes(5),
      I1 => read_ddr_occupation2,
      I2 => \^read_burst_tick_reg_0\,
      I3 => \^read_burst_tick_ack_reg_0\,
      I4 => read_burst_len(1),
      I5 => \^q\(5),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8ABA7545"
    )
        port map (
      I0 => write_access_size_bytes(5),
      I1 => \^write_burst_tick_ack_reg_0\,
      I2 => \^write_burst_tick\,
      I3 => write_burst_len(1),
      I4 => \^write_ddr_occupation_reg[31]_0\(5),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(7),
      I1 => write_access_size_bytes(7),
      I2 => \^write_ddr_occupation_reg[31]_0\(6),
      I3 => write_access_size_bytes(6),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D55515AA2AAAEA"
    )
        port map (
      I0 => read_access_size_bytes(4),
      I1 => read_ddr_occupation2,
      I2 => \^read_burst_tick_reg_0\,
      I3 => \^read_burst_tick_ack_reg_0\,
      I4 => read_burst_len(0),
      I5 => \^q\(4),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8ABA7545"
    )
        port map (
      I0 => write_access_size_bytes(4),
      I1 => \^write_burst_tick_ack_reg_0\,
      I2 => \^write_burst_tick\,
      I3 => write_burst_len(0),
      I4 => \^write_ddr_occupation_reg[31]_0\(4),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(5),
      I1 => write_access_size_bytes(5),
      I2 => \^write_ddr_occupation_reg[31]_0\(4),
      I3 => write_access_size_bytes(4),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BFFF40"
    )
        port map (
      I0 => \^read_burst_tick_ack_reg_0\,
      I1 => \^read_burst_tick_reg_0\,
      I2 => read_ddr_occupation2,
      I3 => read_access_size_bytes(3),
      I4 => \^q\(3),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE51"
    )
        port map (
      I0 => write_access_size_bytes(3),
      I1 => \^write_burst_tick\,
      I2 => \^write_burst_tick_ack_reg_0\,
      I3 => \^write_ddr_occupation_reg[31]_0\(3),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(3),
      I1 => write_access_size_bytes(3),
      I2 => \^write_ddr_occupation_reg[31]_0\(2),
      I3 => write_access_size_bytes(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BFFF40"
    )
        port map (
      I0 => \^read_burst_tick_ack_reg_0\,
      I1 => \^read_burst_tick_reg_0\,
      I2 => read_ddr_occupation2,
      I3 => read_access_size_bytes(2),
      I4 => \^q\(2),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE51"
    )
        port map (
      I0 => write_access_size_bytes(2),
      I1 => \^write_burst_tick\,
      I2 => \^write_burst_tick_ack_reg_0\,
      I3 => \^write_ddr_occupation_reg[31]_0\(2),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(1),
      I1 => write_access_size_bytes(1),
      I2 => \^write_ddr_occupation_reg[31]_0\(0),
      I3 => write_access_size_bytes(0),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BFFF40"
    )
        port map (
      I0 => \^read_burst_tick_ack_reg_0\,
      I1 => \^read_burst_tick_reg_0\,
      I2 => read_ddr_occupation2,
      I3 => read_access_size_bytes(1),
      I4 => \^q\(1),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE51"
    )
        port map (
      I0 => write_access_size_bytes(1),
      I1 => \^write_burst_tick\,
      I2 => \^write_burst_tick_ack_reg_0\,
      I3 => \^write_ddr_occupation_reg[31]_0\(1),
      O => \i__carry_i_8__1_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_access_size_bytes(15),
      I1 => \^write_ddr_occupation_reg[31]_0\(15),
      I2 => write_access_size_bytes(14),
      I3 => \^write_ddr_occupation_reg[31]_0\(14),
      O => \i__carry_i_9_n_0\
    );
\i__carry_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \^read_burst_tick_ack_reg_0\,
      I1 => \^read_burst_tick_reg_0\,
      I2 => read_ddr_occupation2,
      I3 => read_access_size_bytes(0),
      O => \i__carry_i_9__0_n_0\
    );
\i__carry_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => write_access_size_bytes(0),
      I1 => \^write_burst_tick\,
      I2 => \^write_burst_tick_ack_reg_0\,
      O => \i__carry_i_9__1_n_0\
    );
ila_read_active_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => m_axis_tx_tready,
      I2 => read_state(0),
      I3 => read_state(1),
      I4 => read_state(2),
      O => \^m_axi_rvalid_0\
    );
ila_read_ddr_has_data_INST_0: unisim.vcomponents.CARRY8
     port map (
      CI => ila_read_ddr_has_data_INST_0_i_1_n_0,
      CI_TOP => '0',
      CO(7) => NLW_ila_read_ddr_has_data_INST_0_CO_UNCONNECTED(7),
      CO(6) => \^read_ddr_occupation_reg[30]_0\(0),
      CO(5) => ila_read_ddr_has_data_INST_0_n_2,
      CO(4) => ila_read_ddr_has_data_INST_0_n_3,
      CO(3) => ila_read_ddr_has_data_INST_0_n_4,
      CO(2) => ila_read_ddr_has_data_INST_0_n_5,
      CO(1) => ila_read_ddr_has_data_INST_0_n_6,
      CO(0) => ila_read_ddr_has_data_INST_0_n_7,
      DI(7) => '0',
      DI(6) => ila_read_ddr_has_data_INST_0_i_2_n_0,
      DI(5) => ila_read_ddr_has_data_INST_0_i_3_n_0,
      DI(4) => ila_read_ddr_has_data_INST_0_i_4_n_0,
      DI(3) => ila_read_ddr_has_data_INST_0_i_5_n_0,
      DI(2) => ila_read_ddr_has_data_INST_0_i_6_n_0,
      DI(1) => ila_read_ddr_has_data_INST_0_i_7_n_0,
      DI(0) => ila_read_ddr_has_data_INST_0_i_8_n_0,
      O(7 downto 0) => NLW_ila_read_ddr_has_data_INST_0_O_UNCONNECTED(7 downto 0),
      S(7) => '0',
      S(6) => ila_read_ddr_has_data_INST_0_i_9_n_0,
      S(5) => ila_read_ddr_has_data_INST_0_i_10_n_0,
      S(4) => ila_read_ddr_has_data_INST_0_i_11_n_0,
      S(3) => ila_read_ddr_has_data_INST_0_i_12_n_0,
      S(2) => ila_read_ddr_has_data_INST_0_i_13_n_0,
      S(1) => ila_read_ddr_has_data_INST_0_i_14_n_0,
      S(0) => ila_read_ddr_has_data_INST_0_i_15_n_0
    );
ila_read_ddr_has_data_INST_0_i_1: unisim.vcomponents.CARRY8
     port map (
      CI => ila_read_ddr_has_data_INST_0_i_16_n_0,
      CI_TOP => '0',
      CO(7) => ila_read_ddr_has_data_INST_0_i_1_n_0,
      CO(6) => ila_read_ddr_has_data_INST_0_i_1_n_1,
      CO(5) => ila_read_ddr_has_data_INST_0_i_1_n_2,
      CO(4) => ila_read_ddr_has_data_INST_0_i_1_n_3,
      CO(3) => ila_read_ddr_has_data_INST_0_i_1_n_4,
      CO(2) => ila_read_ddr_has_data_INST_0_i_1_n_5,
      CO(1) => ila_read_ddr_has_data_INST_0_i_1_n_6,
      CO(0) => ila_read_ddr_has_data_INST_0_i_1_n_7,
      DI(7) => ila_read_ddr_has_data_INST_0_i_17_n_0,
      DI(6) => ila_read_ddr_has_data_INST_0_i_18_n_0,
      DI(5) => ila_read_ddr_has_data_INST_0_i_19_n_0,
      DI(4) => ila_read_ddr_has_data_INST_0_i_20_n_0,
      DI(3) => ila_read_ddr_has_data_INST_0_i_21_n_0,
      DI(2) => ila_read_ddr_has_data_INST_0_i_22_n_0,
      DI(1) => ila_read_ddr_has_data_INST_0_i_23_n_0,
      DI(0) => ila_read_ddr_has_data_INST_0_i_24_n_0,
      O(7 downto 0) => NLW_ila_read_ddr_has_data_INST_0_i_1_O_UNCONNECTED(7 downto 0),
      S(7) => ila_read_ddr_has_data_INST_0_i_25_n_0,
      S(6) => ila_read_ddr_has_data_INST_0_i_26_n_0,
      S(5) => ila_read_ddr_has_data_INST_0_i_27_n_0,
      S(4) => ila_read_ddr_has_data_INST_0_i_28_n_0,
      S(3) => ila_read_ddr_has_data_INST_0_i_29_n_0,
      S(2) => ila_read_ddr_has_data_INST_0_i_30_n_0,
      S(1) => ila_read_ddr_has_data_INST_0_i_31_n_0,
      S(0) => ila_read_ddr_has_data_INST_0_i_32_n_0
    );
ila_read_ddr_has_data_INST_0_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(28),
      O => ila_read_ddr_has_data_INST_0_i_10_n_0
    );
ila_read_ddr_has_data_INST_0_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^q\(26),
      O => ila_read_ddr_has_data_INST_0_i_11_n_0
    );
ila_read_ddr_has_data_INST_0_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(25),
      I1 => \^q\(24),
      O => ila_read_ddr_has_data_INST_0_i_12_n_0
    );
ila_read_ddr_has_data_INST_0_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(23),
      I1 => \^q\(22),
      O => ila_read_ddr_has_data_INST_0_i_13_n_0
    );
ila_read_ddr_has_data_INST_0_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(20),
      O => ila_read_ddr_has_data_INST_0_i_14_n_0
    );
ila_read_ddr_has_data_INST_0_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(19),
      I1 => \^q\(18),
      O => ila_read_ddr_has_data_INST_0_i_15_n_0
    );
ila_read_ddr_has_data_INST_0_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => ila_read_ddr_has_data_INST_0_i_16_n_0
    );
ila_read_ddr_has_data_INST_0_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(16),
      I1 => \^q\(17),
      O => ila_read_ddr_has_data_INST_0_i_17_n_0
    );
ila_read_ddr_has_data_INST_0_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(15),
      O => ila_read_ddr_has_data_INST_0_i_18_n_0
    );
ila_read_ddr_has_data_INST_0_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => read_burst_len(8),
      I1 => \^q\(12),
      I2 => \^q\(13),
      O => ila_read_ddr_has_data_INST_0_i_19_n_0
    );
ila_read_ddr_has_data_INST_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(30),
      I1 => \^q\(31),
      O => ila_read_ddr_has_data_INST_0_i_2_n_0
    );
ila_read_ddr_has_data_INST_0_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(11),
      I1 => read_burst_len(7),
      I2 => \^q\(10),
      I3 => read_burst_len(6),
      O => ila_read_ddr_has_data_INST_0_i_20_n_0
    );
ila_read_ddr_has_data_INST_0_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(9),
      I1 => read_burst_len(5),
      I2 => \^q\(8),
      I3 => read_burst_len(4),
      O => ila_read_ddr_has_data_INST_0_i_21_n_0
    );
ila_read_ddr_has_data_INST_0_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(7),
      I1 => read_burst_len(3),
      I2 => \^q\(6),
      I3 => read_burst_len(2),
      O => ila_read_ddr_has_data_INST_0_i_22_n_0
    );
ila_read_ddr_has_data_INST_0_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"50D4"
    )
        port map (
      I0 => read_burst_len(1),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => read_burst_len(0),
      O => ila_read_ddr_has_data_INST_0_i_23_n_0
    );
ila_read_ddr_has_data_INST_0_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => ila_read_ddr_has_data_INST_0_i_24_n_0
    );
ila_read_ddr_has_data_INST_0_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^q\(16),
      O => ila_read_ddr_has_data_INST_0_i_25_n_0
    );
ila_read_ddr_has_data_INST_0_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^q\(14),
      O => ila_read_ddr_has_data_INST_0_i_26_n_0
    );
ila_read_ddr_has_data_INST_0_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => read_burst_len(8),
      I1 => \^q\(12),
      I2 => \^q\(13),
      O => ila_read_ddr_has_data_INST_0_i_27_n_0
    );
ila_read_ddr_has_data_INST_0_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(10),
      I1 => read_burst_len(6),
      I2 => read_burst_len(7),
      I3 => \^q\(11),
      O => ila_read_ddr_has_data_INST_0_i_28_n_0
    );
ila_read_ddr_has_data_INST_0_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(8),
      I1 => read_burst_len(4),
      I2 => read_burst_len(5),
      I3 => \^q\(9),
      O => ila_read_ddr_has_data_INST_0_i_29_n_0
    );
ila_read_ddr_has_data_INST_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(28),
      I1 => \^q\(29),
      O => ila_read_ddr_has_data_INST_0_i_3_n_0
    );
ila_read_ddr_has_data_INST_0_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(6),
      I1 => read_burst_len(2),
      I2 => read_burst_len(3),
      I3 => \^q\(7),
      O => ila_read_ddr_has_data_INST_0_i_30_n_0
    );
ila_read_ddr_has_data_INST_0_i_31: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => read_burst_len(0),
      I2 => \^q\(5),
      I3 => read_burst_len(1),
      O => ila_read_ddr_has_data_INST_0_i_31_n_0
    );
ila_read_ddr_has_data_INST_0_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => ila_read_ddr_has_data_INST_0_i_32_n_0
    );
ila_read_ddr_has_data_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(26),
      I1 => \^q\(27),
      O => ila_read_ddr_has_data_INST_0_i_4_n_0
    );
ila_read_ddr_has_data_INST_0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(24),
      I1 => \^q\(25),
      O => ila_read_ddr_has_data_INST_0_i_5_n_0
    );
ila_read_ddr_has_data_INST_0_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(22),
      I1 => \^q\(23),
      O => ila_read_ddr_has_data_INST_0_i_6_n_0
    );
ila_read_ddr_has_data_INST_0_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(20),
      I1 => \^q\(21),
      O => ila_read_ddr_has_data_INST_0_i_7_n_0
    );
ila_read_ddr_has_data_INST_0_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^q\(19),
      O => ila_read_ddr_has_data_INST_0_i_8_n_0
    );
ila_read_ddr_has_data_INST_0_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(30),
      O => ila_read_ddr_has_data_INST_0_i_9_n_0
    );
\ila_read_state[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_state(0),
      I1 => read_state(2),
      O => \^ila_read_state\(0)
    );
\ila_read_state[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_state(1),
      I1 => read_state(2),
      O => \^ila_read_state\(1)
    );
\ila_read_state[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => read_state(2),
      I1 => read_state(0),
      I2 => read_state(1),
      O => \^ila_read_state\(2)
    );
ila_rx_fifo_rden_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \write_state__0\(2),
      I1 => \write_state__0\(1),
      I2 => \write_state__0\(0),
      O => \^ila_rx_fifo_rden\
    );
ila_tx_fifo_wren_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => read_state(2),
      I1 => read_state(1),
      I2 => read_state(0),
      O => \^ila_tx_fifo_wren\
    );
ila_write_active_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s_axis_rx_tvalid,
      I1 => m_axi_wready,
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(1),
      I4 => \write_state__0\(2),
      O => \^ila_write_active\
    );
\ila_write_state[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \write_state__0\(0),
      I1 => \write_state__0\(2),
      O => \^ila_write_state\(0)
    );
\ila_write_state[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_state__0\(2),
      O => \^ila_write_state\(1)
    );
\ila_write_state[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \write_state__0\(2),
      I1 => \write_state__0\(0),
      I2 => \write_state__0\(1),
      O => \^ila_write_state\(2)
    );
\m_axi_araddr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(0),
      I1 => read_base_address(0),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(0)
    );
\m_axi_araddr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(10),
      I1 => read_base_address(10),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(10)
    );
\m_axi_araddr[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_araddr\(10),
      I1 => read_burst_len(6),
      O => \m_axi_araddr[10]_i_3_n_0\
    );
\m_axi_araddr[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_araddr\(9),
      I1 => read_burst_len(5),
      O => \m_axi_araddr[10]_i_4_n_0\
    );
\m_axi_araddr[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_araddr\(8),
      I1 => read_burst_len(4),
      O => \m_axi_araddr[10]_i_5_n_0\
    );
\m_axi_araddr[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_araddr\(7),
      I1 => read_burst_len(3),
      O => \m_axi_araddr[10]_i_6_n_0\
    );
\m_axi_araddr[10]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_araddr\(6),
      I1 => read_burst_len(2),
      O => \m_axi_araddr[10]_i_7_n_0\
    );
\m_axi_araddr[10]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_araddr\(5),
      I1 => read_burst_len(1),
      O => \m_axi_araddr[10]_i_8_n_0\
    );
\m_axi_araddr[10]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_araddr\(4),
      I1 => read_burst_len(0),
      O => \m_axi_araddr[10]_i_9_n_0\
    );
\m_axi_araddr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(11),
      I1 => read_base_address(11),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(11)
    );
\m_axi_araddr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(12),
      I1 => read_base_address(12),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(12)
    );
\m_axi_araddr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(13),
      I1 => read_base_address(13),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(13)
    );
\m_axi_araddr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(14),
      I1 => read_base_address(14),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(14)
    );
\m_axi_araddr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(15),
      I1 => read_base_address(15),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(15)
    );
\m_axi_araddr[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(16),
      I1 => read_base_address(16),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(16)
    );
\m_axi_araddr[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(17),
      I1 => read_base_address(17),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(17)
    );
\m_axi_araddr[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(18),
      I1 => read_base_address(18),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(18)
    );
\m_axi_araddr[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_araddr\(12),
      I1 => read_burst_len(8),
      O => \m_axi_araddr[18]_i_3_n_0\
    );
\m_axi_araddr[18]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_araddr\(11),
      I1 => read_burst_len(7),
      O => \m_axi_araddr[18]_i_4_n_0\
    );
\m_axi_araddr[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(19),
      I1 => read_base_address(19),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(19)
    );
\m_axi_araddr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(1),
      I1 => read_base_address(1),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(1)
    );
\m_axi_araddr[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(20),
      I1 => read_base_address(20),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(20)
    );
\m_axi_araddr[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(21),
      I1 => read_base_address(21),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(21)
    );
\m_axi_araddr[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(22),
      I1 => read_base_address(22),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(22)
    );
\m_axi_araddr[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(23),
      I1 => read_base_address(23),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(23)
    );
\m_axi_araddr[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(24),
      I1 => read_base_address(24),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(24)
    );
\m_axi_araddr[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(25),
      I1 => read_base_address(25),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(25)
    );
\m_axi_araddr[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(26),
      I1 => read_base_address(26),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(26)
    );
\m_axi_araddr[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(27),
      I1 => read_base_address(27),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(27)
    );
\m_axi_araddr[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(28),
      I1 => read_base_address(28),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(28)
    );
\m_axi_araddr[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(29),
      I1 => read_base_address(29),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(29)
    );
\m_axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(2),
      I1 => read_base_address(2),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(2)
    );
\m_axi_araddr[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(30),
      I1 => read_base_address(30),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(30)
    );
\m_axi_araddr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(31),
      I1 => read_base_address(31),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(31)
    );
\m_axi_araddr[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(32),
      I1 => read_base_address(32),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(32)
    );
\m_axi_araddr[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(33),
      I1 => read_base_address(33),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(33)
    );
\m_axi_araddr[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(34),
      I1 => read_base_address(34),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(34)
    );
\m_axi_araddr[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(35),
      I1 => read_base_address(35),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(35)
    );
\m_axi_araddr[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(36),
      I1 => read_base_address(36),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(36)
    );
\m_axi_araddr[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(37),
      I1 => read_base_address(37),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(37)
    );
\m_axi_araddr[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(38),
      I1 => read_base_address(38),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(38)
    );
\m_axi_araddr[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(39),
      I1 => read_base_address(39),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(39)
    );
\m_axi_araddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(3),
      I1 => read_base_address(3),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(3)
    );
\m_axi_araddr[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(40),
      I1 => read_base_address(40),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(40)
    );
\m_axi_araddr[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(41),
      I1 => read_base_address(41),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(41)
    );
\m_axi_araddr[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(42),
      I1 => read_base_address(42),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(42)
    );
\m_axi_araddr[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(43),
      I1 => read_base_address(43),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(43)
    );
\m_axi_araddr[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(44),
      I1 => read_base_address(44),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(44)
    );
\m_axi_araddr[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(45),
      I1 => read_base_address(45),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(45)
    );
\m_axi_araddr[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(46),
      I1 => read_base_address(46),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(46)
    );
\m_axi_araddr[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555F57"
    )
        port map (
      I0 => aresetn,
      I1 => read_state(1),
      I2 => read_state(0),
      I3 => m_axi_arready,
      I4 => read_state(2),
      O => \m_axi_araddr[47]_i_1_n_0\
    );
\m_axi_araddr[47]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(47),
      I1 => read_base_address(47),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(47)
    );
\m_axi_araddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(4),
      I1 => read_base_address(4),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(4)
    );
\m_axi_araddr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(5),
      I1 => read_base_address(5),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(5)
    );
\m_axi_araddr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(6),
      I1 => read_base_address(6),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(6)
    );
\m_axi_araddr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(7),
      I1 => read_base_address(7),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(7)
    );
\m_axi_araddr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(8),
      I1 => read_base_address(8),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(8)
    );
\m_axi_araddr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in18(9),
      I1 => read_base_address(9),
      I2 => read_state(1),
      I3 => read_state(2),
      I4 => aresetn,
      O => p_1_in(9)
    );
\m_axi_araddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(0),
      Q => \^m_axi_araddr\(0),
      R => '0'
    );
\m_axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(10),
      Q => \^m_axi_araddr\(10),
      R => '0'
    );
\m_axi_araddr_reg[10]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \m_axi_araddr_reg[10]_i_2_n_0\,
      CO(6) => \m_axi_araddr_reg[10]_i_2_n_1\,
      CO(5) => \m_axi_araddr_reg[10]_i_2_n_2\,
      CO(4) => \m_axi_araddr_reg[10]_i_2_n_3\,
      CO(3) => \m_axi_araddr_reg[10]_i_2_n_4\,
      CO(2) => \m_axi_araddr_reg[10]_i_2_n_5\,
      CO(1) => \m_axi_araddr_reg[10]_i_2_n_6\,
      CO(0) => \m_axi_araddr_reg[10]_i_2_n_7\,
      DI(7 downto 1) => \^m_axi_araddr\(10 downto 4),
      DI(0) => '0',
      O(7 downto 0) => in18(10 downto 3),
      S(7) => \m_axi_araddr[10]_i_3_n_0\,
      S(6) => \m_axi_araddr[10]_i_4_n_0\,
      S(5) => \m_axi_araddr[10]_i_5_n_0\,
      S(4) => \m_axi_araddr[10]_i_6_n_0\,
      S(3) => \m_axi_araddr[10]_i_7_n_0\,
      S(2) => \m_axi_araddr[10]_i_8_n_0\,
      S(1) => \m_axi_araddr[10]_i_9_n_0\,
      S(0) => \^m_axi_araddr\(3)
    );
\m_axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(11),
      Q => \^m_axi_araddr\(11),
      R => '0'
    );
\m_axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(12),
      Q => \^m_axi_araddr\(12),
      R => '0'
    );
\m_axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(13),
      Q => \^m_axi_araddr\(13),
      R => '0'
    );
\m_axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(14),
      Q => \^m_axi_araddr\(14),
      R => '0'
    );
\m_axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(15),
      Q => \^m_axi_araddr\(15),
      R => '0'
    );
\m_axi_araddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(16),
      Q => \^m_axi_araddr\(16),
      R => '0'
    );
\m_axi_araddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(17),
      Q => \^m_axi_araddr\(17),
      R => '0'
    );
\m_axi_araddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(18),
      Q => \^m_axi_araddr\(18),
      R => '0'
    );
\m_axi_araddr_reg[18]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axi_araddr_reg[10]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \m_axi_araddr_reg[18]_i_2_n_0\,
      CO(6) => \m_axi_araddr_reg[18]_i_2_n_1\,
      CO(5) => \m_axi_araddr_reg[18]_i_2_n_2\,
      CO(4) => \m_axi_araddr_reg[18]_i_2_n_3\,
      CO(3) => \m_axi_araddr_reg[18]_i_2_n_4\,
      CO(2) => \m_axi_araddr_reg[18]_i_2_n_5\,
      CO(1) => \m_axi_araddr_reg[18]_i_2_n_6\,
      CO(0) => \m_axi_araddr_reg[18]_i_2_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => \^m_axi_araddr\(12 downto 11),
      O(7 downto 0) => in18(18 downto 11),
      S(7 downto 2) => \^m_axi_araddr\(18 downto 13),
      S(1) => \m_axi_araddr[18]_i_3_n_0\,
      S(0) => \m_axi_araddr[18]_i_4_n_0\
    );
\m_axi_araddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(19),
      Q => \^m_axi_araddr\(19),
      R => '0'
    );
\m_axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(1),
      Q => \^m_axi_araddr\(1),
      R => '0'
    );
\m_axi_araddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(20),
      Q => \^m_axi_araddr\(20),
      R => '0'
    );
\m_axi_araddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(21),
      Q => \^m_axi_araddr\(21),
      R => '0'
    );
\m_axi_araddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(22),
      Q => \^m_axi_araddr\(22),
      R => '0'
    );
\m_axi_araddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(23),
      Q => \^m_axi_araddr\(23),
      R => '0'
    );
\m_axi_araddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(24),
      Q => \^m_axi_araddr\(24),
      R => '0'
    );
\m_axi_araddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(25),
      Q => \^m_axi_araddr\(25),
      R => '0'
    );
\m_axi_araddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(26),
      Q => \^m_axi_araddr\(26),
      R => '0'
    );
\m_axi_araddr_reg[26]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axi_araddr_reg[18]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \m_axi_araddr_reg[26]_i_2_n_0\,
      CO(6) => \m_axi_araddr_reg[26]_i_2_n_1\,
      CO(5) => \m_axi_araddr_reg[26]_i_2_n_2\,
      CO(4) => \m_axi_araddr_reg[26]_i_2_n_3\,
      CO(3) => \m_axi_araddr_reg[26]_i_2_n_4\,
      CO(2) => \m_axi_araddr_reg[26]_i_2_n_5\,
      CO(1) => \m_axi_araddr_reg[26]_i_2_n_6\,
      CO(0) => \m_axi_araddr_reg[26]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in18(26 downto 19),
      S(7 downto 0) => \^m_axi_araddr\(26 downto 19)
    );
\m_axi_araddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(27),
      Q => \^m_axi_araddr\(27),
      R => '0'
    );
\m_axi_araddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(28),
      Q => \^m_axi_araddr\(28),
      R => '0'
    );
\m_axi_araddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(29),
      Q => \^m_axi_araddr\(29),
      R => '0'
    );
\m_axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(2),
      Q => \^m_axi_araddr\(2),
      R => '0'
    );
\m_axi_araddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(30),
      Q => \^m_axi_araddr\(30),
      R => '0'
    );
\m_axi_araddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(31),
      Q => \^m_axi_araddr\(31),
      R => '0'
    );
\m_axi_araddr_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(32),
      Q => \^m_axi_araddr\(32),
      R => '0'
    );
\m_axi_araddr_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(33),
      Q => \^m_axi_araddr\(33),
      R => '0'
    );
\m_axi_araddr_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(34),
      Q => \^m_axi_araddr\(34),
      R => '0'
    );
\m_axi_araddr_reg[34]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axi_araddr_reg[26]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \m_axi_araddr_reg[34]_i_2_n_0\,
      CO(6) => \m_axi_araddr_reg[34]_i_2_n_1\,
      CO(5) => \m_axi_araddr_reg[34]_i_2_n_2\,
      CO(4) => \m_axi_araddr_reg[34]_i_2_n_3\,
      CO(3) => \m_axi_araddr_reg[34]_i_2_n_4\,
      CO(2) => \m_axi_araddr_reg[34]_i_2_n_5\,
      CO(1) => \m_axi_araddr_reg[34]_i_2_n_6\,
      CO(0) => \m_axi_araddr_reg[34]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in18(34 downto 27),
      S(7 downto 0) => \^m_axi_araddr\(34 downto 27)
    );
\m_axi_araddr_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(35),
      Q => \^m_axi_araddr\(35),
      R => '0'
    );
\m_axi_araddr_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(36),
      Q => \^m_axi_araddr\(36),
      R => '0'
    );
\m_axi_araddr_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(37),
      Q => \^m_axi_araddr\(37),
      R => '0'
    );
\m_axi_araddr_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(38),
      Q => \^m_axi_araddr\(38),
      R => '0'
    );
\m_axi_araddr_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(39),
      Q => \^m_axi_araddr\(39),
      R => '0'
    );
\m_axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(3),
      Q => \^m_axi_araddr\(3),
      R => '0'
    );
\m_axi_araddr_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(40),
      Q => \^m_axi_araddr\(40),
      R => '0'
    );
\m_axi_araddr_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(41),
      Q => \^m_axi_araddr\(41),
      R => '0'
    );
\m_axi_araddr_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(42),
      Q => \^m_axi_araddr\(42),
      R => '0'
    );
\m_axi_araddr_reg[42]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axi_araddr_reg[34]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \m_axi_araddr_reg[42]_i_2_n_0\,
      CO(6) => \m_axi_araddr_reg[42]_i_2_n_1\,
      CO(5) => \m_axi_araddr_reg[42]_i_2_n_2\,
      CO(4) => \m_axi_araddr_reg[42]_i_2_n_3\,
      CO(3) => \m_axi_araddr_reg[42]_i_2_n_4\,
      CO(2) => \m_axi_araddr_reg[42]_i_2_n_5\,
      CO(1) => \m_axi_araddr_reg[42]_i_2_n_6\,
      CO(0) => \m_axi_araddr_reg[42]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in18(42 downto 35),
      S(7 downto 0) => \^m_axi_araddr\(42 downto 35)
    );
\m_axi_araddr_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(43),
      Q => \^m_axi_araddr\(43),
      R => '0'
    );
\m_axi_araddr_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(44),
      Q => \^m_axi_araddr\(44),
      R => '0'
    );
\m_axi_araddr_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(45),
      Q => \^m_axi_araddr\(45),
      R => '0'
    );
\m_axi_araddr_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(46),
      Q => \^m_axi_araddr\(46),
      R => '0'
    );
\m_axi_araddr_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(47),
      Q => \^m_axi_araddr\(47),
      R => '0'
    );
\m_axi_araddr_reg[47]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axi_araddr_reg[42]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_m_axi_araddr_reg[47]_i_3_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \m_axi_araddr_reg[47]_i_3_n_4\,
      CO(2) => \m_axi_araddr_reg[47]_i_3_n_5\,
      CO(1) => \m_axi_araddr_reg[47]_i_3_n_6\,
      CO(0) => \m_axi_araddr_reg[47]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 5) => \NLW_m_axi_araddr_reg[47]_i_3_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => in18(47 downto 43),
      S(7 downto 5) => B"000",
      S(4 downto 0) => \^m_axi_araddr\(47 downto 43)
    );
\m_axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(4),
      Q => \^m_axi_araddr\(4),
      R => '0'
    );
\m_axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(5),
      Q => \^m_axi_araddr\(5),
      R => '0'
    );
\m_axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(6),
      Q => \^m_axi_araddr\(6),
      R => '0'
    );
\m_axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(7),
      Q => \^m_axi_araddr\(7),
      R => '0'
    );
\m_axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(8),
      Q => \^m_axi_araddr\(8),
      R => '0'
    );
\m_axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_araddr[47]_i_1_n_0\,
      D => p_1_in(9),
      Q => \^m_axi_araddr\(9),
      R => '0'
    );
\m_axi_arlen[7]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => read_burst_len(2),
      I1 => read_burst_len(1),
      I2 => read_burst_len(0),
      I3 => read_burst_len(3),
      O => read_burst_len_2_sn_1
    );
m_axi_arvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => m_axi_arvalid_i_1_n_0
    );
m_axi_arvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF3A0000003A0"
    )
        port map (
      I0 => m_axi_arvalid_i_3_n_0,
      I1 => m_axi_arready,
      I2 => read_state(0),
      I3 => read_state(1),
      I4 => read_state(2),
      I5 => \^ilamaxi_arvalid\,
      O => m_axi_arvalid_i_2_n_0
    );
m_axi_arvalid_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tx_fifo_has_space,
      I1 => \^read_ddr_occupation_reg[30]_0\(0),
      O => m_axi_arvalid_i_3_n_0
    );
m_axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_arvalid_i_2_n_0,
      Q => \^ilamaxi_arvalid\,
      R => m_axi_arvalid_i_1_n_0
    );
\m_axi_awaddr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(0),
      I1 => write_base_address(0),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[0]_i_1_n_0\
    );
\m_axi_awaddr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(10),
      I1 => write_base_address(10),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[10]_i_1_n_0\
    );
\m_axi_awaddr[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_awaddr\(10),
      I1 => write_burst_len(6),
      O => \m_axi_awaddr[10]_i_3_n_0\
    );
\m_axi_awaddr[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_awaddr\(9),
      I1 => write_burst_len(5),
      O => \m_axi_awaddr[10]_i_4_n_0\
    );
\m_axi_awaddr[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_awaddr\(8),
      I1 => write_burst_len(4),
      O => \m_axi_awaddr[10]_i_5_n_0\
    );
\m_axi_awaddr[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_awaddr\(7),
      I1 => write_burst_len(3),
      O => \m_axi_awaddr[10]_i_6_n_0\
    );
\m_axi_awaddr[10]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_awaddr\(6),
      I1 => write_burst_len(2),
      O => \m_axi_awaddr[10]_i_7_n_0\
    );
\m_axi_awaddr[10]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_awaddr\(5),
      I1 => write_burst_len(1),
      O => \m_axi_awaddr[10]_i_8_n_0\
    );
\m_axi_awaddr[10]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_awaddr\(4),
      I1 => write_burst_len(0),
      O => \m_axi_awaddr[10]_i_9_n_0\
    );
\m_axi_awaddr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(11),
      I1 => write_base_address(11),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[11]_i_1_n_0\
    );
\m_axi_awaddr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(12),
      I1 => write_base_address(12),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[12]_i_1_n_0\
    );
\m_axi_awaddr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(13),
      I1 => write_base_address(13),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[13]_i_1_n_0\
    );
\m_axi_awaddr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(14),
      I1 => write_base_address(14),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[14]_i_1_n_0\
    );
\m_axi_awaddr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(15),
      I1 => write_base_address(15),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[15]_i_1_n_0\
    );
\m_axi_awaddr[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(16),
      I1 => write_base_address(16),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[16]_i_1_n_0\
    );
\m_axi_awaddr[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(17),
      I1 => write_base_address(17),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[17]_i_1_n_0\
    );
\m_axi_awaddr[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(18),
      I1 => write_base_address(18),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[18]_i_1_n_0\
    );
\m_axi_awaddr[18]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_awaddr\(12),
      I1 => write_burst_len(8),
      O => \m_axi_awaddr[18]_i_3_n_0\
    );
\m_axi_awaddr[18]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^m_axi_awaddr\(11),
      I1 => write_burst_len(7),
      O => \m_axi_awaddr[18]_i_4_n_0\
    );
\m_axi_awaddr[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(19),
      I1 => write_base_address(19),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[19]_i_1_n_0\
    );
\m_axi_awaddr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(1),
      I1 => write_base_address(1),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[1]_i_1_n_0\
    );
\m_axi_awaddr[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(20),
      I1 => write_base_address(20),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[20]_i_1_n_0\
    );
\m_axi_awaddr[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(21),
      I1 => write_base_address(21),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[21]_i_1_n_0\
    );
\m_axi_awaddr[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(22),
      I1 => write_base_address(22),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[22]_i_1_n_0\
    );
\m_axi_awaddr[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(23),
      I1 => write_base_address(23),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[23]_i_1_n_0\
    );
\m_axi_awaddr[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(24),
      I1 => write_base_address(24),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[24]_i_1_n_0\
    );
\m_axi_awaddr[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(25),
      I1 => write_base_address(25),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[25]_i_1_n_0\
    );
\m_axi_awaddr[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(26),
      I1 => write_base_address(26),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[26]_i_1_n_0\
    );
\m_axi_awaddr[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(27),
      I1 => write_base_address(27),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[27]_i_1_n_0\
    );
\m_axi_awaddr[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(28),
      I1 => write_base_address(28),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[28]_i_1_n_0\
    );
\m_axi_awaddr[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(29),
      I1 => write_base_address(29),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[29]_i_1_n_0\
    );
\m_axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(2),
      I1 => write_base_address(2),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[2]_i_1_n_0\
    );
\m_axi_awaddr[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(30),
      I1 => write_base_address(30),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[30]_i_1_n_0\
    );
\m_axi_awaddr[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(31),
      I1 => write_base_address(31),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[31]_i_1_n_0\
    );
\m_axi_awaddr[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(32),
      I1 => write_base_address(32),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[32]_i_1_n_0\
    );
\m_axi_awaddr[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(33),
      I1 => write_base_address(33),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[33]_i_1_n_0\
    );
\m_axi_awaddr[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(34),
      I1 => write_base_address(34),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[34]_i_1_n_0\
    );
\m_axi_awaddr[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(35),
      I1 => write_base_address(35),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[35]_i_1_n_0\
    );
\m_axi_awaddr[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(36),
      I1 => write_base_address(36),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[36]_i_1_n_0\
    );
\m_axi_awaddr[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(37),
      I1 => write_base_address(37),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[37]_i_1_n_0\
    );
\m_axi_awaddr[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(38),
      I1 => write_base_address(38),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[38]_i_1_n_0\
    );
\m_axi_awaddr[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(39),
      I1 => write_base_address(39),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[39]_i_1_n_0\
    );
\m_axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(3),
      I1 => write_base_address(3),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[3]_i_1_n_0\
    );
\m_axi_awaddr[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(40),
      I1 => write_base_address(40),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[40]_i_1_n_0\
    );
\m_axi_awaddr[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(41),
      I1 => write_base_address(41),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[41]_i_1_n_0\
    );
\m_axi_awaddr[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(42),
      I1 => write_base_address(42),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[42]_i_1_n_0\
    );
\m_axi_awaddr[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(43),
      I1 => write_base_address(43),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[43]_i_1_n_0\
    );
\m_axi_awaddr[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(44),
      I1 => write_base_address(44),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[44]_i_1_n_0\
    );
\m_axi_awaddr[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(45),
      I1 => write_base_address(45),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[45]_i_1_n_0\
    );
\m_axi_awaddr[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(46),
      I1 => write_base_address(46),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[46]_i_1_n_0\
    );
\m_axi_awaddr[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555F57"
    )
        port map (
      I0 => aresetn,
      I1 => \write_state__0\(1),
      I2 => \write_state__0\(0),
      I3 => m_axi_awready,
      I4 => \write_state__0\(2),
      O => \m_axi_awaddr[47]_i_1_n_0\
    );
\m_axi_awaddr[47]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(47),
      I1 => write_base_address(47),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[47]_i_2_n_0\
    );
\m_axi_awaddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(4),
      I1 => write_base_address(4),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[4]_i_1_n_0\
    );
\m_axi_awaddr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(5),
      I1 => write_base_address(5),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[5]_i_1_n_0\
    );
\m_axi_awaddr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(6),
      I1 => write_base_address(6),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[6]_i_1_n_0\
    );
\m_axi_awaddr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(7),
      I1 => write_base_address(7),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[7]_i_1_n_0\
    );
\m_axi_awaddr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(8),
      I1 => write_base_address(8),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[8]_i_1_n_0\
    );
\m_axi_awaddr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => in9(9),
      I1 => write_base_address(9),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \m_axi_awaddr[9]_i_1_n_0\
    );
\m_axi_awaddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[0]_i_1_n_0\,
      Q => \^m_axi_awaddr\(0),
      R => '0'
    );
\m_axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[10]_i_1_n_0\,
      Q => \^m_axi_awaddr\(10),
      R => '0'
    );
\m_axi_awaddr_reg[10]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \m_axi_awaddr_reg[10]_i_2_n_0\,
      CO(6) => \m_axi_awaddr_reg[10]_i_2_n_1\,
      CO(5) => \m_axi_awaddr_reg[10]_i_2_n_2\,
      CO(4) => \m_axi_awaddr_reg[10]_i_2_n_3\,
      CO(3) => \m_axi_awaddr_reg[10]_i_2_n_4\,
      CO(2) => \m_axi_awaddr_reg[10]_i_2_n_5\,
      CO(1) => \m_axi_awaddr_reg[10]_i_2_n_6\,
      CO(0) => \m_axi_awaddr_reg[10]_i_2_n_7\,
      DI(7 downto 1) => \^m_axi_awaddr\(10 downto 4),
      DI(0) => '0',
      O(7 downto 0) => in9(10 downto 3),
      S(7) => \m_axi_awaddr[10]_i_3_n_0\,
      S(6) => \m_axi_awaddr[10]_i_4_n_0\,
      S(5) => \m_axi_awaddr[10]_i_5_n_0\,
      S(4) => \m_axi_awaddr[10]_i_6_n_0\,
      S(3) => \m_axi_awaddr[10]_i_7_n_0\,
      S(2) => \m_axi_awaddr[10]_i_8_n_0\,
      S(1) => \m_axi_awaddr[10]_i_9_n_0\,
      S(0) => \^m_axi_awaddr\(3)
    );
\m_axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[11]_i_1_n_0\,
      Q => \^m_axi_awaddr\(11),
      R => '0'
    );
\m_axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[12]_i_1_n_0\,
      Q => \^m_axi_awaddr\(12),
      R => '0'
    );
\m_axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[13]_i_1_n_0\,
      Q => \^m_axi_awaddr\(13),
      R => '0'
    );
\m_axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[14]_i_1_n_0\,
      Q => \^m_axi_awaddr\(14),
      R => '0'
    );
\m_axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[15]_i_1_n_0\,
      Q => \^m_axi_awaddr\(15),
      R => '0'
    );
\m_axi_awaddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[16]_i_1_n_0\,
      Q => \^m_axi_awaddr\(16),
      R => '0'
    );
\m_axi_awaddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[17]_i_1_n_0\,
      Q => \^m_axi_awaddr\(17),
      R => '0'
    );
\m_axi_awaddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[18]_i_1_n_0\,
      Q => \^m_axi_awaddr\(18),
      R => '0'
    );
\m_axi_awaddr_reg[18]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axi_awaddr_reg[10]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \m_axi_awaddr_reg[18]_i_2_n_0\,
      CO(6) => \m_axi_awaddr_reg[18]_i_2_n_1\,
      CO(5) => \m_axi_awaddr_reg[18]_i_2_n_2\,
      CO(4) => \m_axi_awaddr_reg[18]_i_2_n_3\,
      CO(3) => \m_axi_awaddr_reg[18]_i_2_n_4\,
      CO(2) => \m_axi_awaddr_reg[18]_i_2_n_5\,
      CO(1) => \m_axi_awaddr_reg[18]_i_2_n_6\,
      CO(0) => \m_axi_awaddr_reg[18]_i_2_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1 downto 0) => \^m_axi_awaddr\(12 downto 11),
      O(7 downto 0) => in9(18 downto 11),
      S(7 downto 2) => \^m_axi_awaddr\(18 downto 13),
      S(1) => \m_axi_awaddr[18]_i_3_n_0\,
      S(0) => \m_axi_awaddr[18]_i_4_n_0\
    );
\m_axi_awaddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[19]_i_1_n_0\,
      Q => \^m_axi_awaddr\(19),
      R => '0'
    );
\m_axi_awaddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[1]_i_1_n_0\,
      Q => \^m_axi_awaddr\(1),
      R => '0'
    );
\m_axi_awaddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[20]_i_1_n_0\,
      Q => \^m_axi_awaddr\(20),
      R => '0'
    );
\m_axi_awaddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[21]_i_1_n_0\,
      Q => \^m_axi_awaddr\(21),
      R => '0'
    );
\m_axi_awaddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[22]_i_1_n_0\,
      Q => \^m_axi_awaddr\(22),
      R => '0'
    );
\m_axi_awaddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[23]_i_1_n_0\,
      Q => \^m_axi_awaddr\(23),
      R => '0'
    );
\m_axi_awaddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[24]_i_1_n_0\,
      Q => \^m_axi_awaddr\(24),
      R => '0'
    );
\m_axi_awaddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[25]_i_1_n_0\,
      Q => \^m_axi_awaddr\(25),
      R => '0'
    );
\m_axi_awaddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[26]_i_1_n_0\,
      Q => \^m_axi_awaddr\(26),
      R => '0'
    );
\m_axi_awaddr_reg[26]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axi_awaddr_reg[18]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \m_axi_awaddr_reg[26]_i_2_n_0\,
      CO(6) => \m_axi_awaddr_reg[26]_i_2_n_1\,
      CO(5) => \m_axi_awaddr_reg[26]_i_2_n_2\,
      CO(4) => \m_axi_awaddr_reg[26]_i_2_n_3\,
      CO(3) => \m_axi_awaddr_reg[26]_i_2_n_4\,
      CO(2) => \m_axi_awaddr_reg[26]_i_2_n_5\,
      CO(1) => \m_axi_awaddr_reg[26]_i_2_n_6\,
      CO(0) => \m_axi_awaddr_reg[26]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in9(26 downto 19),
      S(7 downto 0) => \^m_axi_awaddr\(26 downto 19)
    );
\m_axi_awaddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[27]_i_1_n_0\,
      Q => \^m_axi_awaddr\(27),
      R => '0'
    );
\m_axi_awaddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[28]_i_1_n_0\,
      Q => \^m_axi_awaddr\(28),
      R => '0'
    );
\m_axi_awaddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[29]_i_1_n_0\,
      Q => \^m_axi_awaddr\(29),
      R => '0'
    );
\m_axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[2]_i_1_n_0\,
      Q => \^m_axi_awaddr\(2),
      R => '0'
    );
\m_axi_awaddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[30]_i_1_n_0\,
      Q => \^m_axi_awaddr\(30),
      R => '0'
    );
\m_axi_awaddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[31]_i_1_n_0\,
      Q => \^m_axi_awaddr\(31),
      R => '0'
    );
\m_axi_awaddr_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[32]_i_1_n_0\,
      Q => \^m_axi_awaddr\(32),
      R => '0'
    );
\m_axi_awaddr_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[33]_i_1_n_0\,
      Q => \^m_axi_awaddr\(33),
      R => '0'
    );
\m_axi_awaddr_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[34]_i_1_n_0\,
      Q => \^m_axi_awaddr\(34),
      R => '0'
    );
\m_axi_awaddr_reg[34]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axi_awaddr_reg[26]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \m_axi_awaddr_reg[34]_i_2_n_0\,
      CO(6) => \m_axi_awaddr_reg[34]_i_2_n_1\,
      CO(5) => \m_axi_awaddr_reg[34]_i_2_n_2\,
      CO(4) => \m_axi_awaddr_reg[34]_i_2_n_3\,
      CO(3) => \m_axi_awaddr_reg[34]_i_2_n_4\,
      CO(2) => \m_axi_awaddr_reg[34]_i_2_n_5\,
      CO(1) => \m_axi_awaddr_reg[34]_i_2_n_6\,
      CO(0) => \m_axi_awaddr_reg[34]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in9(34 downto 27),
      S(7 downto 0) => \^m_axi_awaddr\(34 downto 27)
    );
\m_axi_awaddr_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[35]_i_1_n_0\,
      Q => \^m_axi_awaddr\(35),
      R => '0'
    );
\m_axi_awaddr_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[36]_i_1_n_0\,
      Q => \^m_axi_awaddr\(36),
      R => '0'
    );
\m_axi_awaddr_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[37]_i_1_n_0\,
      Q => \^m_axi_awaddr\(37),
      R => '0'
    );
\m_axi_awaddr_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[38]_i_1_n_0\,
      Q => \^m_axi_awaddr\(38),
      R => '0'
    );
\m_axi_awaddr_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[39]_i_1_n_0\,
      Q => \^m_axi_awaddr\(39),
      R => '0'
    );
\m_axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[3]_i_1_n_0\,
      Q => \^m_axi_awaddr\(3),
      R => '0'
    );
\m_axi_awaddr_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[40]_i_1_n_0\,
      Q => \^m_axi_awaddr\(40),
      R => '0'
    );
\m_axi_awaddr_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[41]_i_1_n_0\,
      Q => \^m_axi_awaddr\(41),
      R => '0'
    );
\m_axi_awaddr_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[42]_i_1_n_0\,
      Q => \^m_axi_awaddr\(42),
      R => '0'
    );
\m_axi_awaddr_reg[42]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axi_awaddr_reg[34]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \m_axi_awaddr_reg[42]_i_2_n_0\,
      CO(6) => \m_axi_awaddr_reg[42]_i_2_n_1\,
      CO(5) => \m_axi_awaddr_reg[42]_i_2_n_2\,
      CO(4) => \m_axi_awaddr_reg[42]_i_2_n_3\,
      CO(3) => \m_axi_awaddr_reg[42]_i_2_n_4\,
      CO(2) => \m_axi_awaddr_reg[42]_i_2_n_5\,
      CO(1) => \m_axi_awaddr_reg[42]_i_2_n_6\,
      CO(0) => \m_axi_awaddr_reg[42]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in9(42 downto 35),
      S(7 downto 0) => \^m_axi_awaddr\(42 downto 35)
    );
\m_axi_awaddr_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[43]_i_1_n_0\,
      Q => \^m_axi_awaddr\(43),
      R => '0'
    );
\m_axi_awaddr_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[44]_i_1_n_0\,
      Q => \^m_axi_awaddr\(44),
      R => '0'
    );
\m_axi_awaddr_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[45]_i_1_n_0\,
      Q => \^m_axi_awaddr\(45),
      R => '0'
    );
\m_axi_awaddr_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[46]_i_1_n_0\,
      Q => \^m_axi_awaddr\(46),
      R => '0'
    );
\m_axi_awaddr_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[47]_i_2_n_0\,
      Q => \^m_axi_awaddr\(47),
      R => '0'
    );
\m_axi_awaddr_reg[47]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \m_axi_awaddr_reg[42]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_m_axi_awaddr_reg[47]_i_3_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \m_axi_awaddr_reg[47]_i_3_n_4\,
      CO(2) => \m_axi_awaddr_reg[47]_i_3_n_5\,
      CO(1) => \m_axi_awaddr_reg[47]_i_3_n_6\,
      CO(0) => \m_axi_awaddr_reg[47]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 5) => \NLW_m_axi_awaddr_reg[47]_i_3_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => in9(47 downto 43),
      S(7 downto 5) => B"000",
      S(4 downto 0) => \^m_axi_awaddr\(47 downto 43)
    );
\m_axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[4]_i_1_n_0\,
      Q => \^m_axi_awaddr\(4),
      R => '0'
    );
\m_axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[5]_i_1_n_0\,
      Q => \^m_axi_awaddr\(5),
      R => '0'
    );
\m_axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[6]_i_1_n_0\,
      Q => \^m_axi_awaddr\(6),
      R => '0'
    );
\m_axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[7]_i_1_n_0\,
      Q => \^m_axi_awaddr\(7),
      R => '0'
    );
\m_axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[8]_i_1_n_0\,
      Q => \^m_axi_awaddr\(8),
      R => '0'
    );
\m_axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axi_awaddr[47]_i_1_n_0\,
      D => \m_axi_awaddr[9]_i_1_n_0\,
      Q => \^m_axi_awaddr\(9),
      R => '0'
    );
\m_axi_awlen[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => write_burst_len(4),
      I1 => write_burst_len(3),
      I2 => write_burst_len(2),
      I3 => write_burst_len(0),
      I4 => write_burst_len(1),
      I5 => write_burst_len(5),
      O => write_burst_len_4_sn_1
    );
m_axi_awvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \write_state__0\(0),
      I1 => \write_state__0\(1),
      I2 => \write_state__0\(2),
      O => m_axi_awvalid_i_1_n_0
    );
m_axi_awvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => \write_state__0\(0),
      I1 => rx_fifo_data_ready,
      I2 => \^co\(0),
      I3 => m_axi_awready,
      I4 => \write_state__0\(1),
      O => m_axi_awvalid_i_2_n_0
    );
m_axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_awvalid_i_1_n_0,
      D => m_axi_awvalid_i_2_n_0,
      Q => ilamaxi_awvalid,
      R => m_axi_arvalid_i_1_n_0
    );
m_axi_bready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBABB88888A88"
    )
        port map (
      I0 => m_axi_bready_i_2_n_0,
      I1 => m_axi_bready_i_3_n_0,
      I2 => \write_state__0\(2),
      I3 => m_axi_bready_i_4_n_0,
      I4 => m_axi_wlast_i_2_n_0,
      I5 => \^ilamaxi_bready\,
      O => m_axi_bready_i_1_n_0
    );
m_axi_bready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \write_state__0\(0),
      I1 => \write_state__0\(1),
      I2 => \write_state__0\(2),
      I3 => \^m_axi_wlast_reg_0\,
      O => m_axi_bready_i_2_n_0
    );
m_axi_bready_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"033B"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => \write_state__0\(2),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(0),
      O => m_axi_bready_i_3_n_0
    );
m_axi_bready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \^m_axi_wlast_reg_0\,
      I1 => \write_state__0\(2),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(0),
      I4 => m_axi_wready,
      I5 => s_axis_rx_tvalid,
      O => m_axi_bready_i_4_n_0
    );
m_axi_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_bready_i_1_n_0,
      Q => \^ilamaxi_bready\,
      R => m_axi_arvalid_i_1_n_0
    );
m_axi_rready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => read_state(0),
      I1 => read_state(1),
      I2 => read_state(2),
      I3 => m_axis_tx_tready,
      O => ilamaxi_rready
    );
m_axi_wlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F088008080"
    )
        port map (
      I0 => \write_state__0\(0),
      I1 => \write_state__0\(1),
      I2 => \^m_axi_wlast_reg_0\,
      I3 => m_axi_wlast_i_2_n_0,
      I4 => \^ila_write_active\,
      I5 => \write_state__0\(2),
      O => m_axi_wlast_i_1_n_0
    );
m_axi_wlast_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => write_burst_len(2),
      I1 => write_burst_len(1),
      I2 => write_burst_len(3),
      O => m_axi_wlast_i_10_n_0
    );
m_axi_wlast_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^write_index_reg[8]_0\(0),
      I1 => write_burst_len(0),
      O => m_axi_wlast_i_11_n_0
    );
m_axi_wlast_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^write_index_reg[8]_0\(5),
      I1 => write_burst_len(5),
      O => m_axi_wlast_i_12_n_0
    );
m_axi_wlast_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_burst_len(1),
      I1 => write_burst_len(2),
      O => m_axi_wlast_i_13_n_0
    );
m_axi_wlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => m_axi_wlast_i_3_n_0,
      I1 => write_state3,
      I2 => m_axi_wlast_i_5_n_0,
      I3 => m_axi_wlast_i_6_n_0,
      I4 => m_axi_wlast_i_7_n_0,
      I5 => m_axi_wlast_i_8_n_0,
      O => m_axi_wlast_i_2_n_0
    );
m_axi_wlast_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => m_axi_wlast_i_9_n_0,
      I1 => write_burst_len(0),
      I2 => write_burst_len(1),
      I3 => write_burst_len(4),
      O => m_axi_wlast_i_3_n_0
    );
m_axi_wlast_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => write_burst_len(8),
      I1 => write_burst_len(5),
      I2 => write_burst_len(4),
      I3 => m_axi_wlast_i_10_n_0,
      I4 => write_burst_len(6),
      I5 => write_burst_len(7),
      O => write_state3
    );
m_axi_wlast_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001482"
    )
        port map (
      I0 => write_burst_len(1),
      I1 => write_burst_len(2),
      I2 => \^write_index_reg[8]_0\(2),
      I3 => \^write_index_reg[8]_0\(1),
      I4 => m_axi_wlast_i_11_n_0,
      I5 => \^write_index_reg[8]_0\(8),
      O => m_axi_wlast_i_5_n_0
    );
m_axi_wlast_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => write_burst_len(6),
      I1 => \^write_index_reg[8]_0\(6),
      I2 => write_burst_len(5),
      I3 => m_axi_wlast_i_10_n_0,
      I4 => write_burst_len(4),
      O => m_axi_wlast_i_6_n_0
    );
m_axi_wlast_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCC933333336"
    )
        port map (
      I0 => write_burst_len(6),
      I1 => write_burst_len(7),
      I2 => write_burst_len(4),
      I3 => m_axi_wlast_i_10_n_0,
      I4 => write_burst_len(5),
      I5 => \^write_index_reg[8]_0\(7),
      O => m_axi_wlast_i_7_n_0
    );
m_axi_wlast_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900004200090900"
    )
        port map (
      I0 => write_burst_len(4),
      I1 => \^write_index_reg[8]_0\(4),
      I2 => m_axi_wlast_i_12_n_0,
      I3 => m_axi_wlast_i_13_n_0,
      I4 => write_burst_len(3),
      I5 => \^write_index_reg[8]_0\(3),
      O => m_axi_wlast_i_8_n_0
    );
m_axi_wlast_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => write_burst_len(2),
      I1 => write_burst_len(3),
      I2 => write_burst_len(5),
      I3 => write_burst_len(8),
      I4 => write_burst_len(7),
      I5 => write_burst_len(6),
      O => m_axi_wlast_i_9_n_0
    );
m_axi_wlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axi_wlast_i_1_n_0,
      Q => \^m_axi_wlast_reg_0\,
      R => m_axi_arvalid_i_1_n_0
    );
m_axi_wvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \write_state__0\(0),
      I1 => \write_state__0\(1),
      I2 => \write_state__0\(2),
      I3 => s_axis_rx_tvalid,
      O => ilamaxi_wvalid
    );
m_axis_tx_tvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => read_state(0),
      I1 => read_state(1),
      I2 => read_state(2),
      I3 => m_axi_rvalid,
      O => ila_tx_valid
    );
read_access_tick_ack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCACAAAA"
    )
        port map (
      I0 => \^ila_read_access_tick_ack\,
      I1 => read_access_tick,
      I2 => read_ddr_occupation2,
      I3 => \^read_burst_tick_ack_reg_0\,
      I4 => \^read_burst_tick_reg_0\,
      O => read_access_tick_ack_i_1_n_0
    );
read_access_tick_ack_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => read_access_tick_ack_i_1_n_0,
      Q => \^ila_read_access_tick_ack\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_bresp[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => m_axi_rresp(0),
      O => \read_bresp[0]_i_1_n_0\
    );
\read_bresp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800000F"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => m_axis_tx_tready,
      I2 => read_state(2),
      I3 => read_state(1),
      I4 => read_state(0),
      O => read_bresp
    );
\read_bresp[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => m_axi_rresp(1),
      O => \read_bresp[1]_i_2_n_0\
    );
\read_bresp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => read_bresp,
      D => \read_bresp[0]_i_1_n_0\,
      Q => \^ila_read_bresp\(0),
      R => m_axi_arvalid_i_1_n_0
    );
\read_bresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => read_bresp,
      D => \read_bresp[1]_i_2_n_0\,
      Q => \^ila_read_bresp\(1),
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_state(1),
      I1 => \read_burst_counter_reg_n_0_[0]\,
      O => \read_burst_counter[0]_i_1_n_0\
    );
\read_burst_counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(10),
      O => \read_burst_counter[10]_i_1_n_0\
    );
\read_burst_counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(11),
      O => \read_burst_counter[11]_i_1_n_0\
    );
\read_burst_counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(12),
      O => \read_burst_counter[12]_i_1_n_0\
    );
\read_burst_counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(13),
      O => \read_burst_counter[13]_i_1_n_0\
    );
\read_burst_counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(14),
      O => \read_burst_counter[14]_i_1_n_0\
    );
\read_burst_counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(15),
      O => \read_burst_counter[15]_i_1_n_0\
    );
\read_burst_counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(16),
      O => \read_burst_counter[16]_i_1_n_0\
    );
\read_burst_counter[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(17),
      O => \read_burst_counter[17]_i_1_n_0\
    );
\read_burst_counter[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(18),
      O => \read_burst_counter[18]_i_1_n_0\
    );
\read_burst_counter[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(19),
      O => \read_burst_counter[19]_i_1_n_0\
    );
\read_burst_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(1),
      O => \read_burst_counter[1]_i_1_n_0\
    );
\read_burst_counter[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(20),
      O => \read_burst_counter[20]_i_1_n_0\
    );
\read_burst_counter[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(21),
      O => \read_burst_counter[21]_i_1_n_0\
    );
\read_burst_counter[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(22),
      O => \read_burst_counter[22]_i_1_n_0\
    );
\read_burst_counter[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(23),
      O => \read_burst_counter[23]_i_1_n_0\
    );
\read_burst_counter[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(24),
      O => \read_burst_counter[24]_i_1_n_0\
    );
\read_burst_counter[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(25),
      O => \read_burst_counter[25]_i_1_n_0\
    );
\read_burst_counter[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(26),
      O => \read_burst_counter[26]_i_1_n_0\
    );
\read_burst_counter[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(27),
      O => \read_burst_counter[27]_i_1_n_0\
    );
\read_burst_counter[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(28),
      O => \read_burst_counter[28]_i_1_n_0\
    );
\read_burst_counter[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(29),
      O => \read_burst_counter[29]_i_1_n_0\
    );
\read_burst_counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(2),
      O => \read_burst_counter[2]_i_1_n_0\
    );
\read_burst_counter[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(30),
      O => \read_burst_counter[30]_i_1_n_0\
    );
\read_burst_counter[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800000000000FF"
    )
        port map (
      I0 => m_axi_rlast,
      I1 => m_axis_tx_tready,
      I2 => m_axi_rvalid,
      I3 => read_state(2),
      I4 => read_state(1),
      I5 => read_state(0),
      O => read_burst_counter
    );
\read_burst_counter[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(31),
      O => \read_burst_counter[31]_i_2_n_0\
    );
\read_burst_counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(3),
      O => \read_burst_counter[3]_i_1_n_0\
    );
\read_burst_counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(4),
      O => \read_burst_counter[4]_i_1_n_0\
    );
\read_burst_counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(5),
      O => \read_burst_counter[5]_i_1_n_0\
    );
\read_burst_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(6),
      O => \read_burst_counter[6]_i_1_n_0\
    );
\read_burst_counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(7),
      O => \read_burst_counter[7]_i_1_n_0\
    );
\read_burst_counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(8),
      O => \read_burst_counter[8]_i_1_n_0\
    );
\read_burst_counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in10(9),
      O => \read_burst_counter[9]_i_1_n_0\
    );
\read_burst_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[0]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[0]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[10]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[10]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[11]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[11]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[12]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[12]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[13]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[13]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[14]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[14]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[15]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[15]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[16]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[16]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \read_burst_counter_reg[8]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \read_burst_counter_reg[16]_i_2_n_0\,
      CO(6) => \read_burst_counter_reg[16]_i_2_n_1\,
      CO(5) => \read_burst_counter_reg[16]_i_2_n_2\,
      CO(4) => \read_burst_counter_reg[16]_i_2_n_3\,
      CO(3) => \read_burst_counter_reg[16]_i_2_n_4\,
      CO(2) => \read_burst_counter_reg[16]_i_2_n_5\,
      CO(1) => \read_burst_counter_reg[16]_i_2_n_6\,
      CO(0) => \read_burst_counter_reg[16]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in10(16 downto 9),
      S(7) => \read_burst_counter_reg_n_0_[16]\,
      S(6) => \read_burst_counter_reg_n_0_[15]\,
      S(5) => \read_burst_counter_reg_n_0_[14]\,
      S(4) => \read_burst_counter_reg_n_0_[13]\,
      S(3) => \read_burst_counter_reg_n_0_[12]\,
      S(2) => \read_burst_counter_reg_n_0_[11]\,
      S(1) => \read_burst_counter_reg_n_0_[10]\,
      S(0) => \read_burst_counter_reg_n_0_[9]\
    );
\read_burst_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[17]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[17]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[18]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[18]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[19]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[19]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[1]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[1]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[20]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[20]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[21]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[21]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[22]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[22]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[23]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[23]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[24]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[24]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[24]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \read_burst_counter_reg[16]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \read_burst_counter_reg[24]_i_2_n_0\,
      CO(6) => \read_burst_counter_reg[24]_i_2_n_1\,
      CO(5) => \read_burst_counter_reg[24]_i_2_n_2\,
      CO(4) => \read_burst_counter_reg[24]_i_2_n_3\,
      CO(3) => \read_burst_counter_reg[24]_i_2_n_4\,
      CO(2) => \read_burst_counter_reg[24]_i_2_n_5\,
      CO(1) => \read_burst_counter_reg[24]_i_2_n_6\,
      CO(0) => \read_burst_counter_reg[24]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in10(24 downto 17),
      S(7) => \read_burst_counter_reg_n_0_[24]\,
      S(6) => \read_burst_counter_reg_n_0_[23]\,
      S(5) => \read_burst_counter_reg_n_0_[22]\,
      S(4) => \read_burst_counter_reg_n_0_[21]\,
      S(3) => \read_burst_counter_reg_n_0_[20]\,
      S(2) => \read_burst_counter_reg_n_0_[19]\,
      S(1) => \read_burst_counter_reg_n_0_[18]\,
      S(0) => \read_burst_counter_reg_n_0_[17]\
    );
\read_burst_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[25]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[25]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[26]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[26]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[27]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[27]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[28]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[28]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[29]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[29]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[2]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[2]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[30]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[30]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[31]_i_2_n_0\,
      Q => \read_burst_counter_reg_n_0_[31]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[31]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \read_burst_counter_reg[24]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_read_burst_counter_reg[31]_i_3_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \read_burst_counter_reg[31]_i_3_n_2\,
      CO(4) => \read_burst_counter_reg[31]_i_3_n_3\,
      CO(3) => \read_burst_counter_reg[31]_i_3_n_4\,
      CO(2) => \read_burst_counter_reg[31]_i_3_n_5\,
      CO(1) => \read_burst_counter_reg[31]_i_3_n_6\,
      CO(0) => \read_burst_counter_reg[31]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_read_burst_counter_reg[31]_i_3_O_UNCONNECTED\(7),
      O(6 downto 0) => in10(31 downto 25),
      S(7) => '0',
      S(6) => \read_burst_counter_reg_n_0_[31]\,
      S(5) => \read_burst_counter_reg_n_0_[30]\,
      S(4) => \read_burst_counter_reg_n_0_[29]\,
      S(3) => \read_burst_counter_reg_n_0_[28]\,
      S(2) => \read_burst_counter_reg_n_0_[27]\,
      S(1) => \read_burst_counter_reg_n_0_[26]\,
      S(0) => \read_burst_counter_reg_n_0_[25]\
    );
\read_burst_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[3]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[3]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[4]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[4]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[5]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[5]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[6]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[6]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[7]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[7]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[8]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[8]\,
      R => m_axi_arvalid_i_1_n_0
    );
\read_burst_counter_reg[8]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \read_burst_counter_reg_n_0_[0]\,
      CI_TOP => '0',
      CO(7) => \read_burst_counter_reg[8]_i_2_n_0\,
      CO(6) => \read_burst_counter_reg[8]_i_2_n_1\,
      CO(5) => \read_burst_counter_reg[8]_i_2_n_2\,
      CO(4) => \read_burst_counter_reg[8]_i_2_n_3\,
      CO(3) => \read_burst_counter_reg[8]_i_2_n_4\,
      CO(2) => \read_burst_counter_reg[8]_i_2_n_5\,
      CO(1) => \read_burst_counter_reg[8]_i_2_n_6\,
      CO(0) => \read_burst_counter_reg[8]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in10(8 downto 1),
      S(7) => \read_burst_counter_reg_n_0_[8]\,
      S(6) => \read_burst_counter_reg_n_0_[7]\,
      S(5) => \read_burst_counter_reg_n_0_[6]\,
      S(4) => \read_burst_counter_reg_n_0_[5]\,
      S(3) => \read_burst_counter_reg_n_0_[4]\,
      S(2) => \read_burst_counter_reg_n_0_[3]\,
      S(1) => \read_burst_counter_reg_n_0_[2]\,
      S(0) => \read_burst_counter_reg_n_0_[1]\
    );
\read_burst_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_burst_counter,
      D => \read_burst_counter[9]_i_1_n_0\,
      Q => \read_burst_counter_reg_n_0_[9]\,
      R => m_axi_arvalid_i_1_n_0
    );
read_burst_tick_ack_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => read_ddr_occupation2,
      I1 => \^read_burst_tick_ack_reg_0\,
      I2 => \^read_burst_tick_reg_0\,
      O => read_burst_tick_ack_i_1_n_0
    );
read_burst_tick_ack_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => read_burst_tick_ack_i_1_n_0,
      Q => \^read_burst_tick_ack_reg_0\,
      R => m_axi_arvalid_i_1_n_0
    );
read_burst_tick_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0800000008000"
    )
        port map (
      I0 => \^m_axi_rvalid_0\,
      I1 => m_axi_rlast,
      I2 => read_state(0),
      I3 => read_state(1),
      I4 => read_state(2),
      I5 => \^read_burst_tick_reg_0\,
      O => read_burst_tick_i_1_n_0
    );
read_burst_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => read_burst_tick_i_1_n_0,
      Q => \^read_burst_tick_reg_0\,
      R => m_axi_arvalid_i_1_n_0
    );
read_busy_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => read_state(0),
      I1 => read_state(1),
      I2 => read_state(2),
      O => read_busy
    );
\read_current_burst_address[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(0),
      I1 => read_base_address(0),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[0]_i_1_n_0\
    );
\read_current_burst_address[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(10),
      I1 => read_base_address(10),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[10]_i_1_n_0\
    );
\read_current_burst_address[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(11),
      I1 => read_base_address(11),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[11]_i_1_n_0\
    );
\read_current_burst_address[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(12),
      I1 => read_base_address(12),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[12]_i_1_n_0\
    );
\read_current_burst_address[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(13),
      I1 => read_base_address(13),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[13]_i_1_n_0\
    );
\read_current_burst_address[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(14),
      I1 => read_base_address(14),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[14]_i_1_n_0\
    );
\read_current_burst_address[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(15),
      I1 => read_base_address(15),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[15]_i_1_n_0\
    );
\read_current_burst_address[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(16),
      I1 => read_base_address(16),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[16]_i_1_n_0\
    );
\read_current_burst_address[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(17),
      I1 => read_base_address(17),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[17]_i_1_n_0\
    );
\read_current_burst_address[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(18),
      I1 => read_base_address(18),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[18]_i_1_n_0\
    );
\read_current_burst_address[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(19),
      I1 => read_base_address(19),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[19]_i_1_n_0\
    );
\read_current_burst_address[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(1),
      I1 => read_base_address(1),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[1]_i_1_n_0\
    );
\read_current_burst_address[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(20),
      I1 => read_base_address(20),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[20]_i_1_n_0\
    );
\read_current_burst_address[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(21),
      I1 => read_base_address(21),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[21]_i_1_n_0\
    );
\read_current_burst_address[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(22),
      I1 => read_base_address(22),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[22]_i_1_n_0\
    );
\read_current_burst_address[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(23),
      I1 => read_base_address(23),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[23]_i_1_n_0\
    );
\read_current_burst_address[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(24),
      I1 => read_base_address(24),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[24]_i_1_n_0\
    );
\read_current_burst_address[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(25),
      I1 => read_base_address(25),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[25]_i_1_n_0\
    );
\read_current_burst_address[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(26),
      I1 => read_base_address(26),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[26]_i_1_n_0\
    );
\read_current_burst_address[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(27),
      I1 => read_base_address(27),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[27]_i_1_n_0\
    );
\read_current_burst_address[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(28),
      I1 => read_base_address(28),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[28]_i_1_n_0\
    );
\read_current_burst_address[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(29),
      I1 => read_base_address(29),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[29]_i_1_n_0\
    );
\read_current_burst_address[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(2),
      I1 => read_base_address(2),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[2]_i_1_n_0\
    );
\read_current_burst_address[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(30),
      I1 => read_base_address(30),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[30]_i_1_n_0\
    );
\read_current_burst_address[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555555F777"
    )
        port map (
      I0 => aresetn,
      I1 => read_state(0),
      I2 => tx_fifo_has_space,
      I3 => \^read_ddr_occupation_reg[30]_0\(0),
      I4 => read_state(1),
      I5 => read_state(2),
      O => \read_current_burst_address[31]_i_1_n_0\
    );
\read_current_burst_address[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(31),
      I1 => read_base_address(31),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[31]_i_2_n_0\
    );
\read_current_burst_address[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(3),
      I1 => read_base_address(3),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[3]_i_1_n_0\
    );
\read_current_burst_address[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(4),
      I1 => read_base_address(4),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[4]_i_1_n_0\
    );
\read_current_burst_address[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(5),
      I1 => read_base_address(5),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[5]_i_1_n_0\
    );
\read_current_burst_address[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(6),
      I1 => read_base_address(6),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[6]_i_1_n_0\
    );
\read_current_burst_address[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(7),
      I1 => read_base_address(7),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[7]_i_1_n_0\
    );
\read_current_burst_address[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(8),
      I1 => read_base_address(8),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[8]_i_1_n_0\
    );
\read_current_burst_address[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_araddr\(9),
      I1 => read_base_address(9),
      I2 => read_state(0),
      I3 => read_state(2),
      I4 => aresetn,
      O => \read_current_burst_address[9]_i_1_n_0\
    );
\read_current_burst_address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[0]_i_1_n_0\,
      Q => read_current_burst_address(0),
      R => '0'
    );
\read_current_burst_address_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[10]_i_1_n_0\,
      Q => read_current_burst_address(10),
      R => '0'
    );
\read_current_burst_address_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[11]_i_1_n_0\,
      Q => read_current_burst_address(11),
      R => '0'
    );
\read_current_burst_address_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[12]_i_1_n_0\,
      Q => read_current_burst_address(12),
      R => '0'
    );
\read_current_burst_address_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[13]_i_1_n_0\,
      Q => read_current_burst_address(13),
      R => '0'
    );
\read_current_burst_address_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[14]_i_1_n_0\,
      Q => read_current_burst_address(14),
      R => '0'
    );
\read_current_burst_address_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[15]_i_1_n_0\,
      Q => read_current_burst_address(15),
      R => '0'
    );
\read_current_burst_address_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[16]_i_1_n_0\,
      Q => read_current_burst_address(16),
      R => '0'
    );
\read_current_burst_address_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[17]_i_1_n_0\,
      Q => read_current_burst_address(17),
      R => '0'
    );
\read_current_burst_address_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[18]_i_1_n_0\,
      Q => read_current_burst_address(18),
      R => '0'
    );
\read_current_burst_address_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[19]_i_1_n_0\,
      Q => read_current_burst_address(19),
      R => '0'
    );
\read_current_burst_address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[1]_i_1_n_0\,
      Q => read_current_burst_address(1),
      R => '0'
    );
\read_current_burst_address_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[20]_i_1_n_0\,
      Q => read_current_burst_address(20),
      R => '0'
    );
\read_current_burst_address_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[21]_i_1_n_0\,
      Q => read_current_burst_address(21),
      R => '0'
    );
\read_current_burst_address_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[22]_i_1_n_0\,
      Q => read_current_burst_address(22),
      R => '0'
    );
\read_current_burst_address_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[23]_i_1_n_0\,
      Q => read_current_burst_address(23),
      R => '0'
    );
\read_current_burst_address_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[24]_i_1_n_0\,
      Q => read_current_burst_address(24),
      R => '0'
    );
\read_current_burst_address_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[25]_i_1_n_0\,
      Q => read_current_burst_address(25),
      R => '0'
    );
\read_current_burst_address_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[26]_i_1_n_0\,
      Q => read_current_burst_address(26),
      R => '0'
    );
\read_current_burst_address_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[27]_i_1_n_0\,
      Q => read_current_burst_address(27),
      R => '0'
    );
\read_current_burst_address_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[28]_i_1_n_0\,
      Q => read_current_burst_address(28),
      R => '0'
    );
\read_current_burst_address_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[29]_i_1_n_0\,
      Q => read_current_burst_address(29),
      R => '0'
    );
\read_current_burst_address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[2]_i_1_n_0\,
      Q => read_current_burst_address(2),
      R => '0'
    );
\read_current_burst_address_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[30]_i_1_n_0\,
      Q => read_current_burst_address(30),
      R => '0'
    );
\read_current_burst_address_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[31]_i_2_n_0\,
      Q => read_current_burst_address(31),
      R => '0'
    );
\read_current_burst_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[3]_i_1_n_0\,
      Q => read_current_burst_address(3),
      R => '0'
    );
\read_current_burst_address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[4]_i_1_n_0\,
      Q => read_current_burst_address(4),
      R => '0'
    );
\read_current_burst_address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[5]_i_1_n_0\,
      Q => read_current_burst_address(5),
      R => '0'
    );
\read_current_burst_address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[6]_i_1_n_0\,
      Q => read_current_burst_address(6),
      R => '0'
    );
\read_current_burst_address_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[7]_i_1_n_0\,
      Q => read_current_burst_address(7),
      R => '0'
    );
\read_current_burst_address_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[8]_i_1_n_0\,
      Q => read_current_burst_address(8),
      R => '0'
    );
\read_current_burst_address_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_current_burst_address[31]_i_1_n_0\,
      D => \read_current_burst_address[9]_i_1_n_0\,
      Q => read_current_burst_address(9),
      R => '0'
    );
read_ddr_full_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => read_ddr_full_carry_n_0,
      CO(6) => read_ddr_full_carry_n_1,
      CO(5) => read_ddr_full_carry_n_2,
      CO(4) => read_ddr_full_carry_n_3,
      CO(3) => read_ddr_full_carry_n_4,
      CO(2) => read_ddr_full_carry_n_5,
      CO(1) => read_ddr_full_carry_n_6,
      CO(0) => read_ddr_full_carry_n_7,
      DI(7) => read_ddr_full_carry_i_1_n_0,
      DI(6) => read_ddr_full_carry_i_2_n_0,
      DI(5) => read_ddr_full_carry_i_3_n_0,
      DI(4) => read_ddr_full_carry_i_4_n_0,
      DI(3) => read_ddr_full_carry_i_5_n_0,
      DI(2) => read_ddr_full_carry_i_6_n_0,
      DI(1) => read_ddr_full_carry_i_7_n_0,
      DI(0) => read_ddr_full_carry_i_8_n_0,
      O(7 downto 0) => NLW_read_ddr_full_carry_O_UNCONNECTED(7 downto 0),
      S(7) => read_ddr_full_carry_i_9_n_0,
      S(6) => read_ddr_full_carry_i_10_n_0,
      S(5) => read_ddr_full_carry_i_11_n_0,
      S(4) => read_ddr_full_carry_i_12_n_0,
      S(3) => read_ddr_full_carry_i_13_n_0,
      S(2) => read_ddr_full_carry_i_14_n_0,
      S(1) => read_ddr_full_carry_i_15_n_0,
      S(0) => read_ddr_full_carry_i_16_n_0
    );
\read_ddr_full_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => read_ddr_full_carry_n_0,
      CI_TOP => '0',
      CO(7) => ila_read_ddr_full,
      CO(6) => \read_ddr_full_carry__0_n_1\,
      CO(5) => \read_ddr_full_carry__0_n_2\,
      CO(4) => \read_ddr_full_carry__0_n_3\,
      CO(3) => \read_ddr_full_carry__0_n_4\,
      CO(2) => \read_ddr_full_carry__0_n_5\,
      CO(1) => \read_ddr_full_carry__0_n_6\,
      CO(0) => \read_ddr_full_carry__0_n_7\,
      DI(7) => \read_ddr_full_carry__0_i_1_n_0\,
      DI(6) => \read_ddr_full_carry__0_i_2_n_0\,
      DI(5) => \read_ddr_full_carry__0_i_3_n_0\,
      DI(4) => \read_ddr_full_carry__0_i_4_n_0\,
      DI(3) => \read_ddr_full_carry__0_i_5_n_0\,
      DI(2) => \read_ddr_full_carry__0_i_6_n_0\,
      DI(1) => \read_ddr_full_carry__0_i_7_n_0\,
      DI(0) => \read_ddr_full_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_read_ddr_full_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \read_ddr_full_carry__0_i_9_n_0\,
      S(6) => \read_ddr_full_carry__0_i_10_n_0\,
      S(5) => \read_ddr_full_carry__0_i_11_n_0\,
      S(4) => \read_ddr_full_carry__0_i_12_n_0\,
      S(3) => \read_ddr_full_carry__0_i_13_n_0\,
      S(2) => \read_ddr_full_carry__0_i_14_n_0\,
      S(1) => \read_ddr_full_carry__0_i_15_n_0\,
      S(0) => \read_ddr_full_carry__0_i_16_n_0\
    );
\read_ddr_full_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(31),
      I1 => read_ddr_size(31),
      I2 => \^q\(30),
      I3 => read_ddr_size(30),
      O => \read_ddr_full_carry__0_i_1_n_0\
    );
\read_ddr_full_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(29),
      I1 => \^q\(29),
      I2 => read_ddr_size(28),
      I3 => \^q\(28),
      O => \read_ddr_full_carry__0_i_10_n_0\
    );
\read_ddr_full_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(27),
      I1 => \^q\(27),
      I2 => read_ddr_size(26),
      I3 => \^q\(26),
      O => \read_ddr_full_carry__0_i_11_n_0\
    );
\read_ddr_full_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(25),
      I1 => \^q\(25),
      I2 => read_ddr_size(24),
      I3 => \^q\(24),
      O => \read_ddr_full_carry__0_i_12_n_0\
    );
\read_ddr_full_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(23),
      I1 => \^q\(23),
      I2 => read_ddr_size(22),
      I3 => \^q\(22),
      O => \read_ddr_full_carry__0_i_13_n_0\
    );
\read_ddr_full_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(21),
      I1 => \^q\(21),
      I2 => read_ddr_size(20),
      I3 => \^q\(20),
      O => \read_ddr_full_carry__0_i_14_n_0\
    );
\read_ddr_full_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(19),
      I1 => \^q\(19),
      I2 => read_ddr_size(18),
      I3 => \^q\(18),
      O => \read_ddr_full_carry__0_i_15_n_0\
    );
\read_ddr_full_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(17),
      I1 => \^q\(17),
      I2 => read_ddr_size(16),
      I3 => \^q\(16),
      O => \read_ddr_full_carry__0_i_16_n_0\
    );
\read_ddr_full_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(29),
      I1 => read_ddr_size(29),
      I2 => \^q\(28),
      I3 => read_ddr_size(28),
      O => \read_ddr_full_carry__0_i_2_n_0\
    );
\read_ddr_full_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(27),
      I1 => read_ddr_size(27),
      I2 => \^q\(26),
      I3 => read_ddr_size(26),
      O => \read_ddr_full_carry__0_i_3_n_0\
    );
\read_ddr_full_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(25),
      I1 => read_ddr_size(25),
      I2 => \^q\(24),
      I3 => read_ddr_size(24),
      O => \read_ddr_full_carry__0_i_4_n_0\
    );
\read_ddr_full_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(23),
      I1 => read_ddr_size(23),
      I2 => \^q\(22),
      I3 => read_ddr_size(22),
      O => \read_ddr_full_carry__0_i_5_n_0\
    );
\read_ddr_full_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(21),
      I1 => read_ddr_size(21),
      I2 => \^q\(20),
      I3 => read_ddr_size(20),
      O => \read_ddr_full_carry__0_i_6_n_0\
    );
\read_ddr_full_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(19),
      I1 => read_ddr_size(19),
      I2 => \^q\(18),
      I3 => read_ddr_size(18),
      O => \read_ddr_full_carry__0_i_7_n_0\
    );
\read_ddr_full_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(17),
      I1 => read_ddr_size(17),
      I2 => \^q\(16),
      I3 => read_ddr_size(16),
      O => \read_ddr_full_carry__0_i_8_n_0\
    );
\read_ddr_full_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(31),
      I1 => \^q\(31),
      I2 => read_ddr_size(30),
      I3 => \^q\(30),
      O => \read_ddr_full_carry__0_i_9_n_0\
    );
read_ddr_full_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(15),
      I1 => read_ddr_size(15),
      I2 => \^q\(14),
      I3 => read_ddr_size(14),
      O => read_ddr_full_carry_i_1_n_0
    );
read_ddr_full_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(13),
      I1 => \^q\(13),
      I2 => read_ddr_size(12),
      I3 => \^q\(12),
      O => read_ddr_full_carry_i_10_n_0
    );
read_ddr_full_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(11),
      I1 => \^q\(11),
      I2 => read_ddr_size(10),
      I3 => \^q\(10),
      O => read_ddr_full_carry_i_11_n_0
    );
read_ddr_full_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(9),
      I1 => \^q\(9),
      I2 => read_ddr_size(8),
      I3 => \^q\(8),
      O => read_ddr_full_carry_i_12_n_0
    );
read_ddr_full_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(7),
      I1 => \^q\(7),
      I2 => read_ddr_size(6),
      I3 => \^q\(6),
      O => read_ddr_full_carry_i_13_n_0
    );
read_ddr_full_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(5),
      I1 => \^q\(5),
      I2 => read_ddr_size(4),
      I3 => \^q\(4),
      O => read_ddr_full_carry_i_14_n_0
    );
read_ddr_full_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(3),
      I1 => \^q\(3),
      I2 => read_ddr_size(2),
      I3 => \^q\(2),
      O => read_ddr_full_carry_i_15_n_0
    );
read_ddr_full_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(1),
      I1 => \^q\(1),
      I2 => read_ddr_size(0),
      I3 => \^q\(0),
      O => read_ddr_full_carry_i_16_n_0
    );
read_ddr_full_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(13),
      I1 => read_ddr_size(13),
      I2 => \^q\(12),
      I3 => read_ddr_size(12),
      O => read_ddr_full_carry_i_2_n_0
    );
read_ddr_full_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(11),
      I1 => read_ddr_size(11),
      I2 => \^q\(10),
      I3 => read_ddr_size(10),
      O => read_ddr_full_carry_i_3_n_0
    );
read_ddr_full_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(9),
      I1 => read_ddr_size(9),
      I2 => \^q\(8),
      I3 => read_ddr_size(8),
      O => read_ddr_full_carry_i_4_n_0
    );
read_ddr_full_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(7),
      I1 => read_ddr_size(7),
      I2 => \^q\(6),
      I3 => read_ddr_size(6),
      O => read_ddr_full_carry_i_5_n_0
    );
read_ddr_full_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(5),
      I1 => read_ddr_size(5),
      I2 => \^q\(4),
      I3 => read_ddr_size(4),
      O => read_ddr_full_carry_i_6_n_0
    );
read_ddr_full_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(3),
      I1 => read_ddr_size(3),
      I2 => \^q\(2),
      I3 => read_ddr_size(2),
      O => read_ddr_full_carry_i_7_n_0
    );
read_ddr_full_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(1),
      I1 => read_ddr_size(1),
      I2 => \^q\(0),
      I3 => read_ddr_size(0),
      O => read_ddr_full_carry_i_8_n_0
    );
read_ddr_full_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => read_ddr_size(15),
      I1 => \^q\(15),
      I2 => read_ddr_size(14),
      I3 => \^q\(14),
      O => read_ddr_full_carry_i_9_n_0
    );
\read_ddr_occupation0_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => \^q\(0),
      CI_TOP => '0',
      CO(7) => \read_ddr_occupation0_inferred__0/i__carry_n_0\,
      CO(6) => \read_ddr_occupation0_inferred__0/i__carry_n_1\,
      CO(5) => \read_ddr_occupation0_inferred__0/i__carry_n_2\,
      CO(4) => \read_ddr_occupation0_inferred__0/i__carry_n_3\,
      CO(3) => \read_ddr_occupation0_inferred__0/i__carry_n_4\,
      CO(2) => \read_ddr_occupation0_inferred__0/i__carry_n_5\,
      CO(1) => \read_ddr_occupation0_inferred__0/i__carry_n_6\,
      CO(0) => \read_ddr_occupation0_inferred__0/i__carry_n_7\,
      DI(7 downto 1) => \^q\(7 downto 1),
      DI(0) => read_ddr_occupation114_out,
      O(7 downto 0) => read_ddr_occupation(7 downto 0),
      S(7) => \i__carry_i_2__0_n_0\,
      S(6) => \i__carry_i_3__0_n_0\,
      S(5) => \i__carry_i_4__0_n_0\,
      S(4) => \i__carry_i_5__0_n_0\,
      S(3) => \i__carry_i_6__0_n_0\,
      S(2) => \i__carry_i_7__0_n_0\,
      S(1) => \i__carry_i_8__0_n_0\,
      S(0) => \i__carry_i_9__0_n_0\
    );
\read_ddr_occupation0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \read_ddr_occupation0_inferred__0/i__carry_n_0\,
      CI_TOP => '0',
      CO(7) => \read_ddr_occupation0_inferred__0/i__carry__0_n_0\,
      CO(6) => \read_ddr_occupation0_inferred__0/i__carry__0_n_1\,
      CO(5) => \read_ddr_occupation0_inferred__0/i__carry__0_n_2\,
      CO(4) => \read_ddr_occupation0_inferred__0/i__carry__0_n_3\,
      CO(3) => \read_ddr_occupation0_inferred__0/i__carry__0_n_4\,
      CO(2) => \read_ddr_occupation0_inferred__0/i__carry__0_n_5\,
      CO(1) => \read_ddr_occupation0_inferred__0/i__carry__0_n_6\,
      CO(0) => \read_ddr_occupation0_inferred__0/i__carry__0_n_7\,
      DI(7 downto 0) => \^q\(15 downto 8),
      O(7 downto 0) => read_ddr_occupation(15 downto 8),
      S(7) => \i__carry__0_i_1__0_n_0\,
      S(6) => \i__carry__0_i_2__0_n_0\,
      S(5) => \i__carry__0_i_3__0_n_0\,
      S(4) => \i__carry__0_i_4__0_n_0\,
      S(3) => \i__carry__0_i_5__0_n_0\,
      S(2) => \i__carry__0_i_6__0_n_0\,
      S(1) => \i__carry__0_i_7__0_n_0\,
      S(0) => \i__carry__0_i_8__0_n_0\
    );
\read_ddr_occupation0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \read_ddr_occupation0_inferred__0/i__carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \read_ddr_occupation0_inferred__0/i__carry__1_n_0\,
      CO(6) => \read_ddr_occupation0_inferred__0/i__carry__1_n_1\,
      CO(5) => \read_ddr_occupation0_inferred__0/i__carry__1_n_2\,
      CO(4) => \read_ddr_occupation0_inferred__0/i__carry__1_n_3\,
      CO(3) => \read_ddr_occupation0_inferred__0/i__carry__1_n_4\,
      CO(2) => \read_ddr_occupation0_inferred__0/i__carry__1_n_5\,
      CO(1) => \read_ddr_occupation0_inferred__0/i__carry__1_n_6\,
      CO(0) => \read_ddr_occupation0_inferred__0/i__carry__1_n_7\,
      DI(7 downto 2) => \^q\(22 downto 17),
      DI(1) => \i__carry__1_i_1__0_n_0\,
      DI(0) => \^q\(16),
      O(7 downto 0) => read_ddr_occupation(23 downto 16),
      S(7) => \i__carry__1_i_2__0_n_0\,
      S(6) => \i__carry__1_i_3__0_n_0\,
      S(5) => \i__carry__1_i_4__0_n_0\,
      S(4) => \i__carry__1_i_5__0_n_0\,
      S(3) => \i__carry__1_i_6__0_n_0\,
      S(2) => \i__carry__1_i_7__0_n_0\,
      S(1) => \i__carry__1_i_8_n_0\,
      S(0) => \i__carry__1_i_9_n_0\
    );
\read_ddr_occupation0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \read_ddr_occupation0_inferred__0/i__carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_read_ddr_occupation0_inferred__0/i__carry__2_CO_UNCONNECTED\(7),
      CO(6) => \read_ddr_occupation0_inferred__0/i__carry__2_n_1\,
      CO(5) => \read_ddr_occupation0_inferred__0/i__carry__2_n_2\,
      CO(4) => \read_ddr_occupation0_inferred__0/i__carry__2_n_3\,
      CO(3) => \read_ddr_occupation0_inferred__0/i__carry__2_n_4\,
      CO(2) => \read_ddr_occupation0_inferred__0/i__carry__2_n_5\,
      CO(1) => \read_ddr_occupation0_inferred__0/i__carry__2_n_6\,
      CO(0) => \read_ddr_occupation0_inferred__0/i__carry__2_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => \^q\(29 downto 23),
      O(7 downto 0) => read_ddr_occupation(31 downto 24),
      S(7) => \i__carry__2_i_1_n_0\,
      S(6) => \i__carry__2_i_2__0_n_0\,
      S(5) => \i__carry__2_i_3__0_n_0\,
      S(4) => \i__carry__2_i_4__0_n_0\,
      S(3) => \i__carry__2_i_5__0_n_0\,
      S(2) => \i__carry__2_i_6__0_n_0\,
      S(1) => \i__carry__2_i_7__0_n_0\,
      S(0) => \i__carry__2_i_8__0_n_0\
    );
\read_ddr_occupation[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4400F400"
    )
        port map (
      I0 => \^ila_read_access_tick_ack\,
      I1 => read_access_tick,
      I2 => read_ddr_occupation2,
      I3 => \^read_burst_tick_reg_0\,
      I4 => \^read_burst_tick_ack_reg_0\,
      O => \read_ddr_occupation[31]_i_1_n_0\
    );
\read_ddr_occupation[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^q\(19),
      O => \read_ddr_occupation[31]_i_10_n_0\
    );
\read_ddr_occupation[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(16),
      I1 => \^q\(17),
      O => \read_ddr_occupation[31]_i_11_n_0\
    );
\read_ddr_occupation[31]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(30),
      O => \read_ddr_occupation[31]_i_12_n_0\
    );
\read_ddr_occupation[31]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(28),
      O => \read_ddr_occupation[31]_i_13_n_0\
    );
\read_ddr_occupation[31]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^q\(26),
      O => \read_ddr_occupation[31]_i_14_n_0\
    );
\read_ddr_occupation[31]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(25),
      I1 => \^q\(24),
      O => \read_ddr_occupation[31]_i_15_n_0\
    );
\read_ddr_occupation[31]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(23),
      I1 => \^q\(22),
      O => \read_ddr_occupation[31]_i_16_n_0\
    );
\read_ddr_occupation[31]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(20),
      O => \read_ddr_occupation[31]_i_17_n_0\
    );
\read_ddr_occupation[31]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(19),
      I1 => \^q\(18),
      O => \read_ddr_occupation[31]_i_18_n_0\
    );
\read_ddr_occupation[31]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^q\(16),
      O => \read_ddr_occupation[31]_i_19_n_0\
    );
\read_ddr_occupation[31]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^q\(15),
      O => \read_ddr_occupation[31]_i_20_n_0\
    );
\read_ddr_occupation[31]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => read_burst_len(8),
      I1 => \^q\(12),
      I2 => \^q\(13),
      O => \read_ddr_occupation[31]_i_21_n_0\
    );
\read_ddr_occupation[31]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(11),
      I1 => read_burst_len(7),
      I2 => \^q\(10),
      I3 => read_burst_len(6),
      O => \read_ddr_occupation[31]_i_22_n_0\
    );
\read_ddr_occupation[31]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(9),
      I1 => read_burst_len(5),
      I2 => \^q\(8),
      I3 => read_burst_len(4),
      O => \read_ddr_occupation[31]_i_23_n_0\
    );
\read_ddr_occupation[31]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(7),
      I1 => read_burst_len(3),
      I2 => \^q\(6),
      I3 => read_burst_len(2),
      O => \read_ddr_occupation[31]_i_24_n_0\
    );
\read_ddr_occupation[31]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"50D4"
    )
        port map (
      I0 => read_burst_len(1),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => read_burst_len(0),
      O => \read_ddr_occupation[31]_i_25_n_0\
    );
\read_ddr_occupation[31]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \read_ddr_occupation[31]_i_26_n_0\
    );
\read_ddr_occupation[31]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \read_ddr_occupation[31]_i_27_n_0\
    );
\read_ddr_occupation[31]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^q\(14),
      O => \read_ddr_occupation[31]_i_28_n_0\
    );
\read_ddr_occupation[31]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => read_burst_len(8),
      I1 => \^q\(12),
      I2 => \^q\(13),
      O => \read_ddr_occupation[31]_i_29_n_0\
    );
\read_ddr_occupation[31]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(10),
      I1 => read_burst_len(6),
      I2 => read_burst_len(7),
      I3 => \^q\(11),
      O => \read_ddr_occupation[31]_i_30_n_0\
    );
\read_ddr_occupation[31]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(8),
      I1 => read_burst_len(4),
      I2 => read_burst_len(5),
      I3 => \^q\(9),
      O => \read_ddr_occupation[31]_i_31_n_0\
    );
\read_ddr_occupation[31]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(6),
      I1 => read_burst_len(2),
      I2 => read_burst_len(3),
      I3 => \^q\(7),
      O => \read_ddr_occupation[31]_i_32_n_0\
    );
\read_ddr_occupation[31]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(4),
      I1 => read_burst_len(0),
      I2 => \^q\(5),
      I3 => read_burst_len(1),
      O => \read_ddr_occupation[31]_i_33_n_0\
    );
\read_ddr_occupation[31]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      O => \read_ddr_occupation[31]_i_34_n_0\
    );
\read_ddr_occupation[31]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \read_ddr_occupation[31]_i_35_n_0\
    );
\read_ddr_occupation[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(30),
      I1 => \^q\(31),
      O => \read_ddr_occupation[31]_i_4_n_0\
    );
\read_ddr_occupation[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(28),
      I1 => \^q\(29),
      O => \read_ddr_occupation[31]_i_5_n_0\
    );
\read_ddr_occupation[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(26),
      I1 => \^q\(27),
      O => \read_ddr_occupation[31]_i_6_n_0\
    );
\read_ddr_occupation[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(24),
      I1 => \^q\(25),
      O => \read_ddr_occupation[31]_i_7_n_0\
    );
\read_ddr_occupation[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(22),
      I1 => \^q\(23),
      O => \read_ddr_occupation[31]_i_8_n_0\
    );
\read_ddr_occupation[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(20),
      I1 => \^q\(21),
      O => \read_ddr_occupation[31]_i_9_n_0\
    );
\read_ddr_occupation_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(0),
      Q => \^q\(0),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(10),
      Q => \^q\(10),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(11),
      Q => \^q\(11),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(12),
      Q => \^q\(12),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(13),
      Q => \^q\(13),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(14),
      Q => \^q\(14),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(15),
      Q => \^q\(15),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(16),
      Q => \^q\(16),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(17),
      Q => \^q\(17),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(18),
      Q => \^q\(18),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(19),
      Q => \^q\(19),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(1),
      Q => \^q\(1),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(20),
      Q => \^q\(20),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(21),
      Q => \^q\(21),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(22),
      Q => \^q\(22),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(23),
      Q => \^q\(23),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(24),
      Q => \^q\(24),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(25),
      Q => \^q\(25),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(26),
      Q => \^q\(26),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(27),
      Q => \^q\(27),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(28),
      Q => \^q\(28),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(29),
      Q => \^q\(29),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(2),
      Q => \^q\(2),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(30),
      Q => \^q\(30),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(31),
      Q => \^q\(31),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[31]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \read_ddr_occupation_reg[31]_i_3_n_0\,
      CI_TOP => '0',
      CO(7) => read_ddr_occupation2,
      CO(6) => \read_ddr_occupation_reg[31]_i_2_n_1\,
      CO(5) => \read_ddr_occupation_reg[31]_i_2_n_2\,
      CO(4) => \read_ddr_occupation_reg[31]_i_2_n_3\,
      CO(3) => \read_ddr_occupation_reg[31]_i_2_n_4\,
      CO(2) => \read_ddr_occupation_reg[31]_i_2_n_5\,
      CO(1) => \read_ddr_occupation_reg[31]_i_2_n_6\,
      CO(0) => \read_ddr_occupation_reg[31]_i_2_n_7\,
      DI(7) => \read_ddr_occupation[31]_i_4_n_0\,
      DI(6) => \read_ddr_occupation[31]_i_5_n_0\,
      DI(5) => \read_ddr_occupation[31]_i_6_n_0\,
      DI(4) => \read_ddr_occupation[31]_i_7_n_0\,
      DI(3) => \read_ddr_occupation[31]_i_8_n_0\,
      DI(2) => \read_ddr_occupation[31]_i_9_n_0\,
      DI(1) => \read_ddr_occupation[31]_i_10_n_0\,
      DI(0) => \read_ddr_occupation[31]_i_11_n_0\,
      O(7 downto 0) => \NLW_read_ddr_occupation_reg[31]_i_2_O_UNCONNECTED\(7 downto 0),
      S(7) => \read_ddr_occupation[31]_i_12_n_0\,
      S(6) => \read_ddr_occupation[31]_i_13_n_0\,
      S(5) => \read_ddr_occupation[31]_i_14_n_0\,
      S(4) => \read_ddr_occupation[31]_i_15_n_0\,
      S(3) => \read_ddr_occupation[31]_i_16_n_0\,
      S(2) => \read_ddr_occupation[31]_i_17_n_0\,
      S(1) => \read_ddr_occupation[31]_i_18_n_0\,
      S(0) => \read_ddr_occupation[31]_i_19_n_0\
    );
\read_ddr_occupation_reg[31]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \read_ddr_occupation_reg[31]_i_3_n_0\,
      CO(6) => \read_ddr_occupation_reg[31]_i_3_n_1\,
      CO(5) => \read_ddr_occupation_reg[31]_i_3_n_2\,
      CO(4) => \read_ddr_occupation_reg[31]_i_3_n_3\,
      CO(3) => \read_ddr_occupation_reg[31]_i_3_n_4\,
      CO(2) => \read_ddr_occupation_reg[31]_i_3_n_5\,
      CO(1) => \read_ddr_occupation_reg[31]_i_3_n_6\,
      CO(0) => \read_ddr_occupation_reg[31]_i_3_n_7\,
      DI(7) => \read_ddr_occupation[31]_i_20_n_0\,
      DI(6) => \read_ddr_occupation[31]_i_21_n_0\,
      DI(5) => \read_ddr_occupation[31]_i_22_n_0\,
      DI(4) => \read_ddr_occupation[31]_i_23_n_0\,
      DI(3) => \read_ddr_occupation[31]_i_24_n_0\,
      DI(2) => \read_ddr_occupation[31]_i_25_n_0\,
      DI(1) => \read_ddr_occupation[31]_i_26_n_0\,
      DI(0) => \read_ddr_occupation[31]_i_27_n_0\,
      O(7 downto 0) => \NLW_read_ddr_occupation_reg[31]_i_3_O_UNCONNECTED\(7 downto 0),
      S(7) => \read_ddr_occupation[31]_i_28_n_0\,
      S(6) => \read_ddr_occupation[31]_i_29_n_0\,
      S(5) => \read_ddr_occupation[31]_i_30_n_0\,
      S(4) => \read_ddr_occupation[31]_i_31_n_0\,
      S(3) => \read_ddr_occupation[31]_i_32_n_0\,
      S(2) => \read_ddr_occupation[31]_i_33_n_0\,
      S(1) => \read_ddr_occupation[31]_i_34_n_0\,
      S(0) => \read_ddr_occupation[31]_i_35_n_0\
    );
\read_ddr_occupation_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(3),
      Q => \^q\(3),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(4),
      Q => \^q\(4),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(5),
      Q => \^q\(5),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(6),
      Q => \^q\(6),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(7),
      Q => \^q\(7),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(8),
      Q => \^q\(8),
      R => m_axi_arvalid_i_1_n_0
    );
\read_ddr_occupation_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \read_ddr_occupation[31]_i_1_n_0\,
      D => read_ddr_occupation(9),
      Q => \^q\(9),
      R => m_axi_arvalid_i_1_n_0
    );
read_index1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 5) => NLW_read_index1_carry_CO_UNCONNECTED(7 downto 5),
      CO(4) => read_index1,
      CO(3) => read_index1_carry_n_4,
      CO(2) => read_index1_carry_n_5,
      CO(1) => read_index1_carry_n_6,
      CO(0) => read_index1_carry_n_7,
      DI(7 downto 4) => B"0000",
      DI(3) => read_index1_carry_i_1_n_0,
      DI(2) => read_index1_carry_i_2_n_0,
      DI(1) => read_index1_carry_i_3_n_0,
      DI(0) => read_index1_carry_i_4_n_0,
      O(7 downto 0) => NLW_read_index1_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 5) => B"000",
      S(4) => read_index1_carry_i_5_n_0,
      S(3) => read_index1_carry_i_6_n_0,
      S(2) => read_index1_carry_i_7_n_0,
      S(1) => read_index1_carry_i_8_n_0,
      S(0) => read_index1_carry_i_9_n_0
    );
read_index1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A981EB"
    )
        port map (
      I0 => read_burst_len(7),
      I1 => read_index1_carry_i_10_n_0,
      I2 => read_burst_len(6),
      I3 => \^read_index_reg[8]_0\(7),
      I4 => \^read_index_reg[8]_0\(6),
      O => read_index1_carry_i_1_n_0
    );
read_index1_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => read_burst_len(4),
      I1 => read_burst_len(2),
      I2 => read_burst_len(1),
      I3 => read_burst_len(0),
      I4 => read_burst_len(3),
      I5 => read_burst_len(5),
      O => read_index1_carry_i_10_n_0
    );
read_index1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"73311007"
    )
        port map (
      I0 => \^read_index_reg[8]_0\(4),
      I1 => \^read_index_reg[8]_0\(5),
      I2 => read_burst_len(4),
      I3 => read_burst_len_2_sn_1,
      I4 => read_burst_len(5),
      O => read_index1_carry_i_2_n_0
    );
read_index1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FE01A801FFA9"
    )
        port map (
      I0 => read_burst_len(2),
      I1 => read_burst_len(1),
      I2 => read_burst_len(0),
      I3 => read_burst_len(3),
      I4 => \^read_index_reg[8]_0\(3),
      I5 => \^read_index_reg[8]_0\(2),
      O => read_index1_carry_i_3_n_0
    );
read_index1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4153"
    )
        port map (
      I0 => \^read_index_reg[8]_0\(1),
      I1 => read_burst_len(0),
      I2 => read_burst_len(1),
      I3 => \^read_index_reg[8]_0\(0),
      O => read_index1_carry_i_4_n_0
    );
read_index1_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^read_index_reg[8]_0\(8),
      O => read_index1_carry_i_5_n_0
    );
read_index1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060990"
    )
        port map (
      I0 => \^read_index_reg[8]_0\(7),
      I1 => read_burst_len(7),
      I2 => read_index1_carry_i_10_n_0,
      I3 => read_burst_len(6),
      I4 => \^read_index_reg[8]_0\(6),
      O => read_index1_carry_i_6_n_0
    );
read_index1_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"81422814"
    )
        port map (
      I0 => read_burst_len(5),
      I1 => read_burst_len_2_sn_1,
      I2 => read_burst_len(4),
      I3 => \^read_index_reg[8]_0\(5),
      I4 => \^read_index_reg[8]_0\(4),
      O => read_index1_carry_i_7_n_0
    );
read_index1_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8881444222281114"
    )
        port map (
      I0 => \^read_index_reg[8]_0\(3),
      I1 => read_burst_len(2),
      I2 => read_burst_len(1),
      I3 => read_burst_len(0),
      I4 => read_burst_len(3),
      I5 => \^read_index_reg[8]_0\(2),
      O => read_index1_carry_i_8_n_0
    );
read_index1_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1284"
    )
        port map (
      I0 => \^read_index_reg[8]_0\(1),
      I1 => read_burst_len(0),
      I2 => read_burst_len(1),
      I3 => \^read_index_reg[8]_0\(0),
      O => read_index1_carry_i_9_n_0
    );
\read_index[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => read_state(2),
      I1 => read_state(1),
      I2 => read_state(0),
      I3 => \^read_index_reg[8]_0\(0),
      O => \read_index[0]_i_1_n_0\
    );
\read_index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => read_state(0),
      I1 => read_state(1),
      I2 => read_state(2),
      I3 => \^read_index_reg[8]_0\(0),
      I4 => \^read_index_reg[8]_0\(1),
      O => \read_index[1]_i_1_n_0\
    );
\read_index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008080808000000"
    )
        port map (
      I0 => read_state(0),
      I1 => read_state(1),
      I2 => read_state(2),
      I3 => \^read_index_reg[8]_0\(1),
      I4 => \^read_index_reg[8]_0\(0),
      I5 => \^read_index_reg[8]_0\(2),
      O => \read_index[2]_i_1_n_0\
    );
\read_index[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \read_index[8]_i_4_n_0\,
      I1 => \^read_index_reg[8]_0\(0),
      I2 => \^read_index_reg[8]_0\(1),
      I3 => \^read_index_reg[8]_0\(2),
      I4 => \^read_index_reg[8]_0\(3),
      O => \read_index[3]_i_1_n_0\
    );
\read_index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \^read_index_reg[8]_0\(0),
      I1 => \^read_index_reg[8]_0\(1),
      I2 => \^read_index_reg[8]_0\(2),
      I3 => \^read_index_reg[8]_0\(3),
      I4 => \read_index[8]_i_4_n_0\,
      I5 => \^read_index_reg[8]_0\(4),
      O => \read_index[4]_i_1_n_0\
    );
\read_index[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10002000"
    )
        port map (
      I0 => \read_index[5]_i_2_n_0\,
      I1 => read_state(2),
      I2 => read_state(1),
      I3 => read_state(0),
      I4 => \^read_index_reg[8]_0\(5),
      O => \read_index[5]_i_1_n_0\
    );
\read_index[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^read_index_reg[8]_0\(4),
      I1 => \^read_index_reg[8]_0\(3),
      I2 => \^read_index_reg[8]_0\(2),
      I3 => \^read_index_reg[8]_0\(1),
      I4 => \^read_index_reg[8]_0\(0),
      O => \read_index[5]_i_2_n_0\
    );
\read_index[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20001000"
    )
        port map (
      I0 => \read_index[8]_i_3_n_0\,
      I1 => read_state(2),
      I2 => read_state(1),
      I3 => read_state(0),
      I4 => \^read_index_reg[8]_0\(6),
      O => \read_index[6]_i_1_n_0\
    );
\read_index[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D00000002000000"
    )
        port map (
      I0 => \^read_index_reg[8]_0\(6),
      I1 => \read_index[8]_i_3_n_0\,
      I2 => read_state(2),
      I3 => read_state(1),
      I4 => read_state(0),
      I5 => \^read_index_reg[8]_0\(7),
      O => \read_index[7]_i_1_n_0\
    );
\read_index[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF80FFFFFF"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => m_axis_tx_tready,
      I2 => read_index1,
      I3 => read_state(1),
      I4 => read_state(0),
      I5 => read_state(2),
      O => read_index
    );
\read_index[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF004000"
    )
        port map (
      I0 => \read_index[8]_i_3_n_0\,
      I1 => \^read_index_reg[8]_0\(6),
      I2 => \^read_index_reg[8]_0\(7),
      I3 => \read_index[8]_i_4_n_0\,
      I4 => \^read_index_reg[8]_0\(8),
      O => \read_index[8]_i_2_n_0\
    );
\read_index[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^read_index_reg[8]_0\(0),
      I1 => \^read_index_reg[8]_0\(1),
      I2 => \^read_index_reg[8]_0\(2),
      I3 => \^read_index_reg[8]_0\(3),
      I4 => \^read_index_reg[8]_0\(4),
      I5 => \^read_index_reg[8]_0\(5),
      O => \read_index[8]_i_3_n_0\
    );
\read_index[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => read_state(0),
      I1 => read_state(1),
      I2 => read_state(2),
      O => \read_index[8]_i_4_n_0\
    );
\read_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_index,
      D => \read_index[0]_i_1_n_0\,
      Q => \^read_index_reg[8]_0\(0),
      R => m_axi_arvalid_i_1_n_0
    );
\read_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_index,
      D => \read_index[1]_i_1_n_0\,
      Q => \^read_index_reg[8]_0\(1),
      R => m_axi_arvalid_i_1_n_0
    );
\read_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_index,
      D => \read_index[2]_i_1_n_0\,
      Q => \^read_index_reg[8]_0\(2),
      R => m_axi_arvalid_i_1_n_0
    );
\read_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_index,
      D => \read_index[3]_i_1_n_0\,
      Q => \^read_index_reg[8]_0\(3),
      R => m_axi_arvalid_i_1_n_0
    );
\read_index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_index,
      D => \read_index[4]_i_1_n_0\,
      Q => \^read_index_reg[8]_0\(4),
      R => m_axi_arvalid_i_1_n_0
    );
\read_index_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_index,
      D => \read_index[5]_i_1_n_0\,
      Q => \^read_index_reg[8]_0\(5),
      R => m_axi_arvalid_i_1_n_0
    );
\read_index_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_index,
      D => \read_index[6]_i_1_n_0\,
      Q => \^read_index_reg[8]_0\(6),
      R => m_axi_arvalid_i_1_n_0
    );
\read_index_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_index,
      D => \read_index[7]_i_1_n_0\,
      Q => \^read_index_reg[8]_0\(7),
      R => m_axi_arvalid_i_1_n_0
    );
\read_index_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => read_index,
      D => \read_index[8]_i_2_n_0\,
      Q => \^read_index_reg[8]_0\(8),
      R => m_axi_arvalid_i_1_n_0
    );
read_state2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => read_state2_carry_n_0,
      CO(6) => read_state2_carry_n_1,
      CO(5) => read_state2_carry_n_2,
      CO(4) => read_state2_carry_n_3,
      CO(3) => read_state2_carry_n_4,
      CO(2) => read_state2_carry_n_5,
      CO(1) => read_state2_carry_n_6,
      CO(0) => read_state2_carry_n_7,
      DI(7) => read_state2_carry_i_1_n_0,
      DI(6) => read_state2_carry_i_2_n_0,
      DI(5) => read_state2_carry_i_3_n_0,
      DI(4) => read_state2_carry_i_4_n_0,
      DI(3) => read_state2_carry_i_5_n_0,
      DI(2) => read_state2_carry_i_6_n_0,
      DI(1) => read_state2_carry_i_7_n_0,
      DI(0) => read_state2_carry_i_8_n_0,
      O(7 downto 0) => NLW_read_state2_carry_O_UNCONNECTED(7 downto 0),
      S(7) => read_state2_carry_i_9_n_0,
      S(6) => read_state2_carry_i_10_n_0,
      S(5) => read_state2_carry_i_11_n_0,
      S(4) => read_state2_carry_i_12_n_0,
      S(3) => read_state2_carry_i_13_n_0,
      S(2) => read_state2_carry_i_14_n_0,
      S(1) => read_state2_carry_i_15_n_0,
      S(0) => read_state2_carry_i_16_n_0
    );
\read_state2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => read_state2_carry_n_0,
      CI_TOP => '0',
      CO(7) => read_state212_in,
      CO(6) => \read_state2_carry__0_n_1\,
      CO(5) => \read_state2_carry__0_n_2\,
      CO(4) => \read_state2_carry__0_n_3\,
      CO(3) => \read_state2_carry__0_n_4\,
      CO(2) => \read_state2_carry__0_n_5\,
      CO(1) => \read_state2_carry__0_n_6\,
      CO(0) => \read_state2_carry__0_n_7\,
      DI(7) => \read_state2_carry__0_i_1_n_0\,
      DI(6) => \read_state2_carry__0_i_2_n_0\,
      DI(5) => \read_state2_carry__0_i_3_n_0\,
      DI(4) => \read_state2_carry__0_i_4_n_0\,
      DI(3) => \read_state2_carry__0_i_5_n_0\,
      DI(2) => \read_state2_carry__0_i_6_n_0\,
      DI(1) => \read_state2_carry__0_i_7_n_0\,
      DI(0) => \read_state2_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_read_state2_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \read_state2_carry__0_i_9_n_0\,
      S(6) => \read_state2_carry__0_i_10_n_0\,
      S(5) => \read_state2_carry__0_i_11_n_0\,
      S(4) => \read_state2_carry__0_i_12_n_0\,
      S(3) => \read_state2_carry__0_i_13_n_0\,
      S(2) => \read_state2_carry__0_i_14_n_0\,
      S(1) => \read_state2_carry__0_i_15_n_0\,
      S(0) => \read_state2_carry__0_i_16_n_0\
    );
\read_state2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(31),
      I1 => \read_burst_counter_reg_n_0_[31]\,
      I2 => read_burst_count(30),
      I3 => \read_burst_counter_reg_n_0_[30]\,
      O => \read_state2_carry__0_i_1_n_0\
    );
\read_state2_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[29]\,
      I1 => read_burst_count(29),
      I2 => \read_burst_counter_reg_n_0_[28]\,
      I3 => read_burst_count(28),
      O => \read_state2_carry__0_i_10_n_0\
    );
\read_state2_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[27]\,
      I1 => read_burst_count(27),
      I2 => \read_burst_counter_reg_n_0_[26]\,
      I3 => read_burst_count(26),
      O => \read_state2_carry__0_i_11_n_0\
    );
\read_state2_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[25]\,
      I1 => read_burst_count(25),
      I2 => \read_burst_counter_reg_n_0_[24]\,
      I3 => read_burst_count(24),
      O => \read_state2_carry__0_i_12_n_0\
    );
\read_state2_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[23]\,
      I1 => read_burst_count(23),
      I2 => \read_burst_counter_reg_n_0_[22]\,
      I3 => read_burst_count(22),
      O => \read_state2_carry__0_i_13_n_0\
    );
\read_state2_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[21]\,
      I1 => read_burst_count(21),
      I2 => \read_burst_counter_reg_n_0_[20]\,
      I3 => read_burst_count(20),
      O => \read_state2_carry__0_i_14_n_0\
    );
\read_state2_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[19]\,
      I1 => read_burst_count(19),
      I2 => \read_burst_counter_reg_n_0_[18]\,
      I3 => read_burst_count(18),
      O => \read_state2_carry__0_i_15_n_0\
    );
\read_state2_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[17]\,
      I1 => read_burst_count(17),
      I2 => \read_burst_counter_reg_n_0_[16]\,
      I3 => read_burst_count(16),
      O => \read_state2_carry__0_i_16_n_0\
    );
\read_state2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(29),
      I1 => \read_burst_counter_reg_n_0_[29]\,
      I2 => read_burst_count(28),
      I3 => \read_burst_counter_reg_n_0_[28]\,
      O => \read_state2_carry__0_i_2_n_0\
    );
\read_state2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(27),
      I1 => \read_burst_counter_reg_n_0_[27]\,
      I2 => read_burst_count(26),
      I3 => \read_burst_counter_reg_n_0_[26]\,
      O => \read_state2_carry__0_i_3_n_0\
    );
\read_state2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(25),
      I1 => \read_burst_counter_reg_n_0_[25]\,
      I2 => read_burst_count(24),
      I3 => \read_burst_counter_reg_n_0_[24]\,
      O => \read_state2_carry__0_i_4_n_0\
    );
\read_state2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(23),
      I1 => \read_burst_counter_reg_n_0_[23]\,
      I2 => read_burst_count(22),
      I3 => \read_burst_counter_reg_n_0_[22]\,
      O => \read_state2_carry__0_i_5_n_0\
    );
\read_state2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(21),
      I1 => \read_burst_counter_reg_n_0_[21]\,
      I2 => read_burst_count(20),
      I3 => \read_burst_counter_reg_n_0_[20]\,
      O => \read_state2_carry__0_i_6_n_0\
    );
\read_state2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(19),
      I1 => \read_burst_counter_reg_n_0_[19]\,
      I2 => read_burst_count(18),
      I3 => \read_burst_counter_reg_n_0_[18]\,
      O => \read_state2_carry__0_i_7_n_0\
    );
\read_state2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(17),
      I1 => \read_burst_counter_reg_n_0_[17]\,
      I2 => read_burst_count(16),
      I3 => \read_burst_counter_reg_n_0_[16]\,
      O => \read_state2_carry__0_i_8_n_0\
    );
\read_state2_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[31]\,
      I1 => read_burst_count(31),
      I2 => \read_burst_counter_reg_n_0_[30]\,
      I3 => read_burst_count(30),
      O => \read_state2_carry__0_i_9_n_0\
    );
read_state2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(15),
      I1 => \read_burst_counter_reg_n_0_[15]\,
      I2 => read_burst_count(14),
      I3 => \read_burst_counter_reg_n_0_[14]\,
      O => read_state2_carry_i_1_n_0
    );
read_state2_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[13]\,
      I1 => read_burst_count(13),
      I2 => \read_burst_counter_reg_n_0_[12]\,
      I3 => read_burst_count(12),
      O => read_state2_carry_i_10_n_0
    );
read_state2_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[11]\,
      I1 => read_burst_count(11),
      I2 => \read_burst_counter_reg_n_0_[10]\,
      I3 => read_burst_count(10),
      O => read_state2_carry_i_11_n_0
    );
read_state2_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[9]\,
      I1 => read_burst_count(9),
      I2 => \read_burst_counter_reg_n_0_[8]\,
      I3 => read_burst_count(8),
      O => read_state2_carry_i_12_n_0
    );
read_state2_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[7]\,
      I1 => read_burst_count(7),
      I2 => \read_burst_counter_reg_n_0_[6]\,
      I3 => read_burst_count(6),
      O => read_state2_carry_i_13_n_0
    );
read_state2_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[5]\,
      I1 => read_burst_count(5),
      I2 => \read_burst_counter_reg_n_0_[4]\,
      I3 => read_burst_count(4),
      O => read_state2_carry_i_14_n_0
    );
read_state2_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[3]\,
      I1 => read_burst_count(3),
      I2 => \read_burst_counter_reg_n_0_[2]\,
      I3 => read_burst_count(2),
      O => read_state2_carry_i_15_n_0
    );
read_state2_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[1]\,
      I1 => read_burst_count(1),
      I2 => \read_burst_counter_reg_n_0_[0]\,
      I3 => read_burst_count(0),
      O => read_state2_carry_i_16_n_0
    );
read_state2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(13),
      I1 => \read_burst_counter_reg_n_0_[13]\,
      I2 => read_burst_count(12),
      I3 => \read_burst_counter_reg_n_0_[12]\,
      O => read_state2_carry_i_2_n_0
    );
read_state2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(11),
      I1 => \read_burst_counter_reg_n_0_[11]\,
      I2 => read_burst_count(10),
      I3 => \read_burst_counter_reg_n_0_[10]\,
      O => read_state2_carry_i_3_n_0
    );
read_state2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(9),
      I1 => \read_burst_counter_reg_n_0_[9]\,
      I2 => read_burst_count(8),
      I3 => \read_burst_counter_reg_n_0_[8]\,
      O => read_state2_carry_i_4_n_0
    );
read_state2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(7),
      I1 => \read_burst_counter_reg_n_0_[7]\,
      I2 => read_burst_count(6),
      I3 => \read_burst_counter_reg_n_0_[6]\,
      O => read_state2_carry_i_5_n_0
    );
read_state2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(5),
      I1 => \read_burst_counter_reg_n_0_[5]\,
      I2 => read_burst_count(4),
      I3 => \read_burst_counter_reg_n_0_[4]\,
      O => read_state2_carry_i_6_n_0
    );
read_state2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(3),
      I1 => \read_burst_counter_reg_n_0_[3]\,
      I2 => read_burst_count(2),
      I3 => \read_burst_counter_reg_n_0_[2]\,
      O => read_state2_carry_i_7_n_0
    );
read_state2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => read_burst_count(1),
      I1 => \read_burst_counter_reg_n_0_[1]\,
      I2 => read_burst_count(0),
      I3 => \read_burst_counter_reg_n_0_[0]\,
      O => read_state2_carry_i_8_n_0
    );
read_state2_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \read_burst_counter_reg_n_0_[15]\,
      I1 => read_burst_count(15),
      I2 => \read_burst_counter_reg_n_0_[14]\,
      I3 => read_burst_count(14),
      O => read_state2_carry_i_9_n_0
    );
read_total_burst_count0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => \^read_total_burst_count\(0),
      CI_TOP => '0',
      CO(7) => read_total_burst_count0_carry_n_0,
      CO(6) => read_total_burst_count0_carry_n_1,
      CO(5) => read_total_burst_count0_carry_n_2,
      CO(4) => read_total_burst_count0_carry_n_3,
      CO(3) => read_total_burst_count0_carry_n_4,
      CO(2) => read_total_burst_count0_carry_n_5,
      CO(1) => read_total_burst_count0_carry_n_6,
      CO(0) => read_total_burst_count0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in11(8 downto 1),
      S(7 downto 0) => \^read_total_burst_count\(8 downto 1)
    );
\read_total_burst_count0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => read_total_burst_count0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \read_total_burst_count0_carry__0_n_0\,
      CO(6) => \read_total_burst_count0_carry__0_n_1\,
      CO(5) => \read_total_burst_count0_carry__0_n_2\,
      CO(4) => \read_total_burst_count0_carry__0_n_3\,
      CO(3) => \read_total_burst_count0_carry__0_n_4\,
      CO(2) => \read_total_burst_count0_carry__0_n_5\,
      CO(1) => \read_total_burst_count0_carry__0_n_6\,
      CO(0) => \read_total_burst_count0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in11(16 downto 9),
      S(7 downto 0) => \^read_total_burst_count\(16 downto 9)
    );
\read_total_burst_count0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \read_total_burst_count0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \read_total_burst_count0_carry__1_n_0\,
      CO(6) => \read_total_burst_count0_carry__1_n_1\,
      CO(5) => \read_total_burst_count0_carry__1_n_2\,
      CO(4) => \read_total_burst_count0_carry__1_n_3\,
      CO(3) => \read_total_burst_count0_carry__1_n_4\,
      CO(2) => \read_total_burst_count0_carry__1_n_5\,
      CO(1) => \read_total_burst_count0_carry__1_n_6\,
      CO(0) => \read_total_burst_count0_carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in11(24 downto 17),
      S(7 downto 0) => \^read_total_burst_count\(24 downto 17)
    );
\read_total_burst_count0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \read_total_burst_count0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_read_total_burst_count0_carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \read_total_burst_count0_carry__2_n_2\,
      CO(4) => \read_total_burst_count0_carry__2_n_3\,
      CO(3) => \read_total_burst_count0_carry__2_n_4\,
      CO(2) => \read_total_burst_count0_carry__2_n_5\,
      CO(1) => \read_total_burst_count0_carry__2_n_6\,
      CO(0) => \read_total_burst_count0_carry__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_read_total_burst_count0_carry__2_O_UNCONNECTED\(7),
      O(6 downto 0) => in11(31 downto 25),
      S(7) => '0',
      S(6 downto 0) => \^read_total_burst_count\(31 downto 25)
    );
\read_total_burst_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_state(1),
      I1 => \^read_total_burst_count\(0),
      O => \read_total_burst_count[0]_i_1_n_0\
    );
\read_total_burst_count[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(10),
      O => \read_total_burst_count[10]_i_1_n_0\
    );
\read_total_burst_count[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(11),
      O => \read_total_burst_count[11]_i_1_n_0\
    );
\read_total_burst_count[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(12),
      O => \read_total_burst_count[12]_i_1_n_0\
    );
\read_total_burst_count[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(13),
      O => \read_total_burst_count[13]_i_1_n_0\
    );
\read_total_burst_count[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(14),
      O => \read_total_burst_count[14]_i_1_n_0\
    );
\read_total_burst_count[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(15),
      O => \read_total_burst_count[15]_i_1_n_0\
    );
\read_total_burst_count[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(16),
      O => \read_total_burst_count[16]_i_1_n_0\
    );
\read_total_burst_count[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(17),
      O => \read_total_burst_count[17]_i_1_n_0\
    );
\read_total_burst_count[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(18),
      O => \read_total_burst_count[18]_i_1_n_0\
    );
\read_total_burst_count[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(19),
      O => \read_total_burst_count[19]_i_1_n_0\
    );
\read_total_burst_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(1),
      O => \read_total_burst_count[1]_i_1_n_0\
    );
\read_total_burst_count[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(20),
      O => \read_total_burst_count[20]_i_1_n_0\
    );
\read_total_burst_count[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(21),
      O => \read_total_burst_count[21]_i_1_n_0\
    );
\read_total_burst_count[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(22),
      O => \read_total_burst_count[22]_i_1_n_0\
    );
\read_total_burst_count[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(23),
      O => \read_total_burst_count[23]_i_1_n_0\
    );
\read_total_burst_count[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(24),
      O => \read_total_burst_count[24]_i_1_n_0\
    );
\read_total_burst_count[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(25),
      O => \read_total_burst_count[25]_i_1_n_0\
    );
\read_total_burst_count[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(26),
      O => \read_total_burst_count[26]_i_1_n_0\
    );
\read_total_burst_count[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(27),
      O => \read_total_burst_count[27]_i_1_n_0\
    );
\read_total_burst_count[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(28),
      O => \read_total_burst_count[28]_i_1_n_0\
    );
\read_total_burst_count[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(29),
      O => \read_total_burst_count[29]_i_1_n_0\
    );
\read_total_burst_count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(2),
      O => \read_total_burst_count[2]_i_1_n_0\
    );
\read_total_burst_count[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(30),
      O => \read_total_burst_count[30]_i_1_n_0\
    );
\read_total_burst_count[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008800000F"
    )
        port map (
      I0 => m_axi_rlast,
      I1 => \^m_axi_rvalid_0\,
      I2 => read_enable,
      I3 => read_state(0),
      I4 => read_state(1),
      I5 => read_state(2),
      O => \read_total_burst_count[31]_i_1_n_0\
    );
\read_total_burst_count[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(31),
      O => \read_total_burst_count[31]_i_2_n_0\
    );
\read_total_burst_count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(3),
      O => \read_total_burst_count[3]_i_1_n_0\
    );
\read_total_burst_count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(4),
      O => \read_total_burst_count[4]_i_1_n_0\
    );
\read_total_burst_count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(5),
      O => \read_total_burst_count[5]_i_1_n_0\
    );
\read_total_burst_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(6),
      O => \read_total_burst_count[6]_i_1_n_0\
    );
\read_total_burst_count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(7),
      O => \read_total_burst_count[7]_i_1_n_0\
    );
\read_total_burst_count[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(8),
      O => \read_total_burst_count[8]_i_1_n_0\
    );
\read_total_burst_count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => read_state(1),
      I1 => in11(9),
      O => \read_total_burst_count[9]_i_1_n_0\
    );
\read_total_burst_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[0]_i_1_n_0\,
      Q => \^read_total_burst_count\(0),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[10]_i_1_n_0\,
      Q => \^read_total_burst_count\(10),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[11]_i_1_n_0\,
      Q => \^read_total_burst_count\(11),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[12]_i_1_n_0\,
      Q => \^read_total_burst_count\(12),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[13]_i_1_n_0\,
      Q => \^read_total_burst_count\(13),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[14]_i_1_n_0\,
      Q => \^read_total_burst_count\(14),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[15]_i_1_n_0\,
      Q => \^read_total_burst_count\(15),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[16]_i_1_n_0\,
      Q => \^read_total_burst_count\(16),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[17]_i_1_n_0\,
      Q => \^read_total_burst_count\(17),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[18]_i_1_n_0\,
      Q => \^read_total_burst_count\(18),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[19]_i_1_n_0\,
      Q => \^read_total_burst_count\(19),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[1]_i_1_n_0\,
      Q => \^read_total_burst_count\(1),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[20]_i_1_n_0\,
      Q => \^read_total_burst_count\(20),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[21]_i_1_n_0\,
      Q => \^read_total_burst_count\(21),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[22]_i_1_n_0\,
      Q => \^read_total_burst_count\(22),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[23]_i_1_n_0\,
      Q => \^read_total_burst_count\(23),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[24]_i_1_n_0\,
      Q => \^read_total_burst_count\(24),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[25]_i_1_n_0\,
      Q => \^read_total_burst_count\(25),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[26]_i_1_n_0\,
      Q => \^read_total_burst_count\(26),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[27]_i_1_n_0\,
      Q => \^read_total_burst_count\(27),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[28]_i_1_n_0\,
      Q => \^read_total_burst_count\(28),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[29]_i_1_n_0\,
      Q => \^read_total_burst_count\(29),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[2]_i_1_n_0\,
      Q => \^read_total_burst_count\(2),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[30]_i_1_n_0\,
      Q => \^read_total_burst_count\(30),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[31]_i_2_n_0\,
      Q => \^read_total_burst_count\(31),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[3]_i_1_n_0\,
      Q => \^read_total_burst_count\(3),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[4]_i_1_n_0\,
      Q => \^read_total_burst_count\(4),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[5]_i_1_n_0\,
      Q => \^read_total_burst_count\(5),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[6]_i_1_n_0\,
      Q => \^read_total_burst_count\(6),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[7]_i_1_n_0\,
      Q => \^read_total_burst_count\(7),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[8]_i_1_n_0\,
      Q => \^read_total_burst_count\(8),
      R => m_axi_arvalid_i_1_n_0
    );
\read_total_burst_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_total_burst_count[31]_i_1_n_0\,
      D => \read_total_burst_count[9]_i_1_n_0\,
      Q => \^read_total_burst_count\(9),
      R => m_axi_arvalid_i_1_n_0
    );
\read_underflow_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => read_state(0),
      I1 => \^read_underflow_count_reg[7]_0\(0),
      O => \read_underflow_count[0]_i_1_n_0\
    );
\read_underflow_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => read_state(0),
      I1 => \^read_underflow_count_reg[7]_0\(0),
      I2 => \^read_underflow_count_reg[7]_0\(1),
      O => \read_underflow_count[1]_i_1_n_0\
    );
\read_underflow_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \^read_underflow_count_reg[7]_0\(1),
      I1 => \^read_underflow_count_reg[7]_0\(0),
      I2 => read_state(0),
      I3 => \^read_underflow_count_reg[7]_0\(2),
      O => \read_underflow_count[2]_i_1_n_0\
    );
\read_underflow_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \^read_underflow_count_reg[7]_0\(2),
      I1 => \^read_underflow_count_reg[7]_0\(0),
      I2 => \^read_underflow_count_reg[7]_0\(1),
      I3 => read_state(0),
      I4 => \^read_underflow_count_reg[7]_0\(3),
      O => \read_underflow_count[3]_i_1_n_0\
    );
\read_underflow_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \^read_underflow_count_reg[7]_0\(3),
      I1 => \^read_underflow_count_reg[7]_0\(1),
      I2 => \^read_underflow_count_reg[7]_0\(0),
      I3 => \^read_underflow_count_reg[7]_0\(2),
      I4 => \^ila_read_state\(0),
      I5 => \^read_underflow_count_reg[7]_0\(4),
      O => \read_underflow_count[4]_i_1_n_0\
    );
\read_underflow_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \read_underflow_count[5]_i_2_n_0\,
      I1 => read_state(0),
      I2 => \^read_underflow_count_reg[7]_0\(5),
      O => \read_underflow_count[5]_i_1_n_0\
    );
\read_underflow_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^read_underflow_count_reg[7]_0\(4),
      I1 => \^read_underflow_count_reg[7]_0\(2),
      I2 => \^read_underflow_count_reg[7]_0\(0),
      I3 => \^read_underflow_count_reg[7]_0\(1),
      I4 => \^read_underflow_count_reg[7]_0\(3),
      O => \read_underflow_count[5]_i_2_n_0\
    );
\read_underflow_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \read_underflow_count[7]_i_3_n_0\,
      I1 => read_state(0),
      I2 => \^read_underflow_count_reg[7]_0\(6),
      O => \read_underflow_count[6]_i_1_n_0\
    );
\read_underflow_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000880F"
    )
        port map (
      I0 => read_underflow_ins1,
      I1 => tx_fifo_empty,
      I2 => read_enable,
      I3 => read_state(0),
      I4 => read_state(1),
      I5 => read_state(2),
      O => \read_underflow_count[7]_i_1_n_0\
    );
\read_underflow_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \read_underflow_count[7]_i_3_n_0\,
      I1 => \^read_underflow_count_reg[7]_0\(6),
      I2 => read_state(0),
      I3 => \^read_underflow_count_reg[7]_0\(7),
      O => \read_underflow_count[7]_i_2_n_0\
    );
\read_underflow_count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^read_underflow_count_reg[7]_0\(5),
      I1 => \^read_underflow_count_reg[7]_0\(3),
      I2 => \^read_underflow_count_reg[7]_0\(1),
      I3 => \^read_underflow_count_reg[7]_0\(0),
      I4 => \^read_underflow_count_reg[7]_0\(2),
      I5 => \^read_underflow_count_reg[7]_0\(4),
      O => \read_underflow_count[7]_i_3_n_0\
    );
\read_underflow_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_underflow_count[7]_i_1_n_0\,
      D => \read_underflow_count[0]_i_1_n_0\,
      Q => \^read_underflow_count_reg[7]_0\(0),
      R => m_axi_arvalid_i_1_n_0
    );
\read_underflow_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_underflow_count[7]_i_1_n_0\,
      D => \read_underflow_count[1]_i_1_n_0\,
      Q => \^read_underflow_count_reg[7]_0\(1),
      R => m_axi_arvalid_i_1_n_0
    );
\read_underflow_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_underflow_count[7]_i_1_n_0\,
      D => \read_underflow_count[2]_i_1_n_0\,
      Q => \^read_underflow_count_reg[7]_0\(2),
      R => m_axi_arvalid_i_1_n_0
    );
\read_underflow_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_underflow_count[7]_i_1_n_0\,
      D => \read_underflow_count[3]_i_1_n_0\,
      Q => \^read_underflow_count_reg[7]_0\(3),
      R => m_axi_arvalid_i_1_n_0
    );
\read_underflow_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_underflow_count[7]_i_1_n_0\,
      D => \read_underflow_count[4]_i_1_n_0\,
      Q => \^read_underflow_count_reg[7]_0\(4),
      R => m_axi_arvalid_i_1_n_0
    );
\read_underflow_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_underflow_count[7]_i_1_n_0\,
      D => \read_underflow_count[5]_i_1_n_0\,
      Q => \^read_underflow_count_reg[7]_0\(5),
      R => m_axi_arvalid_i_1_n_0
    );
\read_underflow_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_underflow_count[7]_i_1_n_0\,
      D => \read_underflow_count[6]_i_1_n_0\,
      Q => \^read_underflow_count_reg[7]_0\(6),
      R => m_axi_arvalid_i_1_n_0
    );
\read_underflow_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \read_underflow_count[7]_i_1_n_0\,
      D => \read_underflow_count[7]_i_2_n_0\,
      Q => \^read_underflow_count_reg[7]_0\(7),
      R => m_axi_arvalid_i_1_n_0
    );
read_underflow_ins_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0F80000000800"
    )
        port map (
      I0 => tx_fifo_empty,
      I1 => read_underflow_ins1,
      I2 => read_state(2),
      I3 => read_state(0),
      I4 => read_state(1),
      I5 => \^read_underflow_ins\,
      O => read_underflow_ins_i_1_n_0
    );
read_underflow_ins_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => read_underflow_ins_i_3_n_0,
      I1 => read_underflow_ins_i_4_n_0,
      I2 => \^read_total_burst_count\(26),
      I3 => \^read_total_burst_count\(25),
      I4 => \^read_total_burst_count\(24),
      I5 => \^read_total_burst_count\(23),
      O => read_underflow_ins1
    );
read_underflow_ins_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => read_underflow_ins_i_5_n_0,
      I1 => \^read_total_burst_count\(27),
      I2 => \^read_total_burst_count\(28),
      I3 => \^read_total_burst_count\(29),
      I4 => \^read_total_burst_count\(30),
      O => read_underflow_ins_i_3_n_0
    );
read_underflow_ins_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^read_total_burst_count\(18),
      I1 => \^read_total_burst_count\(17),
      I2 => read_underflow_ins_i_6_n_0,
      I3 => read_underflow_ins_i_7_n_0,
      I4 => read_underflow_ins_i_8_n_0,
      I5 => read_underflow_ins_i_9_n_0,
      O => read_underflow_ins_i_4_n_0
    );
read_underflow_ins_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^read_total_burst_count\(19),
      I1 => \^read_total_burst_count\(20),
      I2 => \^read_total_burst_count\(21),
      I3 => \^read_total_burst_count\(22),
      I4 => \^read_total_burst_count\(0),
      I5 => \^read_total_burst_count\(31),
      O => read_underflow_ins_i_5_n_0
    );
read_underflow_ins_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^read_total_burst_count\(8),
      I1 => \^read_total_burst_count\(7),
      I2 => \^read_total_burst_count\(6),
      I3 => \^read_total_burst_count\(5),
      O => read_underflow_ins_i_6_n_0
    );
read_underflow_ins_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^read_total_burst_count\(4),
      I1 => \^read_total_burst_count\(3),
      I2 => \^read_total_burst_count\(2),
      I3 => \^read_total_burst_count\(1),
      O => read_underflow_ins_i_7_n_0
    );
read_underflow_ins_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^read_total_burst_count\(16),
      I1 => \^read_total_burst_count\(15),
      I2 => \^read_total_burst_count\(14),
      I3 => \^read_total_burst_count\(13),
      O => read_underflow_ins_i_8_n_0
    );
read_underflow_ins_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^read_total_burst_count\(12),
      I1 => \^read_total_burst_count\(11),
      I2 => \^read_total_burst_count\(10),
      I3 => \^read_total_burst_count\(9),
      O => read_underflow_ins_i_9_n_0
    );
read_underflow_ins_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => read_underflow_ins_i_1_n_0,
      Q => \^read_underflow_ins\,
      R => m_axi_arvalid_i_1_n_0
    );
s_axis_rx_tready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \write_state__0\(0),
      I1 => \write_state__0\(1),
      I2 => \write_state__0\(2),
      I3 => m_axi_wready,
      O => ila_rx_ready
    );
write_access_tick_ack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0CCCCCC"
    )
        port map (
      I0 => write_ddr_occupation1,
      I1 => \^ila_write_access_tick_ack\,
      I2 => write_access_tick,
      I3 => \^write_burst_tick_ack_reg_0\,
      I4 => \^write_burst_tick\,
      O => write_access_tick_ack_i_1_n_0
    );
write_access_tick_ack_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => write_access_tick_ack_i_1_n_0,
      Q => \^ila_write_access_tick_ack\,
      R => m_axi_arvalid_i_1_n_0
    );
\write_bresp[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(2),
      I1 => m_axi_bresp(0),
      O => \write_bresp[0]_i_1_n_0\
    );
\write_bresp[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000B"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => \write_state__0\(2),
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(0),
      O => \write_bresp[1]_i_1_n_0\
    );
\write_bresp[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(2),
      I1 => m_axi_bresp(1),
      O => \write_bresp[1]_i_2_n_0\
    );
\write_bresp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_bresp[1]_i_1_n_0\,
      D => \write_bresp[0]_i_1_n_0\,
      Q => ila_write_bresp(0),
      R => m_axi_arvalid_i_1_n_0
    );
\write_bresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_bresp[1]_i_1_n_0\,
      D => \write_bresp[1]_i_2_n_0\,
      Q => ila_write_bresp(1),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \^ila_write_burst_counter\(0),
      O => write_burst_counter(0)
    );
\write_burst_counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(10),
      O => write_burst_counter(10)
    );
\write_burst_counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(11),
      O => write_burst_counter(11)
    );
\write_burst_counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(12),
      O => write_burst_counter(12)
    );
\write_burst_counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(13),
      O => write_burst_counter(13)
    );
\write_burst_counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(14),
      O => write_burst_counter(14)
    );
\write_burst_counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(15),
      O => write_burst_counter(15)
    );
\write_burst_counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(16),
      O => write_burst_counter(16)
    );
\write_burst_counter[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(17),
      O => write_burst_counter(17)
    );
\write_burst_counter[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(18),
      O => write_burst_counter(18)
    );
\write_burst_counter[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(19),
      O => write_burst_counter(19)
    );
\write_burst_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(1),
      O => write_burst_counter(1)
    );
\write_burst_counter[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(20),
      O => write_burst_counter(20)
    );
\write_burst_counter[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(21),
      O => write_burst_counter(21)
    );
\write_burst_counter[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(22),
      O => write_burst_counter(22)
    );
\write_burst_counter[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(23),
      O => write_burst_counter(23)
    );
\write_burst_counter[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(24),
      O => write_burst_counter(24)
    );
\write_burst_counter[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(25),
      O => write_burst_counter(25)
    );
\write_burst_counter[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(26),
      O => write_burst_counter(26)
    );
\write_burst_counter[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(27),
      O => write_burst_counter(27)
    );
\write_burst_counter[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(28),
      O => write_burst_counter(28)
    );
\write_burst_counter[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(29),
      O => write_burst_counter(29)
    );
\write_burst_counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(2),
      O => write_burst_counter(2)
    );
\write_burst_counter[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(30),
      O => write_burst_counter(30)
    );
\write_burst_counter[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080000000000FF"
    )
        port map (
      I0 => \^ila_write_active\,
      I1 => \^m_axi_wlast_reg_0\,
      I2 => m_axi_wlast_i_2_n_0,
      I3 => \write_state__0\(2),
      I4 => \write_state__0\(1),
      I5 => \write_state__0\(0),
      O => \write_burst_counter[31]_i_1_n_0\
    );
\write_burst_counter[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(31),
      O => write_burst_counter(31)
    );
\write_burst_counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(3),
      O => write_burst_counter(3)
    );
\write_burst_counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(4),
      O => write_burst_counter(4)
    );
\write_burst_counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(5),
      O => write_burst_counter(5)
    );
\write_burst_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(6),
      O => write_burst_counter(6)
    );
\write_burst_counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(7),
      O => write_burst_counter(7)
    );
\write_burst_counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(8),
      O => write_burst_counter(8)
    );
\write_burst_counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => in20(9),
      O => write_burst_counter(9)
    );
\write_burst_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(0),
      Q => \^ila_write_burst_counter\(0),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(10),
      Q => \^ila_write_burst_counter\(10),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(11),
      Q => \^ila_write_burst_counter\(11),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(12),
      Q => \^ila_write_burst_counter\(12),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(13),
      Q => \^ila_write_burst_counter\(13),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(14),
      Q => \^ila_write_burst_counter\(14),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(15),
      Q => \^ila_write_burst_counter\(15),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(16),
      Q => \^ila_write_burst_counter\(16),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \write_burst_counter_reg[8]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \write_burst_counter_reg[16]_i_2_n_0\,
      CO(6) => \write_burst_counter_reg[16]_i_2_n_1\,
      CO(5) => \write_burst_counter_reg[16]_i_2_n_2\,
      CO(4) => \write_burst_counter_reg[16]_i_2_n_3\,
      CO(3) => \write_burst_counter_reg[16]_i_2_n_4\,
      CO(2) => \write_burst_counter_reg[16]_i_2_n_5\,
      CO(1) => \write_burst_counter_reg[16]_i_2_n_6\,
      CO(0) => \write_burst_counter_reg[16]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in20(16 downto 9),
      S(7 downto 0) => \^ila_write_burst_counter\(16 downto 9)
    );
\write_burst_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(17),
      Q => \^ila_write_burst_counter\(17),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(18),
      Q => \^ila_write_burst_counter\(18),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(19),
      Q => \^ila_write_burst_counter\(19),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(1),
      Q => \^ila_write_burst_counter\(1),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(20),
      Q => \^ila_write_burst_counter\(20),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(21),
      Q => \^ila_write_burst_counter\(21),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(22),
      Q => \^ila_write_burst_counter\(22),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(23),
      Q => \^ila_write_burst_counter\(23),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(24),
      Q => \^ila_write_burst_counter\(24),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[24]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \write_burst_counter_reg[16]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \write_burst_counter_reg[24]_i_2_n_0\,
      CO(6) => \write_burst_counter_reg[24]_i_2_n_1\,
      CO(5) => \write_burst_counter_reg[24]_i_2_n_2\,
      CO(4) => \write_burst_counter_reg[24]_i_2_n_3\,
      CO(3) => \write_burst_counter_reg[24]_i_2_n_4\,
      CO(2) => \write_burst_counter_reg[24]_i_2_n_5\,
      CO(1) => \write_burst_counter_reg[24]_i_2_n_6\,
      CO(0) => \write_burst_counter_reg[24]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in20(24 downto 17),
      S(7 downto 0) => \^ila_write_burst_counter\(24 downto 17)
    );
\write_burst_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(25),
      Q => \^ila_write_burst_counter\(25),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(26),
      Q => \^ila_write_burst_counter\(26),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(27),
      Q => \^ila_write_burst_counter\(27),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(28),
      Q => \^ila_write_burst_counter\(28),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(29),
      Q => \^ila_write_burst_counter\(29),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(2),
      Q => \^ila_write_burst_counter\(2),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(30),
      Q => \^ila_write_burst_counter\(30),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(31),
      Q => \^ila_write_burst_counter\(31),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[31]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \write_burst_counter_reg[24]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_write_burst_counter_reg[31]_i_3_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \write_burst_counter_reg[31]_i_3_n_2\,
      CO(4) => \write_burst_counter_reg[31]_i_3_n_3\,
      CO(3) => \write_burst_counter_reg[31]_i_3_n_4\,
      CO(2) => \write_burst_counter_reg[31]_i_3_n_5\,
      CO(1) => \write_burst_counter_reg[31]_i_3_n_6\,
      CO(0) => \write_burst_counter_reg[31]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_write_burst_counter_reg[31]_i_3_O_UNCONNECTED\(7),
      O(6 downto 0) => in20(31 downto 25),
      S(7) => '0',
      S(6 downto 0) => \^ila_write_burst_counter\(31 downto 25)
    );
\write_burst_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(3),
      Q => \^ila_write_burst_counter\(3),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(4),
      Q => \^ila_write_burst_counter\(4),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(5),
      Q => \^ila_write_burst_counter\(5),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(6),
      Q => \^ila_write_burst_counter\(6),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(7),
      Q => \^ila_write_burst_counter\(7),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(8),
      Q => \^ila_write_burst_counter\(8),
      R => m_axi_arvalid_i_1_n_0
    );
\write_burst_counter_reg[8]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \^ila_write_burst_counter\(0),
      CI_TOP => '0',
      CO(7) => \write_burst_counter_reg[8]_i_2_n_0\,
      CO(6) => \write_burst_counter_reg[8]_i_2_n_1\,
      CO(5) => \write_burst_counter_reg[8]_i_2_n_2\,
      CO(4) => \write_burst_counter_reg[8]_i_2_n_3\,
      CO(3) => \write_burst_counter_reg[8]_i_2_n_4\,
      CO(2) => \write_burst_counter_reg[8]_i_2_n_5\,
      CO(1) => \write_burst_counter_reg[8]_i_2_n_6\,
      CO(0) => \write_burst_counter_reg[8]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => in20(8 downto 1),
      S(7 downto 0) => \^ila_write_burst_counter\(8 downto 1)
    );
\write_burst_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_burst_counter[31]_i_1_n_0\,
      D => write_burst_counter(9),
      Q => \^ila_write_burst_counter\(9),
      R => m_axi_arvalid_i_1_n_0
    );
write_burst_tick_ack_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \^write_burst_tick\,
      Q => \^write_burst_tick_ack_reg_0\,
      R => m_axi_arvalid_i_1_n_0
    );
write_burst_tick_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0008000000080"
    )
        port map (
      I0 => \^co\(0),
      I1 => rx_fifo_data_ready,
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(1),
      I4 => \write_state__0\(2),
      I5 => \^write_burst_tick\,
      O => write_burst_tick_i_1_n_0
    );
write_burst_tick_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => write_burst_tick_i_1_n_0,
      Q => \^write_burst_tick\,
      R => m_axi_arvalid_i_1_n_0
    );
write_busy_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \write_state__0\(0),
      I1 => \write_state__0\(1),
      I2 => \write_state__0\(2),
      O => write_busy
    );
\write_current_burst_address[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(0),
      I1 => write_base_address(0),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[0]_i_1_n_0\
    );
\write_current_burst_address[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(10),
      I1 => write_base_address(10),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[10]_i_1_n_0\
    );
\write_current_burst_address[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(11),
      I1 => write_base_address(11),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[11]_i_1_n_0\
    );
\write_current_burst_address[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(12),
      I1 => write_base_address(12),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[12]_i_1_n_0\
    );
\write_current_burst_address[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(13),
      I1 => write_base_address(13),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[13]_i_1_n_0\
    );
\write_current_burst_address[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(14),
      I1 => write_base_address(14),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[14]_i_1_n_0\
    );
\write_current_burst_address[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(15),
      I1 => write_base_address(15),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[15]_i_1_n_0\
    );
\write_current_burst_address[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(16),
      I1 => write_base_address(16),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[16]_i_1_n_0\
    );
\write_current_burst_address[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(17),
      I1 => write_base_address(17),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[17]_i_1_n_0\
    );
\write_current_burst_address[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(18),
      I1 => write_base_address(18),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[18]_i_1_n_0\
    );
\write_current_burst_address[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(19),
      I1 => write_base_address(19),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[19]_i_1_n_0\
    );
\write_current_burst_address[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(1),
      I1 => write_base_address(1),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[1]_i_1_n_0\
    );
\write_current_burst_address[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(20),
      I1 => write_base_address(20),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[20]_i_1_n_0\
    );
\write_current_burst_address[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(21),
      I1 => write_base_address(21),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[21]_i_1_n_0\
    );
\write_current_burst_address[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(22),
      I1 => write_base_address(22),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[22]_i_1_n_0\
    );
\write_current_burst_address[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(23),
      I1 => write_base_address(23),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[23]_i_1_n_0\
    );
\write_current_burst_address[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(24),
      I1 => write_base_address(24),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[24]_i_1_n_0\
    );
\write_current_burst_address[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(25),
      I1 => write_base_address(25),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[25]_i_1_n_0\
    );
\write_current_burst_address[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(26),
      I1 => write_base_address(26),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[26]_i_1_n_0\
    );
\write_current_burst_address[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(27),
      I1 => write_base_address(27),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[27]_i_1_n_0\
    );
\write_current_burst_address[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(28),
      I1 => write_base_address(28),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[28]_i_1_n_0\
    );
\write_current_burst_address[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(29),
      I1 => write_base_address(29),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[29]_i_1_n_0\
    );
\write_current_burst_address[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(2),
      I1 => write_base_address(2),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[2]_i_1_n_0\
    );
\write_current_burst_address[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(30),
      I1 => write_base_address(30),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[30]_i_1_n_0\
    );
\write_current_burst_address[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555555F777"
    )
        port map (
      I0 => aresetn,
      I1 => \write_state__0\(0),
      I2 => rx_fifo_data_ready,
      I3 => \^co\(0),
      I4 => \write_state__0\(1),
      I5 => \write_state__0\(2),
      O => \write_current_burst_address[31]_i_1_n_0\
    );
\write_current_burst_address[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(31),
      I1 => write_base_address(31),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[31]_i_2_n_0\
    );
\write_current_burst_address[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(3),
      I1 => write_base_address(3),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[3]_i_1_n_0\
    );
\write_current_burst_address[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(4),
      I1 => write_base_address(4),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[4]_i_1_n_0\
    );
\write_current_burst_address[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(5),
      I1 => write_base_address(5),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[5]_i_1_n_0\
    );
\write_current_burst_address[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(6),
      I1 => write_base_address(6),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[6]_i_1_n_0\
    );
\write_current_burst_address[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(7),
      I1 => write_base_address(7),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[7]_i_1_n_0\
    );
\write_current_burst_address[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(8),
      I1 => write_base_address(8),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[8]_i_1_n_0\
    );
\write_current_burst_address[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00ACCCCC"
    )
        port map (
      I0 => \^m_axi_awaddr\(9),
      I1 => write_base_address(9),
      I2 => \write_state__0\(0),
      I3 => \write_state__0\(2),
      I4 => aresetn,
      O => \write_current_burst_address[9]_i_1_n_0\
    );
\write_current_burst_address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[0]_i_1_n_0\,
      Q => write_current_burst_address(0),
      R => '0'
    );
\write_current_burst_address_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[10]_i_1_n_0\,
      Q => write_current_burst_address(10),
      R => '0'
    );
\write_current_burst_address_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[11]_i_1_n_0\,
      Q => write_current_burst_address(11),
      R => '0'
    );
\write_current_burst_address_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[12]_i_1_n_0\,
      Q => write_current_burst_address(12),
      R => '0'
    );
\write_current_burst_address_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[13]_i_1_n_0\,
      Q => write_current_burst_address(13),
      R => '0'
    );
\write_current_burst_address_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[14]_i_1_n_0\,
      Q => write_current_burst_address(14),
      R => '0'
    );
\write_current_burst_address_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[15]_i_1_n_0\,
      Q => write_current_burst_address(15),
      R => '0'
    );
\write_current_burst_address_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[16]_i_1_n_0\,
      Q => write_current_burst_address(16),
      R => '0'
    );
\write_current_burst_address_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[17]_i_1_n_0\,
      Q => write_current_burst_address(17),
      R => '0'
    );
\write_current_burst_address_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[18]_i_1_n_0\,
      Q => write_current_burst_address(18),
      R => '0'
    );
\write_current_burst_address_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[19]_i_1_n_0\,
      Q => write_current_burst_address(19),
      R => '0'
    );
\write_current_burst_address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[1]_i_1_n_0\,
      Q => write_current_burst_address(1),
      R => '0'
    );
\write_current_burst_address_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[20]_i_1_n_0\,
      Q => write_current_burst_address(20),
      R => '0'
    );
\write_current_burst_address_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[21]_i_1_n_0\,
      Q => write_current_burst_address(21),
      R => '0'
    );
\write_current_burst_address_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[22]_i_1_n_0\,
      Q => write_current_burst_address(22),
      R => '0'
    );
\write_current_burst_address_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[23]_i_1_n_0\,
      Q => write_current_burst_address(23),
      R => '0'
    );
\write_current_burst_address_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[24]_i_1_n_0\,
      Q => write_current_burst_address(24),
      R => '0'
    );
\write_current_burst_address_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[25]_i_1_n_0\,
      Q => write_current_burst_address(25),
      R => '0'
    );
\write_current_burst_address_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[26]_i_1_n_0\,
      Q => write_current_burst_address(26),
      R => '0'
    );
\write_current_burst_address_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[27]_i_1_n_0\,
      Q => write_current_burst_address(27),
      R => '0'
    );
\write_current_burst_address_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[28]_i_1_n_0\,
      Q => write_current_burst_address(28),
      R => '0'
    );
\write_current_burst_address_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[29]_i_1_n_0\,
      Q => write_current_burst_address(29),
      R => '0'
    );
\write_current_burst_address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[2]_i_1_n_0\,
      Q => write_current_burst_address(2),
      R => '0'
    );
\write_current_burst_address_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[30]_i_1_n_0\,
      Q => write_current_burst_address(30),
      R => '0'
    );
\write_current_burst_address_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[31]_i_2_n_0\,
      Q => write_current_burst_address(31),
      R => '0'
    );
\write_current_burst_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[3]_i_1_n_0\,
      Q => write_current_burst_address(3),
      R => '0'
    );
\write_current_burst_address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[4]_i_1_n_0\,
      Q => write_current_burst_address(4),
      R => '0'
    );
\write_current_burst_address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[5]_i_1_n_0\,
      Q => write_current_burst_address(5),
      R => '0'
    );
\write_current_burst_address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[6]_i_1_n_0\,
      Q => write_current_burst_address(6),
      R => '0'
    );
\write_current_burst_address_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[7]_i_1_n_0\,
      Q => write_current_burst_address(7),
      R => '0'
    );
\write_current_burst_address_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[8]_i_1_n_0\,
      Q => write_current_burst_address(8),
      R => '0'
    );
\write_current_burst_address_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_current_burst_address[31]_i_1_n_0\,
      D => \write_current_burst_address[9]_i_1_n_0\,
      Q => write_current_burst_address(9),
      R => '0'
    );
write_ddr_full_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => write_ddr_full_carry_n_0,
      CO(6) => write_ddr_full_carry_n_1,
      CO(5) => write_ddr_full_carry_n_2,
      CO(4) => write_ddr_full_carry_n_3,
      CO(3) => write_ddr_full_carry_n_4,
      CO(2) => write_ddr_full_carry_n_5,
      CO(1) => write_ddr_full_carry_n_6,
      CO(0) => write_ddr_full_carry_n_7,
      DI(7) => write_ddr_full_carry_i_1_n_0,
      DI(6) => write_ddr_full_carry_i_2_n_0,
      DI(5) => write_ddr_full_carry_i_3_n_0,
      DI(4) => write_ddr_full_carry_i_4_n_0,
      DI(3) => write_ddr_full_carry_i_5_n_0,
      DI(2) => write_ddr_full_carry_i_6_n_0,
      DI(1) => write_ddr_full_carry_i_7_n_0,
      DI(0) => write_ddr_full_carry_i_8_n_0,
      O(7 downto 0) => NLW_write_ddr_full_carry_O_UNCONNECTED(7 downto 0),
      S(7) => write_ddr_full_carry_i_9_n_0,
      S(6) => write_ddr_full_carry_i_10_n_0,
      S(5) => write_ddr_full_carry_i_11_n_0,
      S(4) => write_ddr_full_carry_i_12_n_0,
      S(3) => write_ddr_full_carry_i_13_n_0,
      S(2) => write_ddr_full_carry_i_14_n_0,
      S(1) => write_ddr_full_carry_i_15_n_0,
      S(0) => write_ddr_full_carry_i_16_n_0
    );
\write_ddr_full_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => write_ddr_full_carry_n_0,
      CI_TOP => '0',
      CO(7) => \^ila_write_ddr_full\,
      CO(6) => \write_ddr_full_carry__0_n_1\,
      CO(5) => \write_ddr_full_carry__0_n_2\,
      CO(4) => \write_ddr_full_carry__0_n_3\,
      CO(3) => \write_ddr_full_carry__0_n_4\,
      CO(2) => \write_ddr_full_carry__0_n_5\,
      CO(1) => \write_ddr_full_carry__0_n_6\,
      CO(0) => \write_ddr_full_carry__0_n_7\,
      DI(7) => \write_ddr_full_carry__0_i_1_n_0\,
      DI(6) => \write_ddr_full_carry__0_i_2_n_0\,
      DI(5) => \write_ddr_full_carry__0_i_3_n_0\,
      DI(4) => \write_ddr_full_carry__0_i_4_n_0\,
      DI(3) => \write_ddr_full_carry__0_i_5_n_0\,
      DI(2) => \write_ddr_full_carry__0_i_6_n_0\,
      DI(1) => \write_ddr_full_carry__0_i_7_n_0\,
      DI(0) => \write_ddr_full_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_write_ddr_full_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \write_ddr_full_carry__0_i_9_n_0\,
      S(6) => \write_ddr_full_carry__0_i_10_n_0\,
      S(5) => \write_ddr_full_carry__0_i_11_n_0\,
      S(4) => \write_ddr_full_carry__0_i_12_n_0\,
      S(3) => \write_ddr_full_carry__0_i_13_n_0\,
      S(2) => \write_ddr_full_carry__0_i_14_n_0\,
      S(1) => \write_ddr_full_carry__0_i_15_n_0\,
      S(0) => \write_ddr_full_carry__0_i_16_n_0\
    );
\write_ddr_full_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(31),
      I1 => write_ddr_size(31),
      I2 => \^write_ddr_occupation_reg[31]_0\(30),
      I3 => write_ddr_size(30),
      O => \write_ddr_full_carry__0_i_1_n_0\
    );
\write_ddr_full_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(29),
      I1 => \^write_ddr_occupation_reg[31]_0\(29),
      I2 => write_ddr_size(28),
      I3 => \^write_ddr_occupation_reg[31]_0\(28),
      O => \write_ddr_full_carry__0_i_10_n_0\
    );
\write_ddr_full_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(27),
      I1 => \^write_ddr_occupation_reg[31]_0\(27),
      I2 => write_ddr_size(26),
      I3 => \^write_ddr_occupation_reg[31]_0\(26),
      O => \write_ddr_full_carry__0_i_11_n_0\
    );
\write_ddr_full_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(25),
      I1 => \^write_ddr_occupation_reg[31]_0\(25),
      I2 => write_ddr_size(24),
      I3 => \^write_ddr_occupation_reg[31]_0\(24),
      O => \write_ddr_full_carry__0_i_12_n_0\
    );
\write_ddr_full_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(23),
      I1 => \^write_ddr_occupation_reg[31]_0\(23),
      I2 => write_ddr_size(22),
      I3 => \^write_ddr_occupation_reg[31]_0\(22),
      O => \write_ddr_full_carry__0_i_13_n_0\
    );
\write_ddr_full_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(21),
      I1 => \^write_ddr_occupation_reg[31]_0\(21),
      I2 => write_ddr_size(20),
      I3 => \^write_ddr_occupation_reg[31]_0\(20),
      O => \write_ddr_full_carry__0_i_14_n_0\
    );
\write_ddr_full_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(19),
      I1 => \^write_ddr_occupation_reg[31]_0\(19),
      I2 => write_ddr_size(18),
      I3 => \^write_ddr_occupation_reg[31]_0\(18),
      O => \write_ddr_full_carry__0_i_15_n_0\
    );
\write_ddr_full_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(17),
      I1 => \^write_ddr_occupation_reg[31]_0\(17),
      I2 => write_ddr_size(16),
      I3 => \^write_ddr_occupation_reg[31]_0\(16),
      O => \write_ddr_full_carry__0_i_16_n_0\
    );
\write_ddr_full_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(29),
      I1 => write_ddr_size(29),
      I2 => \^write_ddr_occupation_reg[31]_0\(28),
      I3 => write_ddr_size(28),
      O => \write_ddr_full_carry__0_i_2_n_0\
    );
\write_ddr_full_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(27),
      I1 => write_ddr_size(27),
      I2 => \^write_ddr_occupation_reg[31]_0\(26),
      I3 => write_ddr_size(26),
      O => \write_ddr_full_carry__0_i_3_n_0\
    );
\write_ddr_full_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(25),
      I1 => write_ddr_size(25),
      I2 => \^write_ddr_occupation_reg[31]_0\(24),
      I3 => write_ddr_size(24),
      O => \write_ddr_full_carry__0_i_4_n_0\
    );
\write_ddr_full_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(23),
      I1 => write_ddr_size(23),
      I2 => \^write_ddr_occupation_reg[31]_0\(22),
      I3 => write_ddr_size(22),
      O => \write_ddr_full_carry__0_i_5_n_0\
    );
\write_ddr_full_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(21),
      I1 => write_ddr_size(21),
      I2 => \^write_ddr_occupation_reg[31]_0\(20),
      I3 => write_ddr_size(20),
      O => \write_ddr_full_carry__0_i_6_n_0\
    );
\write_ddr_full_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(19),
      I1 => write_ddr_size(19),
      I2 => \^write_ddr_occupation_reg[31]_0\(18),
      I3 => write_ddr_size(18),
      O => \write_ddr_full_carry__0_i_7_n_0\
    );
\write_ddr_full_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(17),
      I1 => write_ddr_size(17),
      I2 => \^write_ddr_occupation_reg[31]_0\(16),
      I3 => write_ddr_size(16),
      O => \write_ddr_full_carry__0_i_8_n_0\
    );
\write_ddr_full_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(31),
      I1 => \^write_ddr_occupation_reg[31]_0\(31),
      I2 => write_ddr_size(30),
      I3 => \^write_ddr_occupation_reg[31]_0\(30),
      O => \write_ddr_full_carry__0_i_9_n_0\
    );
write_ddr_full_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(15),
      I1 => write_ddr_size(15),
      I2 => \^write_ddr_occupation_reg[31]_0\(14),
      I3 => write_ddr_size(14),
      O => write_ddr_full_carry_i_1_n_0
    );
write_ddr_full_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(13),
      I1 => \^write_ddr_occupation_reg[31]_0\(13),
      I2 => write_ddr_size(12),
      I3 => \^write_ddr_occupation_reg[31]_0\(12),
      O => write_ddr_full_carry_i_10_n_0
    );
write_ddr_full_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(11),
      I1 => \^write_ddr_occupation_reg[31]_0\(11),
      I2 => write_ddr_size(10),
      I3 => \^write_ddr_occupation_reg[31]_0\(10),
      O => write_ddr_full_carry_i_11_n_0
    );
write_ddr_full_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(9),
      I1 => \^write_ddr_occupation_reg[31]_0\(9),
      I2 => write_ddr_size(8),
      I3 => \^write_ddr_occupation_reg[31]_0\(8),
      O => write_ddr_full_carry_i_12_n_0
    );
write_ddr_full_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(7),
      I1 => \^write_ddr_occupation_reg[31]_0\(7),
      I2 => write_ddr_size(6),
      I3 => \^write_ddr_occupation_reg[31]_0\(6),
      O => write_ddr_full_carry_i_13_n_0
    );
write_ddr_full_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(5),
      I1 => \^write_ddr_occupation_reg[31]_0\(5),
      I2 => write_ddr_size(4),
      I3 => \^write_ddr_occupation_reg[31]_0\(4),
      O => write_ddr_full_carry_i_14_n_0
    );
write_ddr_full_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(3),
      I1 => \^write_ddr_occupation_reg[31]_0\(3),
      I2 => write_ddr_size(2),
      I3 => \^write_ddr_occupation_reg[31]_0\(2),
      O => write_ddr_full_carry_i_15_n_0
    );
write_ddr_full_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(1),
      I1 => \^write_ddr_occupation_reg[31]_0\(1),
      I2 => write_ddr_size(0),
      I3 => \^write_ddr_occupation_reg[31]_0\(0),
      O => write_ddr_full_carry_i_16_n_0
    );
write_ddr_full_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(13),
      I1 => write_ddr_size(13),
      I2 => \^write_ddr_occupation_reg[31]_0\(12),
      I3 => write_ddr_size(12),
      O => write_ddr_full_carry_i_2_n_0
    );
write_ddr_full_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(11),
      I1 => write_ddr_size(11),
      I2 => \^write_ddr_occupation_reg[31]_0\(10),
      I3 => write_ddr_size(10),
      O => write_ddr_full_carry_i_3_n_0
    );
write_ddr_full_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(9),
      I1 => write_ddr_size(9),
      I2 => \^write_ddr_occupation_reg[31]_0\(8),
      I3 => write_ddr_size(8),
      O => write_ddr_full_carry_i_4_n_0
    );
write_ddr_full_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(7),
      I1 => write_ddr_size(7),
      I2 => \^write_ddr_occupation_reg[31]_0\(6),
      I3 => write_ddr_size(6),
      O => write_ddr_full_carry_i_5_n_0
    );
write_ddr_full_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(5),
      I1 => write_ddr_size(5),
      I2 => \^write_ddr_occupation_reg[31]_0\(4),
      I3 => write_ddr_size(4),
      O => write_ddr_full_carry_i_6_n_0
    );
write_ddr_full_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(3),
      I1 => write_ddr_size(3),
      I2 => \^write_ddr_occupation_reg[31]_0\(2),
      I3 => write_ddr_size(2),
      O => write_ddr_full_carry_i_7_n_0
    );
write_ddr_full_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^write_ddr_occupation_reg[31]_0\(1),
      I1 => write_ddr_size(1),
      I2 => \^write_ddr_occupation_reg[31]_0\(0),
      I3 => write_ddr_size(0),
      O => write_ddr_full_carry_i_8_n_0
    );
write_ddr_full_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_size(15),
      I1 => \^write_ddr_occupation_reg[31]_0\(15),
      I2 => write_ddr_size(14),
      I3 => \^write_ddr_occupation_reg[31]_0\(14),
      O => write_ddr_full_carry_i_9_n_0
    );
write_ddr_has_space0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => write_ddr_has_space0_carry_n_0,
      CO(6) => write_ddr_has_space0_carry_n_1,
      CO(5) => write_ddr_has_space0_carry_n_2,
      CO(4) => write_ddr_has_space0_carry_n_3,
      CO(3) => write_ddr_has_space0_carry_n_4,
      CO(2) => write_ddr_has_space0_carry_n_5,
      CO(1) => write_ddr_has_space0_carry_n_6,
      CO(0) => write_ddr_has_space0_carry_n_7,
      DI(7 downto 0) => write_ddr_size(7 downto 0),
      O(7 downto 0) => write_ddr_has_space0(7 downto 0),
      S(7) => write_ddr_has_space0_carry_i_1_n_0,
      S(6) => write_ddr_has_space0_carry_i_2_n_0,
      S(5) => write_ddr_has_space0_carry_i_3_n_0,
      S(4) => write_ddr_has_space0_carry_i_4_n_0,
      S(3) => write_ddr_has_space0_carry_i_5_n_0,
      S(2) => write_ddr_has_space0_carry_i_6_n_0,
      S(1) => write_ddr_has_space0_carry_i_7_n_0,
      S(0) => write_ddr_has_space0_carry_i_8_n_0
    );
\write_ddr_has_space0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => write_ddr_has_space0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \write_ddr_has_space0_carry__0_n_0\,
      CO(6) => \write_ddr_has_space0_carry__0_n_1\,
      CO(5) => \write_ddr_has_space0_carry__0_n_2\,
      CO(4) => \write_ddr_has_space0_carry__0_n_3\,
      CO(3) => \write_ddr_has_space0_carry__0_n_4\,
      CO(2) => \write_ddr_has_space0_carry__0_n_5\,
      CO(1) => \write_ddr_has_space0_carry__0_n_6\,
      CO(0) => \write_ddr_has_space0_carry__0_n_7\,
      DI(7 downto 0) => write_ddr_size(15 downto 8),
      O(7 downto 0) => write_ddr_has_space0(15 downto 8),
      S(7) => \write_ddr_has_space0_carry__0_i_1_n_0\,
      S(6) => \write_ddr_has_space0_carry__0_i_2_n_0\,
      S(5) => \write_ddr_has_space0_carry__0_i_3_n_0\,
      S(4) => \write_ddr_has_space0_carry__0_i_4_n_0\,
      S(3) => \write_ddr_has_space0_carry__0_i_5_n_0\,
      S(2) => \write_ddr_has_space0_carry__0_i_6_n_0\,
      S(1) => \write_ddr_has_space0_carry__0_i_7_n_0\,
      S(0) => \write_ddr_has_space0_carry__0_i_8_n_0\
    );
\write_ddr_has_space0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(15),
      I1 => \^write_ddr_occupation_reg[31]_0\(15),
      O => \write_ddr_has_space0_carry__0_i_1_n_0\
    );
\write_ddr_has_space0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(14),
      I1 => \^write_ddr_occupation_reg[31]_0\(14),
      O => \write_ddr_has_space0_carry__0_i_2_n_0\
    );
\write_ddr_has_space0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(13),
      I1 => \^write_ddr_occupation_reg[31]_0\(13),
      O => \write_ddr_has_space0_carry__0_i_3_n_0\
    );
\write_ddr_has_space0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(12),
      I1 => \^write_ddr_occupation_reg[31]_0\(12),
      O => \write_ddr_has_space0_carry__0_i_4_n_0\
    );
\write_ddr_has_space0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(11),
      I1 => \^write_ddr_occupation_reg[31]_0\(11),
      O => \write_ddr_has_space0_carry__0_i_5_n_0\
    );
\write_ddr_has_space0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(10),
      I1 => \^write_ddr_occupation_reg[31]_0\(10),
      O => \write_ddr_has_space0_carry__0_i_6_n_0\
    );
\write_ddr_has_space0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(9),
      I1 => \^write_ddr_occupation_reg[31]_0\(9),
      O => \write_ddr_has_space0_carry__0_i_7_n_0\
    );
\write_ddr_has_space0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(8),
      I1 => \^write_ddr_occupation_reg[31]_0\(8),
      O => \write_ddr_has_space0_carry__0_i_8_n_0\
    );
\write_ddr_has_space0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \write_ddr_has_space0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \write_ddr_has_space0_carry__1_n_0\,
      CO(6) => \write_ddr_has_space0_carry__1_n_1\,
      CO(5) => \write_ddr_has_space0_carry__1_n_2\,
      CO(4) => \write_ddr_has_space0_carry__1_n_3\,
      CO(3) => \write_ddr_has_space0_carry__1_n_4\,
      CO(2) => \write_ddr_has_space0_carry__1_n_5\,
      CO(1) => \write_ddr_has_space0_carry__1_n_6\,
      CO(0) => \write_ddr_has_space0_carry__1_n_7\,
      DI(7 downto 0) => write_ddr_size(23 downto 16),
      O(7 downto 0) => write_ddr_has_space0(23 downto 16),
      S(7) => \write_ddr_has_space0_carry__1_i_1_n_0\,
      S(6) => \write_ddr_has_space0_carry__1_i_2_n_0\,
      S(5) => \write_ddr_has_space0_carry__1_i_3_n_0\,
      S(4) => \write_ddr_has_space0_carry__1_i_4_n_0\,
      S(3) => \write_ddr_has_space0_carry__1_i_5_n_0\,
      S(2) => \write_ddr_has_space0_carry__1_i_6_n_0\,
      S(1) => \write_ddr_has_space0_carry__1_i_7_n_0\,
      S(0) => \write_ddr_has_space0_carry__1_i_8_n_0\
    );
\write_ddr_has_space0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(23),
      I1 => \^write_ddr_occupation_reg[31]_0\(23),
      O => \write_ddr_has_space0_carry__1_i_1_n_0\
    );
\write_ddr_has_space0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(22),
      I1 => \^write_ddr_occupation_reg[31]_0\(22),
      O => \write_ddr_has_space0_carry__1_i_2_n_0\
    );
\write_ddr_has_space0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(21),
      I1 => \^write_ddr_occupation_reg[31]_0\(21),
      O => \write_ddr_has_space0_carry__1_i_3_n_0\
    );
\write_ddr_has_space0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(20),
      I1 => \^write_ddr_occupation_reg[31]_0\(20),
      O => \write_ddr_has_space0_carry__1_i_4_n_0\
    );
\write_ddr_has_space0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(19),
      I1 => \^write_ddr_occupation_reg[31]_0\(19),
      O => \write_ddr_has_space0_carry__1_i_5_n_0\
    );
\write_ddr_has_space0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(18),
      I1 => \^write_ddr_occupation_reg[31]_0\(18),
      O => \write_ddr_has_space0_carry__1_i_6_n_0\
    );
\write_ddr_has_space0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(17),
      I1 => \^write_ddr_occupation_reg[31]_0\(17),
      O => \write_ddr_has_space0_carry__1_i_7_n_0\
    );
\write_ddr_has_space0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(16),
      I1 => \^write_ddr_occupation_reg[31]_0\(16),
      O => \write_ddr_has_space0_carry__1_i_8_n_0\
    );
\write_ddr_has_space0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \write_ddr_has_space0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_write_ddr_has_space0_carry__2_CO_UNCONNECTED\(7),
      CO(6) => \write_ddr_has_space0_carry__2_n_1\,
      CO(5) => \write_ddr_has_space0_carry__2_n_2\,
      CO(4) => \write_ddr_has_space0_carry__2_n_3\,
      CO(3) => \write_ddr_has_space0_carry__2_n_4\,
      CO(2) => \write_ddr_has_space0_carry__2_n_5\,
      CO(1) => \write_ddr_has_space0_carry__2_n_6\,
      CO(0) => \write_ddr_has_space0_carry__2_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => write_ddr_size(30 downto 24),
      O(7 downto 0) => write_ddr_has_space0(31 downto 24),
      S(7) => \write_ddr_has_space0_carry__2_i_1_n_0\,
      S(6) => \write_ddr_has_space0_carry__2_i_2_n_0\,
      S(5) => \write_ddr_has_space0_carry__2_i_3_n_0\,
      S(4) => \write_ddr_has_space0_carry__2_i_4_n_0\,
      S(3) => \write_ddr_has_space0_carry__2_i_5_n_0\,
      S(2) => \write_ddr_has_space0_carry__2_i_6_n_0\,
      S(1) => \write_ddr_has_space0_carry__2_i_7_n_0\,
      S(0) => \write_ddr_has_space0_carry__2_i_8_n_0\
    );
\write_ddr_has_space0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(31),
      I1 => \^write_ddr_occupation_reg[31]_0\(31),
      O => \write_ddr_has_space0_carry__2_i_1_n_0\
    );
\write_ddr_has_space0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(30),
      I1 => \^write_ddr_occupation_reg[31]_0\(30),
      O => \write_ddr_has_space0_carry__2_i_2_n_0\
    );
\write_ddr_has_space0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(29),
      I1 => \^write_ddr_occupation_reg[31]_0\(29),
      O => \write_ddr_has_space0_carry__2_i_3_n_0\
    );
\write_ddr_has_space0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(28),
      I1 => \^write_ddr_occupation_reg[31]_0\(28),
      O => \write_ddr_has_space0_carry__2_i_4_n_0\
    );
\write_ddr_has_space0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(27),
      I1 => \^write_ddr_occupation_reg[31]_0\(27),
      O => \write_ddr_has_space0_carry__2_i_5_n_0\
    );
\write_ddr_has_space0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(26),
      I1 => \^write_ddr_occupation_reg[31]_0\(26),
      O => \write_ddr_has_space0_carry__2_i_6_n_0\
    );
\write_ddr_has_space0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(25),
      I1 => \^write_ddr_occupation_reg[31]_0\(25),
      O => \write_ddr_has_space0_carry__2_i_7_n_0\
    );
\write_ddr_has_space0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(24),
      I1 => \^write_ddr_occupation_reg[31]_0\(24),
      O => \write_ddr_has_space0_carry__2_i_8_n_0\
    );
write_ddr_has_space0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(7),
      I1 => \^write_ddr_occupation_reg[31]_0\(7),
      O => write_ddr_has_space0_carry_i_1_n_0
    );
write_ddr_has_space0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(6),
      I1 => \^write_ddr_occupation_reg[31]_0\(6),
      O => write_ddr_has_space0_carry_i_2_n_0
    );
write_ddr_has_space0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(5),
      I1 => \^write_ddr_occupation_reg[31]_0\(5),
      O => write_ddr_has_space0_carry_i_3_n_0
    );
write_ddr_has_space0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(4),
      I1 => \^write_ddr_occupation_reg[31]_0\(4),
      O => write_ddr_has_space0_carry_i_4_n_0
    );
write_ddr_has_space0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(3),
      I1 => \^write_ddr_occupation_reg[31]_0\(3),
      O => write_ddr_has_space0_carry_i_5_n_0
    );
write_ddr_has_space0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(2),
      I1 => \^write_ddr_occupation_reg[31]_0\(2),
      O => write_ddr_has_space0_carry_i_6_n_0
    );
write_ddr_has_space0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(1),
      I1 => \^write_ddr_occupation_reg[31]_0\(1),
      O => write_ddr_has_space0_carry_i_7_n_0
    );
write_ddr_has_space0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_ddr_size(0),
      I1 => \^write_ddr_occupation_reg[31]_0\(0),
      O => write_ddr_has_space0_carry_i_8_n_0
    );
write_ddr_has_space_carry: unisim.vcomponents.CARRY8
     port map (
      CI => write_ddr_has_space_carry_i_1_n_0,
      CI_TOP => '0',
      CO(7) => write_ddr_has_space_carry_n_0,
      CO(6) => write_ddr_has_space_carry_n_1,
      CO(5) => write_ddr_has_space_carry_n_2,
      CO(4) => write_ddr_has_space_carry_n_3,
      CO(3) => write_ddr_has_space_carry_n_4,
      CO(2) => write_ddr_has_space_carry_n_5,
      CO(1) => write_ddr_has_space_carry_n_6,
      CO(0) => write_ddr_has_space_carry_n_7,
      DI(7) => write_ddr_has_space_carry_i_2_n_0,
      DI(6) => write_ddr_has_space_carry_i_3_n_0,
      DI(5) => write_ddr_has_space_carry_i_4_n_0,
      DI(4) => write_ddr_has_space_carry_i_5_n_0,
      DI(3) => write_ddr_has_space_carry_i_6_n_0,
      DI(2) => write_ddr_has_space_carry_i_7_n_0,
      DI(1) => write_ddr_has_space_carry_i_8_n_0,
      DI(0) => write_ddr_has_space_carry_i_9_n_0,
      O(7 downto 0) => NLW_write_ddr_has_space_carry_O_UNCONNECTED(7 downto 0),
      S(7) => write_ddr_has_space_carry_i_10_n_0,
      S(6) => write_ddr_has_space_carry_i_11_n_0,
      S(5) => write_ddr_has_space_carry_i_12_n_0,
      S(4) => write_ddr_has_space_carry_i_13_n_0,
      S(3) => write_ddr_has_space_carry_i_14_n_0,
      S(2) => write_ddr_has_space_carry_i_15_n_0,
      S(1) => write_ddr_has_space_carry_i_16_n_0,
      S(0) => write_ddr_has_space_carry_i_17_n_0
    );
\write_ddr_has_space_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => write_ddr_has_space_carry_n_0,
      CI_TOP => '0',
      CO(7) => \NLW_write_ddr_has_space_carry__0_CO_UNCONNECTED\(7),
      CO(6) => \^co\(0),
      CO(5) => \write_ddr_has_space_carry__0_n_2\,
      CO(4) => \write_ddr_has_space_carry__0_n_3\,
      CO(3) => \write_ddr_has_space_carry__0_n_4\,
      CO(2) => \write_ddr_has_space_carry__0_n_5\,
      CO(1) => \write_ddr_has_space_carry__0_n_6\,
      CO(0) => \write_ddr_has_space_carry__0_n_7\,
      DI(7) => '0',
      DI(6) => \write_ddr_has_space_carry__0_i_1_n_0\,
      DI(5) => \write_ddr_has_space_carry__0_i_2_n_0\,
      DI(4) => \write_ddr_has_space_carry__0_i_3_n_0\,
      DI(3) => \write_ddr_has_space_carry__0_i_4_n_0\,
      DI(2) => \write_ddr_has_space_carry__0_i_5_n_0\,
      DI(1) => \write_ddr_has_space_carry__0_i_6_n_0\,
      DI(0) => \write_ddr_has_space_carry__0_i_7_n_0\,
      O(7 downto 0) => \NLW_write_ddr_has_space_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => '0',
      S(6) => \write_ddr_has_space_carry__0_i_8_n_0\,
      S(5) => \write_ddr_has_space_carry__0_i_9_n_0\,
      S(4) => \write_ddr_has_space_carry__0_i_10_n_0\,
      S(3) => \write_ddr_has_space_carry__0_i_11_n_0\,
      S(2) => \write_ddr_has_space_carry__0_i_12_n_0\,
      S(1) => \write_ddr_has_space_carry__0_i_13_n_0\,
      S(0) => \write_ddr_has_space_carry__0_i_14_n_0\
    );
\write_ddr_has_space_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_ddr_has_space0(30),
      I1 => write_ddr_has_space0(31),
      O => \write_ddr_has_space_carry__0_i_1_n_0\
    );
\write_ddr_has_space_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_ddr_has_space0(27),
      I1 => write_ddr_has_space0(26),
      O => \write_ddr_has_space_carry__0_i_10_n_0\
    );
\write_ddr_has_space_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_ddr_has_space0(25),
      I1 => write_ddr_has_space0(24),
      O => \write_ddr_has_space_carry__0_i_11_n_0\
    );
\write_ddr_has_space_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_ddr_has_space0(23),
      I1 => write_ddr_has_space0(22),
      O => \write_ddr_has_space_carry__0_i_12_n_0\
    );
\write_ddr_has_space_carry__0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_ddr_has_space0(21),
      I1 => write_ddr_has_space0(20),
      O => \write_ddr_has_space_carry__0_i_13_n_0\
    );
\write_ddr_has_space_carry__0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_ddr_has_space0(19),
      I1 => write_ddr_has_space0(18),
      O => \write_ddr_has_space_carry__0_i_14_n_0\
    );
\write_ddr_has_space_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_ddr_has_space0(28),
      I1 => write_ddr_has_space0(29),
      O => \write_ddr_has_space_carry__0_i_2_n_0\
    );
\write_ddr_has_space_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_ddr_has_space0(26),
      I1 => write_ddr_has_space0(27),
      O => \write_ddr_has_space_carry__0_i_3_n_0\
    );
\write_ddr_has_space_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_ddr_has_space0(24),
      I1 => write_ddr_has_space0(25),
      O => \write_ddr_has_space_carry__0_i_4_n_0\
    );
\write_ddr_has_space_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_ddr_has_space0(22),
      I1 => write_ddr_has_space0(23),
      O => \write_ddr_has_space_carry__0_i_5_n_0\
    );
\write_ddr_has_space_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_ddr_has_space0(20),
      I1 => write_ddr_has_space0(21),
      O => \write_ddr_has_space_carry__0_i_6_n_0\
    );
\write_ddr_has_space_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_ddr_has_space0(18),
      I1 => write_ddr_has_space0(19),
      O => \write_ddr_has_space_carry__0_i_7_n_0\
    );
\write_ddr_has_space_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_ddr_has_space0(31),
      I1 => write_ddr_has_space0(30),
      O => \write_ddr_has_space_carry__0_i_8_n_0\
    );
\write_ddr_has_space_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_ddr_has_space0(29),
      I1 => write_ddr_has_space0(28),
      O => \write_ddr_has_space_carry__0_i_9_n_0\
    );
write_ddr_has_space_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_ddr_has_space0(1),
      I1 => write_ddr_has_space0(0),
      O => write_ddr_has_space_carry_i_1_n_0
    );
write_ddr_has_space_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_ddr_has_space0(17),
      I1 => write_ddr_has_space0(16),
      O => write_ddr_has_space_carry_i_10_n_0
    );
write_ddr_has_space_carry_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_ddr_has_space0(15),
      I1 => write_ddr_has_space0(14),
      O => write_ddr_has_space_carry_i_11_n_0
    );
write_ddr_has_space_carry_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => write_burst_len(8),
      I1 => write_ddr_has_space0(12),
      I2 => write_ddr_has_space0(13),
      O => write_ddr_has_space_carry_i_12_n_0
    );
write_ddr_has_space_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_burst_len(7),
      I1 => write_ddr_has_space0(11),
      I2 => write_burst_len(6),
      I3 => write_ddr_has_space0(10),
      O => write_ddr_has_space_carry_i_13_n_0
    );
write_ddr_has_space_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_burst_len(5),
      I1 => write_ddr_has_space0(9),
      I2 => write_burst_len(4),
      I3 => write_ddr_has_space0(8),
      O => write_ddr_has_space_carry_i_14_n_0
    );
write_ddr_has_space_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_has_space0(7),
      I1 => write_burst_len(3),
      I2 => write_ddr_has_space0(6),
      I3 => write_burst_len(2),
      O => write_ddr_has_space_carry_i_15_n_0
    );
write_ddr_has_space_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_ddr_has_space0(4),
      I1 => write_burst_len(0),
      I2 => write_ddr_has_space0(5),
      I3 => write_burst_len(1),
      O => write_ddr_has_space_carry_i_16_n_0
    );
write_ddr_has_space_carry_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_ddr_has_space0(3),
      I1 => write_ddr_has_space0(2),
      O => write_ddr_has_space_carry_i_17_n_0
    );
write_ddr_has_space_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_ddr_has_space0(16),
      I1 => write_ddr_has_space0(17),
      O => write_ddr_has_space_carry_i_2_n_0
    );
write_ddr_has_space_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_ddr_has_space0(14),
      I1 => write_ddr_has_space0(15),
      O => write_ddr_has_space_carry_i_3_n_0
    );
write_ddr_has_space_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => write_burst_len(8),
      I1 => write_ddr_has_space0(12),
      I2 => write_ddr_has_space0(13),
      O => write_ddr_has_space_carry_i_4_n_0
    );
write_ddr_has_space_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"50D4"
    )
        port map (
      I0 => write_burst_len(7),
      I1 => write_ddr_has_space0(10),
      I2 => write_ddr_has_space0(11),
      I3 => write_burst_len(6),
      O => write_ddr_has_space_carry_i_5_n_0
    );
write_ddr_has_space_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_ddr_has_space0(9),
      I1 => write_burst_len(5),
      I2 => write_ddr_has_space0(8),
      I3 => write_burst_len(4),
      O => write_ddr_has_space_carry_i_6_n_0
    );
write_ddr_has_space_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"50D4"
    )
        port map (
      I0 => write_burst_len(3),
      I1 => write_ddr_has_space0(6),
      I2 => write_ddr_has_space0(7),
      I3 => write_burst_len(2),
      O => write_ddr_has_space_carry_i_7_n_0
    );
write_ddr_has_space_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"50D4"
    )
        port map (
      I0 => write_burst_len(1),
      I1 => write_ddr_has_space0(4),
      I2 => write_ddr_has_space0(5),
      I3 => write_burst_len(0),
      O => write_ddr_has_space_carry_i_8_n_0
    );
write_ddr_has_space_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_ddr_has_space0(2),
      I1 => write_ddr_has_space0(3),
      O => write_ddr_has_space_carry_i_9_n_0
    );
\write_ddr_occupation0_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => \^write_ddr_occupation_reg[31]_0\(0),
      CI_TOP => '0',
      CO(7) => \write_ddr_occupation0_inferred__0/i__carry_n_0\,
      CO(6) => \write_ddr_occupation0_inferred__0/i__carry_n_1\,
      CO(5) => \write_ddr_occupation0_inferred__0/i__carry_n_2\,
      CO(4) => \write_ddr_occupation0_inferred__0/i__carry_n_3\,
      CO(3) => \write_ddr_occupation0_inferred__0/i__carry_n_4\,
      CO(2) => \write_ddr_occupation0_inferred__0/i__carry_n_5\,
      CO(1) => \write_ddr_occupation0_inferred__0/i__carry_n_6\,
      CO(0) => \write_ddr_occupation0_inferred__0/i__carry_n_7\,
      DI(7 downto 1) => \^write_ddr_occupation_reg[31]_0\(7 downto 1),
      DI(0) => \i__carry_i_1__0_n_0\,
      O(7 downto 0) => write_ddr_occupation(7 downto 0),
      S(7) => \i__carry_i_2__1_n_0\,
      S(6) => \i__carry_i_3__1_n_0\,
      S(5) => \i__carry_i_4__1_n_0\,
      S(4) => \i__carry_i_5__1_n_0\,
      S(3) => \i__carry_i_6__1_n_0\,
      S(2) => \i__carry_i_7__1_n_0\,
      S(1) => \i__carry_i_8__1_n_0\,
      S(0) => \i__carry_i_9__1_n_0\
    );
\write_ddr_occupation0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \write_ddr_occupation0_inferred__0/i__carry_n_0\,
      CI_TOP => '0',
      CO(7) => \write_ddr_occupation0_inferred__0/i__carry__0_n_0\,
      CO(6) => \write_ddr_occupation0_inferred__0/i__carry__0_n_1\,
      CO(5) => \write_ddr_occupation0_inferred__0/i__carry__0_n_2\,
      CO(4) => \write_ddr_occupation0_inferred__0/i__carry__0_n_3\,
      CO(3) => \write_ddr_occupation0_inferred__0/i__carry__0_n_4\,
      CO(2) => \write_ddr_occupation0_inferred__0/i__carry__0_n_5\,
      CO(1) => \write_ddr_occupation0_inferred__0/i__carry__0_n_6\,
      CO(0) => \write_ddr_occupation0_inferred__0/i__carry__0_n_7\,
      DI(7 downto 0) => \^write_ddr_occupation_reg[31]_0\(15 downto 8),
      O(7 downto 0) => write_ddr_occupation(15 downto 8),
      S(7) => \i__carry__0_i_1__1_n_0\,
      S(6) => \i__carry__0_i_2__1_n_0\,
      S(5) => \i__carry__0_i_3__1_n_0\,
      S(4) => \i__carry__0_i_4__1_n_0\,
      S(3) => \i__carry__0_i_5__1_n_0\,
      S(2) => \i__carry__0_i_6__1_n_0\,
      S(1) => \i__carry__0_i_7__1_n_0\,
      S(0) => \i__carry__0_i_8__1_n_0\
    );
\write_ddr_occupation0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \write_ddr_occupation0_inferred__0/i__carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \write_ddr_occupation0_inferred__0/i__carry__1_n_0\,
      CO(6) => \write_ddr_occupation0_inferred__0/i__carry__1_n_1\,
      CO(5) => \write_ddr_occupation0_inferred__0/i__carry__1_n_2\,
      CO(4) => \write_ddr_occupation0_inferred__0/i__carry__1_n_3\,
      CO(3) => \write_ddr_occupation0_inferred__0/i__carry__1_n_4\,
      CO(2) => \write_ddr_occupation0_inferred__0/i__carry__1_n_5\,
      CO(1) => \write_ddr_occupation0_inferred__0/i__carry__1_n_6\,
      CO(0) => \write_ddr_occupation0_inferred__0/i__carry__1_n_7\,
      DI(7 downto 2) => \^write_ddr_occupation_reg[31]_0\(22 downto 17),
      DI(1) => write_ddr_occupation121_out,
      DI(0) => \^write_ddr_occupation_reg[31]_0\(16),
      O(7 downto 0) => write_ddr_occupation(23 downto 16),
      S(7) => \i__carry__1_i_2_n_0\,
      S(6) => \i__carry__1_i_3_n_0\,
      S(5) => \i__carry__1_i_4_n_0\,
      S(4) => \i__carry__1_i_5_n_0\,
      S(3) => \i__carry__1_i_6_n_0\,
      S(2) => \i__carry__1_i_7_n_0\,
      S(1) => \i__carry__1_i_8__0_n_0\,
      S(0) => \i__carry__1_i_9__0_n_0\
    );
\write_ddr_occupation0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \write_ddr_occupation0_inferred__0/i__carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_write_ddr_occupation0_inferred__0/i__carry__2_CO_UNCONNECTED\(7),
      CO(6) => \write_ddr_occupation0_inferred__0/i__carry__2_n_1\,
      CO(5) => \write_ddr_occupation0_inferred__0/i__carry__2_n_2\,
      CO(4) => \write_ddr_occupation0_inferred__0/i__carry__2_n_3\,
      CO(3) => \write_ddr_occupation0_inferred__0/i__carry__2_n_4\,
      CO(2) => \write_ddr_occupation0_inferred__0/i__carry__2_n_5\,
      CO(1) => \write_ddr_occupation0_inferred__0/i__carry__2_n_6\,
      CO(0) => \write_ddr_occupation0_inferred__0/i__carry__2_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => \^write_ddr_occupation_reg[31]_0\(29 downto 23),
      O(7 downto 0) => write_ddr_occupation(31 downto 24),
      S(7) => \i__carry__2_i_1__0_n_0\,
      S(6) => \i__carry__2_i_2_n_0\,
      S(5) => \i__carry__2_i_3_n_0\,
      S(4) => \i__carry__2_i_4_n_0\,
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
\write_ddr_occupation1_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => \write_ddr_occupation1_inferred__0/i__carry_n_0\,
      CO(6) => \write_ddr_occupation1_inferred__0/i__carry_n_1\,
      CO(5) => \write_ddr_occupation1_inferred__0/i__carry_n_2\,
      CO(4) => \write_ddr_occupation1_inferred__0/i__carry_n_3\,
      CO(3) => \write_ddr_occupation1_inferred__0/i__carry_n_4\,
      CO(2) => \write_ddr_occupation1_inferred__0/i__carry_n_5\,
      CO(1) => \write_ddr_occupation1_inferred__0/i__carry_n_6\,
      CO(0) => \write_ddr_occupation1_inferred__0/i__carry_n_7\,
      DI(7) => \i__carry_i_1__1_n_0\,
      DI(6) => \i__carry_i_2_n_0\,
      DI(5) => \i__carry_i_3_n_0\,
      DI(4) => \i__carry_i_4_n_0\,
      DI(3) => \i__carry_i_5_n_0\,
      DI(2) => \i__carry_i_6_n_0\,
      DI(1) => \i__carry_i_7_n_0\,
      DI(0) => \i__carry_i_8_n_0\,
      O(7 downto 0) => \NLW_write_ddr_occupation1_inferred__0/i__carry_O_UNCONNECTED\(7 downto 0),
      S(7) => \i__carry_i_9_n_0\,
      S(6) => \i__carry_i_10_n_0\,
      S(5) => \i__carry_i_11_n_0\,
      S(4) => \i__carry_i_12_n_0\,
      S(3) => \i__carry_i_13_n_0\,
      S(2) => \i__carry_i_14_n_0\,
      S(1) => \i__carry_i_15_n_0\,
      S(0) => \i__carry_i_16_n_0\
    );
\write_ddr_occupation1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \write_ddr_occupation1_inferred__0/i__carry_n_0\,
      CI_TOP => '0',
      CO(7) => write_ddr_occupation1,
      CO(6) => \write_ddr_occupation1_inferred__0/i__carry__0_n_1\,
      CO(5) => \write_ddr_occupation1_inferred__0/i__carry__0_n_2\,
      CO(4) => \write_ddr_occupation1_inferred__0/i__carry__0_n_3\,
      CO(3) => \write_ddr_occupation1_inferred__0/i__carry__0_n_4\,
      CO(2) => \write_ddr_occupation1_inferred__0/i__carry__0_n_5\,
      CO(1) => \write_ddr_occupation1_inferred__0/i__carry__0_n_6\,
      CO(0) => \write_ddr_occupation1_inferred__0/i__carry__0_n_7\,
      DI(7) => \i__carry__0_i_1_n_0\,
      DI(6) => \i__carry__0_i_2_n_0\,
      DI(5) => \i__carry__0_i_3_n_0\,
      DI(4) => \i__carry__0_i_4_n_0\,
      DI(3) => \i__carry__0_i_5_n_0\,
      DI(2) => \i__carry__0_i_6_n_0\,
      DI(1) => \i__carry__0_i_7_n_0\,
      DI(0) => \i__carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_write_ddr_occupation1_inferred__0/i__carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \i__carry__0_i_9_n_0\,
      S(6) => \i__carry__0_i_10_n_0\,
      S(5) => \i__carry__0_i_11_n_0\,
      S(4) => \i__carry__0_i_12_n_0\,
      S(3) => \i__carry__0_i_13_n_0\,
      S(2) => \i__carry__0_i_14_n_0\,
      S(1) => \i__carry__0_i_15_n_0\,
      S(0) => \i__carry__0_i_16_n_0\
    );
\write_ddr_occupation[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0000"
    )
        port map (
      I0 => write_access_tick,
      I1 => write_ddr_occupation1,
      I2 => \^ila_write_access_tick_ack\,
      I3 => \^write_burst_tick_ack_reg_0\,
      I4 => \^write_burst_tick\,
      O => \write_ddr_occupation[31]_i_1_n_0\
    );
\write_ddr_occupation_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(0),
      Q => \^write_ddr_occupation_reg[31]_0\(0),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(10),
      Q => \^write_ddr_occupation_reg[31]_0\(10),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(11),
      Q => \^write_ddr_occupation_reg[31]_0\(11),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(12),
      Q => \^write_ddr_occupation_reg[31]_0\(12),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(13),
      Q => \^write_ddr_occupation_reg[31]_0\(13),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(14),
      Q => \^write_ddr_occupation_reg[31]_0\(14),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(15),
      Q => \^write_ddr_occupation_reg[31]_0\(15),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(16),
      Q => \^write_ddr_occupation_reg[31]_0\(16),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(17),
      Q => \^write_ddr_occupation_reg[31]_0\(17),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(18),
      Q => \^write_ddr_occupation_reg[31]_0\(18),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(19),
      Q => \^write_ddr_occupation_reg[31]_0\(19),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(1),
      Q => \^write_ddr_occupation_reg[31]_0\(1),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(20),
      Q => \^write_ddr_occupation_reg[31]_0\(20),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(21),
      Q => \^write_ddr_occupation_reg[31]_0\(21),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(22),
      Q => \^write_ddr_occupation_reg[31]_0\(22),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(23),
      Q => \^write_ddr_occupation_reg[31]_0\(23),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(24),
      Q => \^write_ddr_occupation_reg[31]_0\(24),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(25),
      Q => \^write_ddr_occupation_reg[31]_0\(25),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(26),
      Q => \^write_ddr_occupation_reg[31]_0\(26),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(27),
      Q => \^write_ddr_occupation_reg[31]_0\(27),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(28),
      Q => \^write_ddr_occupation_reg[31]_0\(28),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(29),
      Q => \^write_ddr_occupation_reg[31]_0\(29),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(2),
      Q => \^write_ddr_occupation_reg[31]_0\(2),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(30),
      Q => \^write_ddr_occupation_reg[31]_0\(30),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(31),
      Q => \^write_ddr_occupation_reg[31]_0\(31),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(3),
      Q => \^write_ddr_occupation_reg[31]_0\(3),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(4),
      Q => \^write_ddr_occupation_reg[31]_0\(4),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(5),
      Q => \^write_ddr_occupation_reg[31]_0\(5),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(6),
      Q => \^write_ddr_occupation_reg[31]_0\(6),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(7),
      Q => \^write_ddr_occupation_reg[31]_0\(7),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(8),
      Q => \^write_ddr_occupation_reg[31]_0\(8),
      R => m_axi_arvalid_i_1_n_0
    );
\write_ddr_occupation_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_ddr_occupation[31]_i_1_n_0\,
      D => write_ddr_occupation(9),
      Q => \^write_ddr_occupation_reg[31]_0\(9),
      R => m_axi_arvalid_i_1_n_0
    );
write_index1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 5) => NLW_write_index1_carry_CO_UNCONNECTED(7 downto 5),
      CO(4) => write_index1,
      CO(3) => write_index1_carry_n_4,
      CO(2) => write_index1_carry_n_5,
      CO(1) => write_index1_carry_n_6,
      CO(0) => write_index1_carry_n_7,
      DI(7 downto 4) => B"0000",
      DI(3) => write_index1_carry_i_1_n_0,
      DI(2) => write_index1_carry_i_2_n_0,
      DI(1) => write_index1_carry_i_3_n_0,
      DI(0) => write_index1_carry_i_4_n_0,
      O(7 downto 0) => NLW_write_index1_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 5) => B"000",
      S(4) => write_index1_carry_i_5_n_0,
      S(3) => write_index1_carry_i_6_n_0,
      S(2) => write_index1_carry_i_7_n_0,
      S(1) => write_index1_carry_i_8_n_0,
      S(0) => write_index1_carry_i_9_n_0
    );
write_index1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A981EB"
    )
        port map (
      I0 => write_burst_len(7),
      I1 => write_burst_len(6),
      I2 => write_burst_len_4_sn_1,
      I3 => \^write_index_reg[8]_0\(7),
      I4 => \^write_index_reg[8]_0\(6),
      O => write_index1_carry_i_1_n_0
    );
write_index1_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => write_burst_len(3),
      I1 => write_burst_len(2),
      I2 => write_burst_len(0),
      I3 => write_burst_len(1),
      O => write_index1_carry_i_10_n_0
    );
write_index1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2221B227"
    )
        port map (
      I0 => write_burst_len(5),
      I1 => \^write_index_reg[8]_0\(5),
      I2 => write_burst_len(4),
      I3 => write_index1_carry_i_10_n_0,
      I4 => \^write_index_reg[8]_0\(4),
      O => write_index1_carry_i_2_n_0
    );
write_index1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAA98881EEEB"
    )
        port map (
      I0 => write_burst_len(3),
      I1 => write_burst_len(2),
      I2 => write_burst_len(0),
      I3 => write_burst_len(1),
      I4 => \^write_index_reg[8]_0\(3),
      I5 => \^write_index_reg[8]_0\(2),
      O => write_index1_carry_i_3_n_0
    );
write_index1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4153"
    )
        port map (
      I0 => \^write_index_reg[8]_0\(1),
      I1 => write_burst_len(0),
      I2 => write_burst_len(1),
      I3 => \^write_index_reg[8]_0\(0),
      O => write_index1_carry_i_4_n_0
    );
write_index1_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^write_index_reg[8]_0\(8),
      O => write_index1_carry_i_5_n_0
    );
write_index1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060990"
    )
        port map (
      I0 => \^write_index_reg[8]_0\(7),
      I1 => write_burst_len(7),
      I2 => write_burst_len(6),
      I3 => write_burst_len_4_sn_1,
      I4 => \^write_index_reg[8]_0\(6),
      O => write_index1_carry_i_6_n_0
    );
write_index1_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060990"
    )
        port map (
      I0 => write_burst_len(5),
      I1 => \^write_index_reg[8]_0\(5),
      I2 => write_burst_len(4),
      I3 => write_index1_carry_i_10_n_0,
      I4 => \^write_index_reg[8]_0\(4),
      O => write_index1_carry_i_7_n_0
    );
write_index1_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090900609090990"
    )
        port map (
      I0 => \^write_index_reg[8]_0\(3),
      I1 => write_burst_len(3),
      I2 => write_burst_len(2),
      I3 => write_burst_len(0),
      I4 => write_burst_len(1),
      I5 => \^write_index_reg[8]_0\(2),
      O => write_index1_carry_i_8_n_0
    );
write_index1_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4218"
    )
        port map (
      I0 => \^write_index_reg[8]_0\(0),
      I1 => write_burst_len(1),
      I2 => write_burst_len(0),
      I3 => \^write_index_reg[8]_0\(1),
      O => write_index1_carry_i_9_n_0
    );
\write_index[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_state__0\(0),
      I2 => \^write_index_reg[8]_0\(0),
      O => write_index(0)
    );
\write_index[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => \write_state__0\(0),
      I1 => \write_state__0\(1),
      I2 => \^write_index_reg[8]_0\(0),
      I3 => \^write_index_reg[8]_0\(1),
      O => write_index(1)
    );
\write_index[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888000"
    )
        port map (
      I0 => \write_state__0\(0),
      I1 => \write_state__0\(1),
      I2 => \^write_index_reg[8]_0\(1),
      I3 => \^write_index_reg[8]_0\(0),
      I4 => \^write_index_reg[8]_0\(2),
      O => write_index(2)
    );
\write_index[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \write_index[8]_i_4_n_0\,
      I1 => \^write_index_reg[8]_0\(0),
      I2 => \^write_index_reg[8]_0\(1),
      I3 => \^write_index_reg[8]_0\(2),
      I4 => \^write_index_reg[8]_0\(3),
      O => write_index(3)
    );
\write_index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \^write_index_reg[8]_0\(0),
      I1 => \^write_index_reg[8]_0\(1),
      I2 => \^write_index_reg[8]_0\(2),
      I3 => \^write_index_reg[8]_0\(3),
      I4 => \write_index[8]_i_4_n_0\,
      I5 => \^write_index_reg[8]_0\(4),
      O => write_index(4)
    );
\write_index[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4080"
    )
        port map (
      I0 => \write_index[5]_i_2_n_0\,
      I1 => \write_state__0\(1),
      I2 => \write_state__0\(0),
      I3 => \^write_index_reg[8]_0\(5),
      O => write_index(5)
    );
\write_index[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^write_index_reg[8]_0\(4),
      I1 => \^write_index_reg[8]_0\(3),
      I2 => \^write_index_reg[8]_0\(2),
      I3 => \^write_index_reg[8]_0\(1),
      I4 => \^write_index_reg[8]_0\(0),
      O => \write_index[5]_i_2_n_0\
    );
\write_index[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8040"
    )
        port map (
      I0 => \write_index[8]_i_3_n_0\,
      I1 => \write_state__0\(1),
      I2 => \write_state__0\(0),
      I3 => \^write_index_reg[8]_0\(6),
      O => write_index(6)
    );
\write_index[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0002000"
    )
        port map (
      I0 => \^write_index_reg[8]_0\(6),
      I1 => \write_index[8]_i_3_n_0\,
      I2 => \write_state__0\(1),
      I3 => \write_state__0\(0),
      I4 => \^write_index_reg[8]_0\(7),
      O => write_index(7)
    );
\write_index[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008000FF00FF00FF"
    )
        port map (
      I0 => s_axis_rx_tvalid,
      I1 => m_axi_wready,
      I2 => write_index1,
      I3 => \write_state__0\(2),
      I4 => \write_state__0\(1),
      I5 => \write_state__0\(0),
      O => \write_index[8]_i_1_n_0\
    );
\write_index[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF004000"
    )
        port map (
      I0 => \write_index[8]_i_3_n_0\,
      I1 => \^write_index_reg[8]_0\(6),
      I2 => \^write_index_reg[8]_0\(7),
      I3 => \write_index[8]_i_4_n_0\,
      I4 => \^write_index_reg[8]_0\(8),
      O => write_index(8)
    );
\write_index[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_index_reg[8]_0\(0),
      I1 => \^write_index_reg[8]_0\(1),
      I2 => \^write_index_reg[8]_0\(2),
      I3 => \^write_index_reg[8]_0\(3),
      I4 => \^write_index_reg[8]_0\(4),
      I5 => \^write_index_reg[8]_0\(5),
      O => \write_index[8]_i_3_n_0\
    );
\write_index[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \write_state__0\(0),
      I1 => \write_state__0\(1),
      I2 => \write_state__0\(2),
      O => \write_index[8]_i_4_n_0\
    );
\write_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_index[8]_i_1_n_0\,
      D => write_index(0),
      Q => \^write_index_reg[8]_0\(0),
      R => m_axi_arvalid_i_1_n_0
    );
\write_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_index[8]_i_1_n_0\,
      D => write_index(1),
      Q => \^write_index_reg[8]_0\(1),
      R => m_axi_arvalid_i_1_n_0
    );
\write_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_index[8]_i_1_n_0\,
      D => write_index(2),
      Q => \^write_index_reg[8]_0\(2),
      R => m_axi_arvalid_i_1_n_0
    );
\write_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_index[8]_i_1_n_0\,
      D => write_index(3),
      Q => \^write_index_reg[8]_0\(3),
      R => m_axi_arvalid_i_1_n_0
    );
\write_index_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_index[8]_i_1_n_0\,
      D => write_index(4),
      Q => \^write_index_reg[8]_0\(4),
      R => m_axi_arvalid_i_1_n_0
    );
\write_index_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_index[8]_i_1_n_0\,
      D => write_index(5),
      Q => \^write_index_reg[8]_0\(5),
      R => m_axi_arvalid_i_1_n_0
    );
\write_index_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_index[8]_i_1_n_0\,
      D => write_index(6),
      Q => \^write_index_reg[8]_0\(6),
      R => m_axi_arvalid_i_1_n_0
    );
\write_index_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_index[8]_i_1_n_0\,
      D => write_index(7),
      Q => \^write_index_reg[8]_0\(7),
      R => m_axi_arvalid_i_1_n_0
    );
\write_index_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \write_index[8]_i_1_n_0\,
      D => write_index(8),
      Q => \^write_index_reg[8]_0\(8),
      R => m_axi_arvalid_i_1_n_0
    );
\write_overflow_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \write_state__0\(0),
      I1 => \^write_overflow_count_reg[7]_0\(0),
      O => \write_overflow_count[0]_i_1_n_0\
    );
\write_overflow_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \write_state__0\(0),
      I1 => \^write_overflow_count_reg[7]_0\(0),
      I2 => \^write_overflow_count_reg[7]_0\(1),
      O => \write_overflow_count[1]_i_1_n_0\
    );
\write_overflow_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \^write_overflow_count_reg[7]_0\(1),
      I1 => \^write_overflow_count_reg[7]_0\(0),
      I2 => \write_state__0\(0),
      I3 => \^write_overflow_count_reg[7]_0\(2),
      O => \write_overflow_count[2]_i_1_n_0\
    );
\write_overflow_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \^write_overflow_count_reg[7]_0\(2),
      I1 => \^write_overflow_count_reg[7]_0\(0),
      I2 => \^write_overflow_count_reg[7]_0\(1),
      I3 => \write_state__0\(0),
      I4 => \^write_overflow_count_reg[7]_0\(3),
      O => \write_overflow_count[3]_i_1_n_0\
    );
\write_overflow_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \^write_overflow_count_reg[7]_0\(3),
      I1 => \^write_overflow_count_reg[7]_0\(1),
      I2 => \^write_overflow_count_reg[7]_0\(0),
      I3 => \^write_overflow_count_reg[7]_0\(2),
      I4 => \^ila_write_state\(0),
      I5 => \^write_overflow_count_reg[7]_0\(4),
      O => \write_overflow_count[4]_i_1_n_0\
    );
\write_overflow_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \write_overflow_count[5]_i_2_n_0\,
      I1 => \write_state__0\(0),
      I2 => \^write_overflow_count_reg[7]_0\(5),
      O => \write_overflow_count[5]_i_1_n_0\
    );
\write_overflow_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^write_overflow_count_reg[7]_0\(4),
      I1 => \^write_overflow_count_reg[7]_0\(2),
      I2 => \^write_overflow_count_reg[7]_0\(0),
      I3 => \^write_overflow_count_reg[7]_0\(1),
      I4 => \^write_overflow_count_reg[7]_0\(3),
      O => \write_overflow_count[5]_i_2_n_0\
    );
\write_overflow_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \write_overflow_count[7]_i_3_n_0\,
      I1 => \write_state__0\(0),
      I2 => \^write_overflow_count_reg[7]_0\(6),
      O => \write_overflow_count[6]_i_1_n_0\
    );
\write_overflow_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008000F"
    )
        port map (
      I0 => write_overflow_ins1,
      I1 => \^ila_write_ddr_full\,
      I2 => \write_state__0\(2),
      I3 => \write_state__0\(1),
      I4 => \write_state__0\(0),
      O => \write_overflow_count[7]_i_1_n_0\
    );
\write_overflow_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \write_overflow_count[7]_i_3_n_0\,
      I1 => \^write_overflow_count_reg[7]_0\(6),
      I2 => \write_state__0\(0),
      I3 => \^write_overflow_count_reg[7]_0\(7),
      O => \write_overflow_count[7]_i_2_n_0\
    );
\write_overflow_count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^write_overflow_count_reg[7]_0\(5),
      I1 => \^write_overflow_count_reg[7]_0\(3),
      I2 => \^write_overflow_count_reg[7]_0\(1),
      I3 => \^write_overflow_count_reg[7]_0\(0),
      I4 => \^write_overflow_count_reg[7]_0\(2),
      I5 => \^write_overflow_count_reg[7]_0\(4),
      O => \write_overflow_count[7]_i_3_n_0\
    );
\write_overflow_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_overflow_count[7]_i_1_n_0\,
      D => \write_overflow_count[0]_i_1_n_0\,
      Q => \^write_overflow_count_reg[7]_0\(0),
      R => m_axi_arvalid_i_1_n_0
    );
\write_overflow_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_overflow_count[7]_i_1_n_0\,
      D => \write_overflow_count[1]_i_1_n_0\,
      Q => \^write_overflow_count_reg[7]_0\(1),
      R => m_axi_arvalid_i_1_n_0
    );
\write_overflow_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_overflow_count[7]_i_1_n_0\,
      D => \write_overflow_count[2]_i_1_n_0\,
      Q => \^write_overflow_count_reg[7]_0\(2),
      R => m_axi_arvalid_i_1_n_0
    );
\write_overflow_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_overflow_count[7]_i_1_n_0\,
      D => \write_overflow_count[3]_i_1_n_0\,
      Q => \^write_overflow_count_reg[7]_0\(3),
      R => m_axi_arvalid_i_1_n_0
    );
\write_overflow_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_overflow_count[7]_i_1_n_0\,
      D => \write_overflow_count[4]_i_1_n_0\,
      Q => \^write_overflow_count_reg[7]_0\(4),
      R => m_axi_arvalid_i_1_n_0
    );
\write_overflow_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_overflow_count[7]_i_1_n_0\,
      D => \write_overflow_count[5]_i_1_n_0\,
      Q => \^write_overflow_count_reg[7]_0\(5),
      R => m_axi_arvalid_i_1_n_0
    );
\write_overflow_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_overflow_count[7]_i_1_n_0\,
      D => \write_overflow_count[6]_i_1_n_0\,
      Q => \^write_overflow_count_reg[7]_0\(6),
      R => m_axi_arvalid_i_1_n_0
    );
\write_overflow_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_overflow_count[7]_i_1_n_0\,
      D => \write_overflow_count[7]_i_2_n_0\,
      Q => \^write_overflow_count_reg[7]_0\(7),
      R => m_axi_arvalid_i_1_n_0
    );
write_overflow_ins_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^ila_write_ddr_full\,
      I1 => \write_state__0\(0),
      I2 => write_overflow_ins1,
      O => write_overflow_ins_i_1_n_0
    );
write_overflow_ins_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => write_overflow_ins_i_3_n_0,
      I1 => write_overflow_ins_i_4_n_0,
      I2 => \^write_total_burst_count\(26),
      I3 => \^write_total_burst_count\(25),
      I4 => \^write_total_burst_count\(24),
      I5 => \^write_total_burst_count\(23),
      O => write_overflow_ins1
    );
write_overflow_ins_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => write_overflow_ins_i_5_n_0,
      I1 => \^write_total_burst_count\(27),
      I2 => \^write_total_burst_count\(28),
      I3 => \^write_total_burst_count\(29),
      I4 => \^write_total_burst_count\(30),
      O => write_overflow_ins_i_3_n_0
    );
write_overflow_ins_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^write_total_burst_count\(18),
      I1 => \^write_total_burst_count\(17),
      I2 => write_overflow_ins_i_6_n_0,
      I3 => write_overflow_ins_i_7_n_0,
      I4 => write_overflow_ins_i_8_n_0,
      I5 => write_overflow_ins_i_9_n_0,
      O => write_overflow_ins_i_4_n_0
    );
write_overflow_ins_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^write_total_burst_count\(19),
      I1 => \^write_total_burst_count\(20),
      I2 => \^write_total_burst_count\(21),
      I3 => \^write_total_burst_count\(22),
      I4 => \^write_total_burst_count\(0),
      I5 => \^write_total_burst_count\(31),
      O => write_overflow_ins_i_5_n_0
    );
write_overflow_ins_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^write_total_burst_count\(8),
      I1 => \^write_total_burst_count\(7),
      I2 => \^write_total_burst_count\(6),
      I3 => \^write_total_burst_count\(5),
      O => write_overflow_ins_i_6_n_0
    );
write_overflow_ins_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^write_total_burst_count\(4),
      I1 => \^write_total_burst_count\(3),
      I2 => \^write_total_burst_count\(2),
      I3 => \^write_total_burst_count\(1),
      O => write_overflow_ins_i_7_n_0
    );
write_overflow_ins_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^write_total_burst_count\(16),
      I1 => \^write_total_burst_count\(15),
      I2 => \^write_total_burst_count\(14),
      I3 => \^write_total_burst_count\(13),
      O => write_overflow_ins_i_8_n_0
    );
write_overflow_ins_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^write_total_burst_count\(12),
      I1 => \^write_total_burst_count\(11),
      I2 => \^write_total_burst_count\(10),
      I3 => \^write_total_burst_count\(9),
      O => write_overflow_ins_i_9_n_0
    );
write_overflow_ins_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axi_awvalid_i_1_n_0,
      D => write_overflow_ins_i_1_n_0,
      Q => write_overflow_ins,
      R => m_axi_arvalid_i_1_n_0
    );
write_state2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => write_state2_carry_n_0,
      CO(6) => write_state2_carry_n_1,
      CO(5) => write_state2_carry_n_2,
      CO(4) => write_state2_carry_n_3,
      CO(3) => write_state2_carry_n_4,
      CO(2) => write_state2_carry_n_5,
      CO(1) => write_state2_carry_n_6,
      CO(0) => write_state2_carry_n_7,
      DI(7) => write_state2_carry_i_1_n_0,
      DI(6) => write_state2_carry_i_2_n_0,
      DI(5) => write_state2_carry_i_3_n_0,
      DI(4) => write_state2_carry_i_4_n_0,
      DI(3) => write_state2_carry_i_5_n_0,
      DI(2) => write_state2_carry_i_6_n_0,
      DI(1) => write_state2_carry_i_7_n_0,
      DI(0) => write_state2_carry_i_8_n_0,
      O(7 downto 0) => NLW_write_state2_carry_O_UNCONNECTED(7 downto 0),
      S(7) => write_state2_carry_i_9_n_0,
      S(6) => write_state2_carry_i_10_n_0,
      S(5) => write_state2_carry_i_11_n_0,
      S(4) => write_state2_carry_i_12_n_0,
      S(3) => write_state2_carry_i_13_n_0,
      S(2) => write_state2_carry_i_14_n_0,
      S(1) => write_state2_carry_i_15_n_0,
      S(0) => write_state2_carry_i_16_n_0
    );
\write_state2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => write_state2_carry_n_0,
      CI_TOP => '0',
      CO(7) => write_state218_in,
      CO(6) => \write_state2_carry__0_n_1\,
      CO(5) => \write_state2_carry__0_n_2\,
      CO(4) => \write_state2_carry__0_n_3\,
      CO(3) => \write_state2_carry__0_n_4\,
      CO(2) => \write_state2_carry__0_n_5\,
      CO(1) => \write_state2_carry__0_n_6\,
      CO(0) => \write_state2_carry__0_n_7\,
      DI(7) => \write_state2_carry__0_i_1_n_0\,
      DI(6) => \write_state2_carry__0_i_2_n_0\,
      DI(5) => \write_state2_carry__0_i_3_n_0\,
      DI(4) => \write_state2_carry__0_i_4_n_0\,
      DI(3) => \write_state2_carry__0_i_5_n_0\,
      DI(2) => \write_state2_carry__0_i_6_n_0\,
      DI(1) => \write_state2_carry__0_i_7_n_0\,
      DI(0) => \write_state2_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_write_state2_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \write_state2_carry__0_i_9_n_0\,
      S(6) => \write_state2_carry__0_i_10_n_0\,
      S(5) => \write_state2_carry__0_i_11_n_0\,
      S(4) => \write_state2_carry__0_i_12_n_0\,
      S(3) => \write_state2_carry__0_i_13_n_0\,
      S(2) => \write_state2_carry__0_i_14_n_0\,
      S(1) => \write_state2_carry__0_i_15_n_0\,
      S(0) => \write_state2_carry__0_i_16_n_0\
    );
\write_state2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(31),
      I1 => \^ila_write_burst_counter\(31),
      I2 => write_burst_count(30),
      I3 => \^ila_write_burst_counter\(30),
      O => \write_state2_carry__0_i_1_n_0\
    );
\write_state2_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(29),
      I1 => write_burst_count(29),
      I2 => \^ila_write_burst_counter\(28),
      I3 => write_burst_count(28),
      O => \write_state2_carry__0_i_10_n_0\
    );
\write_state2_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(27),
      I1 => write_burst_count(27),
      I2 => \^ila_write_burst_counter\(26),
      I3 => write_burst_count(26),
      O => \write_state2_carry__0_i_11_n_0\
    );
\write_state2_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(25),
      I1 => write_burst_count(25),
      I2 => \^ila_write_burst_counter\(24),
      I3 => write_burst_count(24),
      O => \write_state2_carry__0_i_12_n_0\
    );
\write_state2_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(23),
      I1 => write_burst_count(23),
      I2 => \^ila_write_burst_counter\(22),
      I3 => write_burst_count(22),
      O => \write_state2_carry__0_i_13_n_0\
    );
\write_state2_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(21),
      I1 => write_burst_count(21),
      I2 => \^ila_write_burst_counter\(20),
      I3 => write_burst_count(20),
      O => \write_state2_carry__0_i_14_n_0\
    );
\write_state2_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(19),
      I1 => write_burst_count(19),
      I2 => \^ila_write_burst_counter\(18),
      I3 => write_burst_count(18),
      O => \write_state2_carry__0_i_15_n_0\
    );
\write_state2_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(17),
      I1 => write_burst_count(17),
      I2 => \^ila_write_burst_counter\(16),
      I3 => write_burst_count(16),
      O => \write_state2_carry__0_i_16_n_0\
    );
\write_state2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(29),
      I1 => \^ila_write_burst_counter\(29),
      I2 => write_burst_count(28),
      I3 => \^ila_write_burst_counter\(28),
      O => \write_state2_carry__0_i_2_n_0\
    );
\write_state2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(27),
      I1 => \^ila_write_burst_counter\(27),
      I2 => write_burst_count(26),
      I3 => \^ila_write_burst_counter\(26),
      O => \write_state2_carry__0_i_3_n_0\
    );
\write_state2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(25),
      I1 => \^ila_write_burst_counter\(25),
      I2 => write_burst_count(24),
      I3 => \^ila_write_burst_counter\(24),
      O => \write_state2_carry__0_i_4_n_0\
    );
\write_state2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(23),
      I1 => \^ila_write_burst_counter\(23),
      I2 => write_burst_count(22),
      I3 => \^ila_write_burst_counter\(22),
      O => \write_state2_carry__0_i_5_n_0\
    );
\write_state2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(21),
      I1 => \^ila_write_burst_counter\(21),
      I2 => write_burst_count(20),
      I3 => \^ila_write_burst_counter\(20),
      O => \write_state2_carry__0_i_6_n_0\
    );
\write_state2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(19),
      I1 => \^ila_write_burst_counter\(19),
      I2 => write_burst_count(18),
      I3 => \^ila_write_burst_counter\(18),
      O => \write_state2_carry__0_i_7_n_0\
    );
\write_state2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(17),
      I1 => \^ila_write_burst_counter\(17),
      I2 => write_burst_count(16),
      I3 => \^ila_write_burst_counter\(16),
      O => \write_state2_carry__0_i_8_n_0\
    );
\write_state2_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(31),
      I1 => write_burst_count(31),
      I2 => \^ila_write_burst_counter\(30),
      I3 => write_burst_count(30),
      O => \write_state2_carry__0_i_9_n_0\
    );
write_state2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(15),
      I1 => \^ila_write_burst_counter\(15),
      I2 => write_burst_count(14),
      I3 => \^ila_write_burst_counter\(14),
      O => write_state2_carry_i_1_n_0
    );
write_state2_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(13),
      I1 => write_burst_count(13),
      I2 => \^ila_write_burst_counter\(12),
      I3 => write_burst_count(12),
      O => write_state2_carry_i_10_n_0
    );
write_state2_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(11),
      I1 => write_burst_count(11),
      I2 => \^ila_write_burst_counter\(10),
      I3 => write_burst_count(10),
      O => write_state2_carry_i_11_n_0
    );
write_state2_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(9),
      I1 => write_burst_count(9),
      I2 => \^ila_write_burst_counter\(8),
      I3 => write_burst_count(8),
      O => write_state2_carry_i_12_n_0
    );
write_state2_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(7),
      I1 => write_burst_count(7),
      I2 => \^ila_write_burst_counter\(6),
      I3 => write_burst_count(6),
      O => write_state2_carry_i_13_n_0
    );
write_state2_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(5),
      I1 => write_burst_count(5),
      I2 => \^ila_write_burst_counter\(4),
      I3 => write_burst_count(4),
      O => write_state2_carry_i_14_n_0
    );
write_state2_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(3),
      I1 => write_burst_count(3),
      I2 => \^ila_write_burst_counter\(2),
      I3 => write_burst_count(2),
      O => write_state2_carry_i_15_n_0
    );
write_state2_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(1),
      I1 => write_burst_count(1),
      I2 => \^ila_write_burst_counter\(0),
      I3 => write_burst_count(0),
      O => write_state2_carry_i_16_n_0
    );
write_state2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(13),
      I1 => \^ila_write_burst_counter\(13),
      I2 => write_burst_count(12),
      I3 => \^ila_write_burst_counter\(12),
      O => write_state2_carry_i_2_n_0
    );
write_state2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(11),
      I1 => \^ila_write_burst_counter\(11),
      I2 => write_burst_count(10),
      I3 => \^ila_write_burst_counter\(10),
      O => write_state2_carry_i_3_n_0
    );
write_state2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(9),
      I1 => \^ila_write_burst_counter\(9),
      I2 => write_burst_count(8),
      I3 => \^ila_write_burst_counter\(8),
      O => write_state2_carry_i_4_n_0
    );
write_state2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(7),
      I1 => \^ila_write_burst_counter\(7),
      I2 => write_burst_count(6),
      I3 => \^ila_write_burst_counter\(6),
      O => write_state2_carry_i_5_n_0
    );
write_state2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(5),
      I1 => \^ila_write_burst_counter\(5),
      I2 => write_burst_count(4),
      I3 => \^ila_write_burst_counter\(4),
      O => write_state2_carry_i_6_n_0
    );
write_state2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(3),
      I1 => \^ila_write_burst_counter\(3),
      I2 => write_burst_count(2),
      I3 => \^ila_write_burst_counter\(2),
      O => write_state2_carry_i_7_n_0
    );
write_state2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => write_burst_count(1),
      I1 => \^ila_write_burst_counter\(1),
      I2 => write_burst_count(0),
      I3 => \^ila_write_burst_counter\(0),
      O => write_state2_carry_i_8_n_0
    );
write_state2_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^ila_write_burst_counter\(15),
      I1 => write_burst_count(15),
      I2 => \^ila_write_burst_counter\(14),
      I3 => write_burst_count(14),
      O => write_state2_carry_i_9_n_0
    );
write_total_burst_count0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => \^write_total_burst_count\(0),
      CI_TOP => '0',
      CO(7) => write_total_burst_count0_carry_n_0,
      CO(6) => write_total_burst_count0_carry_n_1,
      CO(5) => write_total_burst_count0_carry_n_2,
      CO(4) => write_total_burst_count0_carry_n_3,
      CO(3) => write_total_burst_count0_carry_n_4,
      CO(2) => write_total_burst_count0_carry_n_5,
      CO(1) => write_total_burst_count0_carry_n_6,
      CO(0) => write_total_burst_count0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7) => write_total_burst_count0_carry_n_8,
      O(6) => write_total_burst_count0_carry_n_9,
      O(5) => write_total_burst_count0_carry_n_10,
      O(4) => write_total_burst_count0_carry_n_11,
      O(3) => write_total_burst_count0_carry_n_12,
      O(2) => write_total_burst_count0_carry_n_13,
      O(1) => write_total_burst_count0_carry_n_14,
      O(0) => write_total_burst_count0_carry_n_15,
      S(7 downto 0) => \^write_total_burst_count\(8 downto 1)
    );
\write_total_burst_count0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => write_total_burst_count0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \write_total_burst_count0_carry__0_n_0\,
      CO(6) => \write_total_burst_count0_carry__0_n_1\,
      CO(5) => \write_total_burst_count0_carry__0_n_2\,
      CO(4) => \write_total_burst_count0_carry__0_n_3\,
      CO(3) => \write_total_burst_count0_carry__0_n_4\,
      CO(2) => \write_total_burst_count0_carry__0_n_5\,
      CO(1) => \write_total_burst_count0_carry__0_n_6\,
      CO(0) => \write_total_burst_count0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \write_total_burst_count0_carry__0_n_8\,
      O(6) => \write_total_burst_count0_carry__0_n_9\,
      O(5) => \write_total_burst_count0_carry__0_n_10\,
      O(4) => \write_total_burst_count0_carry__0_n_11\,
      O(3) => \write_total_burst_count0_carry__0_n_12\,
      O(2) => \write_total_burst_count0_carry__0_n_13\,
      O(1) => \write_total_burst_count0_carry__0_n_14\,
      O(0) => \write_total_burst_count0_carry__0_n_15\,
      S(7 downto 0) => \^write_total_burst_count\(16 downto 9)
    );
\write_total_burst_count0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \write_total_burst_count0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \write_total_burst_count0_carry__1_n_0\,
      CO(6) => \write_total_burst_count0_carry__1_n_1\,
      CO(5) => \write_total_burst_count0_carry__1_n_2\,
      CO(4) => \write_total_burst_count0_carry__1_n_3\,
      CO(3) => \write_total_burst_count0_carry__1_n_4\,
      CO(2) => \write_total_burst_count0_carry__1_n_5\,
      CO(1) => \write_total_burst_count0_carry__1_n_6\,
      CO(0) => \write_total_burst_count0_carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \write_total_burst_count0_carry__1_n_8\,
      O(6) => \write_total_burst_count0_carry__1_n_9\,
      O(5) => \write_total_burst_count0_carry__1_n_10\,
      O(4) => \write_total_burst_count0_carry__1_n_11\,
      O(3) => \write_total_burst_count0_carry__1_n_12\,
      O(2) => \write_total_burst_count0_carry__1_n_13\,
      O(1) => \write_total_burst_count0_carry__1_n_14\,
      O(0) => \write_total_burst_count0_carry__1_n_15\,
      S(7 downto 0) => \^write_total_burst_count\(24 downto 17)
    );
\write_total_burst_count0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \write_total_burst_count0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_write_total_burst_count0_carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \write_total_burst_count0_carry__2_n_2\,
      CO(4) => \write_total_burst_count0_carry__2_n_3\,
      CO(3) => \write_total_burst_count0_carry__2_n_4\,
      CO(2) => \write_total_burst_count0_carry__2_n_5\,
      CO(1) => \write_total_burst_count0_carry__2_n_6\,
      CO(0) => \write_total_burst_count0_carry__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_write_total_burst_count0_carry__2_O_UNCONNECTED\(7),
      O(6) => \write_total_burst_count0_carry__2_n_9\,
      O(5) => \write_total_burst_count0_carry__2_n_10\,
      O(4) => \write_total_burst_count0_carry__2_n_11\,
      O(3) => \write_total_burst_count0_carry__2_n_12\,
      O(2) => \write_total_burst_count0_carry__2_n_13\,
      O(1) => \write_total_burst_count0_carry__2_n_14\,
      O(0) => \write_total_burst_count0_carry__2_n_15\,
      S(7) => '0',
      S(6 downto 0) => \^write_total_burst_count\(31 downto 25)
    );
\write_total_burst_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \^write_total_burst_count\(0),
      O => \write_total_burst_count[0]_i_1_n_0\
    );
\write_total_burst_count[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__0_n_14\,
      O => \write_total_burst_count[10]_i_1_n_0\
    );
\write_total_burst_count[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__0_n_13\,
      O => \write_total_burst_count[11]_i_1_n_0\
    );
\write_total_burst_count[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__0_n_12\,
      O => \write_total_burst_count[12]_i_1_n_0\
    );
\write_total_burst_count[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__0_n_11\,
      O => \write_total_burst_count[13]_i_1_n_0\
    );
\write_total_burst_count[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__0_n_10\,
      O => \write_total_burst_count[14]_i_1_n_0\
    );
\write_total_burst_count[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__0_n_9\,
      O => \write_total_burst_count[15]_i_1_n_0\
    );
\write_total_burst_count[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__0_n_8\,
      O => \write_total_burst_count[16]_i_1_n_0\
    );
\write_total_burst_count[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__1_n_15\,
      O => \write_total_burst_count[17]_i_1_n_0\
    );
\write_total_burst_count[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__1_n_14\,
      O => \write_total_burst_count[18]_i_1_n_0\
    );
\write_total_burst_count[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__1_n_13\,
      O => \write_total_burst_count[19]_i_1_n_0\
    );
\write_total_burst_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => write_total_burst_count0_carry_n_15,
      O => \write_total_burst_count[1]_i_1_n_0\
    );
\write_total_burst_count[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__1_n_12\,
      O => \write_total_burst_count[20]_i_1_n_0\
    );
\write_total_burst_count[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__1_n_11\,
      O => \write_total_burst_count[21]_i_1_n_0\
    );
\write_total_burst_count[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__1_n_10\,
      O => \write_total_burst_count[22]_i_1_n_0\
    );
\write_total_burst_count[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__1_n_9\,
      O => \write_total_burst_count[23]_i_1_n_0\
    );
\write_total_burst_count[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__1_n_8\,
      O => \write_total_burst_count[24]_i_1_n_0\
    );
\write_total_burst_count[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__2_n_15\,
      O => \write_total_burst_count[25]_i_1_n_0\
    );
\write_total_burst_count[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__2_n_14\,
      O => \write_total_burst_count[26]_i_1_n_0\
    );
\write_total_burst_count[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__2_n_13\,
      O => \write_total_burst_count[27]_i_1_n_0\
    );
\write_total_burst_count[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__2_n_12\,
      O => \write_total_burst_count[28]_i_1_n_0\
    );
\write_total_burst_count[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__2_n_11\,
      O => \write_total_burst_count[29]_i_1_n_0\
    );
\write_total_burst_count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => write_total_burst_count0_carry_n_14,
      O => \write_total_burst_count[2]_i_1_n_0\
    );
\write_total_burst_count[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__2_n_10\,
      O => \write_total_burst_count[30]_i_1_n_0\
    );
\write_total_burst_count[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002200000F"
    )
        port map (
      I0 => m_axi_bready_i_4_n_0,
      I1 => m_axi_wlast_i_2_n_0,
      I2 => write_enable,
      I3 => \write_state__0\(0),
      I4 => \write_state__0\(1),
      I5 => \write_state__0\(2),
      O => \write_total_burst_count[31]_i_1_n_0\
    );
\write_total_burst_count[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__2_n_9\,
      O => \write_total_burst_count[31]_i_2_n_0\
    );
\write_total_burst_count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => write_total_burst_count0_carry_n_13,
      O => \write_total_burst_count[3]_i_1_n_0\
    );
\write_total_burst_count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => write_total_burst_count0_carry_n_12,
      O => \write_total_burst_count[4]_i_1_n_0\
    );
\write_total_burst_count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => write_total_burst_count0_carry_n_11,
      O => \write_total_burst_count[5]_i_1_n_0\
    );
\write_total_burst_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => write_total_burst_count0_carry_n_10,
      O => \write_total_burst_count[6]_i_1_n_0\
    );
\write_total_burst_count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => write_total_burst_count0_carry_n_9,
      O => \write_total_burst_count[7]_i_1_n_0\
    );
\write_total_burst_count[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => write_total_burst_count0_carry_n_8,
      O => \write_total_burst_count[8]_i_1_n_0\
    );
\write_total_burst_count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_state__0\(1),
      I1 => \write_total_burst_count0_carry__0_n_15\,
      O => \write_total_burst_count[9]_i_1_n_0\
    );
\write_total_burst_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[0]_i_1_n_0\,
      Q => \^write_total_burst_count\(0),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[10]_i_1_n_0\,
      Q => \^write_total_burst_count\(10),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[11]_i_1_n_0\,
      Q => \^write_total_burst_count\(11),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[12]_i_1_n_0\,
      Q => \^write_total_burst_count\(12),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[13]_i_1_n_0\,
      Q => \^write_total_burst_count\(13),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[14]_i_1_n_0\,
      Q => \^write_total_burst_count\(14),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[15]_i_1_n_0\,
      Q => \^write_total_burst_count\(15),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[16]_i_1_n_0\,
      Q => \^write_total_burst_count\(16),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[17]_i_1_n_0\,
      Q => \^write_total_burst_count\(17),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[18]_i_1_n_0\,
      Q => \^write_total_burst_count\(18),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[19]_i_1_n_0\,
      Q => \^write_total_burst_count\(19),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[1]_i_1_n_0\,
      Q => \^write_total_burst_count\(1),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[20]_i_1_n_0\,
      Q => \^write_total_burst_count\(20),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[21]_i_1_n_0\,
      Q => \^write_total_burst_count\(21),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[22]_i_1_n_0\,
      Q => \^write_total_burst_count\(22),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[23]_i_1_n_0\,
      Q => \^write_total_burst_count\(23),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[24]_i_1_n_0\,
      Q => \^write_total_burst_count\(24),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[25]_i_1_n_0\,
      Q => \^write_total_burst_count\(25),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[26]_i_1_n_0\,
      Q => \^write_total_burst_count\(26),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[27]_i_1_n_0\,
      Q => \^write_total_burst_count\(27),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[28]_i_1_n_0\,
      Q => \^write_total_burst_count\(28),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[29]_i_1_n_0\,
      Q => \^write_total_burst_count\(29),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[2]_i_1_n_0\,
      Q => \^write_total_burst_count\(2),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[30]_i_1_n_0\,
      Q => \^write_total_burst_count\(30),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[31]_i_2_n_0\,
      Q => \^write_total_burst_count\(31),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[3]_i_1_n_0\,
      Q => \^write_total_burst_count\(3),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[4]_i_1_n_0\,
      Q => \^write_total_burst_count\(4),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[5]_i_1_n_0\,
      Q => \^write_total_burst_count\(5),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[6]_i_1_n_0\,
      Q => \^write_total_burst_count\(6),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[7]_i_1_n_0\,
      Q => \^write_total_burst_count\(7),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[8]_i_1_n_0\,
      Q => \^write_total_burst_count\(8),
      R => m_axi_arvalid_i_1_n_0
    );
\write_total_burst_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \write_total_burst_count[31]_i_1_n_0\,
      D => \write_total_burst_count[9]_i_1_n_0\,
      Q => \^write_total_burst_count\(9),
      R => m_axi_arvalid_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_data_path_dmac_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_data_path_dmac_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_data_path_dmac_0_0 : entity is "top_data_path_dmac_0_0,data_path_dmac,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_data_path_dmac_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of top_data_path_dmac_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of top_data_path_dmac_0_0 : entity is "data_path_dmac,Vivado 2020.2.2";
end top_data_path_dmac_0_0;

architecture STRUCTURE of top_data_path_dmac_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^ila_rx_ready\ : STD_LOGIC;
  signal \^ila_tx_valid\ : STD_LOGIC;
  signal \^ila_write_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^ilamaxi_arlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ilamaxi_arvalid\ : STD_LOGIC;
  signal \^ilamaxi_awlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ilamaxi_awvalid\ : STD_LOGIC;
  signal \^ilamaxi_bready\ : STD_LOGIC;
  signal \^ilamaxi_rready\ : STD_LOGIC;
  signal \^ilamaxi_wvalid\ : STD_LOGIC;
  signal inst_n_263 : STD_LOGIC;
  signal inst_n_273 : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \m_axi_arlen[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^m_axi_arready\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \m_axi_awlen[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^m_axi_awready\ : STD_LOGIC;
  signal \^m_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \^m_axi_rlast\ : STD_LOGIC;
  signal \^m_axi_rvalid\ : STD_LOGIC;
  signal \^m_axi_wlast\ : STD_LOGIC;
  signal \^m_axi_wready\ : STD_LOGIC;
  signal \^m_axis_tx_tready\ : STD_LOGIC;
  signal \^read_burst_count\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axis_rx_tdata\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \^s_axis_rx_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_tx:s_axis_rx:m_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN top_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 m_axi ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 m_axi AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 m_axi RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME m_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 48, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN top_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 m_axi WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi WVALID";
  attribute X_INTERFACE_INFO of m_axis_tx_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_tx_tready : signal is "XIL_INTERFACENAME m_axis_tx, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN top_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tx_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TVALID";
  attribute X_INTERFACE_INFO of s_axis_rx_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_rx TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_rx_tready : signal is "XIL_INTERFACENAME s_axis_rx, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.000, CLK_DOMAIN top_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_rx_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_rx TVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 m_axi ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 m_axi ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 m_axi ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 m_axi ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 m_axi ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 m_axi ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 m_axi AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 m_axi AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 m_axi AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 m_axi AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 m_axi AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 m_axi AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi WSTRB";
  attribute X_INTERFACE_INFO of m_axis_tx_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_tx TDATA";
  attribute X_INTERFACE_INFO of s_axis_rx_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_rx TDATA";
begin
  \^m_axi_arready\ <= m_axi_arready;
  \^m_axi_awready\ <= m_axi_awready;
  \^m_axi_bresp\(1 downto 0) <= m_axi_bresp(1 downto 0);
  \^m_axi_bvalid\ <= m_axi_bvalid;
  \^m_axi_rdata\(127 downto 0) <= m_axi_rdata(127 downto 0);
  \^m_axi_rlast\ <= m_axi_rlast;
  \^m_axi_rvalid\ <= m_axi_rvalid;
  \^m_axi_wready\ <= m_axi_wready;
  \^m_axis_tx_tready\ <= m_axis_tx_tready;
  \^read_burst_count\(31 downto 0) <= read_burst_count(31 downto 0);
  \^s_axis_rx_tdata\(127 downto 0) <= s_axis_rx_tdata(127 downto 0);
  \^s_axis_rx_tvalid\ <= s_axis_rx_tvalid;
  ila_read_burst_count(32) <= \<const0>\;
  ila_read_burst_count(31 downto 0) <= \^read_burst_count\(31 downto 0);
  ila_rx_data(127 downto 0) <= \^s_axis_rx_tdata\(127 downto 0);
  ila_rx_fifo_data_ready <= \<const0>\;
  ila_rx_ready <= \^ila_rx_ready\;
  ila_rx_valid <= \^s_axis_rx_tvalid\;
  ila_tx_data(127 downto 0) <= \^m_axi_rdata\(127 downto 0);
  ila_tx_prog_empty <= \<const0>\;
  ila_tx_ready <= \^m_axis_tx_tready\;
  ila_tx_valid <= \^ila_tx_valid\;
  ila_write_bresp(1 downto 0) <= \^ila_write_bresp\(1 downto 0);
  ilamaxi_araddr(47 downto 0) <= \^m_axi_araddr\(47 downto 0);
  ilamaxi_arlen(7 downto 0) <= \^ilamaxi_arlen\(7 downto 0);
  ilamaxi_arready <= \^m_axi_arready\;
  ilamaxi_arvalid <= \^ilamaxi_arvalid\;
  ilamaxi_awaddr(47 downto 0) <= \^m_axi_awaddr\(47 downto 0);
  ilamaxi_awlen(7 downto 0) <= \^ilamaxi_awlen\(7 downto 0);
  ilamaxi_awready <= \^m_axi_awready\;
  ilamaxi_awvalid <= \^ilamaxi_awvalid\;
  ilamaxi_bready <= \^ilamaxi_bready\;
  ilamaxi_bresp(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  ilamaxi_bvalid <= \^m_axi_bvalid\;
  ilamaxi_rdata(127 downto 0) <= \^m_axi_rdata\(127 downto 0);
  ilamaxi_rlast <= \^m_axi_rlast\;
  ilamaxi_rready <= \^ilamaxi_rready\;
  ilamaxi_rvalid <= \^m_axi_rvalid\;
  ilamaxi_wdata(127 downto 0) <= \^s_axis_rx_tdata\(127 downto 0);
  ilamaxi_wlast <= \^m_axi_wlast\;
  ilamaxi_wready <= \^m_axi_wready\;
  ilamaxi_wvalid <= \^ilamaxi_wvalid\;
  m_axi_araddr(47 downto 0) <= \^m_axi_araddr\(47 downto 0);
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const1>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const1>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arlen(7 downto 0) <= \^ilamaxi_arlen\(7 downto 0);
  m_axi_arlock <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const1>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_arvalid <= \^ilamaxi_arvalid\;
  m_axi_awaddr(47 downto 0) <= \^m_axi_awaddr\(47 downto 0);
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const1>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const1>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awlen(7 downto 0) <= \^ilamaxi_awlen\(7 downto 0);
  m_axi_awlock <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const1>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awvalid <= \^ilamaxi_awvalid\;
  m_axi_bready <= \^ilamaxi_bready\;
  m_axi_rready <= \^ilamaxi_rready\;
  m_axi_wdata(127 downto 0) <= \^s_axis_rx_tdata\(127 downto 0);
  m_axi_wlast <= \^m_axi_wlast\;
  m_axi_wstrb(15) <= \<const1>\;
  m_axi_wstrb(14) <= \<const1>\;
  m_axi_wstrb(13) <= \<const1>\;
  m_axi_wstrb(12) <= \<const1>\;
  m_axi_wstrb(11) <= \<const1>\;
  m_axi_wstrb(10) <= \<const1>\;
  m_axi_wstrb(9) <= \<const1>\;
  m_axi_wstrb(8) <= \<const1>\;
  m_axi_wstrb(7) <= \<const1>\;
  m_axi_wstrb(6) <= \<const1>\;
  m_axi_wstrb(5) <= \<const1>\;
  m_axi_wstrb(4) <= \<const1>\;
  m_axi_wstrb(3) <= \<const1>\;
  m_axi_wstrb(2) <= \<const1>\;
  m_axi_wstrb(1) <= \<const1>\;
  m_axi_wstrb(0) <= \<const1>\;
  m_axi_wvalid <= \^ilamaxi_wvalid\;
  m_axis_tx_tdata(127 downto 0) <= \^m_axi_rdata\(127 downto 0);
  m_axis_tx_tvalid <= \^ila_tx_valid\;
  s_axis_rx_tready <= \^ila_rx_ready\;
  write_bresp(1 downto 0) <= \^ila_write_bresp\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.top_data_path_dmac_0_0_data_path_dmac
     port map (
      CO(0) => ila_write_ddr_has_space,
      Q(31 downto 0) => ila_read_ddr_occupation(31 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      ila_read_access_tick_ack => ila_read_access_tick_ack,
      ila_read_bresp(1 downto 0) => ila_read_bresp(1 downto 0),
      ila_read_ddr_full => ila_read_ddr_full,
      ila_read_state(2 downto 0) => ila_read_state(2 downto 0),
      ila_rx_fifo_rden => ila_rx_fifo_rden,
      ila_rx_ready => \^ila_rx_ready\,
      ila_tx_fifo_wren => ila_tx_fifo_wren,
      ila_tx_valid => \^ila_tx_valid\,
      ila_write_access_tick_ack => ila_write_access_tick_ack,
      ila_write_active => ila_write_active,
      ila_write_bresp(1 downto 0) => \^ila_write_bresp\(1 downto 0),
      ila_write_burst_counter(31 downto 0) => ila_write_burst_counter(31 downto 0),
      ila_write_ddr_full => ila_write_ddr_full,
      ila_write_state(2 downto 0) => ila_write_state(2 downto 0),
      ilamaxi_arvalid => \^ilamaxi_arvalid\,
      ilamaxi_awvalid => \^ilamaxi_awvalid\,
      ilamaxi_bready => \^ilamaxi_bready\,
      ilamaxi_rready => \^ilamaxi_rready\,
      ilamaxi_wvalid => \^ilamaxi_wvalid\,
      m_axi_araddr(47 downto 0) => \^m_axi_araddr\(47 downto 0),
      m_axi_arready => \^m_axi_arready\,
      m_axi_awaddr(47 downto 0) => \^m_axi_awaddr\(47 downto 0),
      m_axi_awready => \^m_axi_awready\,
      m_axi_bresp(1 downto 0) => \^m_axi_bresp\(1 downto 0),
      m_axi_bvalid => \^m_axi_bvalid\,
      m_axi_rlast => \^m_axi_rlast\,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => \^m_axi_rvalid\,
      m_axi_rvalid_0 => ila_read_active,
      m_axi_wlast_reg_0 => \^m_axi_wlast\,
      m_axi_wready => \^m_axi_wready\,
      m_axis_tx_tready => \^m_axis_tx_tready\,
      read_access_size_bytes(16 downto 0) => read_access_size_bytes(16 downto 0),
      read_access_tick => read_access_tick,
      read_base_address(47 downto 0) => read_base_address(47 downto 0),
      read_burst_count(31 downto 0) => \^read_burst_count\(31 downto 0),
      read_burst_len(8 downto 0) => read_burst_len(8 downto 0),
      read_burst_len_2_sp_1 => inst_n_263,
      read_burst_tick_ack_reg_0 => ila_read_burst_tick_ack,
      read_burst_tick_reg_0 => read_burst_tick,
      read_busy => read_busy,
      read_current_burst_address(31 downto 0) => read_current_burst_address(31 downto 0),
      \read_ddr_occupation_reg[30]_0\(0) => ila_read_ddr_has_data,
      read_ddr_size(31 downto 0) => read_ddr_size(31 downto 0),
      read_enable => read_enable,
      \read_index_reg[8]_0\(8 downto 0) => ila_read_index(8 downto 0),
      read_total_burst_count(31 downto 0) => read_total_burst_count(31 downto 0),
      \read_underflow_count_reg[7]_0\(7 downto 0) => read_underflow_count(7 downto 0),
      read_underflow_ins => read_underflow_ins,
      rx_fifo_data_ready => rx_fifo_data_ready,
      s_axis_rx_tvalid => \^s_axis_rx_tvalid\,
      tx_fifo_empty => tx_fifo_empty,
      tx_fifo_has_space => tx_fifo_has_space,
      write_access_size_bytes(16 downto 0) => write_access_size_bytes(16 downto 0),
      write_access_tick => write_access_tick,
      write_base_address(47 downto 0) => write_base_address(47 downto 0),
      write_burst_count(31 downto 0) => write_burst_count(31 downto 0),
      write_burst_len(8 downto 0) => write_burst_len(8 downto 0),
      write_burst_len_4_sp_1 => inst_n_273,
      write_burst_tick => write_burst_tick,
      write_burst_tick_ack_reg_0 => ila_write_burst_tick_ack,
      write_busy => write_busy,
      write_current_burst_address(31 downto 0) => write_current_burst_address(31 downto 0),
      \write_ddr_occupation_reg[31]_0\(31 downto 0) => ila_write_ddr_occupation(31 downto 0),
      write_ddr_size(31 downto 0) => write_ddr_size(31 downto 0),
      write_enable => write_enable,
      \write_index_reg[8]_0\(8 downto 0) => ila_write_index(8 downto 0),
      \write_overflow_count_reg[7]_0\(7 downto 0) => write_overflow_count(7 downto 0),
      write_overflow_ins => write_overflow_ins,
      write_total_burst_count(31 downto 0) => write_total_burst_count(31 downto 0)
    );
\m_axi_arlen[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_burst_len(0),
      O => \^ilamaxi_arlen\(0)
    );
\m_axi_arlen[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => read_burst_len(0),
      I1 => read_burst_len(1),
      O => \^ilamaxi_arlen\(1)
    );
\m_axi_arlen[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => read_burst_len(2),
      I1 => read_burst_len(1),
      I2 => read_burst_len(0),
      O => \^ilamaxi_arlen\(2)
    );
\m_axi_arlen[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => read_burst_len(3),
      I1 => read_burst_len(0),
      I2 => read_burst_len(1),
      I3 => read_burst_len(2),
      O => \^ilamaxi_arlen\(3)
    );
\m_axi_arlen[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => read_burst_len(3),
      I1 => read_burst_len(0),
      I2 => read_burst_len(1),
      I3 => read_burst_len(2),
      I4 => read_burst_len(4),
      O => \^ilamaxi_arlen\(4)
    );
\m_axi_arlen[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => read_burst_len(4),
      I1 => read_burst_len(2),
      I2 => read_burst_len(1),
      I3 => read_burst_len(0),
      I4 => read_burst_len(3),
      I5 => read_burst_len(5),
      O => \^ilamaxi_arlen\(5)
    );
\m_axi_arlen[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => read_burst_len(6),
      I1 => read_burst_len(4),
      I2 => read_burst_len(2),
      I3 => \m_axi_arlen[6]_INST_0_i_1_n_0\,
      I4 => read_burst_len(3),
      I5 => read_burst_len(5),
      O => \^ilamaxi_arlen\(6)
    );
\m_axi_arlen[6]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => read_burst_len(1),
      I1 => read_burst_len(0),
      O => \m_axi_arlen[6]_INST_0_i_1_n_0\
    );
\m_axi_arlen[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => read_burst_len(6),
      I1 => read_burst_len(4),
      I2 => inst_n_263,
      I3 => read_burst_len(5),
      I4 => read_burst_len(7),
      O => \^ilamaxi_arlen\(7)
    );
\m_axi_awlen[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_burst_len(0),
      O => \^ilamaxi_awlen\(0)
    );
\m_axi_awlen[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => write_burst_len(0),
      I1 => write_burst_len(1),
      O => \^ilamaxi_awlen\(1)
    );
\m_axi_awlen[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => write_burst_len(2),
      I1 => write_burst_len(1),
      I2 => write_burst_len(0),
      O => \^ilamaxi_awlen\(2)
    );
\m_axi_awlen[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => write_burst_len(1),
      I1 => write_burst_len(0),
      I2 => write_burst_len(2),
      I3 => write_burst_len(3),
      O => \^ilamaxi_awlen\(3)
    );
\m_axi_awlen[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => write_burst_len(1),
      I1 => write_burst_len(0),
      I2 => write_burst_len(2),
      I3 => write_burst_len(3),
      I4 => write_burst_len(4),
      O => \^ilamaxi_awlen\(4)
    );
\m_axi_awlen[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => write_burst_len(5),
      I1 => write_burst_len(1),
      I2 => write_burst_len(0),
      I3 => write_burst_len(2),
      I4 => write_burst_len(3),
      I5 => write_burst_len(4),
      O => \^ilamaxi_awlen\(5)
    );
\m_axi_awlen[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => write_burst_len(6),
      I1 => write_burst_len(4),
      I2 => write_burst_len(3),
      I3 => write_burst_len(2),
      I4 => \m_axi_awlen[6]_INST_0_i_1_n_0\,
      I5 => write_burst_len(5),
      O => \^ilamaxi_awlen\(6)
    );
\m_axi_awlen[6]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_burst_len(1),
      I1 => write_burst_len(0),
      O => \m_axi_awlen[6]_INST_0_i_1_n_0\
    );
\m_axi_awlen[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => inst_n_273,
      I1 => write_burst_len(6),
      I2 => write_burst_len(7),
      O => \^ilamaxi_awlen\(7)
    );
end STRUCTURE;
