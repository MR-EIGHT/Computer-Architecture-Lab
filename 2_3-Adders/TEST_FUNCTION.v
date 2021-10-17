`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:10:02 05/29/2021
// Design Name:   Function
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Adders/TEST_FUNCTION.v
// Project Name:  Adders
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Function
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_FUNCTION;

	// Inputs
	reg x;
	reg y;
	reg z;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	Function uut (
		.x(x), 
		.y(y), 
		.z(z), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		x = 1;
		y = 0;
		z = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

