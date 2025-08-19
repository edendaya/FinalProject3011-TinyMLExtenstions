--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ALU_DLX.vhf
-- /___/   /\     Timestamp : 03/11/2025 18:40:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/D4/SOURCE_VER_SUPERFINAL/ALU_DLX.vhf -w E:/adlx/D4/SOURCE_VER_SUPERFINAL/ALU_DLX.sch
--Design Name: ALU_DLX
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_ALU_DLX -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_ALU_DLX is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_ALU_DLX;

architecture M2_1_HXILINX_ALU_DLX_V of M2_1_HXILINX_ALU_DLX is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_ALU_DLX_V;
----- CELL ADSU16_HXILINX_ALU_DLX -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADSU16_HXILINX_ALU_DLX is
port(
    CO   : out std_logic;
    OFL  : out std_logic;
    S    : out std_logic_vector(15 downto 0);

    A    : in std_logic_vector(15 downto 0);
    ADD  : in std_logic;
    B    : in std_logic_vector(15 downto 0);
    CI   : in std_logic
  );
end ADSU16_HXILINX_ALU_DLX;

architecture ADSU16_HXILINX_ALU_DLX_V of ADSU16_HXILINX_ALU_DLX is

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
  
end ADSU16_HXILINX_ALU_DLX_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity COMPARATOR_MUSER_ALU_DLX is
   port ( ALUF     : in    std_logic_vector (2 downto 0); 
          neg      : in    std_logic; 
          S        : in    std_logic_vector (31 downto 0); 
          COMP_OUT : out   std_logic);
end COMPARATOR_MUSER_ALU_DLX;

architecture BEHAVIORAL of COMPARATOR_MUSER_ALU_DLX is
   attribute BOX_TYPE   : string ;
   signal is_zero  : std_logic;
   signal XLXN_8   : std_logic;
   signal XLXN_10  : std_logic;
   signal XLXN_11  : std_logic;
   signal XLXN_13  : std_logic;
   signal XLXN_15  : std_logic;
   signal XLXN_20  : std_logic;
   signal XLXN_21  : std_logic;
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
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component ISZERO32
      port ( inputim : in    std_logic_vector (31 downto 0); 
             is_zero : out   std_logic);
   end component;
   
begin
   XLXI_1 : AND2
      port map (I0=>ALUF(1),
                I1=>is_zero,
                O=>XLXN_20);
   
   XLXI_2 : AND2
      port map (I0=>ALUF(2),
                I1=>neg,
                O=>XLXN_21);
   
   XLXI_3 : AND2
      port map (I0=>ALUF(0),
                I1=>XLXN_8,
                O=>XLXN_11);
   
   XLXI_4 : AND2
      port map (I0=>XLXN_11,
                I1=>XLXN_10,
                O=>XLXN_15);
   
   XLXI_7 : OR2
      port map (I0=>XLXN_21,
                I1=>XLXN_20,
                O=>XLXN_13);
   
   XLXI_8 : OR2
      port map (I0=>XLXN_15,
                I1=>XLXN_13,
                O=>COMP_OUT);
   
   XLXI_21 : INV
      port map (I=>is_zero,
                O=>XLXN_10);
   
   XLXI_29 : INV
      port map (I=>neg,
                O=>XLXN_8);
   
   XLXI_30 : ISZERO32
      port map (inputim(31 downto 0)=>S(31 downto 0),
                is_zero=>is_zero);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ADDSUB32_MUSER_ALU_DLX is
   port ( A   : in    std_logic_vector (31 downto 0); 
          B   : in    std_logic_vector (31 downto 0); 
          sub : in    std_logic; 
          neg : out   std_logic; 
          S   : out   std_logic_vector (31 downto 0));
end ADDSUB32_MUSER_ALU_DLX;

