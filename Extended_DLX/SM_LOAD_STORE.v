`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:45:25 12/16/2024 
// Design Name: 
// Module Name:    SM_LOAD_STORE 
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
module SM_LOAD_STORE(
    input STEP_EN,
    input CLK,
    input RESET,
    input [5:0] Opcode,
    input busy,
    output IR_EN_o,
    output GPR_EN_o,
    output mux_sel_o,
    output reg_A_EN_o,
    output reg_B_EN_o,
    output reg_C_EN_o,
    output [2:0] STATE_o,
    output IN_INIT_o,
    output PC_STEP_o,
    output REQ_o,
    output MR_o,
    output MW_o
);

// Supporting registers
reg [2:0] current_state;

// Opcode parameters
parameter storeCode = 6'b101011;
parameter loadCode = 6'b100011;

// State parameter definitions
parameter INIT = 3'h0;
parameter fetch = 3'h1;
parameter decode = 3'h2;
parameter halt = 3'h3;
parameter store = 3'h4;
parameter load = 3'h5;
parameter write_back = 3'h6;


always @(posedge CLK) begin
    if (RESET == 1)
        current_state = INIT;
    else 
	
    case (current_state)
        INIT:
            if (STEP_EN == 1)
                current_state = fetch;
            else
                current_state = INIT;

        fetch:
            if (busy == 0)
                current_state = decode;
            else
                current_state = fetch;

        decode:
            if (Opcode == storeCode)
                current_state = store;
            else if (Opcode == loadCode)
                current_state = load;
            else
                current_state = halt;

        store:
            if (busy == 0)
                current_state = INIT;
            else
                current_state = store;

        load:
            if (busy == 0)
                current_state = write_back;
            else
                current_state = load;

        halt:
            current_state = halt;

        write_back:
            current_state = INIT;

        default:
            current_state = INIT;
    endcase


end

// Output assignments
assign STATE_o = current_state;
assign IN_INIT_o = ((current_state == INIT) | (current_state == halt)) ? 1 : 0;
assign MR_o = ((current_state == fetch) | (current_state == load)) ? 1 : 0;
assign MW_o = (current_state == store) ? 1 : 0;
assign REQ_o = MR_o | MW_o;
assign PC_STEP_o = (current_state == decode) ? 1 : 0;
assign IR_EN_o = ((current_state == fetch) & (busy == 0)) ? 1 : 0;
assign GPR_EN_o = (current_state == write_back) ? 1 : 0;
assign mux_sel_o = ((current_state == load) | (current_state == store)) ? 1 : 0;
assign reg_A_EN_o = 0; 
assign reg_B_EN_o = (current_state == decode) ? 1 : 0;
assign reg_C_EN_o = (current_state == load) ? 1 : 0;

endmodule
