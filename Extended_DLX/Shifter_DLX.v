`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:59:47 01/02/2025 
// Design Name: 
// Module Name:    Shifter_DLX 
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
module Shifter_DLX(
    input [31:0] DI,
    input shift,
    input right,
    output [31:0] DO
    );
	
assign DO = (shift && right) ? (DI>>1) : (shift) ? (DI<<1) : DI; 

endmodule
