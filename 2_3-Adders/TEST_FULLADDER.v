`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:08:02 05/29/2021
// Design Name:   FullAdder
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Adders/TEST_FULLADDER.v
// Project Name:  Adders
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_FULLADDER;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	FullAdder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

