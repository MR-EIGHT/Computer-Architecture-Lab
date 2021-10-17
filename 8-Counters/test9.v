`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:15:09 07/09/2021
// Design Name:   CounterTo99
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Counters/test9.v
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

module test9;

	// Inputs
	reg x;
	reg clk;
	reg reset;

	// Outputs
	wire y1;
	wire y2;

	// Instantiate the Unit Under Test (UUT)
	CounterTo99 uut (
		.y1(y1), 
		.y2(y2), 
		.x(x), 
		.clk(clk), 
		.reset(reset)
	);



initial repeat (100) #5 clk=~clk;
	initial begin
		// Initialize Inputs
		x = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

