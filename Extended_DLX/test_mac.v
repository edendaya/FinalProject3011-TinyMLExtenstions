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

// Clock generation: 10ns period
always #5 clk = ~clk;

initial begin
    // Initial values
    clk = 0;
    rst = 0;
    en = 0;
    mul_mac_signal = 1; // Enable MAC mode
    a = 0;
    b = 0;

    // Wait and reset
    #10;
    rst = 1;

    // First MAC: -10 * 1
    a = 32'hFFFFFFF6;  // -10
    b = 32'h00000001;
    en = 1;
    #10;
    en = 0;

    // Wait a bit
    #10;

    // Second MAC: 1 * 8 (add to previous)
    a = 32'h00000001;
    b = 32'h00000008;
    en = 1;
    #10;
    en = 0;

    // Wait to observe output
    #20;

    $stop; // Pause simulation to observe waveforms
end

endmodule
