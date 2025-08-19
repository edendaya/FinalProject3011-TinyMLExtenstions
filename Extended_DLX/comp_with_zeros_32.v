`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:52 01/06/2025 
// Design Name: 
// Module Name:    comp_with_zeros_32 
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
module comp_with_zeros_32(
    input COMP_OUT,
    output [31:0] COMP_OUT_32bits
    );

assign COMP_OUT_32bits = 32'h00000000 + COMP_OUT;
endmodule

