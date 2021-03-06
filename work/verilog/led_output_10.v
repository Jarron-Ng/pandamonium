/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module led_output_10 (
    input [63:0] map,
    input [15:0] x,
    input [15:0] y,
    input [0:0] game_start,
    input [0:0] game_over,
    output reg [191:0] row0,
    output reg [191:0] row1,
    output reg [191:0] row2,
    output reg [191:0] row3,
    output reg [191:0] row4,
    output reg [191:0] row5,
    output reg [191:0] row6,
    output reg [191:0] row7
  );
  
  
  
  localparam PATH = 24'h000000;
  
  localparam PANDA = 24'hff0000;
  
  localparam GOAL = 24'hffff00;
  
  localparam WALL = 24'h00ff00;
  
  localparam YELLOW = 24'h00ffff;
  
  localparam PINK = 24'h80ff00;
  
  localparam RED = 24'h00ff00;
  
  localparam BLUE = 24'hff0000;
  
  localparam BLACK = 24'h000000;
  
  always @* begin
    if (game_start == 1'h1 && game_over == 1'h0) begin
      row7[168+23-:24] = 24'hffff00;
    end else begin
      row7[168+23-:24] = 24'h00ffff;
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[0+0+0-:1] == 1'h0 && (x == 1'h0 && y == 1'h0)) begin
        row0[0+23-:24] = 24'hff0000;
      end else begin
        if (map[0+0+0-:1] == 1'h1) begin
          row0[0+23-:24] = 24'h00ff00;
        end else begin
          row0[0+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row0[0+23-:24] = 24'h000000;
      end else begin
        row0[0+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[0+1+0-:1] == 1'h0 && (x == 1'h0 && y == 1'h1)) begin
        row0[24+23-:24] = 24'hff0000;
      end else begin
        if (map[0+1+0-:1] == 1'h1) begin
          row0[24+23-:24] = 24'h00ff00;
        end else begin
          row0[24+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row0[24+23-:24] = 24'h000000;
      end else begin
        row0[24+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[0+2+0-:1] == 1'h0 && (x == 1'h0 && y == 2'h2)) begin
        row0[48+23-:24] = 24'hff0000;
      end else begin
        if (map[0+2+0-:1] == 1'h1) begin
          row0[48+23-:24] = 24'h00ff00;
        end else begin
          row0[48+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row0[48+23-:24] = 24'h00ff00;
      end else begin
        row0[48+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[0+3+0-:1] == 1'h0 && (x == 1'h0 && y == 2'h3)) begin
        row0[72+23-:24] = 24'hff0000;
      end else begin
        if (map[0+3+0-:1] == 1'h1) begin
          row0[72+23-:24] = 24'h00ff00;
        end else begin
          row0[72+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row0[72+23-:24] = 24'h00ff00;
      end else begin
        row0[72+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[0+4+0-:1] == 1'h0 && (x == 1'h0 && y == 3'h4)) begin
        row0[96+23-:24] = 24'hff0000;
      end else begin
        if (map[0+4+0-:1] == 1'h1) begin
          row0[96+23-:24] = 24'h00ff00;
        end else begin
          row0[96+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row0[96+23-:24] = 24'h000000;
      end else begin
        row0[96+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[0+5+0-:1] == 1'h0 && (x == 1'h0 && y == 3'h5)) begin
        row0[120+23-:24] = 24'hff0000;
      end else begin
        if (map[0+5+0-:1] == 1'h1) begin
          row0[120+23-:24] = 24'h00ff00;
        end else begin
          row0[120+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row0[120+23-:24] = 24'h000000;
      end else begin
        row0[120+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[0+6+0-:1] == 1'h0 && (x == 1'h0 && y == 3'h6)) begin
        row0[144+23-:24] = 24'hff0000;
      end else begin
        if (map[0+6+0-:1] == 1'h1) begin
          row0[144+23-:24] = 24'h00ff00;
        end else begin
          row0[144+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row0[144+23-:24] = 24'h000000;
      end else begin
        row0[144+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[0+7+0-:1] == 1'h0 && (x == 1'h0 && y == 3'h7)) begin
        row0[168+23-:24] = 24'hff0000;
      end else begin
        if (map[0+7+0-:1] == 1'h1) begin
          row0[168+23-:24] = 24'h00ff00;
        end else begin
          row0[168+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row0[168+23-:24] = 24'h000000;
      end else begin
        row0[168+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[8+0+0-:1] == 1'h0 && (x == 1'h1 && y == 1'h0)) begin
        row1[0+23-:24] = 24'hff0000;
      end else begin
        if (map[8+0+0-:1] == 1'h1) begin
          row1[0+23-:24] = 24'h00ff00;
        end else begin
          row1[0+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row1[0+23-:24] = 24'h000000;
      end else begin
        row1[0+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[8+1+0-:1] == 1'h0 && (x == 1'h1 && y == 1'h1)) begin
        row1[24+23-:24] = 24'hff0000;
      end else begin
        if (map[8+1+0-:1] == 1'h1) begin
          row1[24+23-:24] = 24'h00ff00;
        end else begin
          row1[24+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row1[24+23-:24] = 24'h00ff00;
      end else begin
        row1[24+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[8+2+0-:1] == 1'h0 && (x == 1'h1 && y == 2'h2)) begin
        row1[48+23-:24] = 24'hff0000;
      end else begin
        if (map[8+2+0-:1] == 1'h1) begin
          row1[48+23-:24] = 24'h00ff00;
        end else begin
          row1[48+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row1[48+23-:24] = 24'h00ff00;
      end else begin
        row1[48+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[8+3+0-:1] == 1'h0 && (x == 1'h1 && y == 2'h3)) begin
        row1[72+23-:24] = 24'hff0000;
      end else begin
        if (map[8+3+0-:1] == 1'h1) begin
          row1[72+23-:24] = 24'h00ff00;
        end else begin
          row1[72+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row1[72+23-:24] = 24'h00ff00;
      end else begin
        row1[72+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[8+4+0-:1] == 1'h0 && (x == 1'h1 && y == 3'h4)) begin
        row1[96+23-:24] = 24'hff0000;
      end else begin
        if (map[8+4+0-:1] == 1'h1) begin
          row1[96+23-:24] = 24'h00ff00;
        end else begin
          row1[96+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row1[96+23-:24] = 24'h00ff00;
      end else begin
        row1[96+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[8+5+0-:1] == 1'h0 && (x == 1'h1 && y == 3'h5)) begin
        row1[120+23-:24] = 24'hff0000;
      end else begin
        if (map[8+5+0-:1] == 1'h1) begin
          row1[120+23-:24] = 24'h00ff00;
        end else begin
          row1[120+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row1[120+23-:24] = 24'h000000;
      end else begin
        row1[120+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[8+6+0-:1] == 1'h0 && (x == 1'h1 && y == 3'h6)) begin
        row1[144+23-:24] = 24'hff0000;
      end else begin
        if (map[8+6+0-:1] == 1'h1) begin
          row1[144+23-:24] = 24'h00ff00;
        end else begin
          row1[144+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row1[144+23-:24] = 24'h000000;
      end else begin
        row1[144+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[8+7+0-:1] == 1'h0 && (x == 1'h1 && y == 3'h7)) begin
        row1[168+23-:24] = 24'hff0000;
      end else begin
        if (map[8+7+0-:1] == 1'h1) begin
          row1[168+23-:24] = 24'h00ff00;
        end else begin
          row1[168+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row1[168+23-:24] = 24'h000000;
      end else begin
        row1[168+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[16+0+0-:1] == 1'h0 && (x == 2'h2 && y == 1'h0)) begin
        row2[0+23-:24] = 24'hff0000;
      end else begin
        if (map[16+0+0-:1] == 1'h1) begin
          row2[0+23-:24] = 24'h00ff00;
        end else begin
          row2[0+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row2[0+23-:24] = 24'h000000;
      end else begin
        row2[0+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[16+1+0-:1] == 1'h0 && (x == 2'h2 && y == 1'h1)) begin
        row2[24+23-:24] = 24'hff0000;
      end else begin
        if (map[16+1+0-:1] == 1'h1) begin
          row2[24+23-:24] = 24'h00ff00;
        end else begin
          row2[24+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row2[24+23-:24] = 24'h00ff00;
      end else begin
        row2[24+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[16+2+0-:1] == 1'h0 && (x == 2'h2 && y == 2'h2)) begin
        row2[48+23-:24] = 24'hff0000;
      end else begin
        if (map[16+2+0-:1] == 1'h1) begin
          row2[48+23-:24] = 24'h00ff00;
        end else begin
          row2[48+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row2[48+23-:24] = 24'h00ff00;
      end else begin
        row2[48+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[16+3+0-:1] == 1'h0 && (x == 2'h2 && y == 2'h3)) begin
        row2[72+23-:24] = 24'hff0000;
      end else begin
        if (map[16+3+0-:1] == 1'h1) begin
          row2[72+23-:24] = 24'h00ff00;
        end else begin
          row2[72+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row2[72+23-:24] = 24'h00ff00;
      end else begin
        row2[72+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[16+4+0-:1] == 1'h0 && (x == 2'h2 && y == 3'h4)) begin
        row2[96+23-:24] = 24'hff0000;
      end else begin
        if (map[16+4+0-:1] == 1'h1) begin
          row2[96+23-:24] = 24'h00ff00;
        end else begin
          row2[96+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row2[96+23-:24] = 24'h00ff00;
      end else begin
        row2[96+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[16+5+0-:1] == 1'h0 && (x == 2'h2 && y == 3'h5)) begin
        row2[120+23-:24] = 24'hff0000;
      end else begin
        if (map[16+5+0-:1] == 1'h1) begin
          row2[120+23-:24] = 24'h00ff00;
        end else begin
          row2[120+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row2[120+23-:24] = 24'h00ff00;
      end else begin
        row2[120+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[16+6+0-:1] == 1'h0 && (x == 2'h2 && y == 3'h6)) begin
        row2[144+23-:24] = 24'hff0000;
      end else begin
        if (map[16+6+0-:1] == 1'h1) begin
          row2[144+23-:24] = 24'h00ff00;
        end else begin
          row2[144+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row2[144+23-:24] = 24'h000000;
      end else begin
        row2[144+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[16+7+0-:1] == 1'h0 && (x == 2'h2 && y == 3'h7)) begin
        row2[168+23-:24] = 24'hff0000;
      end else begin
        if (map[16+7+0-:1] == 1'h1) begin
          row2[168+23-:24] = 24'h00ff00;
        end else begin
          row2[168+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row2[168+23-:24] = 24'h000000;
      end else begin
        row2[168+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[24+0+0-:1] == 1'h0 && (x == 2'h3 && y == 1'h0)) begin
        row3[0+23-:24] = 24'hff0000;
      end else begin
        if (map[24+0+0-:1] == 1'h1) begin
          row3[0+23-:24] = 24'h00ff00;
        end else begin
          row3[0+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row3[0+23-:24] = 24'h000000;
      end else begin
        row3[0+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[24+1+0-:1] == 1'h0 && (x == 2'h3 && y == 1'h1)) begin
        row3[24+23-:24] = 24'hff0000;
      end else begin
        if (map[24+1+0-:1] == 1'h1) begin
          row3[24+23-:24] = 24'h00ff00;
        end else begin
          row3[24+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row3[24+23-:24] = 24'h000000;
      end else begin
        row3[24+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[24+2+0-:1] == 1'h0 && (x == 2'h3 && y == 2'h2)) begin
        row3[48+23-:24] = 24'hff0000;
      end else begin
        if (map[24+2+0-:1] == 1'h1) begin
          row3[48+23-:24] = 24'h00ff00;
        end else begin
          row3[48+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row3[48+23-:24] = 24'h00ff00;
      end else begin
        row3[48+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[24+3+0-:1] == 1'h0 && (x == 2'h3 && y == 2'h3)) begin
        row3[72+23-:24] = 24'hff0000;
      end else begin
        if (map[24+3+0-:1] == 1'h1) begin
          row3[72+23-:24] = 24'h00ff00;
        end else begin
          row3[72+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row3[72+23-:24] = 24'h00ff00;
      end else begin
        row3[72+23-:24] = 24'h80ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[24+4+0-:1] == 1'h0 && (x == 2'h3 && y == 3'h4)) begin
        row3[96+23-:24] = 24'hff0000;
      end else begin
        if (map[24+4+0-:1] == 1'h1) begin
          row3[96+23-:24] = 24'h00ff00;
        end else begin
          row3[96+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row3[96+23-:24] = 24'h00ff00;
      end else begin
        row3[96+23-:24] = 24'h80ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[24+5+0-:1] == 1'h0 && (x == 2'h3 && y == 3'h5)) begin
        row3[120+23-:24] = 24'hff0000;
      end else begin
        if (map[24+5+0-:1] == 1'h1) begin
          row3[120+23-:24] = 24'h00ff00;
        end else begin
          row3[120+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row3[120+23-:24] = 24'h00ff00;
      end else begin
        row3[120+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[24+6+0-:1] == 1'h0 && (x == 2'h3 && y == 3'h6)) begin
        row3[144+23-:24] = 24'hff0000;
      end else begin
        if (map[24+6+0-:1] == 1'h1) begin
          row3[144+23-:24] = 24'h00ff00;
        end else begin
          row3[144+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row3[144+23-:24] = 24'h00ff00;
      end else begin
        row3[144+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[24+7+0-:1] == 1'h0 && (x == 2'h3 && y == 3'h7)) begin
        row3[168+23-:24] = 24'hff0000;
      end else begin
        if (map[24+7+0-:1] == 1'h1) begin
          row3[168+23-:24] = 24'h00ff00;
        end else begin
          row3[168+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row3[168+23-:24] = 24'h000000;
      end else begin
        row3[168+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[32+0+0-:1] == 1'h0 && (x == 3'h4 && y == 1'h0)) begin
        row4[0+23-:24] = 24'hff0000;
      end else begin
        if (map[32+0+0-:1] == 1'h1) begin
          row4[0+23-:24] = 24'h00ff00;
        end else begin
          row4[0+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row4[0+23-:24] = 24'h000000;
      end else begin
        row4[0+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[32+1+0-:1] == 1'h0 && (x == 3'h4 && y == 1'h1)) begin
        row4[24+23-:24] = 24'hff0000;
      end else begin
        if (map[32+1+0-:1] == 1'h1) begin
          row4[24+23-:24] = 24'h00ff00;
        end else begin
          row4[24+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row4[24+23-:24] = 24'h000000;
      end else begin
        row4[24+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[32+2+0-:1] == 1'h0 && (x == 3'h4 && y == 2'h2)) begin
        row4[48+23-:24] = 24'hff0000;
      end else begin
        if (map[32+2+0-:1] == 1'h1) begin
          row4[48+23-:24] = 24'h00ff00;
        end else begin
          row4[48+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row4[48+23-:24] = 24'h00ff00;
      end else begin
        row4[48+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[32+3+0-:1] == 1'h0 && (x == 3'h4 && y == 2'h3)) begin
        row4[72+23-:24] = 24'hff0000;
      end else begin
        if (map[32+3+0-:1] == 1'h1) begin
          row4[72+23-:24] = 24'h00ff00;
        end else begin
          row4[72+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row4[72+23-:24] = 24'h00ff00;
      end else begin
        row4[72+23-:24] = 24'h80ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[32+4+0-:1] == 1'h0 && (x == 3'h4 && y == 3'h4)) begin
        row4[96+23-:24] = 24'hff0000;
      end else begin
        if (map[32+4+0-:1] == 1'h1) begin
          row4[96+23-:24] = 24'h00ff00;
        end else begin
          row4[96+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row4[96+23-:24] = 24'h00ff00;
      end else begin
        row4[96+23-:24] = 24'h80ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[32+5+0-:1] == 1'h0 && (x == 3'h4 && y == 3'h5)) begin
        row4[120+23-:24] = 24'hff0000;
      end else begin
        if (map[32+5+0-:1] == 1'h1) begin
          row4[120+23-:24] = 24'h00ff00;
        end else begin
          row4[120+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row4[120+23-:24] = 24'h00ff00;
      end else begin
        row4[120+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[32+6+0-:1] == 1'h0 && (x == 3'h4 && y == 3'h6)) begin
        row4[144+23-:24] = 24'hff0000;
      end else begin
        if (map[32+6+0-:1] == 1'h1) begin
          row4[144+23-:24] = 24'h00ff00;
        end else begin
          row4[144+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row4[144+23-:24] = 24'h00ff00;
      end else begin
        row4[144+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[32+7+0-:1] == 1'h0 && (x == 3'h4 && y == 3'h7)) begin
        row4[168+23-:24] = 24'hff0000;
      end else begin
        if (map[32+7+0-:1] == 1'h1) begin
          row4[168+23-:24] = 24'h00ff00;
        end else begin
          row4[168+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row4[168+23-:24] = 24'h000000;
      end else begin
        row4[168+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[40+0+0-:1] == 1'h0 && (x == 3'h5 && y == 1'h0)) begin
        row5[0+23-:24] = 24'hff0000;
      end else begin
        if (map[40+0+0-:1] == 1'h1) begin
          row5[0+23-:24] = 24'h00ff00;
        end else begin
          row5[0+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row5[0+23-:24] = 24'h000000;
      end else begin
        row5[0+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[40+1+0-:1] == 1'h0 && (x == 3'h5 && y == 1'h1)) begin
        row5[24+23-:24] = 24'hff0000;
      end else begin
        if (map[40+1+0-:1] == 1'h1) begin
          row5[24+23-:24] = 24'h00ff00;
        end else begin
          row5[24+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row5[24+23-:24] = 24'h00ff00;
      end else begin
        row5[24+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[40+2+0-:1] == 1'h0 && (x == 3'h5 && y == 2'h2)) begin
        row5[48+23-:24] = 24'hff0000;
      end else begin
        if (map[40+2+0-:1] == 1'h1) begin
          row5[48+23-:24] = 24'h00ff00;
        end else begin
          row5[48+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row5[48+23-:24] = 24'h00ff00;
      end else begin
        row5[48+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[40+3+0-:1] == 1'h0 && (x == 3'h5 && y == 2'h3)) begin
        row5[72+23-:24] = 24'hff0000;
      end else begin
        if (map[40+3+0-:1] == 1'h1) begin
          row5[72+23-:24] = 24'h00ff00;
        end else begin
          row5[72+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row5[72+23-:24] = 24'h00ff00;
      end else begin
        row5[72+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[40+4+0-:1] == 1'h0 && (x == 3'h5 && y == 3'h4)) begin
        row5[96+23-:24] = 24'hff0000;
      end else begin
        if (map[40+4+0-:1] == 1'h1) begin
          row5[96+23-:24] = 24'h00ff00;
        end else begin
          row5[96+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row5[96+23-:24] = 24'h00ff00;
      end else begin
        row5[96+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[40+5+0-:1] == 1'h0 && (x == 3'h5 && y == 3'h5)) begin
        row5[120+23-:24] = 24'hff0000;
      end else begin
        if (map[40+5+0-:1] == 1'h1) begin
          row5[120+23-:24] = 24'h00ff00;
        end else begin
          row5[120+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row5[120+23-:24] = 24'h00ff00;
      end else begin
        row5[120+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[40+6+0-:1] == 1'h0 && (x == 3'h5 && y == 3'h6)) begin
        row5[144+23-:24] = 24'hff0000;
      end else begin
        if (map[40+6+0-:1] == 1'h1) begin
          row5[144+23-:24] = 24'h00ff00;
        end else begin
          row5[144+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row5[144+23-:24] = 24'h000000;
      end else begin
        row5[144+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[40+7+0-:1] == 1'h0 && (x == 3'h5 && y == 3'h7)) begin
        row5[168+23-:24] = 24'hff0000;
      end else begin
        if (map[40+7+0-:1] == 1'h1) begin
          row5[168+23-:24] = 24'h00ff00;
        end else begin
          row5[168+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row5[168+23-:24] = 24'h000000;
      end else begin
        row5[168+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[48+0+0-:1] == 1'h0 && (x == 3'h6 && y == 1'h0)) begin
        row6[0+23-:24] = 24'hff0000;
      end else begin
        if (map[48+0+0-:1] == 1'h1) begin
          row6[0+23-:24] = 24'h00ff00;
        end else begin
          row6[0+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row6[0+23-:24] = 24'h000000;
      end else begin
        row6[0+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[48+1+0-:1] == 1'h0 && (x == 3'h6 && y == 1'h1)) begin
        row6[24+23-:24] = 24'hff0000;
      end else begin
        if (map[48+1+0-:1] == 1'h1) begin
          row6[24+23-:24] = 24'h00ff00;
        end else begin
          row6[24+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row6[24+23-:24] = 24'h00ff00;
      end else begin
        row6[24+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[48+2+0-:1] == 1'h0 && (x == 3'h6 && y == 2'h2)) begin
        row6[48+23-:24] = 24'hff0000;
      end else begin
        if (map[48+2+0-:1] == 1'h1) begin
          row6[48+23-:24] = 24'h00ff00;
        end else begin
          row6[48+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row6[48+23-:24] = 24'h00ff00;
      end else begin
        row6[48+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[48+3+0-:1] == 1'h0 && (x == 3'h6 && y == 2'h3)) begin
        row6[72+23-:24] = 24'hff0000;
      end else begin
        if (map[48+3+0-:1] == 1'h1) begin
          row6[72+23-:24] = 24'h00ff00;
        end else begin
          row6[72+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row6[72+23-:24] = 24'h00ff00;
      end else begin
        row6[72+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[48+4+0-:1] == 1'h0 && (x == 3'h6 && y == 3'h4)) begin
        row6[96+23-:24] = 24'hff0000;
      end else begin
        if (map[48+4+0-:1] == 1'h1) begin
          row6[96+23-:24] = 24'h00ff00;
        end else begin
          row6[96+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row6[96+23-:24] = 24'h00ff00;
      end else begin
        row6[96+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[48+5+0-:1] == 1'h0 && (x == 3'h6 && y == 3'h5)) begin
        row6[120+23-:24] = 24'hff0000;
      end else begin
        if (map[48+5+0-:1] == 1'h1) begin
          row6[120+23-:24] = 24'h00ff00;
        end else begin
          row6[120+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row6[120+23-:24] = 24'h000000;
      end else begin
        row6[120+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[48+6+0-:1] == 1'h0 && (x == 3'h6 && y == 3'h6)) begin
        row6[144+23-:24] = 24'hff0000;
      end else begin
        if (map[48+6+0-:1] == 1'h1) begin
          row6[144+23-:24] = 24'h00ff00;
        end else begin
          row6[144+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row6[144+23-:24] = 24'h000000;
      end else begin
        row6[144+23-:24] = 24'h000000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[48+7+0-:1] == 1'h0 && (x == 3'h6 && y == 3'h7)) begin
        row6[168+23-:24] = 24'hff0000;
      end else begin
        if (map[48+7+0-:1] == 1'h1) begin
          row6[168+23-:24] = 24'h00ff00;
        end else begin
          row6[168+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row6[168+23-:24] = 24'h000000;
      end else begin
        row6[168+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[56+0+0-:1] == 1'h0 && (x == 3'h7 && y == 1'h0)) begin
        row7[0+23-:24] = 24'hff0000;
      end else begin
        if (map[56+0+0-:1] == 1'h1) begin
          row7[0+23-:24] = 24'h00ff00;
        end else begin
          row7[0+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row7[0+23-:24] = 24'h000000;
      end else begin
        row7[0+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[56+1+0-:1] == 1'h0 && (x == 3'h7 && y == 1'h1)) begin
        row7[24+23-:24] = 24'hff0000;
      end else begin
        if (map[56+1+0-:1] == 1'h1) begin
          row7[24+23-:24] = 24'h00ff00;
        end else begin
          row7[24+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row7[24+23-:24] = 24'h000000;
      end else begin
        row7[24+23-:24] = 24'hff0000;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[56+2+0-:1] == 1'h0 && (x == 3'h7 && y == 2'h2)) begin
        row7[48+23-:24] = 24'hff0000;
      end else begin
        if (map[56+2+0-:1] == 1'h1) begin
          row7[48+23-:24] = 24'h00ff00;
        end else begin
          row7[48+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row7[48+23-:24] = 24'h00ff00;
      end else begin
        row7[48+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[56+3+0-:1] == 1'h0 && (x == 3'h7 && y == 2'h3)) begin
        row7[72+23-:24] = 24'hff0000;
      end else begin
        if (map[56+3+0-:1] == 1'h1) begin
          row7[72+23-:24] = 24'h00ff00;
        end else begin
          row7[72+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row7[72+23-:24] = 24'h00ff00;
      end else begin
        row7[72+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[56+4+0-:1] == 1'h0 && (x == 3'h7 && y == 3'h4)) begin
        row7[96+23-:24] = 24'hff0000;
      end else begin
        if (map[56+4+0-:1] == 1'h1) begin
          row7[96+23-:24] = 24'h00ff00;
        end else begin
          row7[96+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row7[96+23-:24] = 24'h000000;
      end else begin
        row7[96+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[56+5+0-:1] == 1'h0 && (x == 3'h7 && y == 3'h5)) begin
        row7[120+23-:24] = 24'hff0000;
      end else begin
        if (map[56+5+0-:1] == 1'h1) begin
          row7[120+23-:24] = 24'h00ff00;
        end else begin
          row7[120+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row7[120+23-:24] = 24'h000000;
      end else begin
        row7[120+23-:24] = 24'h00ff00;
      end
    end
    if (game_start == 1'h1 && game_over == 1'h0) begin
      if (map[56+6+0-:1] == 1'h0 && (x == 3'h7 && y == 3'h6)) begin
        row7[144+23-:24] = 24'hff0000;
      end else begin
        if (map[56+6+0-:1] == 1'h1) begin
          row7[144+23-:24] = 24'h00ff00;
        end else begin
          row7[144+23-:24] = 24'h000000;
        end
      end
    end else begin
      if (game_over == 1'h1) begin
        row7[144+23-:24] = 24'h000000;
      end else begin
        row7[144+23-:24] = 24'h00ff00;
      end
    end
  end
endmodule
