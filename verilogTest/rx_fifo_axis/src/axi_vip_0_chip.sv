
`timescale 1 ps / 1 ps

module chip
   (
    aresetn,
  
    aclk,
    compare_done,
    error_out,
    init_axi_txn
    );
  input aclk;
  input aresetn;
    output compare_done;
  output error_out;
  input init_axi_txn;

  wire aclk;
  wire aresetn;
    wire compare_done;
  wire error_out;
  wire init_axi_txn;

  ex_sim ex_design
       (
        .aresetn(aresetn),
  
        .aclk(aclk),        
        .compare_done(compare_done),
        .error_out(error_out),
        .init_axi_txn(init_axi_txn)
        );
endmodule

