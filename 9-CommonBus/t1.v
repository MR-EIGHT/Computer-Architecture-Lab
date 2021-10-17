`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:48:36 07/10/2021
// Design Name:   Bus
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/CommonBus/t1.v
// Project Name:  CommonBus
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Bus
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t1;

	// Inputs
	reg s0;
	reg s1;
	reg [3:0] a;
	reg [3:0] b;
	reg [3:0] c;
	reg [3:0] d;
	reg clr;
	reg clk;

	// Outputs
	wire o0;
	wire o1;
	wire o2;
	wire o3;

	// Instantiate the Unit Under Test (UUT)
	Bus uut (
		.s0(s0), 
		.s1(s1), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.clr(clr), 
		.clk(clk), 
		.o0(o0), 
		.o1(o1), 
		.o2(o2), 
		.o3(o3)
	);


initial repeat (10) #5 clk=~clk;
	initial begin
		// Initialize Inputs
		s0 = 1;
		s1 = 1;
		a = 1;
		b = 2;
		c = 3;
		d = 4;
		clr = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
		
	
      
endmodule

