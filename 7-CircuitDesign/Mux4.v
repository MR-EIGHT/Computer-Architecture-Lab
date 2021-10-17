`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:08:41 06/29/2021 
// Design Name: 
// Module Name:    Mux4 
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
module Mux4(
input a, 
input b, 
input c, 
input d, 
input s0, s1,
output out
); 
assign out = s1 ? (s0 ? d : c) : (s0 ? b : a); 
endmodule



module diag(
input s0,s1,
input A,B,
output E
);

wire w0,w1,w2,w3;
and(w0,A,B);
or(w1,A,B);
xor(w2,A,B);
not(w3,A);
Mux4 mux(w0,w1,w2,w3,s0,s1,E);
endmodule
