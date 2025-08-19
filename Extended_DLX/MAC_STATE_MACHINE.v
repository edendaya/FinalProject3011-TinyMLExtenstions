`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:17:38 12/15/2024 
// Design Name: 
// Module Name:    MAC_STATE_MACHINE 
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
module MAC_STATE_MACHINE(
 input CLK,
    input RESET,
    input MR,
    input MW,
	 input ACK_N,
	 output busy,
    output AS_N,
    output WR_N,
    output STOP_N,
    output [1:0] STATE
);

// State and next state registers
reg[1:0] current_state;
reg[1:0] prev_state;

// State encoding
parameter WAIT4REQ = 2'h0;
parameter WAIT4ACK = 2'h1;
parameter NEXT     = 2'h2;

// State outputs
always @(posedge CLK)
begin
    if (RESET) 
        current_state <= WAIT4REQ;
	 else
	 
	 
// Next state logic
    case (current_state)
        WAIT4REQ:
		  begin
            if ((MW|MR) == 1)
				begin
                current_state <= WAIT4ACK;
					 prev_state <= WAIT4REQ;
            end
				else
				begin
                current_state <= WAIT4REQ;
					 prev_state <= WAIT4REQ;
            end
        end

        WAIT4ACK: begin
            if (ACK_N == 0) begin
                current_state <= NEXT;
					 prev_state <= WAIT4ACK;
            end else begin
                current_state <= WAIT4ACK;
					 prev_state <= WAIT4ACK;
            end
        end

        NEXT: begin
            current_state <= WAIT4REQ;
				prev_state <= NEXT;
        end

        default: begin
				current_state <= WAIT4REQ;
				prev_state <= WAIT4REQ;
	     end
    endcase
end

// Output logic (depends only on the current state)
  // Default values
assign WR_N = (current_state == WAIT4ACK) ? ~MW : 1;
assign AS_N = (current_state == WAIT4ACK) ? 0 : 1;
//assign STOP_N = (current_state == WAIT4ACK & ACK_N) ? 0 : 1; 
assign busy = ((MW|MR) & ACK_N );
assign STATE = current_state;

// Assign the delayed value of STOP_N_reg to STOP_N
assign STOP_N = ~((prev_state == WAIT4ACK) && (current_state == WAIT4ACK) && (ACK_N));

endmodule

