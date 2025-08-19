`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:07:16 03/03/2025 
// Design Name: 
// Module Name:    vedic8_x_8_sc 
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
module vedic8_x_8_sc(
    input signed [7:0] a,
    input signed [7:0] b,
    output signed [15:0] c
);
    wire signed [15:0] q0, q1, q2, q3;
    wire signed [7:0] temp1, q4;
    wire signed [11:0] temp2, temp3, temp4, q5, q6;

    // Modified 4x4 multipliers for signed support
    vedic4_x_4_sc z1(a[3:0], b[3:0], q0);
    vedic4_x_4_sc z2({{4{a[7]}}, a[7:4]}, b[3:0], q1);
    vedic4_x_4_sc z3(a[3:0], {{4{b[7]}}, b[7:4]}, q2);
    vedic4_x_4_sc z4({{4{a[7]}}, a[7:4]}, {{4{b[7]}}, b[7:4]}, q3);

    // Stage 1 adders
    assign temp1 = {4'b0, q0[7:4]};
    fa8bit_sc z5(
	 .A(q1[7:0]),
	 .B(temp1),
	 .Cin(1'b0),
	 .SUM(q4),
	 .Cout(Cout0)
	 );

    assign temp2 = {4'b0, q2[7:0]};
    assign temp3 = {q3[7:0], 4'b0};
    //fa12bit_sc z6(temp2, temp3, 0, q5);
	 fa12bit_sc z6(
	 .A(temp2),
	 .B(temp3),
	 .Cin(1'b0),
	 .SUM(q5),
	 .Cout(Cout1)
	 );
    assign temp4 = {4'b0, q4[7:0]};

    // Stage 2 adder
    //fa12bit_sc z7(temp4, q5, 0, q6);
	fa12bit_sc z7(
	 .A(temp4),
	 .B(q5),
	 .Cin(1'b0),
	 .SUM(q6),
	 .Cout(Cout2)
	 );
    // Final output assignment
    assign c[3:0] = q0[3:0];
    assign c[15:4] = q6[11:0];
endmodule