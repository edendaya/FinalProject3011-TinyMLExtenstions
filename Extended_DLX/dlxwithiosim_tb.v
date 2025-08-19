// Verilog test fixture created from schematic E:\adlx\D4\SOURCE_VER_FINALPROJECT\DLX_WITH_IOSIM.sch - Mon Mar 10 15:54:56 2025

`timescale 1ns / 1ps

module DLX_WITH_IOSIM_DLX_WITH_IOSIM_sch_tb();

// Inputs
   reg STEP_IN;
   reg RST_IN;
   reg CLK_IN;

// Output
   wire as_N;
   wire wr_N;
   wire ACK_N;
   wire [31:0] DI;
   wire [31:0] MAO;
   wire [31:0] MDO;
   wire jlink;
   wire Itype;
   wire GPR_WE;
   wire test;
   wire add;
   wire right;
   wire shift;
   wire Asel;
   wire MDRsel;
   wire MDRce;
   wire MARce;
   wire Cce;
   wire Bce;
   wire Ace;
   wire PCce;
   wire IRce;
   wire [1:0] S1sel;
   wire [2:0] ALUf;
   wire [4:0] STATE;
   wire [1:0] S2sel;
   wire AEQZ;
   wire MW;
   wire MR;
   wire STOP_N;
   wire [1:0] MAC_STATE;
   wire busy;
   wire IN_INIT;
   wire [1:0] DINTsel;
   wire [31:0] IR_OUT;
   wire [31:0] PC;
   wire MAC_EN;
   wire MAC_RST;
   wire mul_mac;

// Bidirs

// Instantiate the UUT
   DLX_WITH_IOSIM UUT (
		.as_N(as_N), 
		.wr_N(wr_N), 
		.ACK_N(ACK_N), 
		.DI(DI), 
		.MAO(MAO), 
		.MDO(MDO), 
		.STEP_IN(STEP_IN), 
		.RST_IN(RST_IN), 
		.CLK_IN(CLK_IN), 
		.jlink(jlink), 
		.Itype(Itype), 
		.GPR_WE(GPR_WE), 
		.test(test), 
		.add(add), 
		.right(right), 
		.shift(shift), 
		.Asel(Asel), 
		.MDRsel(MDRsel), 
		.MDRce(MDRce), 
		.MARce(MARce), 
		.Cce(Cce), 
		.Bce(Bce), 
		.Ace(Ace), 
		.PCce(PCce), 
		.IRce(IRce), 
		.S1sel(S1sel), 
		.ALUf(ALUf), 
		.STATE(STATE), 
		.S2sel(S2sel), 
		.AEQZ(AEQZ), 
		.MW(MW), 
		.MR(MR), 
		.STOP_N(STOP_N), 
		.MAC_STATE(MAC_STATE), 
		.busy(busy), 
		.IN_INIT(IN_INIT), 
		.DINTsel(DINTsel), 
		.IR_OUT(IR_OUT), 
		.PC(PC), 
		.MAC_EN(MAC_EN), 
		.MAC_RST(MAC_RST), 
		.mul_mac(mul_mac)
   );

	initial
	CLK_IN = 1;
	always #10 CLK_IN = ~CLK_IN;

	initial begin
	STEP_IN = 0;
	RST_IN = 0;
	#41;

	RST_IN = 1;
	#100;
	RST_IN = 0;
	#60;

	//Reset test
	STEP_IN = 1;
	#300;
	STEP_IN = 0;
	#20;
	RST_IN = 1;
	#40;
	RST_IN = 0;
	#40;

	//Start Execution
	STEP_IN = 1;

	end
endmodule

