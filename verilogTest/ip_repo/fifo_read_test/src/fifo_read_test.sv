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

module fifo_read_test(

    input logic             read_clk, reset,
    
    input logic [63:0]      fifo_data,
    
    output logic [15:0]     wdata_0, wdata_1, wdata_2, wdata_3,

    input logic             burst_ready,
    output reg              rd_en,

    output logic            maxi_valid,
    
    output logic            state,
    output reg [8:0]        read_cnt, wait_cnt
);

assign { wdata_3, wdata_2, wdata_1, wdata_0 } =  fifo_data;

assign state = rd_state[0];
assign maxi_valid = rd_en;


reg [1:0] rd_state = 0;

always_ff@(posedge read_clk or posedge reset) begin
    if(reset) begin
        rd_en <= 1'b0;
        read_cnt <= 0;
        wait_cnt <= 0;
        rd_state <= 0;
    end else begin
        case(rd_state)
            
            0: begin
                rd_en <= 1'b0;
                read_cnt <= 0;
                wait_cnt++;
                if(burst_ready) rd_state <= 1;
            end

            1: begin
                if(read_cnt < 256) begin 
                    read_cnt++;
                    rd_en <= 1'b1;
                    wait_cnt <= 0;
                end else begin 
                    rd_state <= 0;
                    rd_en <= 1'b0; 
                end
            end

            default: rd_state <= 0;

        endcase
    end
end

endmodule : fifo_read_test
