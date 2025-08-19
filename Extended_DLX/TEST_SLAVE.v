`timescale 1ns / 1ps

module Control_Control_sch_tb();

// Inputs
   reg CLK;
   reg CARDSEL;
   reg WR_N;
   reg [31:0] B;
   reg [31:0] C;
   reg [31:0] D;
   reg [31:0] A;
   reg [9:0] AI;

// Outputs
   wire SACK_N;
   wire [31:0] MUX_OUTPUT;
   wire [4:0] reg_write;

// Instantiate the UUT
   Control UUT (
      .CLK(CLK), 
      .CARDSEL(CARDSEL), 
      .WR_N(WR_N), 
      .SACK_N(SACK_N), 
      .B(B), 
      .C(C), 
      .D(D), 
      .A(A), 
      .MUX_OUTPUT(MUX_OUTPUT), 
      .reg_write(reg_write), 
      .AI(AI)
   );

// Clock generation (for a 10ns period)
	initial CLK = 1;
   always begin
      #50 CLK = ~CLK;  // Toggle every 5ns to create a 10ns clock period (100MHz)
   end

// Initialize Inputs
   initial begin
      // Initialize signals
      
      CARDSEL = 0;
      WR_N = 0;
      B = 32'h00000000;
      C = 32'h00000000;
      D = 32'h00000000;
      A = 32'h00000000;
      AI = 10'h000;

      // Add stimulus here
      #101 
		CARDSEL = 1;  
	   WR_N = 1;     
      B = 32'h12345678;  // Assign a value to B
      C = 32'h87654321;  // Assign a value to C
      D = 32'hABCDEF12;  // Assign a value to D
      A = 32'h0FEDCBA9;  // Assign a value to A
		
      AI = 10'b0000011111;  // Choosing A, buffer = 11111, SACK = low for 1 cycle
      #200
		CARDSEL = 0;  
	   WR_N = 1;     
      AI = 10'b0000110101;  // Choosing B, buffer = 10101, SACK = always high
      #200
		CARDSEL = 1;  
	   WR_N = 1;     
      AI = 10'b0001101010;  // Choosing D, buffer = 01010, SACK = low for 1 cycle
		#200
		CARDSEL = 1;  
	   WR_N = 0;     
      AI = 10'b0001000000;  // Choosing C, buffer = 00000, SACK = always high

      // Finish simulation after 100ns (for example)
      #100;
      
   end

endmodule
