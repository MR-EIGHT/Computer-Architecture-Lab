`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:22:20 05/21/2021 
// Design Name: 
// Module Name:    FullAdder 
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
module FullAdder(
input a, b, cin,
output s, Cout

    );

wire w1,w2,w3;
xor(w1,a,b);
xor(s,w1,cin);
and(w2,cin,w1);
and(w3,a,b);
or(Cout,w2,w3);


endmodule
