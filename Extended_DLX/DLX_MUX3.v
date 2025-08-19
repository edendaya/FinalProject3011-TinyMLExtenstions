`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:14 07/15/2024 
// Design Name: 
// Module Name:    DLX_MUX3 
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
module MUX_3inputs(
    input [2:0] A,
    input [2:0] B,
    output [2:0] O,
    input sel
    );

assign O = (sel) ? B:A;

endmodule
