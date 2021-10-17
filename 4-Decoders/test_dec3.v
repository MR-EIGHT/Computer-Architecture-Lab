`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:24:33 05/30/2021
// Design Name:   ThreeToEightBitDecoder
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Decoders/test_dec3.v
// Project Name:  Decoders
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ThreeToEightBitDecoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_dec3;

	// Inputs
	reg A0;
	reg A1;
	reg A2;
	reg enable;

	// Outputs
	wire [7:0] D;

	// Instantiate the Unit Under Test (UUT)
	ThreeToEightBitDecoder uut (
		.A0(A0), 
		.A1(A1), 
		.A2(A2), 
		.enable(enable), 
		.D(D)
	);

	initial begin
		// Initialize Inputs
		A0 = 0;
		A1 = 1;
		A2 = 1;
		enable = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

