`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:57:31 12/15/2024 
// Design Name: 
// Module Name:    AEQZ 
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
module AEQZ(
    input [31:0] A,  // 32-bit input
    output A_eqz      // Output: 1 if all bits in A are zero
);

    // Use a NOR tree to check if all bits are zero
    assign A_eqz = ~(|A);  // Logical OR reduction followed by NOT

endmodule
