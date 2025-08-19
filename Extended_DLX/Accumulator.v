`timescale 1ns / 1ps
module Accumulator (
    input clk,            // Clock
    input rst,            // Reset
    input en,             // Enable accumulation
    input [31:0] D,       // Input value to accumulate
    output [31:0] Q,      // Accumulated output
    output [31:0] sum_out // Output of the 32-bit adder
);

    wire [31:0] sum;      // Result from full adder
    reg [31:0] acc;       // Accumulator register
    wire carry_out;       // Carry output (unused here)

    // Instantiate the 32-bit Full Adder
    fa32bit_sc adder_inst (
        .A(acc & {32{~rst}} ),
        .B(D   & {32{en}}),
        .Cin(1'b0),
        .SUM(sum),
        .Cout(carry_out)
    );

    // Accumulator register logic
    always @(posedge clk) begin
        if (en) 
            acc <= sum;        // Reset the accumulator
    end

    assign Q = acc;       // Output the accumulated value
    assign sum_out = sum; // Expose the sum output

endmodule
