`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2021 07:30:51 PM
// Design Name: 
// Module Name: rx_fifo_test
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

module adc_fifo_wr(

    input logic [13:0]      adc_1_data, adc_2_data,

    output logic [31:0]     fifo_wdata,
    output logic            fifo_wr_en,
    input logic             fifo_full
);

assign fifo_wr_en = 1'b1;

assign fifo_wdata = { 2'b00, adc_1_data, 2'b00, adc_2_data };

endmodule : adc_fifo_wr
