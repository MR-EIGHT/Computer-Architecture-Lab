`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:58:31 06/16/2021 
// Design Name: 
// Module Name:    FourToOneMultiplexer 
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
module FourToOneMultiplexer(
input a, 
input b, 
input c, 
input d, 
input s0, s1,
output out); 

assign out = s1 ? (s0 ? d : c) : (s0 ? b : a); 

endmodule
