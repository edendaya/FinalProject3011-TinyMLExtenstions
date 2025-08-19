--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : monitor.vhf
-- /___/   /\     Timestamp : 12/02/2024 14:17:55
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/D4/SOURCE_VER/monitor.vhf -w E:/adlx/D4/SOURCE_VER/monitor.sch
--Design Name: monitor
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD8RE_HXILINX_monitor -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8RE_HXILINX_monitor is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0);
    R   : in STD_LOGIC
    );
end FD8RE_HXILINX_monitor;

architecture Behavioral of FD8RE_HXILINX_monitor is

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

entity Slave_MUSER_monitor is
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
end Slave_MUSER_monitor;

architecture BEHAVIORAL of Slave_MUSER_monitor is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LogiAnalyzer_MUSER_monitor is
   port ( AI         : in    std_logic_vector (4 downto 0); 
          CLK        : in    std_logic; 
          in_init    : in    std_logic; 
          SIGNALS    : in    std_logic_vector (31 downto 0); 
          step_en    : in    std_logic; 
          stop_n     : in    std_logic; 
          RAM_OUT    : out   std_logic_vector (31 downto 0); 
          STATUS_OUT : out   std_logic_vector (7 downto 0));
end LogiAnalyzer_MUSER_monitor;

architecture BEHAVIORAL of LogiAnalyzer_MUSER_monitor is
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
   
   component FD8RE_HXILINX_monitor
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
   
   attribute HU_SET of XLXI_9 : label is "XLXI_9_0";
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
   
   XLXI_9 : FD8RE_HXILINX_monitor
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity monitor is
   port ( AI           : in    std_logic_vector (9 downto 0); 
          CARDSEL      : in    std_logic; 
          CLK          : in    std_logic; 
          in_init      : in    std_logic; 
          SIGNALS      : in    std_logic_vector (31 downto 0); 
          SLAVE_C      : in    std_logic_vector (31 downto 0); 
          SLAVE_D      : in    std_logic_vector (31 downto 0); 
          step_en      : in    std_logic; 
          stop_n       : in    std_logic; 
          WR_N         : in    std_logic; 
          reg_write    : out   std_logic_vector (4 downto 0); 
          SACK_N       : out   std_logic; 
          SLAVE_OUTPUT : out   std_logic_vector (31 downto 0));
end monitor;

architecture BEHAVIORAL of monitor is
   signal IDNUM           : std_logic_vector (7 downto 0);
   signal LA_RAM          : std_logic_vector (31 downto 0);
   signal STATUS          : std_logic_vector (7 downto 0);
   signal STATUS_ID       : std_logic_vector (31 downto 0);
   signal reg_write_DUMMY : std_logic_vector (4 downto 0);
   component LogiAnalyzer_MUSER_monitor
      port ( CLK        : in    std_logic; 
             SIGNALS    : in    std_logic_vector (31 downto 0); 
             AI         : in    std_logic_vector (4 downto 0); 
             step_en    : in    std_logic; 
             in_init    : in    std_logic; 
             stop_n     : in    std_logic; 
             STATUS_OUT : out   std_logic_vector (7 downto 0); 
             RAM_OUT    : out   std_logic_vector (31 downto 0));
   end component;
   
   component Slave_MUSER_monitor
      port ( CLK        : in    std_logic; 
             CARDSEL    : in    std_logic; 
             WR_N       : in    std_logic; 
             B          : in    std_logic_vector (31 downto 0); 
             C          : in    std_logic_vector (31 downto 0); 
             D          : in    std_logic_vector (31 downto 0); 
             A          : in    std_logic_vector (31 downto 0); 
             AI         : in    std_logic_vector (9 downto 0); 
             SACK_N     : out   std_logic; 
             MUX_OUTPUT : out   std_logic_vector (31 downto 0); 
             reg_write  : out   std_logic_vector (4 downto 0));
   end component;
   
   component ID_NUM
      port ( ID : out   std_logic_vector (7 downto 0));
   end component;
   
   component BUF8
      port ( I : in    std_logic_vector (7 downto 0); 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   reg_write(4 downto 0) <= reg_write_DUMMY(4 downto 0);
   XLXI_1 : LogiAnalyzer_MUSER_monitor
      port map (AI(4 downto 0)=>reg_write_DUMMY(4 downto 0),
                CLK=>CLK,
                in_init=>in_init,
                SIGNALS(31 downto 0)=>SIGNALS(31 downto 0),
                step_en=>step_en,
                stop_n=>stop_n,
                RAM_OUT(31 downto 0)=>LA_RAM(31 downto 0),
                STATUS_OUT(7 downto 0)=>STATUS(7 downto 0));
   
   XLXI_2 : Slave_MUSER_monitor
      port map (A(31 downto 0)=>LA_RAM(31 downto 0),
                AI(9 downto 0)=>AI(9 downto 0),
                B(31 downto 0)=>STATUS_ID(31 downto 0),
                C(31 downto 0)=>SLAVE_C(31 downto 0),
                CARDSEL=>CARDSEL,
                CLK=>CLK,
                D(31 downto 0)=>SLAVE_D(31 downto 0),
                WR_N=>WR_N,
                MUX_OUTPUT(31 downto 0)=>SLAVE_OUTPUT(31 downto 0),
                reg_write(4 downto 0)=>reg_write_DUMMY(4 downto 0),
                SACK_N=>SACK_N);
   
   XLXI_3 : ID_NUM
      port map (ID(7 downto 0)=>IDNUM(7 downto 0));
   
   XLXI_6 : BUF8
      port map (I(7 downto 0)=>STATUS(7 downto 0),
                O(7 downto 0)=>STATUS_ID(7 downto 0));
   
   XLXI_7 : BUF8
      port map (I(7 downto 0)=>IDNUM(7 downto 0),
                O(7 downto 0)=>STATUS_ID(15 downto 8));
   
end BEHAVIORAL;


