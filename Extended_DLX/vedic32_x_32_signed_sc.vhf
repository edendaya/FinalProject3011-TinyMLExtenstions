--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : vedic32_x_32_signed_sc.vhf
-- /___/   /\     Timestamp : 03/04/2025 12:10:14
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/D4/SOURCE_VER/vedic32_x_32_signed_sc.vhf -w E:/adlx/D4/SOURCE_VER/vedic32_x_32_signed_sc.sch
--Design Name: vedic32_x_32_signed_sc
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

entity vedic32_x_32_signed_sc is
   port ( a   : in    std_logic_vector (31 downto 0); 
          b   : in    std_logic_vector (31 downto 0); 
          res : out   std_logic_vector (31 downto 0));
end vedic32_x_32_signed_sc;

architecture BEHAVIORAL of vedic32_x_32_signed_sc is
   attribute BOX_TYPE   : string ;
   signal c       : std_logic_vector (63 downto 0);
   signal XLXN_7  : std_logic_vector (31 downto 0);
   signal XLXN_9  : std_logic_vector (31 downto 0);
   signal XLXN_16 : std_logic;
   component twoscomplement_32bit
      port ( en       : in    std_logic; 
             in_twos  : in    std_logic_vector (31 downto 0); 
             out_twos : out   std_logic_vector (31 downto 0));
   end component;
   
   component vedic32_x_32_sc
      port ( a : in    std_logic_vector (31 downto 0); 
             b : in    std_logic_vector (31 downto 0); 
             c : out   std_logic_vector (63 downto 0));
   end component;
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : twoscomplement_32bit
      port map (en=>a(31),
                in_twos(31 downto 0)=>a(31 downto 0),
                out_twos(31 downto 0)=>XLXN_7(31 downto 0));
   
   XLXI_2 : twoscomplement_32bit
      port map (en=>b(31),
                in_twos(31 downto 0)=>b(31 downto 0),
                out_twos(31 downto 0)=>XLXN_9(31 downto 0));
   
   XLXI_4 : twoscomplement_32bit
      port map (en=>XLXN_16,
                in_twos(31 downto 0)=>c(31 downto 0),
                out_twos(31 downto 0)=>res(31 downto 0));
   
   XLXI_8 : vedic32_x_32_sc
      port map (a(31 downto 0)=>XLXN_7(31 downto 0),
                b(31 downto 0)=>XLXN_9(31 downto 0),
                c(63 downto 0)=>c(63 downto 0));
   
   XLXI_10 : XOR2
      port map (I0=>a(31),
                I1=>b(31),
                O=>XLXN_16);
   
end BEHAVIORAL;


