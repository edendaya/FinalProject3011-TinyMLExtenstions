--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : fulladd_sc.vhf
-- /___/   /\     Timestamp : 07/14/2025 12:52:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/edend/Downloads/finally_work_4_april/finally_work/fulladd_sc.vhf -w C:/Users/edend/Downloads/finally_work_4_april/finally_work/fulladd_sc.sch
--Design Name: fulladd_sc
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

entity fulladd_sc is
   port ( a     : in    std_logic; 
          b     : in    std_logic; 
          c     : in    std_logic; 
          carry : out   std_logic; 
          sum   : out   std_logic);
end fulladd_sc;

architecture BEHAVIORAL of fulladd_sc is
   attribute BOX_TYPE   : string ;
   signal a_xor_b : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
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
   
begin
   XLXI_1 : XOR2
      port map (I0=>c,
                I1=>a_xor_b,
                O=>sum);
   
   XLXI_2 : AND2
      port map (I0=>a_xor_b,
                I1=>c,
                O=>XLXN_19);
   
   XLXI_3 : AND2
      port map (I0=>a,
                I1=>b,
                O=>XLXN_20);
   
   XLXI_4 : OR2
      port map (I0=>XLXN_20,
                I1=>XLXN_19,
                O=>carry);
   
   XLXI_5 : XOR2
      port map (I0=>b,
                I1=>a,
                O=>a_xor_b);
   
end BEHAVIORAL;


