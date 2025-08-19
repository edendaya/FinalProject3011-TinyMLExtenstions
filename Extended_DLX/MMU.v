`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:27:08 12/15/2024 
// Design Name: 
// Module Name:    MMU 
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
module MMU(
    input wire [15:0] MMU_IN,    // 32-bit input
    output wire [31:0] AO    // 32-bit output
);

// Pass through the first 16 bits from the input to the output
assign AO[15:0] = MMU_IN[15:0];

// Assign the next 16 bits to GND (logic 0)
assign AO[31:16] = 16'b0;

endmodule
