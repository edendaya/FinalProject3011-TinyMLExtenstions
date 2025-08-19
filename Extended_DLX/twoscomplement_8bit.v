`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:37:17 03/06/2025 
// Design Name: 
// Module Name:    twoscomplement_8bit 
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
module twoscomplement_4bit(
    input [3:0] in_twos,
    input en,
    output [3:0] out_twos
);
    assign out_twos = en ? (~in_twos + 1) : in_twos;  
endmodule