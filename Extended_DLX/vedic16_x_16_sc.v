`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:40 03/04/2025 
// Design Name: 
// Module Name:    vedic16_x_16_sc 
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
module vedic16_x_16_sc(
    input signed [15:0] a,
    input signed [15:0] b,
    output signed [31:0] c
);
    wire signed [31:0] q0, q1, q2, q3;
    wire signed [15:0] temp1, q4;
    wire signed [23:0] temp2, temp3, temp4, q5, q6;

    // Modified 8x8 multipliers for signed support
    vedic8_x_8_sc z1(a[7:0], b[7:0], q0);
    vedic8_x_8_sc z2({{8{a[15]}}, a[15:8]}, b[7:0], q1);
    vedic8_x_8_sc z3(a[7:0], {{8{b[15]}}, b[15:8]}, q2);
    vedic8_x_8_sc z4({{8{a[15]}}, a[15:8]}, {{8{b[15]}}, b[15:8]}, q3);

    // Stage 1 adders
    assign temp1 = {8'b0, q0[15:8]};
    fa16bit_sc z5(
        .A(q1[15:0]),
        .B(temp1),
        .Cin(1'b0),
        .SUM(q4),
        .Cout(Cout0)
    );

    assign temp2 = {8'b0, q2[15:0]};
    assign temp3 = {q3[15:0], 8'b0};
    fa24bit_sc z6(
        .A(temp2),
        .B(temp3),
        .Cin(1'b0),
        .SUM(q5),
        .Cout(Cout1)
    );

    assign temp4 = {8'b0, q4[15:0]};

    // Stage 2 adder
    fa24bit_sc z7(
        .A(temp4),
        .B(q5),
        .Cin(1'b0),
        .SUM(q6),
        .Cout(Cout2)
    );

    // Final output assignment
    assign c[7:0] = q0[7:0];
    assign c[31:8] = q6[23:0];
endmodule
