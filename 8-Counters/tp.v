`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:24:30 07/10/2021
// Design Name:   CounterWithParallelLoad
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Counters/tp.v
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

module tp;

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
		increment = 0;
		clock = 0;
		I = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

