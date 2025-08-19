`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:18:20 12/15/2024 
// Design Name: 
// Module Name:    PC_ENV 
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
module PC_ENV(
    input PC_EN,
    input CLK,
    input RESET,
    output [15:0] PC
);

reg [15:0] PC_S = 16'b0;

always @(posedge CLK)
begin
    if (RESET == 1)
        PC_S <= 16'b0;
    else if (PC_EN == 1)
        PC_S <= PC_S + 16'b1;
    else
        PC_S <= PC_S;
end

assign PC = PC_S;

endmodule