`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:28:38 07/09/2021
// Design Name:   CounterWithParallelLoad
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Counters/tetsP1.v
// Project Name:  Counters
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CounterWithParallelLoad
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tetsP1;

	// Inputs
	reg clear;
	reg load;
	reg increment;
	reg clock;
	reg [3:0] I;

	// Outputs
	wire [3:0] A;
	wire output_carry;

	// Instantiate the Unit Under Test (UUT)
	CounterWithParallelLoad uut (
		.clear(clear), 
		.load(load), 
		.increment(increment), 
		.clock(clock), 
		.I(I), 
		.A(A), 
		.output_carry(output_carry)
	);

	initial begin
		// Initialize Inputs
		clear = 0;
		load = 0;
		increment = 1;
		clock = 0;
		I = 2;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
        always
		#10 clock = ~clock;
endmodule

