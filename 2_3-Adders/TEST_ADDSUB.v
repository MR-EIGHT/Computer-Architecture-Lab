`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:37:21 05/29/2021
// Design Name:   AdderSubtractor
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Adders/TEST_ADDSUB.v
// Project Name:  Adders
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AdderSubtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_ADDSUB;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg M;

	// Outputs
	wire [3:0] z;
	wire C;
	wire V;

	// Instantiate the Unit Under Test (UUT)
	AdderSubtractor uut (
		.A(A), 
		.B(B), 
		.M(M), 
		.z(z), 
		.C(C), 
		.V(V)
	);

	initial begin
		// Initialize Inputs
		A = 0001;
		B = 0001;
		M = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

