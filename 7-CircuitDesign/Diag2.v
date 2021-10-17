`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:28:58 06/29/2021 
// Design Name: 
// Module Name:    SecondDiag 
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
module SecondDiag(
input s0,s1,s2,
input A,B,
output E
    );
	 
wire w0,w1,w2,w3,w4,w5,w6,w7;
and(w0,A,B);
or(w1,A,B);
xor(w2,A,B);
xnor(w3,A,B);
nand(w4,A,B);
nor(w5,A,B);
not(w6,A);
buf(w7,A);

m81 mux(E,w0,w1,w2,w3,w4,w5,w6,w7,s0,s1,s2);
endmodule




module m81(output out, input D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2);
assign S1bar=~S1;
assign S0bar=~S0;
assign S2bar=~S2;
assign out = (D0 & S2bar & S1bar & S0bar) | (D1 & S2bar & S1bar & S0) | (D2 & S2bar & S1 & S0bar) + (D3 & S2bar & S1 & S0) + (D4 & S2 & S1bar & S0bar) + (D5 & S2 & S1bar & S0) + (D6 & S2 & S1 & S0bar) + (D7 & S2 & S1 & S0);
endmodule
