--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : readmachinem.vhf
-- /___/   /\     Timestamp : 12/12/2024 14:22:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/D4/SOURCE_VER/readmachinem.vhf -w E:/adlx/D4/SOURCE_VER/readmachinem.sch
--Design Name: readmachinem
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

entity readmachinem is
   port ( ack_n          : in    std_logic; 
          clk            : in    std_logic; 
          DI             : in    std_logic_vector (31 downto 0); 
          reset          : in    std_logic; 
          step_en        : in    std_logic; 
          ADDRESS_CNT_CE : out   std_logic; 
          AS_N           : out   std_logic; 
          CNT            : out   std_logic_vector (4 downto 0); 
          CURR_STATE     : out   std_logic_vector (1 downto 0); 
          IN_INIT        : out   std_logic; 
          RDO            : out   std_logic_vector (31 downto 0); 
          STOP_N         : out   std_logic; 
          WR_N           : out   std_logic);
end readmachinem;

architecture BEHAVIORAL of readmachinem is
   attribute BOX_TYPE   : string ;
   signal ack_not              : std_logic;
   signal ADDRESS_CNT_CE_DUMMY : std_logic;
   component READ_M
      port ( STEP_EN          : in    std_logic; 
             ACK_N            : in    std_logic; 
             RESET            : in    std_logic; 
             CLK              : in    std_logic; 
             WR_N_o           : out   std_logic; 
             STOP_N_o         : out   std_logic; 
             IN_INIT_o        : out   std_logic; 
             AS_N_o           : out   std_logic; 
             Address_CNT_CE_o : out   std_logic; 
             CURR_STATE_o     : out   std_logic_vector (1 downto 0));
   end component;
   
   component CNT5
      port ( CLK : in    std_logic; 
             RST : in    std_logic; 
             CE  : in    std_logic; 
             CNT : out   std_logic_vector (4 downto 0));
   end component;
   
   component REG32CE
      port ( CLK : in    std_logic; 
             CE  : in    std_logic; 
             DI  : in    std_logic_vector (31 downto 0); 
             DO  : out   std_logic_vector (31 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   ADDRESS_CNT_CE <= ADDRESS_CNT_CE_DUMMY;
   XLXI_1 : READ_M
      port map (ACK_N=>ack_n,
                CLK=>clk,
                RESET=>reset,
                STEP_EN=>step_en,
                Address_CNT_CE_o=>ADDRESS_CNT_CE_DUMMY,
                AS_N_o=>AS_N,
                CURR_STATE_o(1 downto 0)=>CURR_STATE(1 downto 0),
                IN_INIT_o=>IN_INIT,
                STOP_N_o=>STOP_N,
                WR_N_o=>WR_N);
   
   XLXI_2 : CNT5
      port map (CE=>ADDRESS_CNT_CE_DUMMY,
                CLK=>clk,
                RST=>reset,
                CNT(4 downto 0)=>CNT(4 downto 0));
   
   XLXI_3 : REG32CE
      port map (CE=>ack_not,
                CLK=>clk,
                DI(31 downto 0)=>DI(31 downto 0),
                DO(31 downto 0)=>RDO(31 downto 0));
   
   XLXI_7 : INV
      port map (I=>ack_n,
                O=>ack_not);
   
end BEHAVIORAL;


