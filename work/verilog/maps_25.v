/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module maps_25 (
    input [15:0] address,
    input [15:0] level_input,
    output reg [15:0] out_row
  );
  
  
  
  localparam MAP = 384'h000800e900000024001900c2007600300021002a000200f200040040007000c600200018009200800046004c00000020;
  
  always @* begin
    
    case (level_input)
      1'h0: begin
        out_row = MAP[(address)*16+15-:16];
      end
      1'h1: begin
        out_row = MAP[(address + 4'h8)*16+15-:16];
      end
      2'h2: begin
        out_row = MAP[(address + 5'h10)*16+15-:16];
      end
      default: begin
        out_row = 16'h0000;
      end
    endcase
  end
endmodule
