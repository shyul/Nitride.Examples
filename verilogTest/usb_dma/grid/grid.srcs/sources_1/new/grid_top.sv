//////////////////////////////////////////////////////////////////////////////////
// Company: Tidalloft Avionics Research LLC
// Engineer: Xu Li
// 
// Create Date: 07/04/2021 08:06:24 PM
// Design Name: 
// Module Name: grid_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module grid_top (

	input	fdsp_clk_in_N, fdsp_clk_in_P,

	input	pps_in_fpga,
	output	clken_pps,

	input	pl_clk0_N, pl_clk0_P,
	input	pl_clk1, pl_clk2,
	output	mclk_fdec, mclk_finc, mclk_sync_b,

	input	synce_clk_125mhz,
	inout	eth_ptp,

	output	rf_clk_reset_b, rf_clk_spi_clk, rf_clk_spi_cs_b, rf_clk_spi_di,
	input	rf_clk_spi_do,
	input	rf_clk_m0,
	input	rf_clk_m1,
	input	rf_clk_m2,
	input	rf_clk_m3,
	input	rf_clk_m4,

	output	dac_d0_N, dac_d0_P, dac_d1_N, dac_d1_P, dac_d2_N, dac_d2_P, dac_d3_N, dac_d3_P, dac_d4_N, dac_d4_P, dac_d5_N, dac_d5_P, dac_d6_N, dac_d6_P, dac_d7_N, dac_d7_P,
	output	dac_d8_N, dac_d8_P, dac_d9_N, dac_d9_P, dac_d10_N, dac_d10_P, dac_d11_N, dac_d11_P, dac_d12_N, dac_d12_P, dac_d13_N, dac_d13_P, dac_d14_N, dac_d14_P, dac_d15_N, dac_d15_P,
    output	dac_dci_N, dac_dci_P, dac_frm_N, dac_frm_P,

	input	dac_irq1_b, dac_irq2_b,
	output	dac_reset_b, dac_txen,
	output	dac_spi_clk, dac_spi_cs_b,
	inout	dac_spi_dio,

	input	adc_d0_N, adc_d0_P, adc_d1_N, adc_d1_P, adc_d2_N, adc_d2_P, adc_d3_N, adc_d3_P, adc_d4_N, adc_d4_P, adc_d5_N, adc_d5_P, adc_d6_N, adc_d6_P,
	input	adc_d7_N, adc_d7_P, adc_d8_N, adc_d8_P, adc_d9_N, adc_d9_P, adc_d10_N, adc_d10_P, adc_d11_N, adc_d11_P, adc_d12_N, adc_d12_P, adc_d13_N, adc_d13_P,
	input 	adc_dco_N, adc_dco_P, adc_or_N, adc_or_P,
	input	adc_fda, adc_fdb,

	output	adc_oe_b, adc_pdwn, adc_sync,
	output	adc_cs_b, adc_sclk,
	inout	adc_sdio,

	inout	adc_tmp_scl, adc_tmp_sda,
	input	adc_tmp_alert,

	inout	atsha_scl, atsha_sda,

	output	pl_led_pps, pl_led_ref,

	output	pl_led_rx_b, pl_led_rx_g, pl_led_rx_r,
	output	pl_led_tx_b, pl_led_tx_g, pl_led_tx_r,

	output	pwren_1p8v_adc, pwren_1p8v_adc_d, pwren_1p8v_dac, pwren_1p8v_dac_d, pwren_1p8v_rfclk, pwren_3p3v_adda,

	input	sys_pl_gpio0,
	input	sys_pl_gpio1,
	input	sys_pl_gpio2,
	input	sys_pl_gpio3,
	input	sys_pl_gpio4,
	input	sys_pl_gpio5,
	input	sys_pl_gpio6,
	input	sys_pl_gpio7,

	input	db_rx_data0_N,
	input	db_rx_data0_P,
	input	db_rx_data1_N,
	input	db_rx_data1_P,
	input	db_rx_data2_N,
	input	db_rx_data2_P,
	input	db_rx_data3_N,
	input	db_rx_data3_P,
	input	db_rx_data4_N,
	input	db_rx_data4_P,
	input	db_rx_data5_N,
	input	db_rx_data5_P,
	input	db_rx_data6_N,
	input	db_rx_data6_P,
	input	db_rx_data7_N,
	input	db_rx_data7_P,
	input	db_rx_data8_N,
	input	db_rx_data8_P,
	input	db_rx_data9_N,
	input	db_rx_data9_P,
	input	db_rx_data10_N,
	input	db_rx_data10_P,
	input	db_rx_data11,
	input	db_rx_data12,

	input	db_tx_data0_N,
	input	db_tx_data0_P,
	input	db_tx_data1_N,
	input	db_tx_data1_P,
	input	db_tx_data2_N,
	input	db_tx_data2_P,
	input	db_tx_data3_N,
	input	db_tx_data3_P,
	input	db_tx_data4_N,
	input	db_tx_data4_P,
	input	db_tx_data5_N,
	input	db_tx_data5_P,
	input	db_tx_data6_N,
	input	db_tx_data6_P,
	input	db_tx_data7_N,
	input	db_tx_data7_P,
	input	db_tx_data8_N,
	input	db_tx_data8_P,
	input	db_tx_data9_N,
	input	db_tx_data9_P,
	input	db_tx_data10_N,
	input	db_tx_data10_P,
	input	db_tx_data11,
	input	db_tx_data12,

	input	ext_gpio0,
	input	ext_gpio1,
	input	ext_gpio2,
	input	ext_gpio3,
	input	ext_gpio4,
	input	ext_gpio5,
	input	ext_gpio6,
	input	ext_gpio7,
	input	ext_gpio8,
	input	ext_gpio9,
	input	ext_gpio10,
	input	ext_gpio11,
	input	ext_gpio12,
	input	ext_gpio13,
	input	ext_gpio14,
	input	ext_gpio15
	);

