/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module control_unit_12 (
    input clk,
    input rst,
    input z,
    output reg [15:0] level_out,
    input [3:0] direction,
    input [0:0] start,
    input [0:0] reset,
    input [15:0] y_temp,
    output reg [15:0] move_num_out,
    output reg [15:0] orientation_out,
    output reg [5:0] alufn,
    output reg [3:0] asel,
    output reg [3:0] bsel,
    output reg [0:0] we,
    output reg [1:0] wdsel,
    output reg [4:0] ra,
    output reg [4:0] rb,
    output reg [4:0] rc,
    output reg [0:0] game_over,
    output reg [0:0] clear,
    output reg [15:0] seg_index
  );
  
  
  
  localparam X_TEMP = 5'h0e;
  
  localparam Y_TEMP = 5'h0d;
  
  localparam RANDOM = 5'h15;
  
  localparam X_POS = 5'h08;
  
  localparam Y_POS = 5'h09;
  
  localparam LEVEL = 5'h0f;
  
  localparam MOVE = 5'h0a;
  
  localparam ORI = 5'h14;
  
  localparam TEMP1 = 5'h0b;
  
  localparam TEMP2 = 5'h0c;
  
  localparam TEMP3 = 5'h10;
  
  localparam TEMP4 = 5'h11;
  
  localparam TEMP5 = 5'h12;
  
  localparam TEMP6 = 5'h13;
  
  
  localparam START_ctrl = 6'd0;
  localparam GENERATE_MAP_ctrl = 6'd1;
  localparam GENERATE_MAP_ROW1_ctrl = 6'd2;
  localparam GENERATE_MAP_ROW2_ctrl = 6'd3;
  localparam GENERATE_MAP_ROW3_ctrl = 6'd4;
  localparam GENERATE_MAP_ROW4_ctrl = 6'd5;
  localparam GENERATE_MAP_ROW5_ctrl = 6'd6;
  localparam GENERATE_MAP_ROW6_ctrl = 6'd7;
  localparam GENERATE_MAP_ROW7_ctrl = 6'd8;
  localparam GENERATE_MAP_ROW8_ctrl = 6'd9;
  localparam IDLE_ctrl = 6'd10;
  localparam CHECKUPBORDER_ctrl = 6'd11;
  localparam CHECKUPBORDER_CMP_ctrl = 6'd12;
  localparam GOUP_ctrl = 6'd13;
  localparam CHECKDOWNBORDER_ctrl = 6'd14;
  localparam CHECKDOWNBORDER_CMP_ctrl = 6'd15;
  localparam GODOWN_ctrl = 6'd16;
  localparam CHECKLEFTBORDER_ctrl = 6'd17;
  localparam CHECKLEFTBORDER_CMP_ctrl = 6'd18;
  localparam GOLEFT_ctrl = 6'd19;
  localparam CHECKRIGHTBORDER_ctrl = 6'd20;
  localparam CHECKRIGHTBORDER_CMP_ctrl = 6'd21;
  localparam GORIGHT_ctrl = 6'd22;
  localparam STAY_AT_X_ctrl = 6'd23;
  localparam STAY_AT_Y_ctrl = 6'd24;
  localparam CHECK_GOAL_X_ctrl = 6'd25;
  localparam CHECK_GOAL_Y_ctrl = 6'd26;
  localparam CHECK_GOAL_XY_ctrl = 6'd27;
  localparam CHECK_GOAL_XY_MOVE_ctrl = 6'd28;
  localparam CHECK_COLL_ctrl = 6'd29;
  localparam CHECK_COLL_INDEX_ctrl = 6'd30;
  localparam CHECK_COLL_CMP_ctrl = 6'd31;
  localparam UPDATE_XPOS_ctrl = 6'd32;
  localparam UPDATE_YPOS_ctrl = 6'd33;
  localparam CHECK_MOVE_ctrl = 6'd34;
  localparam CHECK_MOVE_CMP_ctrl = 6'd35;
  localparam ADD_MOVE_TEMP_ctrl = 6'd36;
  localparam ADD_MOVE_ctrl = 6'd37;
  localparam RESET_MOVE_ctrl = 6'd38;
  localparam CHECK_ORIENTATION_ctrl = 6'd39;
  localparam CHECK_ORIENTATION_CMP_ctrl = 6'd40;
  localparam ADD_ORIENTATION_TEMP_ctrl = 6'd41;
  localparam RESET_ORIENTATION_ctrl = 6'd42;
  localparam ADD_ORIENTATION_ctrl = 6'd43;
  localparam CHECK_WIN_ctrl = 6'd44;
  localparam CHECK_WIN_ADD_ctrl = 6'd45;
  localparam CHECK_WIN_CMP_ctrl = 6'd46;
  localparam GAMEOVER_ctrl = 6'd47;
  localparam RESET_LEVEL_ctrl = 6'd48;
  
  reg [5:0] M_ctrl_d, M_ctrl_q = START_ctrl;
  
  always @* begin
    M_ctrl_d = M_ctrl_q;
    
    alufn = 6'h00;
    we = 1'h0;
    asel = 4'h0;
    bsel = 4'h0;
    wdsel = 3'h0;
    ra = 5'h13;
    rb = 5'h13;
    rc = 5'h13;
    level_out = 16'h0000;
    seg_index = 16'h0000;
    clear = 1'h0;
    move_num_out = 1'h0;
    orientation_out = 1'h0;
    game_over = 1'h0;
    
    case (M_ctrl_q)
      START_ctrl: begin
        seg_index = 16'h0001;
        if (start == 1'h1) begin
          M_ctrl_d = GENERATE_MAP_ctrl;
        end else begin
          M_ctrl_d = START_ctrl;
        end
      end
      GENERATE_MAP_ctrl: begin
        seg_index = 16'h0002;
        we = 1'h1;
        M_ctrl_d = GENERATE_MAP_ROW1_ctrl;
      end
      GENERATE_MAP_ROW1_ctrl: begin
        seg_index = 16'h0003;
        rc = 5'h00;
        we = 1'h1;
        M_ctrl_d = GENERATE_MAP_ROW2_ctrl;
      end
      GENERATE_MAP_ROW2_ctrl: begin
        seg_index = 16'h0004;
        we = 1'h1;
        rc = 5'h01;
        M_ctrl_d = GENERATE_MAP_ROW3_ctrl;
      end
      GENERATE_MAP_ROW3_ctrl: begin
        seg_index = 16'h0005;
        we = 1'h1;
        rc = 5'h02;
        M_ctrl_d = GENERATE_MAP_ROW4_ctrl;
      end
      GENERATE_MAP_ROW4_ctrl: begin
        seg_index = 16'h0006;
        we = 1'h1;
        rc = 5'h03;
        M_ctrl_d = GENERATE_MAP_ROW5_ctrl;
      end
      GENERATE_MAP_ROW5_ctrl: begin
        seg_index = 16'h0007;
        we = 1'h1;
        rc = 5'h04;
        M_ctrl_d = GENERATE_MAP_ROW6_ctrl;
      end
      GENERATE_MAP_ROW6_ctrl: begin
        seg_index = 16'h0008;
        we = 1'h1;
        rc = 5'h05;
        M_ctrl_d = GENERATE_MAP_ROW7_ctrl;
      end
      GENERATE_MAP_ROW7_ctrl: begin
        seg_index = 16'h0009;
        we = 1'h1;
        rc = 5'h06;
        M_ctrl_d = GENERATE_MAP_ROW8_ctrl;
      end
      GENERATE_MAP_ROW8_ctrl: begin
        seg_index = 16'h0010;
        we = 1'h1;
        rc = 5'h07;
        M_ctrl_d = IDLE_ctrl;
      end
      IDLE_ctrl: begin
        seg_index = 16'h8888;
        if (direction[0+0-:1] == 1'h1 || direction[1+0-:1] == 1'h1 || direction[2+0-:1] == 1'h1 || direction[3+0-:1] == 1'h1) begin
          
          case (direction)
            4'h8: begin
              M_ctrl_d = CHECKUPBORDER_ctrl;
            end
            4'h4: begin
              M_ctrl_d = CHECKDOWNBORDER_ctrl;
            end
            4'h2: begin
              M_ctrl_d = CHECKLEFTBORDER_ctrl;
            end
            4'h1: begin
              M_ctrl_d = CHECKRIGHTBORDER_ctrl;
            end
          endcase
        end else begin
          if (start == 1'h0) begin
            M_ctrl_d = GAMEOVER_ctrl;
          end else begin
            M_ctrl_d = IDLE_ctrl;
          end
        end
      end
      CHECKUPBORDER_ctrl: begin
        seg_index = 16'h0011;
        ra = 5'h09;
        rb = 5'h15;
        rc = 5'h0b;
        asel = 4'h0;
        bsel = 4'h7;
        alufn = 6'h33;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECKUPBORDER_CMP_ctrl;
      end
      CHECKUPBORDER_CMP_ctrl: begin
        seg_index = 16'h0012;
        ra = 5'h0b;
        rb = 5'h15;
        rc = 5'h0c;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h0;
        wdsel = 3'h0;
        if (z == 1'h0) begin
          M_ctrl_d = IDLE_ctrl;
        end else begin
          M_ctrl_d = GOUP_ctrl;
        end
      end
      GOUP_ctrl: begin
        seg_index = 16'h0013;
        ra = 5'h09;
        rb = 5'h15;
        rc = 5'h0d;
        asel = 4'h0;
        bsel = 4'h1;
        alufn = 6'h00;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = STAY_AT_X_ctrl;
      end
      CHECKDOWNBORDER_ctrl: begin
        seg_index = 16'h0014;
        ra = 5'h09;
        rb = 5'h15;
        rc = 5'h0b;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h33;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECKDOWNBORDER_CMP_ctrl;
      end
      CHECKDOWNBORDER_CMP_ctrl: begin
        seg_index = 16'h0015;
        ra = 5'h0b;
        rb = 5'h15;
        rc = 5'h0c;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h0;
        wdsel = 3'h0;
        if (z == 1'h0) begin
          M_ctrl_d = IDLE_ctrl;
        end else begin
          M_ctrl_d = GODOWN_ctrl;
        end
      end
      GODOWN_ctrl: begin
        seg_index = 16'h0016;
        ra = 5'h09;
        rb = 5'h15;
        rc = 5'h0d;
        asel = 4'h0;
        bsel = 4'h1;
        alufn = 6'h01;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = STAY_AT_X_ctrl;
      end
      CHECKLEFTBORDER_ctrl: begin
        seg_index = 16'h0017;
        ra = 5'h08;
        rb = 5'h15;
        rc = 5'h0b;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h33;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECKLEFTBORDER_CMP_ctrl;
      end
      CHECKLEFTBORDER_CMP_ctrl: begin
        seg_index = 16'h0018;
        ra = 5'h0b;
        rb = 5'h15;
        rc = 5'h0c;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h0;
        wdsel = 3'h0;
        if (z == 1'h0) begin
          M_ctrl_d = IDLE_ctrl;
        end else begin
          M_ctrl_d = GOLEFT_ctrl;
        end
      end
      GOLEFT_ctrl: begin
        seg_index = 16'h0019;
        ra = 5'h08;
        rb = 5'h15;
        rc = 5'h0e;
        asel = 4'h0;
        bsel = 4'h1;
        alufn = 6'h01;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = STAY_AT_Y_ctrl;
      end
      CHECKRIGHTBORDER_ctrl: begin
        seg_index = 16'h0020;
        ra = 5'h08;
        rb = 5'h15;
        rc = 5'h0b;
        asel = 4'h0;
        bsel = 4'h7;
        alufn = 6'h33;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECKRIGHTBORDER_CMP_ctrl;
      end
      CHECKRIGHTBORDER_CMP_ctrl: begin
        seg_index = 16'h0021;
        ra = 5'h0b;
        rb = 5'h15;
        rc = 5'h0c;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h0;
        wdsel = 3'h0;
        if (z == 1'h0) begin
          M_ctrl_d = IDLE_ctrl;
        end else begin
          M_ctrl_d = GORIGHT_ctrl;
        end
      end
      GORIGHT_ctrl: begin
        seg_index = 16'h0022;
        ra = 5'h08;
        rb = 5'h15;
        rc = 5'h0e;
        asel = 4'h0;
        bsel = 4'h1;
        alufn = 6'h00;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = STAY_AT_Y_ctrl;
      end
      STAY_AT_X_ctrl: begin
        seg_index = 16'h4444;
        ra = 5'h08;
        rb = 5'h15;
        rc = 5'h0e;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECK_GOAL_X_ctrl;
      end
      STAY_AT_Y_ctrl: begin
        seg_index = 16'h3333;
        ra = 5'h09;
        rb = 5'h15;
        rc = 5'h0d;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECK_GOAL_X_ctrl;
      end
      CHECK_GOAL_X_ctrl: begin
        seg_index = 16'h0023;
        ra = 5'h0e;
        rb = 5'h15;
        rc = 5'h0c;
        asel = 4'h0;
        bsel = 4'h7;
        alufn = 6'h33;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECK_GOAL_Y_ctrl;
      end
      CHECK_GOAL_Y_ctrl: begin
        seg_index = 16'h0024;
        ra = 5'h0d;
        rb = 5'h15;
        rc = 5'h0b;
        asel = 4'h0;
        bsel = 4'h7;
        alufn = 6'h33;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECK_GOAL_XY_ctrl;
      end
      CHECK_GOAL_XY_ctrl: begin
        seg_index = 16'h0025;
        ra = 5'h0b;
        rb = 5'h0c;
        rc = 5'h10;
        asel = 4'h0;
        bsel = 4'h0;
        alufn = 6'h18;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECK_GOAL_XY_MOVE_ctrl;
      end
      CHECK_GOAL_XY_MOVE_ctrl: begin
        seg_index = 16'h0026;
        ra = 5'h10;
        rb = 5'h15;
        rc = 5'h15;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h0;
        wdsel = 3'h0;
        if (z == 1'h0) begin
          M_ctrl_d = CHECK_WIN_ctrl;
        end else begin
          M_ctrl_d = CHECK_COLL_ctrl;
        end
      end
      CHECK_COLL_ctrl: begin
        seg_index = 16'h0027;
        ra = 5'h15;
        rb = 5'h0e;
        rc = 5'h0c;
        asel = 4'h1;
        bsel = 4'h0;
        alufn = 6'h20;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECK_COLL_INDEX_ctrl;
      end
      CHECK_COLL_INDEX_ctrl: begin
        seg_index = 16'h0028;
        ra = y_temp[0+4-:5];
        rb = 5'h0c;
        rc = 5'h12;
        asel = 4'h0;
        bsel = 4'h0;
        alufn = 6'h18;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECK_COLL_CMP_ctrl;
      end
      CHECK_COLL_CMP_ctrl: begin
        seg_index = 16'h0029;
        ra = 5'h12;
        rb = 5'h15;
        rc = 5'h15;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h0;
        wdsel = 3'h0;
        if (z == 1'h0) begin
          M_ctrl_d = IDLE_ctrl;
        end else begin
          M_ctrl_d = UPDATE_XPOS_ctrl;
        end
      end
      UPDATE_XPOS_ctrl: begin
        seg_index = 16'h0030;
        ra = 5'h0e;
        rb = 5'h15;
        rc = 5'h08;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = UPDATE_YPOS_ctrl;
      end
      UPDATE_YPOS_ctrl: begin
        seg_index = 16'h0031;
        ra = 5'h0d;
        rb = 5'h15;
        rc = 5'h09;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECK_MOVE_ctrl;
      end
      CHECK_MOVE_ctrl: begin
        seg_index = 16'h0032;
        ra = 5'h0a;
        rb = 5'h15;
        rc = 5'h0b;
        asel = 4'h0;
        bsel = 4'h5;
        alufn = 6'h33;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECK_MOVE_CMP_ctrl;
      end
      CHECK_MOVE_CMP_ctrl: begin
        seg_index = 16'h0033;
        ra = 5'h0b;
        rb = 5'h15;
        rc = 5'h15;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h0;
        wdsel = 3'h0;
        if (z == 1'h0) begin
          M_ctrl_d = RESET_MOVE_ctrl;
        end else begin
          M_ctrl_d = ADD_MOVE_TEMP_ctrl;
        end
      end
      ADD_MOVE_TEMP_ctrl: begin
        seg_index = 16'h0034;
        ra = 5'h0a;
        rb = 5'h15;
        rc = 5'h11;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = ADD_MOVE_ctrl;
      end
      ADD_MOVE_ctrl: begin
        seg_index = 16'h0035;
        ra = 5'h11;
        rb = 5'h15;
        rc = 5'h0a;
        asel = 4'h0;
        bsel = 4'h1;
        alufn = 6'h00;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = IDLE_ctrl;
      end
      RESET_MOVE_ctrl: begin
        seg_index = 16'h0036;
        ra = 5'h15;
        rb = 5'h15;
        rc = 5'h0a;
        asel = 4'ha;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECK_ORIENTATION_ctrl;
      end
      CHECK_ORIENTATION_ctrl: begin
        seg_index = 16'h0037;
        ra = 5'h14;
        rb = 5'h15;
        rc = 5'h0b;
        asel = 4'h0;
        bsel = 4'h3;
        alufn = 6'h33;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECK_ORIENTATION_CMP_ctrl;
      end
      CHECK_ORIENTATION_CMP_ctrl: begin
        seg_index = 16'h0038;
        ra = 5'h0b;
        rb = 5'h15;
        rc = 5'h15;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h0;
        wdsel = 3'h0;
        if (z == 1'h0) begin
          M_ctrl_d = RESET_ORIENTATION_ctrl;
        end else begin
          M_ctrl_d = ADD_ORIENTATION_TEMP_ctrl;
        end
      end
      RESET_ORIENTATION_ctrl: begin
        seg_index = 16'h0039;
        ra = 5'h15;
        rb = 5'h15;
        rc = 5'h14;
        asel = 4'ha;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = IDLE_ctrl;
      end
      ADD_ORIENTATION_TEMP_ctrl: begin
        seg_index = 16'h0040;
        ra = 5'h14;
        rb = 5'h15;
        rc = 5'h11;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = ADD_ORIENTATION_ctrl;
      end
      ADD_ORIENTATION_ctrl: begin
        seg_index = 16'h0041;
        ra = 5'h11;
        rb = 5'h15;
        rc = 5'h14;
        asel = 4'h0;
        bsel = 4'h1;
        alufn = 6'h00;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = IDLE_ctrl;
      end
      CHECK_WIN_ctrl: begin
        seg_index = 16'h0042;
        ra = 5'h0f;
        rb = 5'h15;
        rc = 5'h0b;
        asel = 4'h0;
        bsel = 4'h2;
        alufn = 6'h35;
        we = 1'h1;
        wdsel = 3'h0;
        M_ctrl_d = CHECK_WIN_CMP_ctrl;
      end
      CHECK_WIN_CMP_ctrl: begin
        seg_index = 16'h0043;
        ra = 5'h0b;
        rb = 5'h15;
        rc = 5'h15;
        asel = 4'h0;
        bsel = 4'ha;
        alufn = 6'h00;
        we = 1'h0;
        wdsel = 3'h0;
        if (z == 1'h0) begin
          M_ctrl_d = CHECK_WIN_ADD_ctrl;
        end else begin
          M_ctrl_d = GAMEOVER_ctrl;
        end
      end
      CHECK_WIN_ADD_ctrl: begin
        seg_index = 16'h0044;
        ra = 5'h0f;
        rb = 5'h15;
        rc = 5'h0f;
        asel = 4'h0;
        bsel = 4'h1;
        alufn = 6'h00;
        we = 1'h1;
        wdsel = 3'h0;
        clear = 1'h1;
        M_ctrl_d = START_ctrl;
      end
      GAMEOVER_ctrl: begin
        seg_index = 16'h9999;
        game_over = 1'h1;
        if (reset == 1'h1) begin
          M_ctrl_d = RESET_LEVEL_ctrl;
        end else begin
          game_over = 1'h1;
          M_ctrl_d = GAMEOVER_ctrl;
        end
      end
      RESET_LEVEL_ctrl: begin
        seg_index = 16'h6666;
        clear = 1'h1;
        M_ctrl_d = START_ctrl;
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_ctrl_q <= 1'h0;
    end else begin
      M_ctrl_q <= M_ctrl_d;
    end
  end
  
endmodule