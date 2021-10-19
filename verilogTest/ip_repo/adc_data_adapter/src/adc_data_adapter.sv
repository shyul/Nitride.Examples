`timescale 1 ns / 1 ps

module adc_data_adapter (

	// =============================================
	// =============================================
	
	input logic						aclk, // Global Clock Signal.
	input logic						aresetn, // Global Reset Singal. This Signal is Active Low

	// =============================================
	// =============================================

	input logic unsigned [31:0]		sample_count,
	input logic						start_trigger,
	output reg						start_trigger_ack,

	output reg unsigned [31:0]		sample_counter,
	output reg unsigned [1:0]		sample_state,

	input logic [13:0]				adc_data_1, adc_data_2,

	output logic [127:0]			m_axis_tdata,
	output reg						m_axis_tvalid,
	input logic						m_axis_tready
	);

assign  m_axis_tdata = { 50'b0, adc_data_2, 50'b0, adc_data_1 };

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

endmodule : adc_data_adapter