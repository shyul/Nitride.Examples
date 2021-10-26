//
//   dpath_pn9.v
//
//   This is a 9 stage linear feedback shift register
//   from CCITT 0.153 specification.  The 9th and 5th
//   stage outputs are XOR'ed and fed back into the
//   iput of the first stage.  It produces a pseudo-
//   random bit sequence of length 511 (2^9 - 1).
//
//   This is version advances the lfsr 16 or 14 cycles for
//   every clock cycle depending on the mode input.
//
//

module dpath_pn9(clk, resetb, enable, mode, out);

   input clk, resetb, enable, mode;
   output [15:0] out;

   reg [8:0] sreg;
   reg [6:0] xsreg;
   

   always @ (posedge clk or negedge resetb)
     begin
     if (~resetb)
       begin
       xsreg[6:0] <= 7'b1111111;
       sreg[8:0]  <= 9'b111111111;   // set to all one's accroding ITU spec.
       end
     else
       begin
       if (~enable)
         begin
         xsreg[6:0] <= 7'b1111111;
         sreg[8:0]  <= 9'b111111111;   // set to all one's accroding ITU spec.
         end
       else
         begin
         if (mode)     // mode = 1, 16 bit precision
           begin
           xsreg[6] <= sreg[8] ^ sreg[4];
           xsreg[5] <= sreg[7] ^ sreg[3];
           xsreg[4] <= sreg[6] ^ sreg[2];
           xsreg[3] <= sreg[5] ^ sreg[1];
           xsreg[2] <= sreg[4] ^ sreg[0];
           xsreg[1] <= sreg[8] ^ sreg[4] ^ sreg[3];
           xsreg[0] <= sreg[7] ^ sreg[3] ^ sreg[2];
          
           sreg[8]  <= sreg[6] ^ sreg[2] ^ sreg[1];
           sreg[7]  <= sreg[5] ^ sreg[1] ^ sreg[0];
           sreg[6]  <= sreg[8] ^ sreg[0];
           sreg[5]  <= sreg[8] ^ sreg[7] ^ sreg[4];
           sreg[4]  <= sreg[7] ^ sreg[6] ^ sreg[3];
           sreg[3]  <= sreg[6] ^ sreg[5] ^ sreg[2];
           sreg[2]  <= sreg[5] ^ sreg[4] ^ sreg[1];
           sreg[1]  <= sreg[4] ^ sreg[3] ^ sreg[0];
           sreg[0]  <= sreg[8] ^ sreg[4] ^ sreg[3] ^ sreg[2];
           end // if (mode)
         else
           begin
           xsreg[6] <= 1'b0;
           xsreg[5] <= 1'b0;
           xsreg[4] <= sreg[8] ^ sreg[4];
           xsreg[3] <= sreg[7] ^ sreg[3];
           xsreg[2] <= sreg[6] ^ sreg[2];
           xsreg[1] <= sreg[5] ^ sreg[1];
           xsreg[0] <= sreg[4] ^ sreg[0];
          
           sreg[8]  <= sreg[8] ^ sreg[4] ^ sreg[3];
           sreg[7]  <= sreg[7] ^ sreg[3] ^ sreg[2];
           sreg[6]  <= sreg[6] ^ sreg[2] ^ sreg[1];
           sreg[5]  <= sreg[5] ^ sreg[1] ^ sreg[0];
           sreg[4]  <= sreg[8] ^ sreg[0];
           sreg[3]  <= sreg[8] ^ sreg[7] ^ sreg[4];
           sreg[2]  <= sreg[7] ^ sreg[6] ^ sreg[3];
           sreg[1]  <= sreg[6] ^ sreg[5] ^ sreg[2];
           sreg[0]  <= sreg[5] ^ sreg[4] ^ sreg[1];
           end // else: !if(mode)
         end // else: !if(~enable)
       end // else: !if(~resetb)
     end

   // msb justify the data
   assign out[15:0] = (mode) ? {xsreg[6:0], sreg[8:0]}: {xsreg[4:0], sreg[8:0], 2'b00};
   
endmodule // dpath_pn9

