`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:32 03/03/2025 
// Design Name: 
// Module Name:    vedic4_x_4_sc 
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
module vedic4_x_4_sc(
    input [3:0] a,
    input [3:0] b,
    output [7:0] c
);

    wire [3:0] q0;    
    wire [3:0] q1;    
    wire [3:0] q2;
    wire [3:0] q3;    
    wire [7:0] c;
    wire [3:0] temp1;
    wire [5:0] temp2;
    wire [5:0] temp3;
    wire [5:0] temp4;
    wire [3:0] q4;
    wire [5:0] q5;
    wire [5:0] q6;

    // Using 4 2x2 multipliers
    vedic2_x_2_sc z1(a[1:0], b[1:0], q0[3:0]);
    vedic2_x_2_sc z2(a[3:2], b[1:0], q1[3:0]);
    vedic2_x_2_sc z3(a[1:0], b[3:2], q2[3:0]);
    vedic2_x_2_sc z4(a[3:2], b[3:2], q3[3:0]);

    // Stage 1 Adders
    assign temp1 = {2'b0, q0[3:2]};
	     fa_4bit_sc z5 (
        .A(q1[3:0]), 
        .B(temp1), 
        .Cin(1'b0), 
        .SUM(q4), 
        .Cout(Cout)
    );

    assign temp2 = {2'b0, q2[3:0]};
    assign temp3 = {q3[3:0], 2'b0};
	 	   fa_6bit_sc z6 (
        .A(temp2), 
        .B(temp3), 
        .Cin(1'b0), 
        .SUM(q5), 
        .Cout(Cout1)
    );

    assign temp4 = {2'b0, q4[3:0]};

    // Stage 2 Adder
	 	 	fa_6bit_sc z7 (
        .A(temp4), 
        .B(q5), 
        .Cin(1'b0), 
        .SUM(q6), 
        .Cout(Cout2)
    );

    // Final Output Assignment
    assign c[1:0] = q0[1:0];
    assign c[7:2] = q6[5:0];

endmodule
