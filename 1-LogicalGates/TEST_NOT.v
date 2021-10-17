`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:53:56 05/29/2021
// Design Name:   NOT
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/LogicalGates/TEST_NOT.v
// Project Name:  LogicalGates
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NOT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_NOT;

	// Inputs
	reg I;

	// Outputs
	wire O;

	// Instantiate the Unit Under Test (UUT)
	NOT uut (
		.I(I), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		I = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

