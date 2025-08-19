--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : LogiAnalyzer.vhf
-- /___/   /\     Timestamp : 12/02/2024 13:32:26
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/D4/SOURCE_VER/LogiAnalyzer.vhf -w E:/adlx/D4/SOURCE_VER/LogiAnalyzer.sch
--Design Name: LogiAnalyzer
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD8RE_HXILINX_LogiAnalyzer -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8RE_HXILINX_LogiAnalyzer is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0);
    R   : in STD_LOGIC
    );
end FD8RE_HXILINX_LogiAnalyzer;

architecture Behavioral of FD8RE_HXILINX_LogiAnalyzer is

begin

process(C)
begin
  if (C'event and C = '1') then
    if (R='1') then
      Q <= (others => '0');
    elsif (CE='1') then 
      Q <= D;
    end if;
  end if;
end process;


end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LogiAnalyzer is
   port ( AI         : in    std_logic_vector (4 downto 0); 
          CLK        : in    std_logic; 
          in_init    : in    std_logic; 
          SIGNALS    : in    std_logic_vector (31 downto 0); 
          step_en    : in    std_logic; 
          stop_n     : in    std_logic; 
          RAM_OUT    : out   std_logic_vector (31 downto 0); 
          STATUS_OUT : out   std_logic_vector (7 downto 0));
end LogiAnalyzer;

architecture BEHAVIORAL of LogiAnalyzer is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal CNT                 : std_logic_vector (7 downto 0);
   signal la_run              : std_logic;
   signal la_we               : std_logic;
   signal sts_ce              : std_logic;
   signal XLXN_8              : std_logic_vector (4 downto 0);
   signal XLXN_73             : std_logic;
   signal XLXN_89             : std_logic;
   signal XLXN_124            : std_logic;
   signal XLXN_176            : std_logic;
   signal XLXN_177            : std_logic;
   signal XLXI_9_R_openSignal : std_logic;
   component RAM32x32
      port ( CLK  : in    std_logic; 
             WE   : in    std_logic; 
             ADDR : in    std_logic_vector (4 downto 0); 
             DI   : in    std_logic_vector (31 downto 0); 
             DO   : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX5bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (4 downto 0); 
             B   : in    std_logic_vector (4 downto 0); 
             O   : out   std_logic_vector (4 downto 0));
   end component;
   
   component CNT5
      port ( CLK : in    std_logic; 
             RST : in    std_logic; 
             CE  : in    std_logic; 
             CNT : out   std_logic_vector (4 downto 0));
   end component;
   
   component FD8RE_HXILINX_LogiAnalyzer
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic_vector (7 downto 0); 
             R  : in    std_logic; 
             Q  : out   std_logic_vector (7 downto 0));
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
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
   
   attribute HU_SET of XLXI_9 : label is "XLXI_9_1";
begin
   XLXI_1 : RAM32x32
      port map (ADDR(4 downto 0)=>XLXN_8(4 downto 0),
                CLK=>CLK,
                DI(31 downto 0)=>SIGNALS(31 downto 0),
                WE=>la_we,
                DO(31 downto 0)=>RAM_OUT(31 downto 0));
   
   XLXI_2 : MUX5bit
      port map (A(4 downto 0)=>AI(4 downto 0),
                B(4 downto 0)=>CNT(4 downto 0),
                sel=>la_we,
                O(4 downto 0)=>XLXN_8(4 downto 0));
   
   XLXI_3 : CNT5
      port map (CE=>la_we,
                CLK=>CLK,
                RST=>sts_ce,
                CNT(4 downto 0)=>CNT(4 downto 0));
   
   XLXI_9 : FD8RE_HXILINX_LogiAnalyzer
      port map (C=>CLK,
                CE=>sts_ce,
                D(7 downto 0)=>CNT(7 downto 0),
                R=>XLXI_9_R_openSignal,
                Q(7 downto 0)=>STATUS_OUT(7 downto 0));
   
   XLXI_23 : AND2
      port map (I0=>stop_n,
                I1=>la_run,
                O=>la_we);
   
   XLXI_25 : FD
      port map (C=>CLK,
                D=>XLXN_177,
                Q=>XLXN_73);
   
   XLXI_26 : OR2
      port map (I0=>XLXN_73,
                I1=>XLXN_177,
                O=>la_run);
   
   XLXI_32 : FD
      port map (C=>CLK,
                D=>la_run,
                Q=>XLXN_89);
   
   XLXI_33 : INV
      port map (I=>la_run,
                O=>XLXN_124);
   
   XLXI_34 : AND2
      port map (I0=>XLXN_89,
                I1=>XLXN_124,
                O=>sts_ce);
   
   XLXI_39 : OR2
      port map (I0=>step_en,
                I1=>XLXN_176,
                O=>XLXN_177);
   
   XLXI_42 : INV
      port map (I=>in_init,
                O=>XLXN_176);
   
end BEHAVIORAL;


