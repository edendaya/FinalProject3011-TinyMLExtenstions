--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : GPR_ENVIR.vhf
-- /___/   /\     Timestamp : 04/03/2025 15:49:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/ron/Downloads/13.3/try2/SOURCE_VER_SUPERFINAL/GPR_ENVIR.vhf -w C:/Users/ron/Downloads/13.3/try2/SOURCE_VER_SUPERFINAL/GPR_ENVIR.sch
--Design Name: GPR_ENVIR
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

entity GPR_ENVIR is
   port ( Aadr   : in    std_logic_vector (4 downto 0); 
          Badr   : in    std_logic_vector (4 downto 0); 
          C      : in    std_logic_vector (31 downto 0); 
          Cadr   : in    std_logic_vector (4 downto 0); 
          CLK    : in    std_logic; 
          Dadr   : in    std_logic_vector (4 downto 0); 
          GPR_WE : in    std_logic; 
          A      : out   std_logic_vector (31 downto 0); 
          AEQZ_O : out   std_logic; 
          B      : out   std_logic_vector (31 downto 0); 
          D      : out   std_logic_vector (31 downto 0));
end GPR_ENVIR;

architecture BEHAVIORAL of GPR_ENVIR is
   attribute BOX_TYPE   : string ;
   signal DO_A    : std_logic_vector (31 downto 0);
   signal DO_B    : std_logic_vector (31 downto 0);
   signal DO_D    : std_logic_vector (31 downto 0);
   signal MUX_O_A : std_logic_vector (4 downto 0);
   signal MUX_O_B : std_logic_vector (4 downto 0);
   signal MUX_O_D : std_logic_vector (4 downto 0);
   signal OR_O_A  : std_logic;
   signal OR_O_B  : std_logic;
   signal OR_O_D  : std_logic;
   signal A_DUMMY : std_logic_vector (31 downto 0);
   component RAM32x32
      port ( CLK  : in    std_logic; 
             WE   : in    std_logic; 
             ADDR : in    std_logic_vector (4 downto 0); 
             DI   : in    std_logic_vector (31 downto 0); 
             DO   : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX_5to5
      port ( S0 : in    std_logic; 
             D0 : in    std_logic_vector (4 downto 0); 
             D1 : in    std_logic_vector (4 downto 0); 
             O  : out   std_logic_vector (4 downto 0));
   end component;
   
   component AEQZ
      port ( A     : in    std_logic_vector (31 downto 0); 
             A_eqz : out   std_logic);
   end component;
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component AND32WITH
      port ( pullD : in    std_logic; 
             Din   : in    std_logic_vector (31 downto 0); 
             Dout  : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   A(31 downto 0) <= A_DUMMY(31 downto 0);
   XLXI_1 : RAM32x32
      port map (ADDR(4 downto 0)=>MUX_O_A(4 downto 0),
                CLK=>CLK,
                DI(31 downto 0)=>C(31 downto 0),
                WE=>GPR_WE,
                DO(31 downto 0)=>DO_A(31 downto 0));
   
   XLXI_4 : MUX_5to5
      port map (D0(4 downto 0)=>Aadr(4 downto 0),
                D1(4 downto 0)=>Cadr(4 downto 0),
                S0=>GPR_WE,
                O(4 downto 0)=>MUX_O_A(4 downto 0));
   
   XLXI_25 : AEQZ
      port map (A(31 downto 0)=>A_DUMMY(31 downto 0),
                A_eqz=>AEQZ_O);
   
   XLXI_26 : RAM32x32
      port map (ADDR(4 downto 0)=>MUX_O_B(4 downto 0),
                CLK=>CLK,
                DI(31 downto 0)=>C(31 downto 0),
                WE=>GPR_WE,
                DO(31 downto 0)=>DO_B(31 downto 0));
   
   XLXI_27 : RAM32x32
      port map (ADDR(4 downto 0)=>MUX_O_D(4 downto 0),
                CLK=>CLK,
                DI(31 downto 0)=>C(31 downto 0),
                WE=>GPR_WE,
                DO(31 downto 0)=>DO_D(31 downto 0));
   
   XLXI_35 : MUX_5to5
      port map (D0(4 downto 0)=>Badr(4 downto 0),
                D1(4 downto 0)=>Cadr(4 downto 0),
                S0=>GPR_WE,
                O(4 downto 0)=>MUX_O_B(4 downto 0));
   
   XLXI_36 : MUX_5to5
      port map (D0(4 downto 0)=>Dadr(4 downto 0),
                D1(4 downto 0)=>Cadr(4 downto 0),
                S0=>GPR_WE,
                O(4 downto 0)=>MUX_O_D(4 downto 0));
   
   XLXI_61 : OR5
      port map (I0=>MUX_O_A(4),
                I1=>MUX_O_A(3),
                I2=>MUX_O_A(2),
                I3=>MUX_O_A(1),
                I4=>MUX_O_A(0),
                O=>OR_O_A);
   
   XLXI_62 : OR5
      port map (I0=>MUX_O_B(4),
                I1=>MUX_O_B(3),
                I2=>MUX_O_B(2),
                I3=>MUX_O_B(1),
                I4=>MUX_O_B(0),
                O=>OR_O_B);
   
   XLXI_63 : OR5
      port map (I0=>MUX_O_D(4),
                I1=>MUX_O_D(3),
                I2=>MUX_O_D(2),
                I3=>MUX_O_D(1),
                I4=>MUX_O_D(0),
                O=>OR_O_D);
   
   XLXI_65 : AND32WITH
      port map (Din(31 downto 0)=>DO_A(31 downto 0),
                pullD=>OR_O_A,
                Dout(31 downto 0)=>A_DUMMY(31 downto 0));
   
   XLXI_66 : AND32WITH
      port map (Din(31 downto 0)=>DO_B(31 downto 0),
                pullD=>OR_O_B,
                Dout(31 downto 0)=>B(31 downto 0));
   
   XLXI_67 : AND32WITH
      port map (Din(31 downto 0)=>DO_D(31 downto 0),
                pullD=>OR_O_D,
                Dout(31 downto 0)=>D(31 downto 0));
   
end BEHAVIORAL;


