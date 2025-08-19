--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : write_machinem.vhf
-- /___/   /\     Timestamp : 12/09/2024 16:14:58
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/D4/SOURCE_VER/write_machinem.vhf -w E:/adlx/D4/SOURCE_VER/write_machinem.sch
--Design Name: write_machinem
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

entity write_machinem is
   port ( ack_n          : in    std_logic; 
          clk            : in    std_logic; 
          reset          : in    std_logic; 
          step_en        : in    std_logic; 
          ADDRESS_CNT_CE : out   std_logic; 
          AS_N           : out   std_logic; 
          CNT            : out   std_logic_vector (4 downto 0); 
          CURR_STATE     : out   std_logic_vector (1 downto 0); 
          ID             : out   std_logic_vector (7 downto 0); 
          INI_INIT       : out   std_logic; 
          STOP_N         : out   std_logic; 
          WR_N           : out   std_logic);
end write_machinem;

architecture BEHAVIORAL of write_machinem is
   signal ADDRESS_CNT_CE_DUMMY : std_logic;
   component ID_NUM
      port ( ID : out   std_logic_vector (7 downto 0));
   end component;
   
   component CNT5
      port ( CLK : in    std_logic; 
             RST : in    std_logic; 
             CE  : in    std_logic; 
             CNT : out   std_logic_vector (4 downto 0));
   end component;
   
   component Write_M
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
   
begin
   ADDRESS_CNT_CE <= ADDRESS_CNT_CE_DUMMY;
   XLXI_3 : ID_NUM
      port map (ID(7 downto 0)=>ID(7 downto 0));
   
   XLXI_4 : CNT5
      port map (CE=>ADDRESS_CNT_CE_DUMMY,
                CLK=>clk,
                RST=>reset,
                CNT(4 downto 0)=>CNT(4 downto 0));
   
   XLXI_5 : Write_M
      port map (ACK_N=>ack_n,
                CLK=>clk,
                RESET=>reset,
                STEP_EN=>step_en,
                Address_CNT_CE_o=>ADDRESS_CNT_CE_DUMMY,
                AS_N_o=>AS_N,
                CURR_STATE_o(1 downto 0)=>CURR_STATE(1 downto 0),
                IN_INIT_o=>INI_INIT,
                STOP_N_o=>STOP_N,
                WR_N_o=>WR_N);
   
end BEHAVIORAL;


