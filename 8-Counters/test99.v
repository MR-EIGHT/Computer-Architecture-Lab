`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:39:21 07/09/2021
// Design Name:   CounterTo99
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Counters/test99.v
// Project Name:  Counters
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CounterTo99
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test99;

	// Inputs
	reg clock;
	reg reset;
	reg start_pause;

	// Outputs
	wire [3:0] count_high;
	wire [3:0] count_low;

	// Instantiate the Unit Under Test (UUT)
	CounterTo99 uut (
		.count_high(count_high), 
		.count_low(count_low), 
		.clock(clock), 
		.reset(reset), 
		.start_pause(start_pause)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;
		start_pause = 0;

		// Wait 100 ns for global reset to finish
		#100;
        reset=1;
		  start_pause=1;
		// Add stimulus here

	end
      always
		#10 clock = ~clock;
		
		
endmodule

