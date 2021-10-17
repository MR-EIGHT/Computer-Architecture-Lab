`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:08:26 06/28/2021 
// Design Name: 
// Module Name:    FourBitRegisterWithDFlipFlop 
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


module FourBitRegisterWithDFlipFlop(A,clk,clr,q0,q1,q2,q3);
input [0:3] A;
input clk;
input clr;
output wire q0,q1,q2,q3;

dff df0(clr,clk,A[0],q0);
dff df1(clr,clk,A[1],q1);
dff df2(clr,clk,A[2],q2);
dff df3(clr,clk,A[3],q3);

endmodule




module dff(clr_n,clk,d,q);
input clr_n, clk, d;
output reg q;

always @(negedge clk, negedge clr_n)
begin 
	if(~clr_n)
	q<= 0;
	else 
	q<= d;
	end
endmodule
	