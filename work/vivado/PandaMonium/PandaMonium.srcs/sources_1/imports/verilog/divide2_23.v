/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module divide2_23 (
    output reg [15:0] q,
    output reg [15:0] r,
    input [15:0] a,
    input [15:0] b,
    output reg [0:0] ex
  );
  
  
  
  always @* begin
    if (b != 16'h0000) begin
      q = a / b;
      r = a - b * (a / b);
      ex = 1'h0;
    end else begin
      q = 1'h0;
      r = 1'h0;
      ex = 1'h1;
    end
  end
endmodule
