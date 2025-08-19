`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:01:46 03/03/2025 
// Design Name: 
// Module Name:    fa8bit_sc 
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
module fa8bit_sc (
    input [7:0] A,      // 8-bit input A
    input [7:0] B,      // 8-bit input B
    input Cin,          // Carry-in
    output [7:0] SUM,   // 8-bit sum output
    output Cout         // Carry-out
);
    wire carry4;        // Carry between the lower and upper 4-bit adders

    // Lower 4 bits
    fa_4bit_sc lower_4bit (
        .A(A[3:0]),
        .B(B[3:0]),
        .Cin(Cin),
        .SUM(SUM[3:0]),
        .Cout(carry4)
    );

    // Upper 4 bits
    fa_4bit_sc upper_4bit (
        .A(A[7:4]),
        .B(B[7:4]),
        .Cin(carry4),
        .SUM(SUM[7:4]),
        .Cout(Cout)
    );

endmodule
