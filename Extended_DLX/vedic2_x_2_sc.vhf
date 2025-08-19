--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : vedic2_x_2_sc.vhf
-- /___/   /\     Timestamp : 07/14/2025 13:00:12
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/edend/Downloads/finally_work_4_april/finally_work/vedic2_x_2_sc.vhf -w C:/Users/edend/Downloads/finally_work_4_april/finally_work/vedic2_x_2_sc.sch
--Design Name: vedic2_x_2_sc
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

entity halfadder_sc_MUSER_vedic2_x_2_sc is
   port ( a     : in    std_logic; 
          b     : in    std_logic; 
          carry : out   std_logic; 
          sum   : out   std_logic);
end halfadder_sc_MUSER_vedic2_x_2_sc;

architecture BEHAVIORAL of halfadder_sc_MUSER_vedic2_x_2_sc is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity vedic2_x_2_sc is
   port ( a : in    std_logic_vector (1 downto 0); 
          b : in    std_logic_vector (1 downto 0); 
          q : out   std_logic_vector (3 downto 0));
end vedic2_x_2_sc;

architecture BEHAVIORAL of vedic2_x_2_sc is
   attribute BOX_TYPE   : string ;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_24 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component halfadder_sc_MUSER_vedic2_x_2_sc
      port ( a     : in    std_logic; 
             b     : in    std_logic; 
             sum   : out   std_logic; 
             carry : out   std_logic);
   end component;
   
begin
   XLXI_1 : AND2
      port map (I0=>b(0),
                I1=>a(0),
                O=>q(0));
   
   XLXI_2 : AND2
      port map (I0=>b(0),
                I1=>a(1),
                O=>XLXN_24);
   
   XLXI_3 : AND2
      port map (I0=>b(1),
                I1=>a(0),
                O=>XLXN_13);
   
   XLXI_4 : AND2
      port map (I0=>b(1),
                I1=>a(1),
                O=>XLXN_14);
   
   XLXI_5 : halfadder_sc_MUSER_vedic2_x_2_sc
      port map (a=>XLXN_24,
                b=>XLXN_13,
                carry=>XLXN_19,
                sum=>q(1));
   
   XLXI_6 : halfadder_sc_MUSER_vedic2_x_2_sc
      port map (a=>XLXN_19,
                b=>XLXN_14,
                carry=>q(3),
                sum=>q(2));
   
end BEHAVIORAL;


