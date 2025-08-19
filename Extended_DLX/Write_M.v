`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:19:51 12/05/2024 
// Design Name: 
// Module Name:    writemachine 
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
module Write_M(
    input STEP_EN,
    input ACK_N,
    input RESET,
    input CLK,
    output WR_N_o,
    output STOP_N_o,
    output IN_INIT_o,
    output AS_N_o,
    output Address_CNT_CE_o,
    output [1:0] CURR_STATE_o
);

    // Local variables
    reg WR_N;
    reg STOP_N;
    reg IN_INIT;
    reg AS_N;
    reg Address_CNT_CE;
    reg [1:0] CURR_STATE;

    // Defining states
    parameter wait_state = 2'h0;
    parameter store      = 2'h1;
    parameter wait4ACK   = 2'h2;
    parameter terminate  = 2'h3;

    // State machine combinatorial logic part
    always @(posedge CLK)
    begin
        if (RESET == 1) 
		  begin
            CURR_STATE = wait_state;
				IN_INIT = 1;
            WR_N = 1;
            AS_N = 1;
            Address_CNT_CE = 0;
            STOP_N = 1;
		  end
				
        else
        begin
            case (CURR_STATE)
                wait_state: 
                begin
                    Address_CNT_CE = 0;
                    if (STEP_EN == 1) 
                    begin
                        CURR_STATE = store;
                        WR_N = 0;
                        IN_INIT = 0;
                        AS_N = 0;
                    end
                    else 
                    begin
                        CURR_STATE = wait_state;
                    end
                end

                store: 
                begin
                    WR_N = 0;
                    AS_N = 0;
                    IN_INIT = 0;
                    CURR_STATE = wait4ACK;
                end

                wait4ACK: 
                begin
                    if (ACK_N == 0) 
                    begin
								STOP_N = 1;
                        CURR_STATE = terminate;
                        WR_N = 1;
                        AS_N = 1;
                        IN_INIT = 0;
								Address_CNT_CE = 1;
                    end
						  else
						  begin
								CURR_STATE = wait4ACK;
								WR_N = 0;
                        AS_N = 0;
                        IN_INIT = 0;
								STOP_N = 0;
							end
                end

                terminate: 
                begin
                    WR_N = 1;
                    AS_N = 1;
                    IN_INIT = 1;
                    Address_CNT_CE = 0;
                    CURR_STATE = wait_state;
                end

                default: 
                begin
                    CURR_STATE = wait_state;
                    IN_INIT = 1;
                    WR_N = 1;
                    AS_N = 1;
                    Address_CNT_CE = 0;
                    STOP_N = 1;
                end
            endcase
        end
    end

    assign CURR_STATE_o = CURR_STATE;
    assign IN_INIT_o = IN_INIT;
    assign WR_N_o = WR_N;
    assign AS_N_o = AS_N;
    assign Address_CNT_CE_o = Address_CNT_CE;
    assign STOP_N_o = STOP_N | (~ACK_N);

endmodule
