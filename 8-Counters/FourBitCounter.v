`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:16:37 07/09/2021 
// Design Name: 
// Module Name:    FourBitCounter 
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
module FourBitCounter(
input count_enable,
input clock,
output [3:0]A,
output output_carry

    );
	 
wire w0,w1,w2;


flipflop ff1(A[0],count_enable,clock,count_enable);

and(w0,A[0],count_enable);
flipflop ff2(A[1],w0,clock,w0);

and(w1,A[1],w0);
flipflop ff3(A[2],w1,clock,w1);

and(w2,A[2],w1);
flipflop ff4(A[3],w2,clock,w2);

and(output_carry,A[3],w2);

endmodule