genvar i;

// Clock and PPS Inputs
wire    clk0, clk_dsp, clk_synce;
wire    clk0_g, clk1_g, clk2_g, clk_dsp_g;

IBUFDS clk0_buf (.O (clk0), .I(pl_clk0_P), .IB(pl_clk0_N));
BUFG clk0_bufg (.O(clk0_g), .I(clk0));

IBUFG clk1_buf (.O(clk1_g), .I(pl_clk1));
IBUFG clk2_buf (.O(clk2_g), .I(pl_clk2));

IBUFDS clk_dsp_buf (.O (clk_dsp), .I(fdsp_clk_in_P), .IB(fdsp_clk_in_N));
BUFG clk_dsp_bufg (.O(clk_dsp_g), .I(clk_dsp));

IBUFG clk_synce_buf (.O(clk_synce), .I(synce_clk_125mhz));

wire	pps_ext, eth_ptp_b;

IBUF pps_ext_ibuf (.O(pps_ext), .I(pps_in_fpga));
IBUF ptp_gem_ibuf (.O(eth_ptp_b), .I(eth_ptp));

assign mclk_fdec = 1'b0;
assign mclk_finc = 1'b0;
assign mclk_sync_b = 1'b1;

// ********** DAC: ODDRE1 --> ODELAYE3 --> OBUFDS **********

wire            dac_buffer_enable = pwren_3p3v_adda & pwren_1p8v_dac & pwren_1p8v_dac_d; // TODO: handle this signal with power control of the DAC
wire [15:0]     dac_data_1, dac_data_2;
wire            dac_dclk_2x, dac_frame;
wire [8:0]		dac_delay_value [16:0], dac_delay_value_out [16:0];

//wire    [15:0]  dac_i = dac_data[15:0];
//wire    [15:0]  dac_q = dac_data[31:16];

assign	dac_data_1 = dac_data[15:0]; //16'hA5A5;
assign	dac_data_2 = dac_data[31:16]; //16'h5A5A;
assign  dac_dclk_2x = clk_dsp_g; //clk0_g;
assign  dac_frame = 1'b0;

