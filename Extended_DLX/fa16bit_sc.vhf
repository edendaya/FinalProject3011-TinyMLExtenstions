--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : fa16bit_sc.vhf
-- /___/   /\     Timestamp : 07/14/2025 12:52:49
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/edend/Downloads/finally_work_4_april/finally_work/fa16bit_sc.vhf -w C:/Users/edend/Downloads/finally_work_4_april/finally_work/fa16bit_sc.sch
--Design Name: fa16bit_sc
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

entity fulladd_sc_MUSER_fa16bit_sc is
   port ( a     : in    std_logic; 
          b     : in    std_logic; 
          c     : in    std_logic; 
          carry : out   std_logic; 
          sum   : out   std_logic);
end fulladd_sc_MUSER_fa16bit_sc;

architecture BEHAVIORAL of fulladd_sc_MUSER_fa16bit_sc is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity fa_4bit_sc_MUSER_fa16bit_sc is
   port ( A    : in    std_logic_vector (3 downto 0); 
          B    : in    std_logic_vector (3 downto 0); 
          Cin  : in    std_logic; 
          Cout : out   std_logic; 
          SUM  : out   std_logic_vector (3 downto 0));
end fa_4bit_sc_MUSER_fa16bit_sc;

architecture BEHAVIORAL of fa_4bit_sc_MUSER_fa16bit_sc is
   signal Carry0 : std_logic;
   signal Carry1 : std_logic;
   signal Carry2 : std_logic;
   component fulladd_sc_MUSER_fa16bit_sc
      port ( c     : in    std_logic; 
             b     : in    std_logic; 
             a     : in    std_logic; 
             sum   : out   std_logic; 
             carry : out   std_logic);
   end component;
   
begin
   XLXI_1 : fulladd_sc_MUSER_fa16bit_sc
      port map (a=>A(0),
                b=>B(0),
                c=>Cin,
                carry=>Carry0,
                sum=>SUM(0));
   
   XLXI_2 : fulladd_sc_MUSER_fa16bit_sc
      port map (a=>A(1),
                b=>B(1),
                c=>Carry0,
                carry=>Carry1,
                sum=>SUM(1));
   
   XLXI_3 : fulladd_sc_MUSER_fa16bit_sc
      port map (a=>A(2),
                b=>B(2),
                c=>Carry1,
                carry=>Carry2,
                sum=>SUM(2));
   
   XLXI_4 : fulladd_sc_MUSER_fa16bit_sc
      port map (a=>A(3),
                b=>B(3),
                c=>Carry2,
                carry=>Cout,
                sum=>SUM(3));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity fa16bit_sc is
   port ( A    : in    std_logic_vector (15 downto 0); 
          B    : in    std_logic_vector (15 downto 0); 
          Cin  : in    std_logic; 
          Cout : out   std_logic; 
          SUM  : out   std_logic_vector (15 downto 0));
end fa16bit_sc;

architecture BEHAVIORAL of fa16bit_sc is
   signal carry0 : std_logic;
   signal carry1 : std_logic;
   signal carry2 : std_logic;
   component fa_4bit_sc_MUSER_fa16bit_sc
      port ( A    : in    std_logic_vector (3 downto 0); 
             B    : in    std_logic_vector (3 downto 0); 
             Cin  : in    std_logic; 
             SUM  : out   std_logic_vector (3 downto 0); 
             Cout : out   std_logic);
   end component;
   
begin
   XLXI_1 : fa_4bit_sc_MUSER_fa16bit_sc
      port map (A(3 downto 0)=>A(3 downto 0),
                B(3 downto 0)=>B(3 downto 0),
                Cin=>Cin,
                Cout=>carry0,
                SUM(3 downto 0)=>SUM(3 downto 0));
   
   XLXI_2 : fa_4bit_sc_MUSER_fa16bit_sc
      port map (A(3 downto 0)=>A(7 downto 4),
                B(3 downto 0)=>B(7 downto 4),
                Cin=>carry0,
                Cout=>carry1,
                SUM(3 downto 0)=>SUM(7 downto 4));
   
   XLXI_3 : fa_4bit_sc_MUSER_fa16bit_sc
      port map (A(3 downto 0)=>A(11 downto 8),
                B(3 downto 0)=>B(11 downto 8),
                Cin=>carry1,
                Cout=>carry2,
                SUM(3 downto 0)=>SUM(11 downto 8));
   
   XLXI_4 : fa_4bit_sc_MUSER_fa16bit_sc
      port map (A(3 downto 0)=>A(15 downto 12),
                B(3 downto 0)=>B(15 downto 12),
                Cin=>carry2,
                Cout=>Cout,
                SUM(3 downto 0)=>SUM(15 downto 12));
   
end BEHAVIORAL;