architecture BEHAVIORAL of ADDSUB32_MUSER_ALU_DLX is
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
   
   component ADSU16_HXILINX_ALU_DLX
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
   
   component M2_1_HXILINX_ALU_DLX
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
   
   XLXI_2 : ADSU16_HXILINX_ALU_DLX
      port map (A(15 downto 0)=>A(15 downto 0),
                ADD=>add,
                B(15 downto 0)=>B(15 downto 0),
                CI=>sub,
                CO=>lsbCO,
                OFL=>XLXN_7,
                S(15 downto 0)=>S(15 downto 0));
   
   XLXI_3 : ADSU16_HXILINX_ALU_DLX
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>add,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_8,
                CO=>COwithCI,
                OFL=>XLXN_23,
                S(15 downto 0)=>tmpSwithCI(15 downto 0));
   
   XLXI_4 : VCC
      port map (P=>XLXN_8);
   
   XLXI_5 : ADSU16_HXILINX_ALU_DLX
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>add,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_17,
                CO=>COnoCI,
                OFL=>XLXN_26,
                S(15 downto 0)=>tmpSnoCI(15 downto 0));
   
   XLXI_10 : GND
      port map (G=>XLXN_17);
   
   XLXI_21 : M2_1_HXILINX_ALU_DLX
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU_DLX is
   port ( A       : in    std_logic_vector (31 downto 0); 
          add     : in    std_logic; 
          ALUF    : in    std_logic_vector (2 downto 0); 
          B       : in    std_logic_vector (31 downto 0); 
          test    : in    std_logic; 
          ALU_OUT : out   std_logic_vector (31 downto 0));
end ALU_DLX;

