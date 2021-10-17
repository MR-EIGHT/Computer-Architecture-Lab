`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:22:57 05/30/2021
// Design Name:   FiveToThirtyTwoBitDecoder
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Decoders/Test_dec.v
// Project Name:  Decoders
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FiveToThirtyTwoBitDecoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_dec;

	// Inputs
	reg A;
	reg B;
	reg C;
	reg D;
	reg E;
	reg enable;

	// Outputs
	wire [31:0] O;

	// Instantiate the Unit Under Test (UUT)
	FiveToThirtyTwoBitDecoder uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E), 
		.enable(enable), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 1;
		C = 0;
		D = 0;
		E = 0;
		enable = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

