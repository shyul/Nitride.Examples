`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2021 08:25:05 PM
// Design Name: 
// Module Name: m_axis_counter
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


module m_axis_counter(

	input logic					aclk, // Global Clock Signal.
	input logic					aresetn, // Global Reset Singal. This Signal is Active Low

	output reg [31:0]			m_axis_tdata,
	output reg					m_axis_tvalid,
	input logic					m_axis_tready
);

always_ff @(posedge aclk or negedge aresetn) begin : proc_counter
	if(~aresetn || ~m_axis_tready) begin
		m_axis_tdata <= 0;
		m_axis_tvalid <= 1'b0;
	end else begin
		m_axis_tdata <= m_axis_tdata + 1;
		m_axis_tvalid <= 1'b1;
	end
end

endmodule
