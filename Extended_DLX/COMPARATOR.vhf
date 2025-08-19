--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : COMPARATOR.vhf
-- /___/   /\     Timestamp : 01/09/2025 13:44:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/D4/SOURCE_VER/COMPARATOR.vhf -w E:/adlx/D4/SOURCE_VER/COMPARATOR.sch
--Design Name: COMPARATOR
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

entity COMPARATOR is
   port ( ALUF     : in    std_logic_vector (2 downto 0); 
          neg      : in    std_logic; 
          S        : in    std_logic_vector (31 downto 0); 
          COMP_OUT : out   std_logic);
end COMPARATOR;

architecture BEHAVIORAL of COMPARATOR is
   attribute BOX_TYPE   : string ;
   signal is_zero  : std_logic;
   signal XLXN_8   : std_logic;
   signal XLXN_10  : std_logic;
   signal XLXN_11  : std_logic;
   signal XLXN_13  : std_logic;
   signal XLXN_15  : std_logic;
   signal XLXN_20  : std_logic;
   signal XLXN_21  : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component ISZERO32
      port ( inputim : in    std_logic_vector (31 downto 0); 
             is_zero : out   std_logic);
   end component;
   
begin
   XLXI_1 : AND2
      port map (I0=>ALUF(1),
                I1=>is_zero,
                O=>XLXN_20);
   
   XLXI_2 : AND2
      port map (I0=>ALUF(2),
                I1=>neg,
                O=>XLXN_21);
   
   XLXI_3 : AND2
      port map (I0=>ALUF(0),
                I1=>XLXN_8,
                O=>XLXN_11);
   
   XLXI_4 : AND2
      port map (I0=>XLXN_11,
                I1=>XLXN_10,
                O=>XLXN_15);
   
   XLXI_7 : OR2
      port map (I0=>XLXN_21,
                I1=>XLXN_20,
                O=>XLXN_13);
   
   XLXI_8 : OR2
      port map (I0=>XLXN_15,
                I1=>XLXN_13,
                O=>COMP_OUT);
   
   XLXI_21 : INV
      port map (I=>is_zero,
                O=>XLXN_10);
   
   XLXI_29 : INV
      port map (I=>neg,
                O=>XLXN_8);
   
   XLXI_30 : ISZERO32
      port map (inputim(31 downto 0)=>S(31 downto 0),
                is_zero=>is_zero);
   
end BEHAVIORAL;


