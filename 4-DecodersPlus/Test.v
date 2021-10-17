`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:58:39 05/28/2021
// Design Name:   decoder5x32
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/DecodersPlus/Test.v
// Project Name:  DecodersPlus
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder5x32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test;

	// Inputs
	reg [4:0] a;
	reg en;

	// Outputs
	wire [31:0] y;

	// Instantiate the Unit Under Test (UUT)
	decoder5x32 uut (
		.a(a), 
		.en(en), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a[0] = 1;
		a[1] = 1;
		a[2] = 0;
		a[3] = 1;
		a[4] = 1;

		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

