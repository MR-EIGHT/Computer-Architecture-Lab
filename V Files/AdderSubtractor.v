`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:16:38 05/21/2021 
// Design Name: 
// Module Name:    AdderSubtractor 
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
module AdderSubtractor(
input [3:0]A,B,
input M,
output [3:0]z,
output C,V
    );
	 
wire carry0,carry1,carry2,carry3;

FullAdder FA1(
	.a(A[0]),
	.b(M ^ B[0]),
	.cin(M),
	.s(z[0]),
	.Cout(carry0)
	);
	
FullAdder FA2(
	.a(A[1]),
	.b(M ^ B[1]),
	.cin(carry0),
	.s(z[1]),
	.Cout(carry1)
	);

FullAdder FA3(
	.a(A[2]),
	.b(M ^ B[2]),
	.cin(carry1),
	.s(z[2]),
	.Cout(carry2)
	);

FullAdder FA4(
	.a(A[3]),
	.b(M ^ B[3]),
	.cin(carry2),
	.s(z[3]),
	.Cout(carry3)
	);
	
	
	
	assign V = carry2 ^ carry3;
	assign C = carry3;
	
	
	
	
	
	
	
	
endmodule
