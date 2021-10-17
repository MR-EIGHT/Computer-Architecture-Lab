`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:12:51 05/20/2021 
// Design Name: 
// Module Name:    LogicGates 
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

module AND(
	input I1, I2,
	output O
);

	assign O = I1 & I2;

endmodule

module OR(
	input I1, I2,
	output O
);

	assign O = I1 | I2;

endmodule



module NOT(
	input I,
	output O
);
	
	assign O = ~I;
	
endmodule




module NAND(
	input I1, I2,
	output reg O
);
	
	always@(*)
	begin
	if (I1 ==I2 & I2 == 1)
	O<=0;
	else
	O<=1;
	end
endmodule
	

module NOR(
	input I1, I2,
	output reg O
);
	
	always@(*)
	begin
	if (I1 ==0 & I2 == 0)
	O<=1;
	else
	O<=0;
	end
endmodule




module XOR(
	input I1, I2,
	output O
);
	
	assign O = I1 ^ I2;
	
endmodule


module XNOR(
	input I1, I2,
	output O
);
	
	assign O = I1 ~^ I2;
	
endmodule


module Buffer(
	input I1,
	output O
);
	
	assign O = I1;
	
endmodule
