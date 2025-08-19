--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : IR_DLX.vhf
-- /___/   /\     Timestamp : 03/03/2025 19:18:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/D4/SOURCE_VER/IR_DLX.vhf -w E:/adlx/D4/SOURCE_VER/IR_DLX.sch
--Design Name: IR_DLX
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

entity IR_DLX is
   port ( CLK          : in    std_logic; 
          DI           : in    std_logic_vector (31 downto 0); 
          IRce         : in    std_logic; 
          Itype        : in    std_logic; 
          Aaddr        : out   std_logic_vector (4 downto 0); 
          Baddr        : out   std_logic_vector (4 downto 0); 
          Caddr        : out   std_logic_vector (4 downto 0); 
          imm_extended : out   std_logic_vector (31 downto 0); 
          IR_OUT       : out   std_logic_vector (31 downto 0));
end IR_DLX;

architecture BEHAVIORAL of IR_DLX is
   signal IR_OUT_DUMMY : std_logic_vector (31 downto 0);
   component REG32CE
      port ( CLK : in    std_logic; 
             CE  : in    std_logic; 
             DI  : in    std_logic_vector (31 downto 0); 
             DO  : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX5bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (4 downto 0); 
             B   : in    std_logic_vector (4 downto 0); 
             O   : out   std_logic_vector (4 downto 0));
   end component;
   
   component BUF5
      port ( I : in    std_logic_vector (4 downto 0); 
             O : out   std_logic_vector (4 downto 0));
   end component;
   
   component Sign_ext_DLX
      port ( imm          : in    std_logic_vector (15 downto 0); 
             imm_extended : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   IR_OUT(31 downto 0) <= IR_OUT_DUMMY(31 downto 0);
   XLXI_1 : REG32CE
      port map (CE=>IRce,
                CLK=>CLK,
                DI(31 downto 0)=>DI(31 downto 0),
                DO(31 downto 0)=>IR_OUT_DUMMY(31 downto 0));
   
   XLXI_2 : MUX5bit
      port map (A(4 downto 0)=>IR_OUT_DUMMY(15 downto 11),
                B(4 downto 0)=>IR_OUT_DUMMY(20 downto 16),
                sel=>Itype,
                O(4 downto 0)=>Caddr(4 downto 0));
   
   XLXI_3 : BUF5
      port map (I(4 downto 0)=>IR_OUT_DUMMY(25 downto 21),
                O(4 downto 0)=>Aaddr(4 downto 0));
   
   XLXI_4 : BUF5
      port map (I(4 downto 0)=>IR_OUT_DUMMY(20 downto 16),
                O(4 downto 0)=>Baddr(4 downto 0));
   
   XLXI_5 : Sign_ext_DLX
      port map (imm(15 downto 0)=>IR_OUT_DUMMY(15 downto 0),
                imm_extended(31 downto 0)=>imm_extended(31 downto 0));
   
end BEHAVIORAL;


