`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:25:31 07/10/2021
// Design Name:   FourBitCounter
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Counters/t4.v
// Project Name:  Counters
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FourBitCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t4;

	// Inputs
	reg count_enable;
	reg clock;

	// Outputs
	wire [3:0] A;
	wire output_carry;

	// Instantiate the Unit Under Test (UUT)
	FourBitCounter uut (
		.count_enable(count_enable), 
		.clock(clock), 
		.A(A), 
		.output_carry(output_carry)
	);

initial repeat (100) #5 clock=~clock;
	initial begin
		// Initialize Inputs
		count_enable = 1;
		clock = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

