`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:00:41 05/28/2021 
// Design Name: 
// Module Name:    TwoToFourBitDecoder 
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
module TwoToFourBitDecoder(

input e,x0,x1,
output y0,y1,y2,y3
    );
	 
	 assign y0 = (e & ~x1 & ~x0);
	 assign y1 = (e & ~x1 & x0);
	 assign y2 = (e & x1 & ~x0);
	 assign y3 = (e & x1 & x0);


endmodule
