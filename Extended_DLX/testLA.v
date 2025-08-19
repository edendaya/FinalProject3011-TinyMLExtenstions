`timescale 1ns / 1ps

module LogiAnalyzer_LogiAnalyzer_sch_tb();

// Inputs
reg CLK;
reg [31:0] SIGNALS;
reg step_en;
reg in_init;
reg stop_n;
reg [4:0] AI;

// Outputs
wire [7:0] STATUS_OUT;
wire [31:0] RAM_OUT;

// Instantiate the UUT
LogiAnalyzer UUT (
    .CLK(CLK), 
    .STATUS_OUT(STATUS_OUT), 
    .SIGNALS(SIGNALS), 
    .RAM_OUT(RAM_OUT), 
    .step_en(step_en), 
    .in_init(in_init), 
    .stop_n(stop_n), 
    .AI(AI)
);

// Clock generation
initial CLK = 1;
always begin
	#50 CLK = ~CLK; // 50 MHz clock, period = 20 ns
end

// Test stimulus
initial begin
    // Initialize inputs
    SIGNALS = 32'b1;
    step_en = 0;
    in_init = 1;
    stop_n = 1; // Active low signal
    AI = 5'h0;

    // Apply input sequences based on waveform
    // Time 0 us
    #101 step_en = 1;
	 #100 in_init = 0;
	 step_en = 0;
	 #500 stop_n = 0;
	 #300 stop_n = 1;
	 #500 in_init = 1;

   #100;
end

endmodule
