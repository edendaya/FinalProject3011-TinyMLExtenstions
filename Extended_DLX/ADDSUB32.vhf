--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ADDSUB32.vhf
-- /___/   /\     Timestamp : 01/09/2025 13:44:10
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/D4/SOURCE_VER/ADDSUB32.vhf -w E:/adlx/D4/SOURCE_VER/ADDSUB32.sch
--Design Name: ADDSUB32
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_ADDSUB32 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_ADDSUB32 is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_ADDSUB32;

architecture M2_1_HXILINX_ADDSUB32_V of M2_1_HXILINX_ADDSUB32 is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_ADDSUB32_V;
----- CELL ADSU16_HXILINX_ADDSUB32 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADSU16_HXILINX_ADDSUB32 is
port(
    CO   : out std_logic;
    OFL  : out std_logic;
    S    : out std_logic_vector(15 downto 0);

    A    : in std_logic_vector(15 downto 0);
    ADD  : in std_logic;
    B    : in std_logic_vector(15 downto 0);
    CI   : in std_logic
  );
end ADSU16_HXILINX_ADDSUB32;

architecture ADSU16_HXILINX_ADDSUB32_V of ADSU16_HXILINX_ADDSUB32 is

begin
  adsu_p : process (A, ADD, B, CI)
    variable adsu_tmp : std_logic_vector(16 downto 0);
  begin
    if(ADD = '1') then
     adsu_tmp := conv_std_logic_vector((conv_integer(A) + conv_integer(B) + conv_integer(CI)),17);
    else
     adsu_tmp := conv_std_logic_vector((conv_integer(A) - conv_integer(not CI) - conv_integer(B)),17);
  end if;
      
  S   <= adsu_tmp(15 downto 0);
   
  if (ADD='1') then
    CO <= adsu_tmp(16);
    OFL <=  ( A(15) and B(15) and (not adsu_tmp(15)) ) or ( (not A(15)) and (not B(15)) and adsu_tmp(15) );  
  else
    CO <= not adsu_tmp(16);
    OFL <=  ( A(15) and (not B(15)) and (not adsu_tmp(15)) ) or ( (not A(15)) and B(15) and adsu_tmp(15) );  
  end if;
 
  end process;
  
end ADSU16_HXILINX_ADDSUB32_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ADDSUB32 is
   port ( A   : in    std_logic_vector (31 downto 0); 
          B   : in    std_logic_vector (31 downto 0); 
          sub : in    std_logic; 
          neg : out   std_logic; 
          S   : out   std_logic_vector (31 downto 0));
end ADDSUB32;

architecture BEHAVIORAL of ADDSUB32 is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal add        : std_logic;
   signal COnoCI     : std_logic;
   signal COwithCI   : std_logic;
   signal lsbCO      : std_logic;
   signal tmpSnoCI   : std_logic_vector (15 downto 0);
   signal tmpSwithCI : std_logic_vector (15 downto 0);
   signal XLXN_7     : std_logic;
   signal XLXN_8     : std_logic;
   signal XLXN_17    : std_logic;
   signal XLXN_23    : std_logic;
   signal XLXN_26    : std_logic;
   signal XLXN_92    : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component ADSU16_HXILINX_ADDSUB32
      port ( A   : in    std_logic_vector (15 downto 0); 
             ADD : in    std_logic; 
             B   : in    std_logic_vector (15 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (15 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component M2_1_HXILINX_ADDSUB32
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component XOR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR4 : component is "BLACK_BOX";
   
   component MUX_16BIT
      port ( sel    : in    std_logic; 
             in0    : in    std_logic_vector (15 downto 0); 
             in1    : in    std_logic_vector (15 downto 0); 
             muxout : out   std_logic_vector (15 downto 0));
   end component;
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_3";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_2";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_1";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_0";
begin
   XLXI_1 : INV
      port map (I=>sub,
                O=>add);
   
   XLXI_2 : ADSU16_HXILINX_ADDSUB32
      port map (A(15 downto 0)=>A(15 downto 0),
                ADD=>add,
                B(15 downto 0)=>B(15 downto 0),
                CI=>sub,
                CO=>lsbCO,
                OFL=>XLXN_7,
                S(15 downto 0)=>S(15 downto 0));
   
   XLXI_3 : ADSU16_HXILINX_ADDSUB32
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>add,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_8,
                CO=>COwithCI,
                OFL=>XLXN_23,
                S(15 downto 0)=>tmpSwithCI(15 downto 0));
   
   XLXI_4 : VCC
      port map (P=>XLXN_8);
   
   XLXI_5 : ADSU16_HXILINX_ADDSUB32
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>add,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_17,
                CO=>COnoCI,
                OFL=>XLXN_26,
                S(15 downto 0)=>tmpSnoCI(15 downto 0));
   
   XLXI_10 : GND
      port map (G=>XLXN_17);
   
   XLXI_21 : M2_1_HXILINX_ADDSUB32
      port map (D0=>COnoCI,
                D1=>COwithCI,
                S0=>lsbCO,
                O=>XLXN_92);
   
   XLXI_23 : XOR4
      port map (I0=>sub,
                I1=>B(31),
                I2=>A(31),
                I3=>XLXN_92,
                O=>neg);
   
   XLXI_40 : MUX_16BIT
      port map (in0(15 downto 0)=>tmpSnoCI(15 downto 0),
                in1(15 downto 0)=>tmpSwithCI(15 downto 0),
                sel=>lsbCO,
                muxout(15 downto 0)=>S(31 downto 16));
   
end BEHAVIORAL;


