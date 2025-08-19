`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:53:18 07/22/2024 
// Design Name: 
// Module Name:    Comp_out_32bits 
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
module Comp_out_32bits(
    input COMP_OUT,
    output [31:0] COMP_OUT_32bits
    );

assign COMP_OUT_32bits = 32'h00000000 + COMP_OUT;
endmodule
