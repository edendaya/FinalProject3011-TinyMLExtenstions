--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : LSM.vhf
-- /___/   /\     Timestamp : 12/26/2024 19:08:39
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/D4/SOURCE_VER/LSM.vhf -w E:/adlx/D4/SOURCE_VER/LSM.sch
--Design Name: LSM
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity GPR_ENVIR_MUSER_LSM is
   port ( Aadr   : in    std_logic_vector (4 downto 0); 
          Badr   : in    std_logic_vector (4 downto 0); 
          C      : in    std_logic_vector (31 downto 0); 
          Cadr   : in    std_logic_vector (4 downto 0); 
          CLK    : in    std_logic; 
          Dadr   : in    std_logic_vector (4 downto 0); 
          GPR_WE : in    std_logic; 
          A      : out   std_logic_vector (31 downto 0); 
          AEQZ_O : out   std_logic; 
          B      : out   std_logic_vector (31 downto 0); 
          D      : out   std_logic_vector (31 downto 0));
end GPR_ENVIR_MUSER_LSM;

architecture BEHAVIORAL of GPR_ENVIR_MUSER_LSM is
   attribute BOX_TYPE   : string ;
   signal DO_A    : std_logic_vector (31 downto 0);
   signal DO_B    : std_logic_vector (31 downto 0);
   signal DO_D    : std_logic_vector (31 downto 0);
   signal MUX_O_A : std_logic_vector (4 downto 0);
   signal MUX_O_B : std_logic_vector (4 downto 0);
   signal MUX_O_D : std_logic_vector (4 downto 0);
   signal OR_O_A  : std_logic;
   signal OR_O_B  : std_logic;
   signal OR_O_D  : std_logic;
   signal A_DUMMY : std_logic_vector (31 downto 0);
   component RAM32x32
      port ( CLK  : in    std_logic; 
             WE   : in    std_logic; 
             ADDR : in    std_logic_vector (4 downto 0); 
             DI   : in    std_logic_vector (31 downto 0); 
             DO   : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX_5to5
      port ( S0 : in    std_logic; 
             D0 : in    std_logic_vector (4 downto 0); 
             D1 : in    std_logic_vector (4 downto 0); 
             O  : out   std_logic_vector (4 downto 0));
   end component;
   
   component AEQZ
      port ( A     : in    std_logic_vector (31 downto 0); 
             A_eqz : out   std_logic);
   end component;
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component AND32WITH
      port ( pullD : in    std_logic; 
             Din   : in    std_logic_vector (31 downto 0); 
             Dout  : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   A(31 downto 0) <= A_DUMMY(31 downto 0);
   XLXI_1 : RAM32x32
      port map (ADDR(4 downto 0)=>MUX_O_A(4 downto 0),
                CLK=>CLK,
                DI(31 downto 0)=>C(31 downto 0),
                WE=>GPR_WE,
                DO(31 downto 0)=>DO_A(31 downto 0));
   
   XLXI_4 : MUX_5to5
      port map (D0(4 downto 0)=>Aadr(4 downto 0),
                D1(4 downto 0)=>Cadr(4 downto 0),
                S0=>GPR_WE,
                O(4 downto 0)=>MUX_O_A(4 downto 0));
   
   XLXI_25 : AEQZ
      port map (A(31 downto 0)=>A_DUMMY(31 downto 0),
                A_eqz=>AEQZ_O);
   
   XLXI_26 : RAM32x32
      port map (ADDR(4 downto 0)=>MUX_O_B(4 downto 0),
                CLK=>CLK,
                DI(31 downto 0)=>C(31 downto 0),
                WE=>GPR_WE,
                DO(31 downto 0)=>DO_B(31 downto 0));
   
   XLXI_27 : RAM32x32
      port map (ADDR(4 downto 0)=>MUX_O_D(4 downto 0),
                CLK=>CLK,
                DI(31 downto 0)=>C(31 downto 0),
                WE=>GPR_WE,
                DO(31 downto 0)=>DO_D(31 downto 0));
   
   XLXI_35 : MUX_5to5
      port map (D0(4 downto 0)=>Badr(4 downto 0),
                D1(4 downto 0)=>Cadr(4 downto 0),
                S0=>GPR_WE,
                O(4 downto 0)=>MUX_O_B(4 downto 0));
   
   XLXI_36 : MUX_5to5
      port map (D0(4 downto 0)=>Dadr(4 downto 0),
                D1(4 downto 0)=>Cadr(4 downto 0),
                S0=>GPR_WE,
                O(4 downto 0)=>MUX_O_D(4 downto 0));
   
   XLXI_61 : OR5
      port map (I0=>MUX_O_A(4),
                I1=>MUX_O_A(3),
                I2=>MUX_O_A(2),
                I3=>MUX_O_A(1),
                I4=>MUX_O_A(0),
                O=>OR_O_A);
   
   XLXI_62 : OR5
      port map (I0=>MUX_O_B(4),
                I1=>MUX_O_B(3),
                I2=>MUX_O_B(2),
                I3=>MUX_O_B(1),
                I4=>MUX_O_B(0),
                O=>OR_O_B);
   
   XLXI_63 : OR5
      port map (I0=>MUX_O_D(4),
                I1=>MUX_O_D(3),
                I2=>MUX_O_D(2),
                I3=>MUX_O_D(1),
                I4=>MUX_O_D(0),
                O=>OR_O_D);
   
   XLXI_65 : AND32WITH
      port map (Din(31 downto 0)=>DO_A(31 downto 0),
                pullD=>OR_O_A,
                Dout(31 downto 0)=>A_DUMMY(31 downto 0));
   
   XLXI_66 : AND32WITH
      port map (Din(31 downto 0)=>DO_B(31 downto 0),
                pullD=>OR_O_B,
                Dout(31 downto 0)=>B(31 downto 0));
   
   XLXI_67 : AND32WITH
      port map (Din(31 downto 0)=>DO_D(31 downto 0),
                pullD=>OR_O_D,
                Dout(31 downto 0)=>D(31 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity datapath_lab5_MUSER_LSM is
   port ( A_EN       : in    std_logic; 
          B_EN       : in    std_logic; 
          CLK        : in    std_logic; 
          C_EN       : in    std_logic; 
          Dadr       : in    std_logic_vector (4 downto 0); 
          Din        : in    std_logic_vector (31 downto 0); 
          GPR_WE     : in    std_logic; 
          IR_EN      : in    std_logic; 
          MUX_Select : in    std_logic; 
          PC_EN      : in    std_logic; 
          RESET      : in    std_logic; 
          AEQZ       : out   std_logic; 
          AO         : out   std_logic_vector (31 downto 0); 
          A_OUT      : out   std_logic_vector (31 downto 0); 
          B_OUT      : out   std_logic_vector (31 downto 0); 
          D          : out   std_logic_vector (31 downto 0); 
          opcode     : out   std_logic_vector (5 downto 0); 
          PC         : out   std_logic_vector (15 downto 0));
end datapath_lab5_MUSER_LSM;

architecture BEHAVIORAL of datapath_lab5_MUSER_LSM is
   signal A          : std_logic_vector (31 downto 0);
   signal Aadr       : std_logic_vector (4 downto 0);
   signal AOM        : std_logic_vector (15 downto 0);
   signal B          : std_logic_vector (31 downto 0);
   signal Badr       : std_logic_vector (4 downto 0);
   signal C          : std_logic_vector (31 downto 0);
   signal Cadr       : std_logic_vector (4 downto 0);
   signal imm        : std_logic_vector (15 downto 0);
   signal PC_DUMMY   : std_logic_vector (15 downto 0);
   component REG32CE
      port ( CLK : in    std_logic; 
             CE  : in    std_logic; 
             DI  : in    std_logic_vector (31 downto 0); 
             DO  : out   std_logic_vector (31 downto 0));
   end component;
   
   component PC_ENV
      port ( PC_EN : in    std_logic; 
             CLK   : in    std_logic; 
             RESET : in    std_logic; 
             PC    : out   std_logic_vector (15 downto 0));
   end component;
   
   component MUX16bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (15 downto 0); 
             B   : in    std_logic_vector (15 downto 0); 
             O   : out   std_logic_vector (15 downto 0));
   end component;
   
   component MMU
      port ( MMU_IN : in    std_logic_vector (15 downto 0); 
             AO     : out   std_logic_vector (31 downto 0));
   end component;
   
   component GPR_ENVIR_MUSER_LSM
      port ( CLK    : in    std_logic; 
             GPR_WE : in    std_logic; 
             C      : in    std_logic_vector (31 downto 0); 
             Cadr   : in    std_logic_vector (4 downto 0); 
             Aadr   : in    std_logic_vector (4 downto 0); 
             Badr   : in    std_logic_vector (4 downto 0); 
             Dadr   : in    std_logic_vector (4 downto 0); 
             A      : out   std_logic_vector (31 downto 0); 
             B      : out   std_logic_vector (31 downto 0); 
             D      : out   std_logic_vector (31 downto 0); 
             AEQZ_O : out   std_logic);
   end component;
   
   component IR_ENV
      port ( CLK    : in    std_logic; 
             IR_EN  : in    std_logic; 
             Din    : in    std_logic_vector (31 downto 0); 
             Aadr   : out   std_logic_vector (4 downto 0); 
             Badr   : out   std_logic_vector (4 downto 0); 
             Cadr   : out   std_logic_vector (4 downto 0); 
             imm    : out   std_logic_vector (15 downto 0); 
             opcode : out   std_logic_vector (5 downto 0));
   end component;
   
begin
   PC(15 downto 0) <= PC_DUMMY(15 downto 0);
   REGB : REG32CE
      port map (CE=>C_EN,
                CLK=>CLK,
                DI(31 downto 0)=>Din(31 downto 0),
                DO(31 downto 0)=>C(31 downto 0));
   
   XLXI_2 : PC_ENV
      port map (CLK=>CLK,
                PC_EN=>PC_EN,
                RESET=>RESET,
                PC(15 downto 0)=>PC_DUMMY(15 downto 0));
   
   XLXI_9 : MUX16bit
      port map (A(15 downto 0)=>PC_DUMMY(15 downto 0),
                B(15 downto 0)=>imm(15 downto 0),
                sel=>MUX_Select,
                O(15 downto 0)=>AOM(15 downto 0));
   
   XLXI_11 : REG32CE
      port map (CE=>A_EN,
                CLK=>CLK,
                DI(31 downto 0)=>A(31 downto 0),
                DO(31 downto 0)=>A_OUT(31 downto 0));
   
   XLXI_12 : REG32CE
      port map (CE=>B_EN,
                CLK=>CLK,
                DI(31 downto 0)=>B(31 downto 0),
                DO(31 downto 0)=>B_OUT(31 downto 0));
   
   XLXI_51 : MMU
      port map (MMU_IN(15 downto 0)=>AOM(15 downto 0),
                AO(31 downto 0)=>AO(31 downto 0));
   
   XLXI_54 : GPR_ENVIR_MUSER_LSM
      port map (Aadr(4 downto 0)=>Aadr(4 downto 0),
                Badr(4 downto 0)=>Badr(4 downto 0),
                C(31 downto 0)=>C(31 downto 0),
                Cadr(4 downto 0)=>Cadr(4 downto 0),
                CLK=>CLK,
                Dadr(4 downto 0)=>Dadr(4 downto 0),
                GPR_WE=>GPR_WE,
                A(31 downto 0)=>A(31 downto 0),
                AEQZ_O=>AEQZ,
                B(31 downto 0)=>B(31 downto 0),
                D(31 downto 0)=>D(31 downto 0));
   
   XLXI_55 : IR_ENV
      port map (CLK=>CLK,
                Din(31 downto 0)=>Din(31 downto 0),
                IR_EN=>IR_EN,
                Aadr(4 downto 0)=>Aadr(4 downto 0),
                Badr(4 downto 0)=>Badr(4 downto 0),
                Cadr(4 downto 0)=>Cadr(4 downto 0),
                imm(15 downto 0)=>imm(15 downto 0),
                opcode(5 downto 0)=>opcode(5 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CONTROL_MUSER_LSM is
   port ( ACK_N     : in    std_logic; 
          clock     : in    std_logic; 
          opcode    : in    std_logic_vector (5 downto 0); 
          reset     : in    std_logic; 
          STEP_EN   : in    std_logic; 
          AS_N      : out   std_logic; 
          busy      : out   std_logic; 
          GPR_EN    : out   std_logic; 
          IN_INIT   : out   std_logic; 
          IR_EN     : out   std_logic; 
          MAC_STATE : out   std_logic_vector (1 downto 0); 
          MR        : out   std_logic; 
          Mux_sel   : out   std_logic; 
          MW        : out   std_logic; 
          PC_STEP   : out   std_logic; 
          REG_A_EN  : out   std_logic; 
          REG_B_EN  : out   std_logic; 
          REG_C_EN  : out   std_logic; 
          req       : out   std_logic; 
          SM_STATE  : out   std_logic_vector (2 downto 0); 
          STOP_N    : out   std_logic; 
          WR_N      : out   std_logic);
end CONTROL_MUSER_LSM;

architecture BEHAVIORAL of CONTROL_MUSER_LSM is
   signal busy_DUMMY : std_logic;
   signal MR_DUMMY   : std_logic;
   signal MW_DUMMY   : std_logic;
   component MAC_STATE_MACHINE
      port ( CLK    : in    std_logic; 
             RESET  : in    std_logic; 
             MR     : in    std_logic; 
             MW     : in    std_logic; 
             ACK_N  : in    std_logic; 
             busy   : out   std_logic; 
             AS_N   : out   std_logic; 
             WR_N   : out   std_logic; 
             STOP_N : out   std_logic; 
             STATE  : out   std_logic_vector (1 downto 0));
   end component;
   
   component SM_LOAD_STORE
      port ( STEP_EN    : in    std_logic; 
             CLK        : in    std_logic; 
             RESET      : in    std_logic; 
             busy       : in    std_logic; 
             Opcode     : in    std_logic_vector (5 downto 0); 
             IR_EN_o    : out   std_logic; 
             GPR_EN_o   : out   std_logic; 
             mux_sel_o  : out   std_logic; 
             reg_A_EN_o : out   std_logic; 
             reg_B_EN_o : out   std_logic; 
             reg_C_EN_o : out   std_logic; 
             IN_INIT_o  : out   std_logic; 
             PC_STEP_o  : out   std_logic; 
             REQ_o      : out   std_logic; 
             MR_o       : out   std_logic; 
             MW_o       : out   std_logic; 
             STATE_o    : out   std_logic_vector (2 downto 0));
   end component;
   
begin
   busy <= busy_DUMMY;
   MR <= MR_DUMMY;
   MW <= MW_DUMMY;
   XLXI_1 : MAC_STATE_MACHINE
      port map (ACK_N=>ACK_N,
                CLK=>clock,
                MR=>MR_DUMMY,
                MW=>MW_DUMMY,
                RESET=>reset,
                AS_N=>AS_N,
                busy=>busy_DUMMY,
                STATE(1 downto 0)=>MAC_STATE(1 downto 0),
                STOP_N=>STOP_N,
                WR_N=>WR_N);
   
   XLXI_2 : SM_LOAD_STORE
      port map (busy=>busy_DUMMY,
                CLK=>clock,
                Opcode(5 downto 0)=>opcode(5 downto 0),
                RESET=>reset,
                STEP_EN=>STEP_EN,
                GPR_EN_o=>GPR_EN,
                IN_INIT_o=>IN_INIT,
                IR_EN_o=>IR_EN,
                MR_o=>MR_DUMMY,
                mux_sel_o=>Mux_sel,
                MW_o=>MW_DUMMY,
                PC_STEP_o=>PC_STEP,
                reg_A_EN_o=>REG_A_EN,
                reg_B_EN_o=>REG_B_EN,
                reg_C_EN_o=>REG_C_EN,
                REQ_o=>req,
                STATE_o(2 downto 0)=>SM_STATE(2 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LSM is
   port ( ACK_N     : in    std_logic; 
          CLK       : in    std_logic; 
          Dadr      : in    std_logic_vector (4 downto 0); 
          Din       : in    std_logic_vector (31 downto 0); 
          RESET     : in    std_logic; 
          STEP_EN   : in    std_logic; 
          AEQZ      : out   std_logic; 
          AO        : out   std_logic_vector (31 downto 0); 
          AO_MUXSEL : out   std_logic; 
          AS_N      : out   std_logic; 
          A_OUT     : out   std_logic_vector (31 downto 0); 
          A_WE      : out   std_logic; 
          BUSY      : out   std_logic; 
          B_OUT     : out   std_logic_vector (31 downto 0); 
          B_WE      : out   std_logic; 
          C_WE      : out   std_logic; 
          DLX_STATE : out   std_logic_vector (2 downto 0); 
          DRAM_OUT  : out   std_logic_vector (31 downto 0); 
          GPR_WE    : out   std_logic; 
          INC_PC    : out   std_logic; 
          IN_INIT   : out   std_logic; 
          IR_WE     : out   std_logic; 
          MAC_STATE : out   std_logic_vector (1 downto 0); 
          MR        : out   std_logic; 
          MW        : out   std_logic; 
          PC        : out   std_logic_vector (15 downto 0); 
          REQ       : out   std_logic; 
          STOP_N    : out   std_logic; 
          WR_N      : out   std_logic);
end LSM;

architecture BEHAVIORAL of LSM is
   signal opcode          : std_logic_vector (5 downto 0);
   signal INC_PC_DUMMY    : std_logic;
   signal AO_MUXSEL_DUMMY : std_logic;
   signal A_WE_DUMMY      : std_logic;
   signal B_WE_DUMMY      : std_logic;
   signal GPR_WE_DUMMY    : std_logic;
   signal C_WE_DUMMY      : std_logic;
   signal IR_WE_DUMMY     : std_logic;
   component CONTROL_MUSER_LSM
      port ( STEP_EN   : in    std_logic; 
             clock     : in    std_logic; 
             reset     : in    std_logic; 
             opcode    : in    std_logic_vector (5 downto 0); 
             ACK_N     : in    std_logic; 
             IR_EN     : out   std_logic; 
             GPR_EN    : out   std_logic; 
             Mux_sel   : out   std_logic; 
             REG_A_EN  : out   std_logic; 
             REG_B_EN  : out   std_logic; 
             REG_C_EN  : out   std_logic; 
             IN_INIT   : out   std_logic; 
             PC_STEP   : out   std_logic; 
             req       : out   std_logic; 
             MR        : out   std_logic; 
             MW        : out   std_logic; 
             SM_STATE  : out   std_logic_vector (2 downto 0); 
             busy      : out   std_logic; 
             AS_N      : out   std_logic; 
             WR_N      : out   std_logic; 
             STOP_N    : out   std_logic; 
             MAC_STATE : out   std_logic_vector (1 downto 0));
   end component;
   
   component datapath_lab5_MUSER_LSM
      port ( CLK        : in    std_logic; 
             Din        : in    std_logic_vector (31 downto 0); 
             A_EN       : in    std_logic; 
             B_EN       : in    std_logic; 
             C_EN       : in    std_logic; 
             IR_EN      : in    std_logic; 
             PC_EN      : in    std_logic; 
             GPR_WE     : in    std_logic; 
             Dadr       : in    std_logic_vector (4 downto 0); 
             MUX_Select : in    std_logic; 
             RESET      : in    std_logic; 
             D          : out   std_logic_vector (31 downto 0); 
             AEQZ       : out   std_logic; 
             PC         : out   std_logic_vector (15 downto 0); 
             AO         : out   std_logic_vector (31 downto 0); 
             A_OUT      : out   std_logic_vector (31 downto 0); 
             B_OUT      : out   std_logic_vector (31 downto 0); 
             opcode     : out   std_logic_vector (5 downto 0));
   end component;
   
begin
   AO_MUXSEL <= AO_MUXSEL_DUMMY;
   A_WE <= A_WE_DUMMY;
   B_WE <= B_WE_DUMMY;
   C_WE <= C_WE_DUMMY;
   GPR_WE <= GPR_WE_DUMMY;
   INC_PC <= INC_PC_DUMMY;
   IR_WE <= IR_WE_DUMMY;
   XLXI_1 : CONTROL_MUSER_LSM
      port map (ACK_N=>ACK_N,
                clock=>CLK,
                opcode(5 downto 0)=>opcode(5 downto 0),
                reset=>RESET,
                STEP_EN=>STEP_EN,
                AS_N=>AS_N,
                busy=>BUSY,
                GPR_EN=>GPR_WE_DUMMY,
                IN_INIT=>IN_INIT,
                IR_EN=>IR_WE_DUMMY,
                MAC_STATE(1 downto 0)=>MAC_STATE(1 downto 0),
                MR=>MR,
                Mux_sel=>AO_MUXSEL_DUMMY,
                MW=>MW,
                PC_STEP=>INC_PC_DUMMY,
                REG_A_EN=>A_WE_DUMMY,
                REG_B_EN=>B_WE_DUMMY,
                REG_C_EN=>C_WE_DUMMY,
                req=>REQ,
                SM_STATE(2 downto 0)=>DLX_STATE(2 downto 0),
                STOP_N=>STOP_N,
                WR_N=>WR_N);
   
   XLXI_2 : datapath_lab5_MUSER_LSM
      port map (A_EN=>A_WE_DUMMY,
                B_EN=>B_WE_DUMMY,
                CLK=>CLK,
                C_EN=>C_WE_DUMMY,
                Dadr(4 downto 0)=>Dadr(4 downto 0),
                Din(31 downto 0)=>Din(31 downto 0),
                GPR_WE=>GPR_WE_DUMMY,
                IR_EN=>IR_WE_DUMMY,
                MUX_Select=>AO_MUXSEL_DUMMY,
                PC_EN=>INC_PC_DUMMY,
                RESET=>RESET,
                AEQZ=>AEQZ,
                AO(31 downto 0)=>AO(31 downto 0),
                A_OUT(31 downto 0)=>A_OUT(31 downto 0),
                B_OUT(31 downto 0)=>B_OUT(31 downto 0),
                D(31 downto 0)=>DRAM_OUT(31 downto 0),
                opcode(5 downto 0)=>opcode(5 downto 0),
                PC(15 downto 0)=>PC(15 downto 0));
   
end BEHAVIORAL;


