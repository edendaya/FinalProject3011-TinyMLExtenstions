`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:28:08 03/09/2025 
// Design Name: 
// Module Name:    MUX32bit_3in 
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
module MUX32bit_3in(
    input  [31:0] A,
    input  [31:0] B,
    input  [31:0] C,
    input  [1:0]  sel, // 2-bit selector (00 ? A, 01 ? B, 10 ? C)
    output [31:0] O
);

assign O = (sel == 2'b00) ? A :
           (sel == 2'b01) ? B :
           (sel == 2'b10) ? C : 32'b0; // Default case (optional)

endmodule
