`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:29 03/03/2025 
// Design Name: 
// Module Name:    twoscomplement_32bit 
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
module twoscomplement_32bit(
    input [31:0] in_twos,
    input en,
    output [31:0] out_twos
);
    assign out_twos = en ? (~in_twos + 1) : in_twos;  
endmodule
