`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:48:05 05/29/2021
// Design Name:   XNOR
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/LogicalGates/TEXT_XNOR.v
// Project Name:  LogicalGates
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: XNOR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEXT_XNOR;

	// Inputs
	reg I1;
	reg I2;

	// Outputs
	wire O;

	// Instantiate the Unit Under Test (UUT)
	XNOR uut (
		.I1(I1), 
		.I2(I2), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		I1 = 0;
		I2 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

