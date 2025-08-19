`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:12 01/06/2025 
// Design Name: 
// Module Name:    mux_3 
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
module mux_3(
	 input [2:0] A,
    input [2:0] B,
    output [2:0] O,
    input sel
    );

assign O = (sel) ? B:A;

endmodule