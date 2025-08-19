--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : control.vhf
-- /___/   /\     Timestamp : 03/10/2025 18:20:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/D4/SOURCE_VER_SUPERFINAL/control.vhf -w E:/adlx/D4/SOURCE_VER_SUPERFINAL/control.sch
--Design Name: control
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

entity control is
   port ( ack_n       : in    std_logic; 
          AEQZ        : in    std_logic; 
          CLK         : in    std_logic; 
          opcode      : in    std_logic_vector (5 downto 0); 
          RESET       : in    std_logic; 
          R_type_func : in    std_logic_vector (5 downto 0); 
          STEP_EN     : in    std_logic; 
          Ace         : out   std_logic; 
          add         : out   std_logic; 
          ALUf        : out   std_logic_vector (2 downto 0); 
          Asel        : out   std_logic; 
          as_N        : out   std_logic; 
          Bce         : out   std_logic; 
          busy        : out   std_logic; 
          busy_m      : out   std_logic; 
          Cce         : out   std_logic; 
          DINTsel     : out   std_logic_vector (1 downto 0); 
          GPR_WE      : out   std_logic; 
          IN_INIT     : out   std_logic; 
          IRce        : out   std_logic; 
          Itype       : out   std_logic; 
          Jlink       : out   std_logic; 
          MAC_EN      : out   std_logic; 
          MAC_RST     : out   std_logic; 
          MAC_state   : out   std_logic_vector (1 downto 0); 
          MARce       : out   std_logic; 
          MDR         : out   std_logic; 
          MDRsel      : out   std_logic; 
          MR          : out   std_logic; 
          mul_mac     : out   std_logic; 
          MW          : out   std_logic; 
          PCce        : out   std_logic; 
          right       : out   std_logic; 
          shift       : out   std_logic; 
          STATE       : out   std_logic_vector (4 downto 0); 
          STOP_N      : out   std_logic; 
          S1sel       : out   std_logic_vector (1 downto 0); 
          S2sel       : out   std_logic_vector (1 downto 0); 
          test        : out   std_logic; 
          wr_N        : out   std_logic);
end control;

architecture BEHAVIORAL of control is
   attribute BOX_TYPE   : string ;
   signal MR_DUMMY     : std_logic;
   signal MW_DUMMY     : std_logic;
   signal busy_m_DUMMY : std_logic;
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
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component control_FSM
      port ( CLK         : in    std_logic; 
             RESET       : in    std_logic; 
             STEP_EN     : in    std_logic; 
             busy        : in    std_logic; 
             AEQZ        : in    std_logic; 
             opcode      : in    std_logic_vector (5 downto 0); 
             R_type_func : in    std_logic_vector (5 downto 0); 
             IRce        : out   std_logic; 
             PCce        : out   std_logic; 
             Ace         : out   std_logic; 
             Bce         : out   std_logic; 
             Cce         : out   std_logic; 
             MARce       : out   std_logic; 
             MDRce       : out   std_logic; 
             MDRsel      : out   std_logic; 
             Asel        : out   std_logic; 
             shift_o     : out   std_logic; 
             right       : out   std_logic; 
             add_o       : out   std_logic; 
             test        : out   std_logic; 
             MR          : out   std_logic; 
             MW          : out   std_logic; 
             GPR_WE      : out   std_logic; 
             Itype       : out   std_logic; 
             Jlink       : out   std_logic; 
             IN_INIT     : out   std_logic; 
             MAC_EN      : out   std_logic; 
             MAC_RST     : out   std_logic; 
             mul_mac     : out   std_logic; 
             STATE_o     : out   std_logic_vector (4 downto 0); 
             ALUf        : out   std_logic_vector (2 downto 0); 
             S1sel       : out   std_logic_vector (1 downto 0); 
             S2sel       : out   std_logic_vector (1 downto 0); 
             DINTsel     : out   std_logic_vector (1 downto 0));
   end component;
   
begin
   busy_m <= busy_m_DUMMY;
   MR <= MR_DUMMY;
   MW <= MW_DUMMY;
   XLXI_1 : MAC_STATE_MACHINE
      port map (ACK_N=>ack_n,
                CLK=>CLK,
                MR=>MR_DUMMY,
                MW=>MW_DUMMY,
                RESET=>RESET,
                AS_N=>as_N,
                busy=>busy_m_DUMMY,
                STATE(1 downto 0)=>MAC_state(1 downto 0),
                STOP_N=>STOP_N,
                WR_N=>wr_N);
   
   XLXI_4 : BUF
      port map (I=>busy_m_DUMMY,
                O=>busy);
   
   XLXI_5 : control_FSM
      port map (AEQZ=>AEQZ,
                busy=>busy_m_DUMMY,
                CLK=>CLK,
                opcode(5 downto 0)=>opcode(5 downto 0),
                RESET=>RESET,
                R_type_func(5 downto 0)=>R_type_func(5 downto 0),
                STEP_EN=>STEP_EN,
                Ace=>Ace,
                add_o=>add,
                ALUf(2 downto 0)=>ALUf(2 downto 0),
                Asel=>Asel,
                Bce=>Bce,
                Cce=>Cce,
                DINTsel(1 downto 0)=>DINTsel(1 downto 0),
                GPR_WE=>GPR_WE,
                IN_INIT=>IN_INIT,
                IRce=>IRce,
                Itype=>Itype,
                Jlink=>Jlink,
                MAC_EN=>MAC_EN,
                MAC_RST=>MAC_RST,
                MARce=>MARce,
                MDRce=>MDR,
                MDRsel=>MDRsel,
                MR=>MR_DUMMY,
                mul_mac=>mul_mac,
                MW=>MW_DUMMY,
                PCce=>PCce,
                right=>right,
                shift_o=>shift,
                STATE_o(4 downto 0)=>STATE(4 downto 0),
                S1sel(1 downto 0)=>S1sel(1 downto 0),
                S2sel(1 downto 0)=>S2sel(1 downto 0),
                test=>test);
   
end BEHAVIORAL;


