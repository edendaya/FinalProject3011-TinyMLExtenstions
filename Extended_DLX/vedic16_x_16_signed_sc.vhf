--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : vedic16_x_16_signed_sc.vhf
-- /___/   /\     Timestamp : 07/14/2025 13:00:09
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/edend/Downloads/finally_work_4_april/finally_work/vedic16_x_16_signed_sc.vhf -w C:/Users/edend/Downloads/finally_work_4_april/finally_work/vedic16_x_16_signed_sc.sch
--Design Name: vedic16_x_16_signed_sc
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

entity vedic16_x_16_signed_sc is
   port ( a   : in    std_logic_vector (31 downto 0); 
          b   : in    std_logic_vector (31 downto 0); 
          res : out   std_logic_vector (31 downto 0));
end vedic16_x_16_signed_sc;

architecture BEHAVIORAL of vedic16_x_16_signed_sc is
   attribute BOX_TYPE   : string ;
   signal c       : std_logic_vector (31 downto 0);
   signal XLXN_16 : std_logic;
   signal XLXN_17 : std_logic_vector (15 downto 0);
   signal XLXN_18 : std_logic_vector (15 downto 0);
   component twoscomplement_32bit
      port ( en       : in    std_logic; 
             in_twos  : in    std_logic_vector (31 downto 0); 
             out_twos : out   std_logic_vector (31 downto 0));
   end component;
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component vedic16_x_16_sc
      port ( a : in    std_logic_vector (15 downto 0); 
             b : in    std_logic_vector (15 downto 0); 
             c : out   std_logic_vector (31 downto 0));
   end component;
   
   component twoscomplement_16bit
      port ( en       : in    std_logic; 
             in_twos  : in    std_logic_vector (15 downto 0); 
             out_twos : out   std_logic_vector (15 downto 0));
   end component;
   
begin
   XLXI_3 : twoscomplement_32bit
      port map (en=>XLXN_16,
                in_twos(31 downto 0)=>c(31 downto 0),
                out_twos(31 downto 0)=>res(31 downto 0));
   
   XLXI_10 : XOR2
      port map (I0=>a(15),
                I1=>b(15),
                O=>XLXN_16);
   
   XLXI_11 : vedic16_x_16_sc
      port map (a(15 downto 0)=>XLXN_17(15 downto 0),
                b(15 downto 0)=>XLXN_18(15 downto 0),
                c(31 downto 0)=>c(31 downto 0));
   
   XLXI_12 : twoscomplement_16bit
      port map (en=>a(15),
                in_twos(15 downto 0)=>a(15 downto 0),
                out_twos(15 downto 0)=>XLXN_17(15 downto 0));
   
   XLXI_13 : twoscomplement_16bit
      port map (en=>b(15),
                in_twos(15 downto 0)=>b(15 downto 0),
                out_twos(15 downto 0)=>XLXN_18(15 downto 0));
   
end BEHAVIORAL;


