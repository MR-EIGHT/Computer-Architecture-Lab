`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:56:08 05/28/2021 
// Design Name: 
// Module Name:    FiveToThirtyTwoBitDecoder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FiveToThirtyTwoBitDecoder(
input A,B,C,D,E,enable,
output [31:0]O
    );
	 	 
wire w1,w2,w3,w4;

TwoToFourBitDecoder T1(
.e(enable),
.x0(A),
.x1(B),
.y0(w1),
.y1(w2),
.y2(w3),
.y3(w4)

);

ThreeToEightBitDecoder M1(
.A0(C),
.A1(D),
.A2(E),
.enable(w1),
.D(O[7:0])
);




ThreeToEightBitDecoder M2(
.A0(C),
.A1(D),
.A2(E),
.enable(w2),
.D(O[15:8])

);



ThreeToEightBitDecoder M3(
.A0(C),
.A1(D),
.A2(E),
.enable(w3),
.D(O[23:16])

);



ThreeToEightBitDecoder M4(
.A0(C),
.A1(D),
.A2(E),
.enable(w4),
.D(O[31:24])

);




endmodule
