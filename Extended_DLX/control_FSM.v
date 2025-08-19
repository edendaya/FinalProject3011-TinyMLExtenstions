`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:26 12/30/2024 
// Design Name: 
// Module Name:    control_FSM 
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
module control_FSM(
    input CLK,
    input RESET,
    input STEP_EN,
    input busy,
    input [5:0] opcode,
    input [5:0] R_type_func, // IR 6 LSB
	 input AEQZ, // 'Branch taken' determain either will branch or not;
	 output [4:0] STATE_o,
    output [2:0] ALUf,
    output IRce,
    output PCce,
    output Ace,
    output Bce,
    output Cce,
    output MARce,
    output MDRce,
    output [1:0] S1sel,
    output [1:0] S2sel,
    output [1:0] DINTsel,
    output MDRsel,
    output Asel,
    output shift_o,
    output right,
    output add_o,
    output test,
    output MR,
    output MW,
    output GPR_WE,
    output Itype,
    output Jlink,
	 output IN_INIT,
	 //new signals
	 output MAC_EN,
	 output MAC_RST,
	 output mul_mac
    );

// Supporting registers	
reg [4:0] next_state ;
wire bt;

// next_states parameters definitions:
parameter INIT = 5'h00;
parameter fetch = 5'h01;
parameter decode = 5'h02;
parameter halt = 5'h1f;
parameter ALU = 5'h03;
parameter shift_next_state = 5'h04;
parameter WBR = 5'h05;
parameter ALUI= 5'h06;
parameter testI = 5'h07;
parameter WBI = 5'h08;
parameter addessCMP = 5'h09;
parameter load = 5'h0a;
parameter copyMDR2C = 5'h0b;
parameter copyGPR2MDR = 5'h0c;
parameter store = 5'h0d;
parameter JR = 5'h0e;
parameter savePC = 5'h0f;
parameter JALR = 5'h10;
parameter branch = 5'h11;
parameter Btaken = 5'h12;
parameter mul = 5'h13;
parameter macFirst = 5'h14;
parameter mac = 5'h15;



// R type instructions' Function code
parameter R_inst_opcode = 6'b000000;
parameter slli = 3'b000;
parameter srli = 3'b010;
parameter add_func= 3'b011;
parameter sub = 3'b010;
parameter and_logic = 3'b110;
parameter or_logic = 3'b101;
parameter xor_logic = 3'b100;


// I type instructions' Opcode
parameter D1 = 3'b110; // special nop - go to INIT/fetch
parameter D5 = 3'b001;
parameter D6 = 3'b011;
parameter D7 = 2'b10; // lw and sw instruction flow
parameter D8 = 6'b010110;
parameter D9 = 6'b010111; 
parameter D12 = 5'b00010;
parameter lw = 4'b0011;
parameter sw = 4'b1011;
parameter addi =6'b001011;

always @(posedge CLK)
begin
    if (RESET) 
        next_state = INIT;
	 else
	     case(next_state) 
        INIT:
        if(STEP_EN)
            next_state = fetch;
        else
            next_state = INIT;
        fetch:
            if (~busy)
                next_state = decode;
            else
                next_state = fetch;
        decode:
            if (opcode == R_inst_opcode) // R type instruction was received
                if(R_type_func[5]==1) next_state = ALU;
                else if (R_type_func[3] == 0 & R_type_func[4] == 0 & R_type_func[5] == 0) next_state = shift_next_state;
					 else if (R_type_func[3] == 1 & R_type_func[0] == 1 & R_type_func[1] == 0 & R_type_func[2] == 0) next_state = mul;
                else if (R_type_func[3] == 1 & R_type_func[0] == 0 & R_type_func[1] == 1 & R_type_func[2] == 1) next_state = macFirst;
					 else if (R_type_func[3] == 1 & R_type_func[0] == 0 & R_type_func[1] == 0 & R_type_func[2] == 1) next_state = mac;
					 else next_state = halt; // Undefined R type instruction has been detected
            else // I type instruction
                if(opcode[5:3] == D1) // special nop
                    next_state = (STEP_EN) ? fetch : INIT;
                else if(opcode == addi) next_state = ALUI;
                else if(opcode[5:3] == D6) next_state = testI;
                else if (opcode[5:4]== D7) next_state = addessCMP; 
                else if (opcode == D8) next_state = JR;
                else if (opcode == D9) next_state = savePC;
                else if (opcode[5:1] == D12) next_state = branch;
                else next_state = halt; 
        ALU, shift_next_state, mul, macFirst, mac: 
            next_state = WBR;
        ALUI, testI, copyMDR2C: 
            next_state = WBI;
        WBI, WBR, JR, JALR, Btaken: 
            next_state = (STEP_EN) ? fetch : INIT;
        addessCMP: 
            next_state = (opcode[3]) ? copyGPR2MDR : load;
        copyGPR2MDR: 
            next_state = store;
        store:
            if (~busy) next_state = INIT;
            else next_state = store;
        load:
            if (~busy) next_state = copyMDR2C;
            else next_state = load;
        savePC:
            next_state = JALR;
        branch:
            if (bt) next_state = Btaken; // Branch at the next step
            else next_state = (STEP_EN) ? fetch : INIT; // Don't branch - go to the next instruction
        halt:
            next_state = halt;

        default:
            next_state = INIT;
            
        endcase
    end


assign IN_INIT = ((next_state == INIT)||(next_state == halt)) ? 1 : 0;
assign STATE_o = next_state;
assign ALUf = ((opcode[5:3] == 3'b001)||(opcode[5:3] == 3'b011)) ? opcode[2:0] : (opcode == R_inst_opcode)&(R_type_func[5:3] == 3'b100) ? R_type_func[2:0] : 3'b000;
assign IRce = (next_state == fetch) ? 1:0;
assign PCce = (next_state == decode)|(next_state == Btaken)|(next_state == JR)|(next_state == JALR) ? 1:0;
assign Ace = (next_state == decode) ? 1:0;
assign Bce = Ace;
assign Cce = (next_state == ALU)|(next_state == testI)|(next_state == ALUI)|(next_state == shift_next_state)|(next_state == copyMDR2C)|(next_state == savePC)|(next_state == mul)|(next_state == macFirst)|(next_state == mac) ? 1:0;
assign MARce = (next_state == addessCMP) ? 1:0;
assign MDRce = (next_state == load)|(next_state == copyGPR2MDR) ? 1:0;
assign S1sel[1] = (next_state == copyGPR2MDR)|(next_state == copyMDR2C) ? 1:0;
assign S1sel[0] = ((Cce)&(next_state != savePC))|(next_state == addessCMP)|(next_state == JR)|(next_state == JALR) ? 1:0;
assign S2sel = (next_state == decode) ? 2'b11 : ((opcode[5:3] == 3'b010)|(next_state == copyGPR2MDR)|(next_state==copyMDR2C)) ? 2'b10 : ((next_state == addessCMP)||((~GPR_WE)&Itype)||(next_state == Btaken)) ? 2'b01 : 2'b0;
assign DINTsel[1] = (next_state == mul)|(next_state == macFirst)|(next_state == mac) ? 1:0;
assign DINTsel[0] = (shift_o)|(next_state == copyGPR2MDR)|(next_state == copyMDR2C) ? 1:0;
assign MDRsel = (next_state == load) ? 1 : 0;
assign Asel = (next_state == load)|(next_state == store) ? 1 : 0;
assign shift_o = (next_state == shift_next_state) ? 1 : 0;
assign right = (shift_o & R_type_func[1]);
assign add_o = (next_state ==decode)|(next_state == ALUI)|(next_state == addessCMP)|(next_state == Btaken)| (next_state ==JR)|(next_state == savePC)|(next_state == JALR) ? 1 : 0;
assign test = (next_state == testI) ? 1 : 0;
assign MR = (next_state == fetch)|(next_state == load) ? 1 : 0;
assign MW = (next_state == store) ? 1 : 0;
assign GPR_WE = (next_state ==WBI)|(next_state == WBR)|(next_state == JALR) ? 1 : 0;
assign Itype = (next_state == ALUI)|(next_state == testI)|(next_state == WBI) ? 1 : 0;
assign Jlink = (next_state == JALR) ? 1 : 0;
assign bt = (AEQZ ^ opcode[0]);
assign MAC_EN = (next_state == macFirst) | (next_state == mac) ? 1:0;
assign MAC_RST = (next_state == macFirst) ? 1:0;
assign mul_mac = (next_state == mul) ? 1:0;

endmodule

