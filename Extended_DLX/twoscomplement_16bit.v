`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:11 03/04/2025 
// Design Name: 
// Module Name:    twoscomplement_16bit 
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
module twoscomplement_16bit(
    input [15:0] in_twos,
    input en,
    output [15:0] out_twos
);
    assign out_twos = en ? (~in_twos + 1) : in_twos;  
endmodule
