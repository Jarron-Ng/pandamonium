/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module compare_21 (
    input z,
    input v,
    input n,
    input [5:0] alufn,
    output reg out
  );
  
  
  
  always @* begin
    out = 1'h0;
    
    case (alufn)
      6'h33: begin
        out = z;
      end
      6'h35: begin
        out = n ^ v;
      end
      6'h37: begin
        out = z | (n ^ v);
      end
      default: begin
        out = 1'h0;
      end
    endcase
  end
endmodule
