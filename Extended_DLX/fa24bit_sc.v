`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:45:02 03/04/2025 
// Design Name: 
// Module Name:    fa24bit_sc 
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
module fa24bit_sc(
    input [23:0] A,      // 12-bit input A
    input [23:0] B,      // 12-bit input B
    input Cin,           // Carry-in
    output [23:0] SUM,   // 12-bit sum output
    output Cout          // Carry-out
);
    wire carry;

    // Lower 12 bits
    fa12bit_sc lower_12bit (
        .A(A[11:0]),
        .B(B[11:0]),
        .Cin(Cin),
        .SUM(SUM[11:0]),
        .Cout(carry)
    );

    // Upper 12 bits
    fa12bit_sc upper_12bit (
        .A(A[23:12]),
        .B(B[23:12]),
        .Cin(carry),
        .SUM(SUM[23:12]),
        .Cout(Cout)
    );

endmodule
