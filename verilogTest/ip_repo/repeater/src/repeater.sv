`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2021 09:46:18 AM
// Design Name: 
// Module Name: repeater
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


module repeater(
    input logic     clk, resetn, ready, enable_in,
    output reg      enable
);

reg [9:0]  counter = 0;
    
always_ff@(posedge clk or negedge resetn) begin
    if(!resetn) begin 
        enable <= 1'b0;
        counter <= 0;
    end else begin
        if((ready || enable_in) && counter == 0) begin
            enable <= 1'b1;
            counter++;
        end else begin
            enable <= 1'b0;
            if(counter != 0) counter++;
        end
    end
end

endmodule
