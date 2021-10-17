`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:29:54 06/28/2021
// Design Name:   FourBitRegisterWithDFlipFlop
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Registers/test.v
// Project Name:  Registers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FourBitRegisterWithDFlipFlop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [0:3] A;
	reg clk;
	reg clr;

	// Outputs
	wire q0;
	wire q1;
	wire q2;
	wire q3;

	// Instantiate the Unit Under Test (UUT)
	FourBitRegisterWithDFlipFlop uut (
		.A(A), 
		.clk(clk), 
		.clr(clr), 
		.q0(q0), 
		.q1(q1), 
		.q2(q2), 
		.q3(q3)
	);

	initial begin
		// Initialize Inputs
		A = 5;
		clk = 0;
		clr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

