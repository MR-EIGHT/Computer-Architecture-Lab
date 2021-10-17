`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:27:09 05/21/2021 
// Design Name: 
// Module Name:    BinaryIncrementer 
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
module BinaryIncrementer(
input [3:0]A,
input y,
output [3:0]z,
output Cout
    );
assign y = 1;
wire carry0,carry1,carry2;

HalfAdder HA1(

	.a_in(A[0]),
	.b_in(y),
	.sum_out(z[0]),
	.carry_out(carry0),
	);

HalfAdder HA2(

	.a_in(A[1]),
	.b_in(carry0),
	.sum_out(z[1]),
	.carry_out(carry1),
	);
	
HalfAdder HA3(

	.a_in(A[2]),
	.b_in(carry1),
	.sum_out(z[2]),
	.carry_out(carry2),
	);
	
HalfAdder HA4(

	.a_in(A[3]),
	.b_in(carry2),
	.sum_out(z[3]),
	.carry_out(Cout),
	);



endmodule
