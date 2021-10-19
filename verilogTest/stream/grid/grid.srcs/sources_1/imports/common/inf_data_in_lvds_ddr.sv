`timescale 1ns / 1ps

module inf_data_in_lvds_ddr #(
	parameter	DATA_WIDTH = 16,
	parameter	REFCLK_FREQUENCY = 200,
	parameter	IODELAY_GROUP = "inf_data_in_lvds_ddr"
	) (	
		input wire							data_clk_p, data_clk_n,
		input wire [DATA_WIDTH-1:0]   		data_p, data_n,
		
		output logic [DATA_WIDTH-1:0]		data_1, data_2,
		output logic						data_clk,

		input logic							delay_control_clk, delay_control_reset,
		output logic						delay_locked,

		input logic							delay_reset, ddr_reset,
		
		input logic							delay_clk, delay_clk_en, delay_load, delay_enable_vtc,
		input logic [8:0]					delay_value [DATA_WIDTH-1:0],
		output logic [8:0]					delay_value_out [DATA_WIDTH-1:0]
	);

	wire [DATA_WIDTH-1:0]					data_in, data_deleyed;

    wire    data_clk_o;

	IBUFDS data_clk_ibufds (.O(data_clk_o), .I(data_clk_p), .IB(data_clk_n));
    BUFG data_clk_bufg (.O(data_clk), .I(data_clk_o));
	
    assign delay_locked = 1'b1;
    
    /*
	(* IODELAY_GROUP = IODELAY_GROUP *)
	IDELAYCTRL #(
			.SIM_DEVICE ("ULTRASCALE"))
		delay_ctrl_inst (
			.RST (delay_control_reset),
			.REFCLK (delay_control_clk),
			.RDY (delay_locked));
    **/
	genvar i;
	generate for(i = 0; i < DATA_WIDTH; i++) begin

		IBUFDS data_ibufds (.O(data_in[i]), .I(data_p[i]), .IB(data_n[i]));

        /*
		(* IODELAY_GROUP = IODELAY_GROUP *)
		IDELAYE3 #(
			.DELAY_SRC ("IDATAIN"),
			.CASCADE ("NONE"),
			.DELAY_TYPE ("VAR_LOAD"),
			.DELAY_VALUE (0),
			.REFCLK_FREQUENCY (REFCLK_FREQUENCY),
			.DELAY_FORMAT ("COUNT"),
			.UPDATE_MODE ("ASYNC"),
			.SIM_DEVICE ("ULTRASCALE_PLUS"))
		delay_inst (
			.CASC_RETURN (1'b0),
			.CASC_IN (1'b0),
			.CASC_OUT (),
			.CE (delay_clk_en),
			.CLK (delay_clk),
			.INC (1'b0),
			.LOAD (delay_load),
			.CNTVALUEIN (delay_value[i]),
			.CNTVALUEOUT (delay_value_out[i]),
			.DATAIN (1'b0),
			.IDATAIN (data_in[i]),
			.DATAOUT (data_deleyed[i]),
			.RST (delay_reset),
			.EN_VTC (delay_enable_vtc));*/

		IDDRE1 #(
			.DDR_CLK_EDGE ("SAME_EDGE"),
			.IS_C_INVERTED (0),
			.IS_CB_INVERTED (0)) 
		ddr_inst (
			.R (ddr_reset),
			.C (data_clk),
			.CB (~data_clk),
			.D (data_in[i]),
			//.D (data_deleyed[i]),
			.Q1 (data_1[i]),
			.Q2 (data_2[i]));

	end endgenerate

endmodule : inf_data_in_lvds_ddr