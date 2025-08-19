`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:04 12/15/2024 
// Design Name: 
// Module Name:    MUX_5to5 
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
module MUX_5to5(
    input [4:0] D0,
    input [4:0] D1,
    input S0,
    output [4:0] O
);

reg [4:0] O;

always @(D0 or D1 or S0)
begin
    case (S0)
        1'b0: O <= D0;
        1'b1: O <= D1;
    endcase
end

endmodule
