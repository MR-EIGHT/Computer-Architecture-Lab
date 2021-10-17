`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:10 05/21/2021 
// Design Name: 
// Module Name:    Function 
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
module Function(
input x,y,z,
output f

    );

wire w;
not(y1,y);
and(w,y1,z);
or(f,x,w);



endmodule
