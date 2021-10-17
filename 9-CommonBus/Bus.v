`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:07:01 07/09/2021 
// Design Name: 
// Module Name:    Bus 
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

module Bus(
input s0,s1,
input [3:0] a,
input [3:0] b,
input [3:0] c,
input [3:0] d,
input clr,clk,
output o0,o1,o2,o3
    );
	 
wire [0:3] W,X,Y,Z;	 
	 
FourBitRegisterWithDFlipFlop	re0(a,clk,clr,W[0],W[1],W[2],W[3]);
FourBitRegisterWithDFlipFlop	re1(b,clk,clr,X[0],X[1],X[2],X[3]);
FourBitRegisterWithDFlipFlop	re2(c,clk,clr,Y[0],Y[1],Y[2],Y[3]);
FourBitRegisterWithDFlipFlop	re3(d,clk,clr,Z[0],Z[1],Z[2],Z[3]);
	 
Mux4 m0(W[3],X[3],Y[3],Z[3],s0,s1,o3);
Mux4 m1(W[2],X[2],Y[2],Z[2],s0,s1,o2);
Mux4 m2(W[1],X[1],Y[1],Z[1],s0,s1,o1);
Mux4 m3(W[0],X[0],Y[0],Z[0],s0,s1,o0);


endmodule




module Mux4(
input a, 
input b, 
input c, 
input d, 
input s0, s1,
output out); 

assign out = s1 ? (s0 ? d : c) : (s0 ? b : a); 

endmodule







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
	