`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:43:35 01/02/2025 
// Design Name: 
// Module Name:    Zeros_ext_DLX 
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
module Sign_ext_DLX(
    input [15:0] imm,
    output [31:0] imm_extended
    );
assign imm_extended[15:0] = imm;
assign imm_extended[31:16] = (imm[15] == 1) ? 16'hFFFF :16'h0000;
endmodule