wire [16:0]     dac_data_p, dac_data_n;
assign	{ dac_frm_P, dac_d15_P, dac_d14_P, dac_d13_P, dac_d12_P, dac_d11_P, dac_d10_P, dac_d9_P, dac_d8_P, dac_d7_P, dac_d6_P, dac_d5_P, dac_d4_P, dac_d3_P, dac_d2_P, dac_d1_P, dac_d0_P } = dac_data_p;
assign	{ dac_frm_N, dac_d15_N, dac_d14_N, dac_d13_N, dac_d12_N, dac_d11_N, dac_d10_N, dac_d9_N, dac_d8_N, dac_d7_N, dac_d6_N, dac_d5_N, dac_d4_N, dac_d3_N, dac_d2_N, dac_d1_N, dac_d0_N } = dac_data_n;

wire [16:0]     dac_data_in_1 = { dac_frame, dac_data_1 };
wire [16:0]     dac_data_in_2 = { dac_frame, dac_data_2 };

inf_data_out_lvds_ddr #(
	.DATA_WIDTH(17),
	.REFCLK_FREQUENCY(250))
dac_data_inf (
	.data_clk_p (dac_dci_P),
	.data_clk_n (dac_dci_N),
	.data_p (dac_data_p),
	.data_n (dac_data_n),
	.data_1 (dac_data_in_1),
	.data_2 (dac_data_in_2),
	.data_clk_2x (dac_dclk_2x),
	.data_buffer_enable (dac_buffer_enable),
	.delay_control_clk (dac_dclk_2x),
	.delay_control_reset (dac_inf_reset),
	.delay_locked (),
	.delay_reset (dac_inf_reset),
	.ddr_reset (dac_inf_reset),
	.delay_clk (dac_dclk_2x),
	.delay_clk_en (1'b0),
	.delay_load (1'b0),
	.delay_enable_vtc (1'b0),
	.delay_value (dac_delay_value),
	.delay_value_out (dac_delay_value_out)); 

// *******************************************************

// ********** ADC: IBUFDS --> IDELAYE3 --> IDDR **********

wire [14:0]		adc_data_p = { adc_or_P, adc_d13_P, adc_d12_P, adc_d11_P, adc_d10_P, adc_d9_P, adc_d8_P, adc_d7_P, adc_d6_P, adc_d5_P, adc_d4_P, adc_d3_P, adc_d2_P, adc_d1_P, adc_d0_P }; 
wire [14:0]	    adc_data_n = { adc_or_N, adc_d13_N, adc_d12_N, adc_d11_N, adc_d10_N, adc_d9_N, adc_d8_N, adc_d7_N, adc_d6_N, adc_d5_N, adc_d4_N, adc_d3_N, adc_d2_N, adc_d1_N, adc_d0_N };

wire [13:0]		adc_data_1, adc_data_2;
wire            adc_or_1, adc_or_2, adc_dclk_2x, adc_overrange;

assign  adc_overrange = adc_or_1 | adc_or_2;

wire [8:0]		adc_delay_value [14:0], adc_delay_value_out [14:0];



wire    adc_inf_locked;

inf_data_in_lvds_ddr #(
	.DATA_WIDTH(15),
	.REFCLK_FREQUENCY(250))
adc_data_inf (
	.data_clk_p (adc_dco_P),
	.data_clk_n (adc_dco_N),
	.data_p (adc_data_p),
	.data_n (adc_data_n),
	.data_1 ({ adc_or_1, adc_data_1 }),
	.data_2 ({ adc_or_2, adc_data_2 }),
	.data_clk_2x (adc_dclk_2x),
	.delay_control_clk (clk1_g),
	.delay_control_reset (adc_inf_reset),
	.delay_locked (adc_inf_locked),
	.delay_reset (adc_inf_reset),
	.ddr_reset (adc_inf_reset),
	.delay_clk (adc_dclk_2x),
	.delay_clk_en (1'b0),
	.delay_load (1'b0),
	.delay_enable_vtc (1'b0),
	.delay_value (adc_delay_value),
	.delay_value_out (adc_delay_value_out));

// *******************************************************

assign	rf_clk_reset_b = emio_o[0];// == 0 ? 1'b0 : 1'bz;
assign	emio_i[1] = rf_clk_m0;
assign	emio_i[2] = rf_clk_m1;
assign	emio_i[3] = rf_clk_m2;
assign	emio_i[4] = rf_clk_m3;
assign	emio_i[5] = rf_clk_m4;
assign 	adc_oe_b = emio_o[6]; //1'b1;
assign 	adc_pdwn = emio_o[7]; //1'b1;
assign 	dac_reset_b = emio_o[8];// == 0 ? 1'b0 : 1'bz;
assign	dac_txen = emio_o[9];
assign	emio_i[10] = dac_irq1_b;
assign	emio_i[11] = dac_irq2_b;


assign	rf_clk_spi_clk = emio_spi_sclk;
assign	rf_clk_spi_cs_b = emio_spi_cs_b_0; // pl_clk_20MHz;
assign	rf_clk_spi_di = emio_spi_do;

wire adc_spi_do;
IOBUF adc_spi_buf (.IO (adc_sdio), .I(emio_spi_do), .O(adc_spi_do), .T(adc_spi_t));

assign  adc_sclk = emio_spi_sclk;
assign	adc_cs_b = emio_spi_cs_b_1 & emio_o[20];
wire adc_spi_t = emio_o[21];
assign 	adc_sync = 1'b0;
wire    adc_inf_reset = emio_i[24];

wire dac_spi_do;
IOBUF dac_spi_buf (.IO (dac_spi_dio), .I(emio_spi_do), .O(dac_spi_do), .T(dac_spi_t));

assign  dac_spi_clk = emio_spi_sclk;
assign 	dac_spi_cs_b = emio_spi_cs_b_2 & emio_o[22];
wire dac_spi_t = emio_o[23];
wire    dac_inf_reset = emio_i[25];


reg mux_spi_di;
wire emio_spi_sclk, emio_spi_do, emio_spi_cs_b_0, emio_spi_cs_b_1, emio_spi_cs_b_2;
always_comb begin
	case ({ dac_spi_cs_b, adc_cs_b, rf_clk_spi_cs_b })
		3'b110: mux_spi_di = rf_clk_spi_do;
		3'b101: mux_spi_di = adc_spi_do;
		3'b011: mux_spi_di = dac_spi_do;
	endcase
end







wire    test_out;
wire pl_clk_100MHz, pl_clk_20MHz, pl_reset_b;
reg [26:0] counter = 0;
always_ff@(posedge adc_dclk_2x) begin//clk_dsp_g) begin //pl_clk_100MHz) begin
	counter++;
end


assign pl_led_pps = counter[24] | test_out;
assign pl_led_ref = counter[23];



assign { pwren_1p8v_adc, pwren_1p8v_adc_d, pwren_1p8v_dac, pwren_1p8v_dac_d, pwren_1p8v_rfclk, pwren_3p3v_adda } = 6'b111111;
//assign	{ pl_led_pps, pl_led_ref } = emio_o[94:93];
assign	{ pl_led_rx_b, pl_led_rx_g, pl_led_rx_r } = emio_o[92:90];
assign	{ pl_led_tx_b, pl_led_tx_g, pl_led_tx_r } = emio_o[89:87];

wire axi_spi_clk, axi_spi_i, axi_spi_o, axi_spi_t;
wire [5:0] axi_spi_cs_b;
assign axi_spi_i = 1'b0;

wire [94:0]	emio_i, emio_o, emio_t;

wire    [31:0]  dac_data = 0;

grid grid_inst(
    .pl_clk_100MHz(pl_clk_100MHz),
    .pl_reset_b(pl_reset_b)
);

endmodule : grid_top
