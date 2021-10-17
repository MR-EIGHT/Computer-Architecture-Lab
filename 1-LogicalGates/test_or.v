`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:41:52 05/29/2021
// Design Name:   OR
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/LogicalGates/test_or.v
// Project Name:  LogicalGates
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: OR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_or;

	// Inputs
	reg I1;
	reg I2;

	// Outputs
	wire O;

	// Instantiate the Unit Under Test (UUT)
	OR uut (
		.I1(I1), 
		.I2(I2), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		I1 = 1;
		I2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

