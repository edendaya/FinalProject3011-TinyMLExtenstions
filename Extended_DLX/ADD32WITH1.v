`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:55:16 12/15/2024 
// Design Name: 
// Module Name:    ADD32WITH1 
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
module ADD32WITH1(
    input [31:0] Din,     // 32-bit input
    input pullD,            // Single-bit input
    output Dout       // Single-bit output
);
    assign Dout = &Din & pullD; // AND all bits of D and then AND with A
endmodule
