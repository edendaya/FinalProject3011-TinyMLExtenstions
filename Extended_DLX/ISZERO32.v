`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:28:15 12/10/2024 
// Design Name: 
// Module Name:    ISZERO32 
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
module ISZERO32 (
    input [31:0] inputim,        // 32-bit input
    output is_zero          // Output: 1 if all bits are zero, 0 otherwise
);

    // Continuous assignment to check if all bits are zero
    assign is_zero = (inputim == 32'b0);  // Assign is_zero to 1 if input is all zeros, else 0

endmodule

