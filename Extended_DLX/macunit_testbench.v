`timescale 1ns / 1ps

module MAC_Unit_MAC_Unit_sch_tb();

// Inputs
reg [31:0] a;
reg [31:0] b;
reg clk;
reg rst;
reg en;
reg mul_mac_signal;

// Output
wire [31:0] o;

// Instantiate the UUT
MAC_Unit UUT (
	.a(a), 
	.b(b), 
	.clk(clk), 
	.rst(rst), 
	.en(en), 
	.mul_mac_signal(mul_mac_signal), 
	.o(o)
);

// Clock generation
always #5 clk = ~clk;

initial begin
	// Initialize Inputs
	clk = 0;
	rst = 0;
	en = 0;
	mul_mac_signal = 1; // 1 = MAC mode
	a = 0;
	b = 0;

	// --- First multiply: reset accumulator ---
	#10;
	rst = 1;           // RESET ON
	a = 32'hFFFFFFF6;  // -10
	b = 32'h00000001;  // *1 ? -10
	#10;
	rst = 0;           // RESET OFF

	// --- Second multiply: accumulate ---
	#10;
	en = 1;            // ENABLE accumulation
	a = 32'h00000001;  // *8 ? +8
	b = 32'h00000008;
	#10;
	en = 0;

	// Wait and display result
	#20;
	$display("Final MAC Output: o = %h (%d)", o, $signed(o));
	$stop;
end

endmodule
