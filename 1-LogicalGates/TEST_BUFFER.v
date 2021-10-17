`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:49:33 05/29/2021
// Design Name:   Buffer
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/LogicalGates/TEST_BUFFER.v
// Project Name:  LogicalGates
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Buffer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_BUFFER;

	// Inputs
	reg I1;

	// Outputs
	wire O;

	// Instantiate the Unit Under Test (UUT)
	Buffer uut (
		.I1(I1), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		I1 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

