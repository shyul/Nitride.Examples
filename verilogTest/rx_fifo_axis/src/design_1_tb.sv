`timescale 1ns / 1ps
import axi_vip_pkg::*;

module design_1_tb( );

bit clk = 0, rst_n = 1;
bit init_axi_txn = 0;
bit error, done;
//xil_axi_resp_t  resp;

design_1_wrapper DUT(
    .clk(clk),
    .rst_n(rst_n),
    .compare_done(done),
    .error_out(error),
    .init_axi_txn(init_axi_txn)
);

`include "axi_vip_0_mst_stimulus.svh"
`include "axi_vip_0_passthrough_mem_stimulus.svh"

always #10ns clk = ~clk;

initial begin
    rst_n = 0;
    init_axi_txn = 0;
    #500ns;
    rst_n = 1;
    #50ns;
    init_axi_txn = 1;
    #50ns;
    init_axi_txn = 0;
end

//design_1_axi_vip_0_0_nst_t axi_agent;

endmodule
