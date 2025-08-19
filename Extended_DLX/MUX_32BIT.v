`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:36 12/10/2024 
// Design Name: 
// Module Name:    mux16bit 
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
module MUX_32BIT (
    input [31:0] in0,    // 16-bit input 0
    input [31:0] in1,    // 16-bit input 1
    input sel,           // Select signal (1 bit)
    output [31:0] muxout    // 16-bit output
);

    // Assign output based on select signal
    assign muxout = sel ? in1 : in0;

endmodule

