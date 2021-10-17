`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:45:18 05/28/2021 
// Design Name: 
// Module Name:    Decoders 
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


module decoder5x32(

input [4:0] a,                                 

input en,                            

output [31:0] y );                   

wire [3:0] w;                        

decoder2x4 x1(w,a[4:3],en);     

decoder3x8 x2(y[7:0], a[2:0],w[0]);  

decoder3x8 x3(y[15:8], a[2:0],w[1]);

decoder3x8 x4(y[23:16], a[2:0],w[2]);

decoder3x8 x5(y[31:24], a[2:0],w[3]);

endmodule


module decoder2x4(

output reg [3:0] y,

input [1:0] a,

input en);

always @(a,en)      

if(en)

case(a)

2'b00: y=4'b0001;   

2'b01: y=4'b0010;

2'b10: y=4'b0100;

2'b11: y=4'b1000;

default: y=0;

endcase

else y=0;             

endmodule



module decoder3x8(

output reg [7:0] y,

input [2:0] a,

input en);

always @(a,en)

if(en)

case(a)                  

0: y =8'b00000001;       

1: y =8'b00000010;       

2: y =8'b00000100;

3: y =8'b00001000;

4: y =8'b00010000;

5: y =8'b00100000;

6: y =8'b01000000;

7: y =8'b10000000;

default: y=0;

endcase

else y=0;        

endmodule