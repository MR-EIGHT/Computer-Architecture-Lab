`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:20:36 05/29/2021
// Design Name:   FourBitAdder
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Adders/TEST_4BIT.v
// Project Name:  Adders
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FourBitAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_4BIT;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] z;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	FourBitAdder uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.z(z), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = {1,1,0,0};
		B = {1,0,1,1};
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

