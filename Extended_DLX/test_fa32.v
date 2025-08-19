module test_fa32;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg Cin;

	// Outputs
	wire [31:0] SUM;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	fa32bit_sc uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.SUM(SUM), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;

		// Wait for global reset
		#100;

		// Set inputs for test case: A = -10 (0xFFFFFFF6), B = 8 (0x00000008)
		A = 32'hFFFFFFF6;
		B = 32'h00000008;
		Cin = 0;

		#10; // Wait for calculation

		// Display result
		$display("A     = %h", A);
		$display("B     = %h", B);
		$display("SUM   = %h", SUM);
		$display("SUM (signed) = %d", $signed(SUM));
		$display("Cout  = %b", Cout);

		// Finish simulation
		#10;
		$stop;
	end
      
endmodule
