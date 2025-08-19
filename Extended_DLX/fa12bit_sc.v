`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:04:53 03/03/2025 
// Design Name: 
// Module Name:    fa12bit_sc 
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
module fa12bit_sc(
    input [11:0] A,      // 12-bit input A
    input [11:0] B,      // 12-bit input B
    input Cin,           // Carry-in
    output [11:0] SUM,   // 12-bit sum output
    output Cout          // Carry-out
);
    wire carry4, carry8; // Carry between the 4-bit blocks

    // Lower 4 bits
    fa_4bit_sc lower_4bit (
        .A(A[3:0]),
        .B(B[3:0]),
        .Cin(Cin),
        .SUM(SUM[3:0]),
        .Cout(carry4)
    );

    // Middle 4 bits
    fa_4bit_sc middle_4bit (
        .A(A[7:4]),
        .B(B[7:4]),
        .Cin(carry4),
        .SUM(SUM[7:4]),
        .Cout(carry8)
    );

    // Upper 4 bits
    fa_4bit_sc upper_4bit (
        .A(A[11:8]),
        .B(B[11:8]),
        .Cin(carry8),
        .SUM(SUM[11:8]),
        .Cout(Cout)
    );

endmodule
