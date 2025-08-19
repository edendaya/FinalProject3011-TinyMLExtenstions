`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:42 03/04/2025 
// Design Name: 
// Module Name:    fa32bit_sc 
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
module fa32bit_sc(
    input [31:0] A,      // 32-bit input A
    input [31:0] B,      // 32-bit input B
    input Cin,           // Carry-in
    output [31:0] SUM,   // 32-bit sum output
    output Cout          // Carry-out
);
    wire carry;          // Internal carry wire

    // Instantiate two 16-bit adders
    fa16bit_sc ADD0(
        .A(A[15:0]),
        .B(B[15:0]),
        .Cin(Cin),
        .SUM(SUM[15:0]),
        .Cout(carry)
    );
    fa16bit_sc ADD1(
        .A(A[31:16]),
        .B(B[31:16]),
        .Cin(carry),
        .SUM(SUM[31:16]),
        .Cout(Cout)
    );

endmodule
