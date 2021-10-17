`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:19:25 05/21/2021 
// Design Name: 
// Module Name:    FourBitAdder 
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
module FourBitAdder(
input [3:0]A,B,
input Cin,
output [3:0]z,
output Cout
    ); 
wire carry0,carry1,carry2;

FullAdder FA1(
	.a(A[0]),
	.b(B[0]),
	.cin(Cin),
	.s(z[0]),
	.Cout(carry0)
	);
	
	FullAdder FA2(
	.a(A[1]),
	.b(B[1]),
	.cin(carry0),
	.s(z[1]),
	.Cout(carry1)
	);
	
	FullAdder FA3(
	.a(A[2]),
	.b(B[2]),
	.cin(carry1),
	.s(z[2]),
	.Cout(carry2)
	);
	
	FullAdder FA4(
	.a(A[3]),
	.b(B[3]),
	.cin(carry2),
	.s(z[3]),
	.Cout(Cout)
	);

endmodule
