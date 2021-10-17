`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:23:57 05/30/2021
// Design Name:   TwoToFourBitDecoder
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Decoders/test_dec2.v
// Project Name:  Decoders
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TwoToFourBitDecoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_dec2;

	// Inputs
	reg e;
	reg x0;
	reg x1;

	// Outputs
	wire y0;
	wire y1;
	wire y2;
	wire y3;

	// Instantiate the Unit Under Test (UUT)
	TwoToFourBitDecoder uut (
		.e(e), 
		.x0(x0), 
		.x1(x1), 
		.y0(y0), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3)
	);

	initial begin
		// Initialize Inputs
		e = 1;
		x0 = 1;
		x1 = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

