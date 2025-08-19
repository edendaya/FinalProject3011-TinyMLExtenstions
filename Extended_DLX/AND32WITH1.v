`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:43 12/15/2024 
// Design Name: 
// Module Name:    AND32WITH1 
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
module AND32WITH(
    input [31:0] Din,   // 32-bit input
    input pullD,        // Single-bit input
    output [31:0] Dout  // 32-bit output
);

    assign Dout = Din & {32{pullD}}; // Bitwise AND with pullD replicated 32 times

endmodule

