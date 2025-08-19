--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : halfadder_sc.vhf
-- /___/   /\     Timestamp : 07/14/2025 13:00:08
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/edend/Downloads/finally_work_4_april/finally_work/halfadder_sc.vhf -w C:/Users/edend/Downloads/finally_work_4_april/finally_work/halfadder_sc.sch
--Design Name: halfadder_sc
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

entity halfadder_sc is
   port ( a     : in    std_logic; 
          b     : in    std_logic; 
          carry : out   std_logic; 
          sum   : out   std_logic);
end halfadder_sc;

architecture BEHAVIORAL of halfadder_sc is
   attribute BOX_TYPE   : string ;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>a,
                I1=>b,
                O=>carry);
   
   XLXI_2 : XOR2
      port map (I0=>b,
                I1=>a,
                O=>sum);
   
end BEHAVIORAL;


