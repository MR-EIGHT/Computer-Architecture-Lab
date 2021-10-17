`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:21:36 06/16/2021 
// Design Name: 
// Module Name:    TwoToOneMultiplexer 
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
module TwoToOneMultiplexer(D0, D1, S, Y);
output Y;
input D0, D1, S;
assign Y=(S)?D1:D0;
endmodule



module Quadruple(
input [3:0] a,
input [3:0] b,
input S,
input E,
output [3:0] y

);

wire w1,w2,w3,w4;
TwoToOneMultiplexer m1(a[0],b[0],S,w1);
TwoToOneMultiplexer m2(a[1],b[1],S,w2);
TwoToOneMultiplexer m3(a[2],b[2],S,w3);
TwoToOneMultiplexer m4(a[3],b[3],S,w4);

assign y[0] = E & w1;
assign y[1] = E & w2;
assign y[2] = E & w3;
assign y[3] = E & w4;

endmodule