architecture BEHAVIORAL of ALU_DLX is
   attribute BOX_TYPE   : string ;
   signal AND_OUT  : std_logic_vector (31 downto 0);
   signal F        : std_logic_vector (2 downto 0);
   signal MUX1_OUT : std_logic_vector (31 downto 0);
   signal MUX2_OUT : std_logic_vector (31 downto 0);
   signal MUX3_OUT : std_logic_vector (31 downto 0);
   signal MUX3_SEL : std_logic;
   signal neg      : std_logic;
   signal OR_OUT   : std_logic_vector (31 downto 0);
   signal relu     : std_logic;
   signal S        : std_logic_vector (31 downto 0);
   signal sel      : std_logic;
   signal sub      : std_logic;
   signal S_middle : std_logic_vector (31 downto 0);
   signal XLXN_5   : std_logic_vector (31 downto 0);
   signal XLXN_73  : std_logic_vector (2 downto 0);
   signal XLXN_79  : std_logic;
   signal XLXN_147 : std_logic;
   signal XLXN_148 : std_logic_vector (31 downto 0);
   signal XLXN_149 : std_logic;
   signal XOR_OUT  : std_logic_vector (31 downto 0);
   component ADDSUB32_MUSER_ALU_DLX
      port ( sub : in    std_logic; 
             B   : in    std_logic_vector (31 downto 0); 
             A   : in    std_logic_vector (31 downto 0); 
             S   : out   std_logic_vector (31 downto 0); 
             neg : out   std_logic);
   end component;
   
   component COMPARATOR_MUSER_ALU_DLX
      port ( ALUF     : in    std_logic_vector (2 downto 0); 
             neg      : in    std_logic; 
             S        : in    std_logic_vector (31 downto 0); 
             COMP_OUT : out   std_logic);
   end component;
   
   component OR32
      port ( A : in    std_logic_vector (31 downto 0); 
             B : in    std_logic_vector (31 downto 0); 
             O : out   std_logic_vector (31 downto 0));
   end component;
   
   component XOR32
      port ( A : in    std_logic_vector (31 downto 0); 
             B : in    std_logic_vector (31 downto 0); 
             O : out   std_logic_vector (31 downto 0));
   end component;
   
   component AND32
      port ( A : in    std_logic_vector (31 downto 0); 
             B : in    std_logic_vector (31 downto 0); 
             O : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX32bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
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
   
   component mux_3
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (2 downto 0); 
             B   : in    std_logic_vector (2 downto 0); 
             O   : out   std_logic_vector (2 downto 0));
   end component;
   
   component comp_with_zeros_32
      port ( COMP_OUT        : in    std_logic; 
             COMP_OUT_32bits : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX_32BIT
      port ( sel    : in    std_logic; 
             in0    : in    std_logic_vector (31 downto 0); 
             in1    : in    std_logic_vector (31 downto 0); 
             muxout : out   std_logic_vector (31 downto 0));
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
begin
   XLXN_5(31 downto 0) <= x"00000000";
   XLXN_73(2 downto 0) <= b"011";
   XLXI_1 : ADDSUB32_MUSER_ALU_DLX
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>B(31 downto 0),
                sub=>sub,
                neg=>neg,
                S(31 downto 0)=>S_middle(31 downto 0));
   
   XLXI_2 : COMPARATOR_MUSER_ALU_DLX
      port map (ALUF(2 downto 0)=>F(2 downto 0),
                neg=>neg,
                S(31 downto 0)=>S(31 downto 0),
                COMP_OUT=>XLXN_147);
   
   XLXI_3 : OR32
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>B(31 downto 0),
                O(31 downto 0)=>OR_OUT(31 downto 0));
   
   XLXI_4 : XOR32
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>B(31 downto 0),
                O(31 downto 0)=>XOR_OUT(31 downto 0));
   
   XLXI_5 : AND32
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>B(31 downto 0),
                O(31 downto 0)=>AND_OUT(31 downto 0));
   
   XLXI_6 : MUX32bit
      port map (A(31 downto 0)=>XOR_OUT(31 downto 0),
                B(31 downto 0)=>OR_OUT(31 downto 0),
                sel=>F(0),
                O(31 downto 0)=>MUX1_OUT(31 downto 0));
   
   XLXI_7 : MUX32bit
      port map (A(31 downto 0)=>MUX1_OUT(31 downto 0),
                B(31 downto 0)=>AND_OUT(31 downto 0),
                sel=>F(1),
                O(31 downto 0)=>MUX2_OUT(31 downto 0));
   
   XLXI_8 : MUX32bit
      port map (A(31 downto 0)=>S(31 downto 0),
                B(31 downto 0)=>MUX2_OUT(31 downto 0),
                sel=>MUX3_SEL,
                O(31 downto 0)=>MUX3_OUT(31 downto 0));
   
   XLXI_9 : MUX32bit
      port map (A(31 downto 0)=>MUX3_OUT(31 downto 0),
                B(31 downto 0)=>XLXN_148(31 downto 0),
                sel=>test,
                O(31 downto 0)=>ALU_OUT(31 downto 0));
   
   XLXI_23 : OR2
      port map (I0=>XLXN_79,
                I1=>test,
                O=>sub);
   
   XLXI_24 : INV
      port map (I=>F(0),
                O=>XLXN_79);
   
   XLXI_27 : mux_3
      port map (A(2 downto 0)=>ALUF(2 downto 0),
                B(2 downto 0)=>XLXN_73(2 downto 0),
                sel=>add,
                O(2 downto 0)=>F(2 downto 0));
   
   XLXI_29 : comp_with_zeros_32
      port map (COMP_OUT=>XLXN_147,
                COMP_OUT_32bits(31 downto 0)=>XLXN_148(31 downto 0));
   
   XLXI_30 : MUX_32BIT
      port map (in0(31 downto 0)=>S_middle(31 downto 0),
                in1(31 downto 0)=>XLXN_5(31 downto 0),
                sel=>sel,
                muxout(31 downto 0)=>S(31 downto 0));
   
   XLXI_34 : AND2
      port map (I0=>neg,
                I1=>relu,
                O=>sel);
   
   XLXI_35 : AND3
      port map (I0=>F(2),
                I1=>F(1),
                I2=>F(0),
                O=>relu);
   
   XLXI_44 : INV
      port map (I=>relu,
                O=>XLXN_149);
   
   XLXI_45 : AND2
      port map (I0=>XLXN_149,
                I1=>F(2),
                O=>MUX3_SEL);
   
end BEHAVIORAL;


