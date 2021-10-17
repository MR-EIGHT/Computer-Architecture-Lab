`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:05:56 05/29/2021
// Design Name:   HalfAdder
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Adders/TEST_HALFADDER.v
// Project Name:  Adders
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HalfAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_HALFADDER;

	// Inputs
	reg a_in;
	reg b_in;

	// Outputs
	wire sum_out;
	wire carry_out;

	// Instantiate the Unit Under Test (UUT)
	HalfAdder uut (
		.a_in(a_in), 
		.b_in(b_in), 
		.sum_out(sum_out), 
		.carry_out(carry_out)
	);

	initial begin
		// Initialize Inputs
		a_in = 1;
		b_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

