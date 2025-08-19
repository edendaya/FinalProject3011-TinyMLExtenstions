`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:07 03/02/2025 
// Design Name: 
// Module Name:    twoscomplement 
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
module twoscomplement(
    input [7:0] in_twos,
    input en,
    output [7:0] out_twos
);
    assign out_twos = en ? (~in_twos + 1) : in_twos;  
endmodule
