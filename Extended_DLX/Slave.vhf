--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Slave.vhf
-- /___/   /\     Timestamp : 11/18/2024 16:06:14
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/D4/SOURCE_VER/Slave.vhf -w E:/adlx/D4/SOURCE_VER/Slave.sch
--Design Name: Slave
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

entity Slave is
   port ( A          : in    std_logic_vector (31 downto 0); 
          AI         : in    std_logic_vector (9 downto 0); 
          B          : in    std_logic_vector (31 downto 0); 
          C          : in    std_logic_vector (31 downto 0); 
          CARDSEL    : in    std_logic; 
          CLK        : in    std_logic; 
          D          : in    std_logic_vector (31 downto 0); 
          WR_N       : in    std_logic; 
          MUX_OUTPUT : out   std_logic_vector (31 downto 0); 
          reg_write  : out   std_logic_vector (4 downto 0); 
          SACK_N     : out   std_logic);
end Slave;

architecture BEHAVIORAL of Slave is
   attribute BOX_TYPE   : string ;
   signal XLXN_1     : std_logic;
   signal XLXN_2     : std_logic;
   signal XLXN_3     : std_logic;
   signal XLXN_4     : std_logic;
   signal XLXN_5     : std_logic;
   signal XLXN_6     : std_logic;
   signal XLXN_7     : std_logic;
   signal XLXN_10    : std_logic;
   signal x1         : std_logic;
   component MUX4_32bit
      port ( A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             C   : in    std_logic_vector (31 downto 0); 
             D   : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
   component BUF5
      port ( I : in    std_logic_vector (4 downto 0); 
             O : out   std_logic_vector (4 downto 0));
   end component;
   
begin
   XLXI_1 : MUX4_32bit
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>B(31 downto 0),
                C(31 downto 0)=>C(31 downto 0),
                D(31 downto 0)=>D(31 downto 0),
                sel(1 downto 0)=>AI(6 downto 5),
                O(31 downto 0)=>MUX_OUTPUT(31 downto 0));
   
   XLXI_2 : AND3
      port map (I0=>XLXN_3,
                I1=>XLXN_2,
                I2=>XLXN_1,
                O=>XLXN_4);
   
   XLXI_3 : AND3
      port map (I0=>WR_N,
                I1=>CARDSEL,
                I2=>XLXN_4,
                O=>XLXN_5);
   
   XLXI_4 : FD
      port map (C=>CLK,
                D=>XLXN_5,
                Q=>x1);
   
   XLXI_5 : INV
      port map (I=>AI(9),
                O=>XLXN_1);
   
   XLXI_6 : INV
      port map (I=>AI(8),
                O=>XLXN_2);
   
   XLXI_7 : INV
      port map (I=>AI(7),
                O=>XLXN_3);
   
   XLXI_8 : INV
      port map (I=>XLXN_6,
                O=>XLXN_7);
   
   XLXI_9 : NAND2
      port map (I0=>XLXN_7,
                I1=>x1,
                O=>SACK_N);
   
   XLXI_10 : FD
      port map (C=>XLXN_10,
                D=>x1,
                Q=>XLXN_6);
   
   XLXI_22 : BUF5
      port map (I(4 downto 0)=>AI(4 downto 0),
                O(4 downto 0)=>reg_write(4 downto 0));
   
end BEHAVIORAL;


