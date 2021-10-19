`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2021 05:21:32 PM
// Design Name: 
// Module Name: rxd_ctrl
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


module rxd_ctrl(
	input logic				aclk, aresetn,

	output reg [31:0]		axi_str_tdata,
	output reg				axi_str_tlast, axi_str_tvalid,
	input logic				axi_str_tready,

	input logic				rx_enable,
	output reg [1:0]		state,

	output logic [31:0]		keyhole_addr
    );

assign	keyhole_addr = 32'h80011000;

always_ff @(posedge aclk or negedge aresetn) begin : proc_transfer
	if(~aresetn) begin
		axi_str_tdata <= 0;
		axi_str_tlast <= 1'b0;
		axi_str_tvalid <= 1'b0;
		state <= 0;
	end else begin
		case(state)

			0: begin
				axi_str_tdata <= 0;
				axi_str_tlast <= 1'b0;
				if (rx_enable) begin
				    axi_str_tvalid <= 1'b1; 
				    state <= 1;
				end else begin
				    axi_str_tvalid <= 1'b0;
				end
			end

			1: begin
				if(axi_str_tready) begin

					axi_str_tlast <= (axi_str_tdata == 254) ? 1'b1 : 1'b0;
					
					if(axi_str_tdata < 255) begin
					   axi_str_tvalid <= 1'b1;
					   axi_str_tdata++;
					end else begin
					   axi_str_tvalid <= 1'b0;
					   state <= 0;
                    end

				end else begin
					axi_str_tvalid <= 1'b0;
				end
				
			end

			default: state <= 0;

		endcase
	end
end

endmodule : rxd_ctrl
