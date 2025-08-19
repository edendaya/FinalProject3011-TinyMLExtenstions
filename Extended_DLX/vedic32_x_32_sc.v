`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:05:47 03/04/2025 
// Design Name: 
// Module Name:    vedic32_x_32_sc 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module vedic32_x_32_sc(
    input signed [31:0] a,
    input signed [31:0] b,
    output signed [63:0] c
);
    wire signed [31:0] q0, q1, q2, q3;
    wire signed [31:0] temp1, q4;
    wire signed [47:0] temp2, temp3, temp4, q5, q6;

    // Modified 16x16 multipliers for signed support
    vedic16_x_16_sc z1(a[15:0], b[15:0], q0);
    vedic16_x_16_sc z2({{16{a[31]}}, a[31:16]}, b[15:0], q1);
    vedic16_x_16_sc z3(a[15:0], {{16{b[31]}}, b[31:16]}, q2);
    vedic16_x_16_sc z4({{16{a[31]}}, a[31:16]}, {{16{b[31]}}, b[31:16]}, q3);

    // Stage 1 adders
    assign temp1 = {16'b0, q0[31:16]};
    fa32bit_sc z5(
        .A(q1),
        .B(temp1),
        .Cin(0),
        .SUM(q4),
        .Cout(carry0)
    );

    assign temp2 = {16'b0, q2};
    assign temp3 = {q3, 16'b0};
    fa48bit_sc z6(
        .A(temp2),
        .B(temp3),
        .Cin(0),
        .SUM(q5),
        .Cout(carry1)
    );

    assign temp4 = {16'b0, q4};

    // Stage 2 adder
    fa48bit_sc z7(
        .A(temp4),
        .B(q5),
        .Cin(0),
        .SUM(q6),
        .Cout(carry2)
    );

    // Final output assignment
    assign c[15:0] = q0[15:0];
    assign c[63:16] = q6[47:0];
endmodule
