`timescale 1 ns / 1 ps

module ad9643_data_adapter (

	// =============================================
	// =============================================
	
    input logic						aclk,
	input logic						aresetn, // Global Reset Singal. This Signal is Active Low

	// =============================================
	// =============================================

	input logic						adc_dco_p, adc_dco_n,
	input logic [14:0]				adc_data_p, adc_data_n,

	input logic unsigned [31:0]		sample_count,
	input logic						start_trigger,
	output reg						start_trigger_ack,

	output reg unsigned [31:0]		sample_counter,
	output reg unsigned [1:0]		sample_state,
	
	output logic					adc_clk, // Global Clock Signal.
	output logic [14:0]				adc_data_out_1, adc_data_out_2,
	output logic					adc_or_1, adc_or_2,

	output logic [127:0]			m_axis_tdata,
	output reg						m_axis_tvalid,
	input logic						m_axis_tready
	);

wire			adc_dco;
IBUFDS clk_adc_buf (.O(adc_dco), .I(adc_dco_p), .IB(adc_dco_n));
BUFG clk_adc_bufg (.O(adc_clk), .I(adc_dco));

wire [14:0]		adc_data_in;

genvar i;

generate 
    for(i = 0; i < 15; i++) begin

		IBUFDS ibufds (
			.O(adc_data_in[i]),
			.I(adc_data_p[i]),
			.IB(adc_data_n[i]));

		IDDRE1 #(
			.DDR_CLK_EDGE ("SAME_EDGE_PIPELINED"),
			.IS_C_INVERTED (0),
			.IS_CB_INVERTED (1)) 
		iddr (
			.R (~aresetn),
			.C (adc_dco),
			.CB (adc_dco),
			.D (adc_data_in[i]),
			.Q1 (adc_data_out_1[i]),
			.Q2 (adc_data_out_2[i]));

	end
endgenerate

assign	adc_or_1 = adc_data_out_1[14];
assign	adc_or_2 = adc_data_out_2[14];

assign  m_axis_tdata = { 50'b0, adc_data_out_2[13:0], 50'b0, adc_data_out_1[13:0] };

always_ff @(posedge aclk) begin : proc_valid
	if (~aresetn) begin
		sample_counter <= sample_count;
		sample_state <= 0;
		start_trigger_ack <= 1'b0;
		m_axis_tvalid <= 1'b0;
	end else begin
		case (sample_state)
			0: begin
				sample_counter <= sample_count;
				m_axis_tvalid <= 1'b0;
				if (start_trigger) begin
					sample_state <= 1;
					start_trigger_ack <= 1'b1;
					m_axis_tvalid <= 1'b1;
				end else begin
					start_trigger_ack <= 0;
					m_axis_tvalid <= 1'b0;
				end
			end
			1: begin
				start_trigger_ack <= 0;
				sample_counter <= sample_counter - 1;
				if (sample_counter == 0) begin
					sample_state <= 0;
					m_axis_tvalid <= 1'b0;
				end else begin
					m_axis_tvalid <= 1'b1;
				end
			end
			default: begin
				sample_counter <= 0;
				sample_state <= 0;
				start_trigger_ack <= 1'b0;
				m_axis_tvalid <= 1'b0;
			end
		endcase
	end
end

endmodule : ad9643_data_adapter