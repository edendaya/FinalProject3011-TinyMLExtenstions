`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:03:37 01/02/2025 
// Design Name: 
// Module Name:    MMU_DLX 
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
module MMU_DLX(
    input [31:0] Addr,
    output [31:0] MMU_O
    );

assign MMU_O[31:24] = 8'h00;
assign MMU_O[23:0] = Addr[23:0];
endmodule
