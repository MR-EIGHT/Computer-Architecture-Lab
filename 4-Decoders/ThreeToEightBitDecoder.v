`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:15:14 05/28/2021 
// Design Name: 
// Module Name:    ThreeToEightBitDecoder 
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
module ThreeToEightBitDecoder(
input A0,A1,A2,enable,
output [7:0]D
    );

TwoToFourBitDecoder T1(
.x0(A0),
.x1(A1),
.e(~A2),

.y0(D[0]),
.y1(D[1]),
.y2(D[2]),
.y3(D[3])
);


TwoToFourBitDecoder T2(

.x0(A0),
.x1(A1),
.e(A2),

.y0(D[4]),
.y1(D[5]),
.y2(D[6]),
.y3(D[7])

);



endmodule

