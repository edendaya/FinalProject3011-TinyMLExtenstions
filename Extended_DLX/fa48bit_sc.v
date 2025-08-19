`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:12 03/04/2025 
// Design Name: 
// Module Name:    fa48bit_sc 
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
module fa48bit_sc(
    input [47:0] A,      // 48-bit input A
    input [47:0] B,      // 48-bit input B
    input Cin,           // Carry-in
    output [47:0] SUM,   // 48-bit sum output
    output Cout          // Carry-out
);
    wire carry1, carry2; // Internal carry wires

    // Instantiate three 16-bit adders
    fa16bit_sc ADD0(
        .A(A[15:0]),
        .B(B[15:0]),
        .Cin(Cin),
        .SUM(SUM[15:0]),
        .Cout(carry1)
    );
    fa16bit_sc ADD1(
        .A(A[31:16]),
        .B(B[31:16]),
        .Cin(carry1),
        .SUM(SUM[31:16]),
        .Cout(carry2)
    );
    fa16bit_sc ADD2(
        .A(A[47:32]),
        .B(B[47:32]),
        .Cin(carry2),
        .SUM(SUM[47:32]),
        .Cout(Cout)
    );

endmodule