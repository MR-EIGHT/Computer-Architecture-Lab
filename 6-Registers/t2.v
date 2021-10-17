`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:40:31 06/29/2021
// Design Name:   RegisterWithParallelLoad
// Module Name:   C:/Users/MR.EIGHT/Desktop/Experiments/Registers/t2.v
// Project Name:  Registers
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegisterWithParallelLoad
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module t2;

	// Inputs
	reg D0;
	reg D1;
	reg D2;
	reg D3;
	reg Load;
	reg CLK;

	// Outputs
	wire Q0;
	wire Q1;
	wire Q2;
	wire Q3;

	// Instantiate the Unit Under Test (UUT)
	RegisterWithParallelLoad uut (
		.Q0(Q0), 
		.Q1(Q1), 
		.Q2(Q2), 
		.Q3(Q3), 
		.D0(D0), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3), 
		.Load(Load), 
		.CLK(CLK)
	);
	
	
initial repeat (20) #5 CLK = ~CLK;

	initial begin
		// Initialize Inputs
		D0 = 0;
		D1 = 1;
		D2 = 1;
		D3 = 0;
		Load = 1;
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

