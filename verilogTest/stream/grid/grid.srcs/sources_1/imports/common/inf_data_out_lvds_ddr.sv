`timescale 1ns / 1ps

module inf_data_out_lvds_ddr #(
	parameter	integer		DATA_WIDTH = 16,
	parameter	REFCLK_FREQUENCY = 200,
	parameter	IODELAY_GROUP = "inf_data_out_lvds_ddr"
	) (	
		output wire			    			data_clk_p, data_clk_n,
		output wire [DATA_WIDTH-1:0]		data_p, data_n,
		input logic [DATA_WIDTH-1:0]		data_1, data_2,
		input logic							data_clk_2x, data_buffer_enable,

		input logic							delay_control_clk, delay_control_reset,
		output logic		                delay_locked,

		input logic							delay_reset, ddr_reset, 
		input logic							delay_clk, delay_clk_en, delay_load, delay_enable_vtc,
		input logic [8:0]					delay_value [DATA_WIDTH-1:0],
		output logic [8:0]					delay_value_out [DATA_WIDTH-1:0]
	);

	wire [DATA_WIDTH-1:0]					data_ddr, data_delayed;

	OBUFTDS dac_dclk_buf (.T(~data_buffer_enable), .I(data_clk_2x), .O(data_clk_p), .OB(data_clk_n));

assign  delay_locked = 1'b0;

/*
	(* IODELAY_GROUP = IODELAY_GROUP *)
	IDELAYCTRL #(
			.SIM_DEVICE ("ULTRASCALE"))
		delay_ctrl_inst (
			.RST (delay_control_reset),
			.REFCLK (delay_control_clk),
			.RDY (delay_locked));*/
			
    genvar i;
	generate for(i = 0; i < DATA_WIDTH; i++) begin

		ODDRE1 dac_ddr (
			.SR (ddr_reset),
			.C (data_clk_2x),
			.D1 (data_1[i]),
			.D2 (data_2[i]),
			.Q (data_ddr[i]));

/*
		(* IODELAY_GROUP = IODELAY_GROUP *)
		ODELAYE3 #(
			.CASCADE ("NONE"),
			.DELAY_TYPE ("VAR_LOAD"),
			.DELAY_VALUE (0),
			.REFCLK_FREQUENCY (200),
			.DELAY_FORMAT ("COUNT"),
			.UPDATE_MODE ("ASYNC"),
			.SIM_DEVICE ("ULTRASCALE_PLUS"))
		dac_delay (
			.CASC_RETURN (1'b0), // Input
			.CASC_IN (1'b0),
			.CASC_OUT (), // Output
			.CE (delay_clk_en),
			.CLK (data_clk_2x),
			.INC (1'b0),
			.LOAD (delay_load),
			.CNTVALUEIN (delay_value[i]),
			.CNTVALUEOUT (delay_value_out[i]),
			.ODATAIN (data_ddr[i]),
			.DATAOUT (data_delayed[i]),
			.RST (delay_reset),
			.EN_VTC (delay_enable_vtc));*/

		//OBUFTDS tx_data_obufds (.T(~data_buffer_enable), .I(data_delayed[i]), .O(data_p[i]), .OB(data_n[i]));
    OBUFTDS tx_data_obufds (.T(~data_buffer_enable), .I(data_ddr[i]), .O(data_p[i]), .OB(data_n[i]));

	end endgenerate

endmodule : inf_data_out_lvds_ddr