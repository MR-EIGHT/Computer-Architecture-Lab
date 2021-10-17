`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:00:53 06/29/2021
// Design Name:   SecondDiag
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/CircuitDesign/t2.v
// Project Name:  CircuitDesign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SecondDiag
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t2;

	// Inputs
	reg s0;
	reg s1;
	reg s2;
	reg A;
	reg B;

	// Outputs
	wire E;

	// Instantiate the Unit Under Test (UUT)
	SecondDiag uut (
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.A(A), 
		.B(B), 
		.E(E)
	);

	initial begin
		// Initialize Inputs
		s0 = 1;
		s1 = 1;
		s2 = 1;
		A = 0;
		B = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

