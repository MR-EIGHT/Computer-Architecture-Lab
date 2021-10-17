////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: FiveToThirtyTwoBitDecoder_synthesis.v
// /___/   /\     Timestamp: Fri May 28 20:04:31 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim FiveToThirtyTwoBitDecoder.ngc FiveToThirtyTwoBitDecoder_synthesis.v 
// Device	: xc3s50-5-pq208
// Input file	: FiveToThirtyTwoBitDecoder.ngc
// Output file	: C:\Users\MR.EIGHT\Desktop\Experiments\Decoders\netgen\synthesis\FiveToThirtyTwoBitDecoder_synthesis.v
// # of Modules	: 1
// Design Name	: FiveToThirtyTwoBitDecoder
// Xilinx        : E:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module FiveToThirtyTwoBitDecoder (
  A, B, C, D, E, enable, O
);
  input A;
  input B;
  input C;
  input D;
  input E;
  input enable;
  output [31 : 0] O;
  wire C_IBUF_1;
  wire D_IBUF_3;
  wire E_IBUF_5;
  wire O_8_OBUF_46;
  wire [7 : 0] \M2/D ;
  GND   XST_GND (
    .G(O_8_OBUF_46)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \M2/D<7>1  (
    .I0(C_IBUF_1),
    .I1(D_IBUF_3),
    .I2(E_IBUF_5),
    .O(\M2/D [7])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \M2/D<6>1  (
    .I0(C_IBUF_1),
    .I1(D_IBUF_3),
    .I2(E_IBUF_5),
    .O(\M2/D [6])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \M2/D<5>1  (
    .I0(D_IBUF_3),
    .I1(C_IBUF_1),
    .I2(E_IBUF_5),
    .O(\M2/D [5])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \M2/D<4>1  (
    .I0(C_IBUF_1),
    .I1(D_IBUF_3),
    .I2(E_IBUF_5),
    .O(\M2/D [4])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \M2/D<3>1  (
    .I0(E_IBUF_5),
    .I1(D_IBUF_3),
    .I2(C_IBUF_1),
    .O(\M2/D [3])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \M2/D<2>1  (
    .I0(E_IBUF_5),
    .I1(C_IBUF_1),
    .I2(D_IBUF_3),
    .O(\M2/D [2])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \M2/D<1>1  (
    .I0(E_IBUF_5),
    .I1(D_IBUF_3),
    .I2(C_IBUF_1),
    .O(\M2/D [1])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \M2/D<0>1  (
    .I0(E_IBUF_5),
    .I1(D_IBUF_3),
    .I2(C_IBUF_1),
    .O(\M2/D [0])
  );
  IBUF   C_IBUF (
    .I(C),
    .O(C_IBUF_1)
  );
  IBUF   D_IBUF (
    .I(D),
    .O(D_IBUF_3)
  );
  IBUF   E_IBUF (
    .I(E),
    .O(E_IBUF_5)
  );
  OBUF   O_31_OBUF (
    .I(O_8_OBUF_46),
    .O(O[31])
  );
  OBUF   O_30_OBUF (
    .I(O_8_OBUF_46),
    .O(O[30])
  );
  OBUF   O_29_OBUF (
    .I(O_8_OBUF_46),
    .O(O[29])
  );
  OBUF   O_28_OBUF (
    .I(O_8_OBUF_46),
    .O(O[28])
  );
  OBUF   O_27_OBUF (
    .I(O_8_OBUF_46),
    .O(O[27])
  );
  OBUF   O_26_OBUF (
    .I(O_8_OBUF_46),
    .O(O[26])
  );
  OBUF   O_25_OBUF (
    .I(O_8_OBUF_46),
    .O(O[25])
  );
  OBUF   O_24_OBUF (
    .I(O_8_OBUF_46),
    .O(O[24])
  );
  OBUF   O_23_OBUF (
    .I(O_8_OBUF_46),
    .O(O[23])
  );
  OBUF   O_22_OBUF (
    .I(O_8_OBUF_46),
    .O(O[22])
  );
  OBUF   O_21_OBUF (
    .I(O_8_OBUF_46),
    .O(O[21])
  );
  OBUF   O_20_OBUF (
    .I(O_8_OBUF_46),
    .O(O[20])
  );
  OBUF   O_19_OBUF (
    .I(O_8_OBUF_46),
    .O(O[19])
  );
  OBUF   O_18_OBUF (
    .I(O_8_OBUF_46),
    .O(O[18])
  );
  OBUF   O_17_OBUF (
    .I(O_8_OBUF_46),
    .O(O[17])
  );
  OBUF   O_16_OBUF (
    .I(O_8_OBUF_46),
    .O(O[16])
  );
  OBUF   O_15_OBUF (
    .I(O_8_OBUF_46),
    .O(O[15])
  );
  OBUF   O_14_OBUF (
    .I(O_8_OBUF_46),
    .O(O[14])
  );
  OBUF   O_13_OBUF (
    .I(O_8_OBUF_46),
    .O(O[13])
  );
  OBUF   O_12_OBUF (
    .I(O_8_OBUF_46),
    .O(O[12])
  );
  OBUF   O_11_OBUF (
    .I(O_8_OBUF_46),
    .O(O[11])
  );
  OBUF   O_10_OBUF (
    .I(O_8_OBUF_46),
    .O(O[10])
  );
  OBUF   O_9_OBUF (
    .I(O_8_OBUF_46),
    .O(O[9])
  );
  OBUF   O_8_OBUF (
    .I(O_8_OBUF_46),
    .O(O[8])
  );
  OBUF   O_7_OBUF (
    .I(\M2/D [7]),
    .O(O[7])
  );
  OBUF   O_6_OBUF (
    .I(\M2/D [6]),
    .O(O[6])
  );
  OBUF   O_5_OBUF (
    .I(\M2/D [5]),
    .O(O[5])
  );
  OBUF   O_4_OBUF (
    .I(\M2/D [4]),
    .O(O[4])
  );
  OBUF   O_3_OBUF (
    .I(\M2/D [3]),
    .O(O[3])
  );
  OBUF   O_2_OBUF (
    .I(\M2/D [2]),
    .O(O[2])
  );
  OBUF   O_1_OBUF (
    .I(\M2/D [1]),
    .O(O[1])
  );
  OBUF   O_0_OBUF (
    .I(\M2/D [0]),
    .O(O[0])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

