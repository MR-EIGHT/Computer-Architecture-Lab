`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:23:50 05/29/2021
// Design Name:   BinaryIncrementer
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Adders/TEST_BINARY.v
// Project Name:  Adders
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BinaryIncrementer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_BINARY;

	// Inputs
	reg [3:0] A;
	reg y;

	// Outputs
	wire [3:0] z;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	BinaryIncrementer uut (
		.A(A), 
		.y(y), 
		.z(z), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 1110;
		y = 0001;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

