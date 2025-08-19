`timescale 1ns / 1ps

module monitor_monitor_sch_tb();

// Inputs
reg CLK;
reg [31:0] SIGNALS;
reg step_en;
reg in_init;
reg stop_n;
reg CARDSEL;
reg WR_N;
reg [31:0] SLAVE_C;
reg [31:0] SLAVE_D;
reg [9:0] AI;

// Outputs
wire SACK_N;
wire [31:0] SLAVE_OUTPUT;
wire [4:0] reg_write;

// Instantiate the UUT
monitor UUT (
    .CLK(CLK),
    .SIGNALS(SIGNALS),
    .step_en(step_en),
    .in_init(in_init),
    .stop_n(stop_n),
    .CARDSEL(CARDSEL),
    .WR_N(WR_N),
    .SLAVE_C(SLAVE_C),
    .SLAVE_D(SLAVE_D),
    .AI(AI),
    .SACK_N(SACK_N),
    .SLAVE_OUTPUT(SLAVE_OUTPUT),
    .reg_write(reg_write)
);

// Clock generation
initial CLK = 1;
always #50 CLK = ~CLK; // 50 MHz clock, period = 20 ns

// Test stimulus
initial begin
    // Initialize inputs
    SIGNALS = 32'h00000000;
    step_en = 0;
    in_init = 1;
    stop_n = 1;  // Active low
    CARDSEL = 0;
    WR_N = 0;    // Active low write signal
    SLAVE_C = 32'hAAAAAAAA;
    SLAVE_D = 32'h55555555;
    AI = 10'b0; //AI[6:5] is '00' so mux takes A input (LA_RAM)

    // Apply test stimulus
	 WR_N = 1;
	 CARDSEL = 1;      // Activate CARDSEL
    #101 step_en = 1; // Trigger step
    #50 step_en = 0;
    in_init = 0; // Complete initialization
	 #100 SIGNALS = 32'h00000001;
	 #100 SIGNALS = 32'h00000002;
	 #100 SIGNALS = 32'h00000003;
    #50 stop_n = 0;  // Trigger stop
	 #50 SIGNALS = 32'h00000004;
	 #100 SIGNALS = 32'h00000005;
	 #100 SIGNALS = 32'h00000006;
	 #100 SIGNALS = 32'h00000007;
    #50 stop_n = 1; 
	 #50 SIGNALS = 32'h00000008;
	 #100 SIGNALS = 32'h00000009;
	 #100 in_init = 1;
	 #300 AI = 10'b0000000000;
	 #100 AI = 10'b0000000001;
	 #100 AI = 10'b0000000010;
	 #100 AI = 10'b0000000011;
	 #100 AI = 10'b0000000100;
	 #100 AI = 10'b0000000101;
	 #100 AI = 10'b0000000110;
	 #100 AI = 10'b0000000111;
	 #100 AI = 10'b0000001000;

    #500 $stop; // End simulation
end

endmodule
