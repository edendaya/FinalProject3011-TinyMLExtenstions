--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : DLX_toplevel.vhf
-- /___/   /\     Timestamp : 04/03/2025 15:50:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/ron/Downloads/13.3/try2/SOURCE_VER_SUPERFINAL/DLX_toplevel.vhf -w C:/Users/ron/Downloads/13.3/try2/SOURCE_VER_SUPERFINAL/DLX_toplevel.sch
--Design Name: DLX_toplevel
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_DLX_toplevel -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_DLX_toplevel is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_DLX_toplevel;

architecture M2_1_HXILINX_DLX_toplevel_V of M2_1_HXILINX_DLX_toplevel is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_DLX_toplevel_V;
----- CELL ADSU16_HXILINX_DLX_toplevel -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADSU16_HXILINX_DLX_toplevel is
port(
    CO   : out std_logic;
    OFL  : out std_logic;
    S    : out std_logic_vector(15 downto 0);

    A    : in std_logic_vector(15 downto 0);
    ADD  : in std_logic;
    B    : in std_logic_vector(15 downto 0);
    CI   : in std_logic
  );
end ADSU16_HXILINX_DLX_toplevel;

architecture ADSU16_HXILINX_DLX_toplevel_V of ADSU16_HXILINX_DLX_toplevel is

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
  
end ADSU16_HXILINX_DLX_toplevel_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity COMPARATOR_MUSER_DLX_toplevel is
   port ( ALUF     : in    std_logic_vector (2 downto 0); 
          neg      : in    std_logic; 
          S        : in    std_logic_vector (31 downto 0); 
          COMP_OUT : out   std_logic);
end COMPARATOR_MUSER_DLX_toplevel;

architecture BEHAVIORAL of COMPARATOR_MUSER_DLX_toplevel is
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

entity ADDSUB32_MUSER_DLX_toplevel is
   port ( A   : in    std_logic_vector (31 downto 0); 
          B   : in    std_logic_vector (31 downto 0); 
          sub : in    std_logic; 
          neg : out   std_logic; 
          S   : out   std_logic_vector (31 downto 0));
end ADDSUB32_MUSER_DLX_toplevel;

architecture BEHAVIORAL of ADDSUB32_MUSER_DLX_toplevel is
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
   
   component ADSU16_HXILINX_DLX_toplevel
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
   
   component M2_1_HXILINX_DLX_toplevel
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
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_15";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_14";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_13";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_12";
begin
   XLXI_1 : INV
      port map (I=>sub,
                O=>add);
   
   XLXI_2 : ADSU16_HXILINX_DLX_toplevel
      port map (A(15 downto 0)=>A(15 downto 0),
                ADD=>add,
                B(15 downto 0)=>B(15 downto 0),
                CI=>sub,
                CO=>lsbCO,
                OFL=>XLXN_7,
                S(15 downto 0)=>S(15 downto 0));
   
   XLXI_3 : ADSU16_HXILINX_DLX_toplevel
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>add,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_8,
                CO=>COwithCI,
                OFL=>XLXN_23,
                S(15 downto 0)=>tmpSwithCI(15 downto 0));
   
   XLXI_4 : VCC
      port map (P=>XLXN_8);
   
   XLXI_5 : ADSU16_HXILINX_DLX_toplevel
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>add,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_17,
                CO=>COnoCI,
                OFL=>XLXN_26,
                S(15 downto 0)=>tmpSnoCI(15 downto 0));
   
   XLXI_10 : GND
      port map (G=>XLXN_17);
   
   XLXI_21 : M2_1_HXILINX_DLX_toplevel
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

entity ALU_DLX_MUSER_DLX_toplevel is
   port ( A       : in    std_logic_vector (31 downto 0); 
          add     : in    std_logic; 
          ALUF    : in    std_logic_vector (2 downto 0); 
          B       : in    std_logic_vector (31 downto 0); 
          test    : in    std_logic; 
          ALU_OUT : out   std_logic_vector (31 downto 0));
end ALU_DLX_MUSER_DLX_toplevel;

architecture BEHAVIORAL of ALU_DLX_MUSER_DLX_toplevel is
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
   component ADDSUB32_MUSER_DLX_toplevel
      port ( sub : in    std_logic; 
             B   : in    std_logic_vector (31 downto 0); 
             A   : in    std_logic_vector (31 downto 0); 
             S   : out   std_logic_vector (31 downto 0); 
             neg : out   std_logic);
   end component;
   
   component COMPARATOR_MUSER_DLX_toplevel
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
   XLXI_1 : ADDSUB32_MUSER_DLX_toplevel
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>B(31 downto 0),
                sub=>sub,
                neg=>neg,
                S(31 downto 0)=>S_middle(31 downto 0));
   
   XLXI_2 : COMPARATOR_MUSER_DLX_toplevel
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity vedic16_x_16_signed_sc_MUSER_DLX_toplevel is
   port ( a   : in    std_logic_vector (31 downto 0); 
          b   : in    std_logic_vector (31 downto 0); 
          res : out   std_logic_vector (31 downto 0));
end vedic16_x_16_signed_sc_MUSER_DLX_toplevel;

architecture BEHAVIORAL of vedic16_x_16_signed_sc_MUSER_DLX_toplevel is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity MAC_Unit_MUSER_DLX_toplevel is
   port ( a              : in    std_logic_vector (31 downto 0); 
          b              : in    std_logic_vector (31 downto 0); 
          clk            : in    std_logic; 
          en             : in    std_logic; 
          mul_mac_signal : in    std_logic; 
          rst            : in    std_logic; 
          o              : out   std_logic_vector (31 downto 0));
end MAC_Unit_MUSER_DLX_toplevel;

architecture BEHAVIORAL of MAC_Unit_MUSER_DLX_toplevel is
   signal mac_out        : std_logic_vector (31 downto 0);
   signal mul_out        : std_logic_vector (31 downto 0);
   component vedic16_x_16_signed_sc_MUSER_DLX_toplevel
      port ( a   : in    std_logic_vector (31 downto 0); 
             b   : in    std_logic_vector (31 downto 0); 
             res : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX32bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component Accumulator
      port ( clk     : in    std_logic; 
             rst     : in    std_logic; 
             en      : in    std_logic; 
             D       : in    std_logic_vector (31 downto 0); 
             Q       : out   std_logic_vector (31 downto 0); 
             sum_out : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_1 : vedic16_x_16_signed_sc_MUSER_DLX_toplevel
      port map (a(31 downto 0)=>a(31 downto 0),
                b(31 downto 0)=>b(31 downto 0),
                res(31 downto 0)=>mul_out(31 downto 0));
   
   XLXI_3 : MUX32bit
      port map (A(31 downto 0)=>mac_out(31 downto 0),
                B(31 downto 0)=>mul_out(31 downto 0),
                sel=>mul_mac_signal,
                O(31 downto 0)=>o(31 downto 0));
   
   XLXI_5 : Accumulator
      port map (clk=>clk,
                D(31 downto 0)=>mul_out(31 downto 0),
                en=>en,
                rst=>rst,
                Q=>open,
                sum_out(31 downto 0)=>mac_out(31 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity IR_DLX_MUSER_DLX_toplevel is
   port ( CLK          : in    std_logic; 
          DI           : in    std_logic_vector (31 downto 0); 
          IRce         : in    std_logic; 
          Itype        : in    std_logic; 
          Aaddr        : out   std_logic_vector (4 downto 0); 
          Baddr        : out   std_logic_vector (4 downto 0); 
          Caddr        : out   std_logic_vector (4 downto 0); 
          imm_extended : out   std_logic_vector (31 downto 0); 
          IR_OUT       : out   std_logic_vector (31 downto 0));
end IR_DLX_MUSER_DLX_toplevel;

architecture BEHAVIORAL of IR_DLX_MUSER_DLX_toplevel is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity GPR_ENVIR_MUSER_DLX_toplevel is
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
end GPR_ENVIR_MUSER_DLX_toplevel;

architecture BEHAVIORAL of GPR_ENVIR_MUSER_DLX_toplevel is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity datapath_DLX_MUSER_DLX_toplevel is
   port ( Ace     : in    std_logic; 
          add     : in    std_logic; 
          ALUf    : in    std_logic_vector (2 downto 0); 
          Asel    : in    std_logic; 
          Bce     : in    std_logic; 
          Cce     : in    std_logic; 
          CLK     : in    std_logic; 
          Daddr   : in    std_logic_vector (4 downto 0); 
          DI      : in    std_logic_vector (31 downto 0); 
          DINTsel : in    std_logic_vector (1 downto 0); 
          GPR_WE  : in    std_logic; 
          IRce    : in    std_logic; 
          Itype   : in    std_logic; 
          jlink   : in    std_logic; 
          MAC_EN  : in    std_logic; 
          MAC_RST : in    std_logic; 
          MARce   : in    std_logic; 
          MDRce   : in    std_logic; 
          MDRsel  : in    std_logic; 
          mul_mac : in    std_logic; 
          PCce    : in    std_logic; 
          right   : in    std_logic; 
          RST     : in    std_logic; 
          shift   : in    std_logic; 
          S1sel   : in    std_logic_vector (1 downto 0); 
          S2sel   : in    std_logic_vector (1 downto 0); 
          test    : in    std_logic; 
          AQEZ    : out   std_logic; 
          D       : out   std_logic_vector (31 downto 0); 
          DO      : out   std_logic_vector (31 downto 0); 
          IR_OUT  : out   std_logic_vector (31 downto 0); 
          MMU_AO  : out   std_logic_vector (31 downto 0); 
          PC      : out   std_logic_vector (31 downto 0));
end datapath_DLX_MUSER_DLX_toplevel;

architecture BEHAVIORAL of datapath_DLX_MUSER_DLX_toplevel is
   signal Aaddr        : std_logic_vector (4 downto 0);
   signal ALU_O        : std_logic_vector (31 downto 0);
   signal AO           : std_logic_vector (31 downto 0);
   signal Baddr        : std_logic_vector (4 downto 0);
   signal Caddr        : std_logic_vector (4 downto 0);
   signal C_OR_JL_adr  : std_logic_vector (4 downto 0);
   signal DINT         : std_logic_vector (31 downto 0);
   signal DI_A         : std_logic_vector (31 downto 0);
   signal DI_B         : std_logic_vector (31 downto 0);
   signal DO_A         : std_logic_vector (31 downto 0);
   signal DO_B         : std_logic_vector (31 downto 0);
   signal DO_C         : std_logic_vector (31 downto 0);
   signal imm_extended : std_logic_vector (31 downto 0);
   signal MAR_O        : std_logic_vector (31 downto 0);
   signal mul_mac_O    : std_logic_vector (31 downto 0);
   signal MuxO_MDR     : std_logic_vector (31 downto 0);
   signal Shifter_O    : std_logic_vector (31 downto 0);
   signal S1_O         : std_logic_vector (31 downto 0);
   signal S2_O         : std_logic_vector (31 downto 0);
   signal XLXN_262     : std_logic_vector (31 downto 0);
   signal XLXN_410     : std_logic_vector (4 downto 0);
   signal XLXN_411     : std_logic_vector (31 downto 0);
   signal PC_DUMMY     : std_logic_vector (31 downto 0);
   signal DO_DUMMY     : std_logic_vector (31 downto 0);
   component REG32CE
      port ( CLK : in    std_logic; 
             CE  : in    std_logic; 
             DI  : in    std_logic_vector (31 downto 0); 
             DO  : out   std_logic_vector (31 downto 0));
   end component;
   
   component REG32RST
      port ( CLK : in    std_logic; 
             CE  : in    std_logic; 
             RST : in    std_logic; 
             DI  : in    std_logic_vector (31 downto 0); 
             DO  : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX32bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX4_32bit
      port ( A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             C   : in    std_logic_vector (31 downto 0); 
             D   : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component Shifter_DLX
      port ( shift : in    std_logic; 
             right : in    std_logic; 
             DI    : in    std_logic_vector (31 downto 0); 
             DO    : out   std_logic_vector (31 downto 0));
   end component;
   
   component MMU_DLX
      port ( Addr  : in    std_logic_vector (31 downto 0); 
             MMU_O : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX5bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (4 downto 0); 
             B   : in    std_logic_vector (4 downto 0); 
             O   : out   std_logic_vector (4 downto 0));
   end component;
   
   component GPR_ENVIR_MUSER_DLX_toplevel
      port ( CLK    : in    std_logic; 
             GPR_WE : in    std_logic; 
             C      : in    std_logic_vector (31 downto 0); 
             Cadr   : in    std_logic_vector (4 downto 0); 
             Aadr   : in    std_logic_vector (4 downto 0); 
             Badr   : in    std_logic_vector (4 downto 0); 
             Dadr   : in    std_logic_vector (4 downto 0); 
             A      : out   std_logic_vector (31 downto 0); 
             B      : out   std_logic_vector (31 downto 0); 
             D      : out   std_logic_vector (31 downto 0); 
             AEQZ_O : out   std_logic);
   end component;
   
   component IR_DLX_MUSER_DLX_toplevel
      port ( CLK          : in    std_logic; 
             IRce         : in    std_logic; 
             DI           : in    std_logic_vector (31 downto 0); 
             Itype        : in    std_logic; 
             IR_OUT       : out   std_logic_vector (31 downto 0); 
             Aaddr        : out   std_logic_vector (4 downto 0); 
             Baddr        : out   std_logic_vector (4 downto 0); 
             imm_extended : out   std_logic_vector (31 downto 0); 
             Caddr        : out   std_logic_vector (4 downto 0));
   end component;
   
   component MAC_Unit_MUSER_DLX_toplevel
      port ( a              : in    std_logic_vector (31 downto 0); 
             b              : in    std_logic_vector (31 downto 0); 
             clk            : in    std_logic; 
             rst            : in    std_logic; 
             en             : in    std_logic; 
             mul_mac_signal : in    std_logic; 
             o              : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX32bit_3in
      port ( A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             C   : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component ALU_DLX_MUSER_DLX_toplevel
      port ( A       : in    std_logic_vector (31 downto 0); 
             B       : in    std_logic_vector (31 downto 0); 
             test    : in    std_logic; 
             add     : in    std_logic; 
             ALUF    : in    std_logic_vector (2 downto 0); 
             ALU_OUT : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXN_262(31 downto 0) <= x"00000001";
   XLXN_410(4 downto 0) <= b"11111";
   XLXN_411(31 downto 0) <= x"00000000";
   DO(31 downto 0) <= DO_DUMMY(31 downto 0);
   PC(31 downto 0) <= PC_DUMMY(31 downto 0);
   REG_C : REG32CE
      port map (CE=>Cce,
                CLK=>CLK,
                DI(31 downto 0)=>DINT(31 downto 0),
                DO(31 downto 0)=>DO_C(31 downto 0));
   
   XLXI_4 : REG32CE
      port map (CE=>Ace,
                CLK=>CLK,
                DI(31 downto 0)=>DI_A(31 downto 0),
                DO(31 downto 0)=>DO_A(31 downto 0));
   
   XLXI_5 : REG32CE
      port map (CE=>Bce,
                CLK=>CLK,
                DI(31 downto 0)=>DI_B(31 downto 0),
                DO(31 downto 0)=>DO_B(31 downto 0));
   
   XLXI_6 : REG32RST
      port map (CE=>PCce,
                CLK=>CLK,
                DI(31 downto 0)=>DINT(31 downto 0),
                RST=>RST,
                DO(31 downto 0)=>PC_DUMMY(31 downto 0));
   
   XLXI_7 : REG32CE
      port map (CE=>MDRce,
                CLK=>CLK,
                DI(31 downto 0)=>MuxO_MDR(31 downto 0),
                DO(31 downto 0)=>DO_DUMMY(31 downto 0));
   
   XLXI_8 : MUX32bit
      port map (A(31 downto 0)=>DINT(31 downto 0),
                B(31 downto 0)=>DI(31 downto 0),
                sel=>MDRsel,
                O(31 downto 0)=>MuxO_MDR(31 downto 0));
   
   XLXI_9 : MUX4_32bit
      port map (A(31 downto 0)=>PC_DUMMY(31 downto 0),
                B(31 downto 0)=>DO_A(31 downto 0),
                C(31 downto 0)=>DO_B(31 downto 0),
                D(31 downto 0)=>DO_DUMMY(31 downto 0),
                sel(1 downto 0)=>S1sel(1 downto 0),
                O(31 downto 0)=>S1_O(31 downto 0));
   
   XLXI_10 : MUX4_32bit
      port map (A(31 downto 0)=>DO_B(31 downto 0),
                B(31 downto 0)=>imm_extended(31 downto 0),
                C(31 downto 0)=>XLXN_411(31 downto 0),
                D(31 downto 0)=>XLXN_262(31 downto 0),
                sel(1 downto 0)=>S2sel(1 downto 0),
                O(31 downto 0)=>S2_O(31 downto 0));
   
   XLXI_12 : MUX32bit
      port map (A(31 downto 0)=>PC_DUMMY(31 downto 0),
                B(31 downto 0)=>MAR_O(31 downto 0),
                sel=>Asel,
                O(31 downto 0)=>AO(31 downto 0));
   
   XLXI_13 : REG32CE
      port map (CE=>MARce,
                CLK=>CLK,
                DI(31 downto 0)=>DINT(31 downto 0),
                DO(31 downto 0)=>MAR_O(31 downto 0));
   
   XLXI_14 : Shifter_DLX
      port map (DI(31 downto 0)=>S1_O(31 downto 0),
                right=>right,
                shift=>shift,
                DO(31 downto 0)=>Shifter_O(31 downto 0));
   
   XLXI_15 : MMU_DLX
      port map (Addr(31 downto 0)=>AO(31 downto 0),
                MMU_O(31 downto 0)=>MMU_AO(31 downto 0));
   
   XLXI_94 : MUX5bit
      port map (A(4 downto 0)=>Caddr(4 downto 0),
                B(4 downto 0)=>XLXN_410(4 downto 0),
                sel=>jlink,
                O(4 downto 0)=>C_OR_JL_adr(4 downto 0));
   
   XLXI_140 : GPR_ENVIR_MUSER_DLX_toplevel
      port map (Aadr(4 downto 0)=>Aaddr(4 downto 0),
                Badr(4 downto 0)=>Baddr(4 downto 0),
                C(31 downto 0)=>DO_C(31 downto 0),
                Cadr(4 downto 0)=>C_OR_JL_adr(4 downto 0),
                CLK=>CLK,
                Dadr(4 downto 0)=>Daddr(4 downto 0),
                GPR_WE=>GPR_WE,
                A(31 downto 0)=>DI_A(31 downto 0),
                AEQZ_O=>AQEZ,
                B(31 downto 0)=>DI_B(31 downto 0),
                D(31 downto 0)=>D(31 downto 0));
   
   XLXI_142 : IR_DLX_MUSER_DLX_toplevel
      port map (CLK=>CLK,
                DI(31 downto 0)=>DI(31 downto 0),
                IRce=>IRce,
                Itype=>Itype,
                Aaddr(4 downto 0)=>Aaddr(4 downto 0),
                Baddr(4 downto 0)=>Baddr(4 downto 0),
                Caddr(4 downto 0)=>Caddr(4 downto 0),
                imm_extended(31 downto 0)=>imm_extended(31 downto 0),
                IR_OUT(31 downto 0)=>IR_OUT(31 downto 0));
   
   XLXI_144 : MAC_Unit_MUSER_DLX_toplevel
      port map (a(31 downto 0)=>S1_O(31 downto 0),
                b(31 downto 0)=>S2_O(31 downto 0),
                clk=>CLK,
                en=>MAC_EN,
                mul_mac_signal=>mul_mac,
                rst=>MAC_RST,
                o(31 downto 0)=>mul_mac_O(31 downto 0));
   
   XLXI_146 : MUX32bit_3in
      port map (A(31 downto 0)=>ALU_O(31 downto 0),
                B(31 downto 0)=>Shifter_O(31 downto 0),
                C(31 downto 0)=>mul_mac_O(31 downto 0),
                sel(1 downto 0)=>DINTsel(1 downto 0),
                O(31 downto 0)=>DINT(31 downto 0));
   
   XLXI_147 : ALU_DLX_MUSER_DLX_toplevel
      port map (A(31 downto 0)=>S1_O(31 downto 0),
                add=>add,
                ALUF(2 downto 0)=>ALUf(2 downto 0),
                B(31 downto 0)=>S2_O(31 downto 0),
                test=>test,
                ALU_OUT(31 downto 0)=>ALU_O(31 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity control_MUSER_DLX_toplevel is
   port ( ack_n       : in    std_logic; 
          AEQZ        : in    std_logic; 
          CLK         : in    std_logic; 
          opcode      : in    std_logic_vector (5 downto 0); 
          RESET       : in    std_logic; 
          R_type_func : in    std_logic_vector (5 downto 0); 
          STEP_EN     : in    std_logic; 
          Ace         : out   std_logic; 
          add         : out   std_logic; 
          ALUf        : out   std_logic_vector (2 downto 0); 
          Asel        : out   std_logic; 
          as_N        : out   std_logic; 
          Bce         : out   std_logic; 
          busy        : out   std_logic; 
          busy_m      : out   std_logic; 
          Cce         : out   std_logic; 
          DINTsel     : out   std_logic_vector (1 downto 0); 
          GPR_WE      : out   std_logic; 
          IN_INIT     : out   std_logic; 
          IRce        : out   std_logic; 
          Itype       : out   std_logic; 
          Jlink       : out   std_logic; 
          MAC_EN      : out   std_logic; 
          MAC_RST     : out   std_logic; 
          MAC_state   : out   std_logic_vector (1 downto 0); 
          MARce       : out   std_logic; 
          MDR         : out   std_logic; 
          MDRsel      : out   std_logic; 
          MR          : out   std_logic; 
          mul_mac     : out   std_logic; 
          MW          : out   std_logic; 
          PCce        : out   std_logic; 
          right       : out   std_logic; 
          shift       : out   std_logic; 
          STATE       : out   std_logic_vector (4 downto 0); 
          STOP_N      : out   std_logic; 
          S1sel       : out   std_logic_vector (1 downto 0); 
          S2sel       : out   std_logic_vector (1 downto 0); 
          test        : out   std_logic; 
          wr_N        : out   std_logic);
end control_MUSER_DLX_toplevel;

architecture BEHAVIORAL of control_MUSER_DLX_toplevel is
   attribute BOX_TYPE   : string ;
   signal MR_DUMMY     : std_logic;
   signal MW_DUMMY     : std_logic;
   signal busy_m_DUMMY : std_logic;
   component MAC_STATE_MACHINE
      port ( CLK    : in    std_logic; 
             RESET  : in    std_logic; 
             MR     : in    std_logic; 
             MW     : in    std_logic; 
             ACK_N  : in    std_logic; 
             busy   : out   std_logic; 
             AS_N   : out   std_logic; 
             WR_N   : out   std_logic; 
             STOP_N : out   std_logic; 
             STATE  : out   std_logic_vector (1 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component control_FSM
      port ( CLK         : in    std_logic; 
             RESET       : in    std_logic; 
             STEP_EN     : in    std_logic; 
             busy        : in    std_logic; 
             AEQZ        : in    std_logic; 
             opcode      : in    std_logic_vector (5 downto 0); 
             R_type_func : in    std_logic_vector (5 downto 0); 
             IRce        : out   std_logic; 
             PCce        : out   std_logic; 
             Ace         : out   std_logic; 
             Bce         : out   std_logic; 
             Cce         : out   std_logic; 
             MARce       : out   std_logic; 
             MDRce       : out   std_logic; 
             MDRsel      : out   std_logic; 
             Asel        : out   std_logic; 
             shift_o     : out   std_logic; 
             right       : out   std_logic; 
             add_o       : out   std_logic; 
             test        : out   std_logic; 
             MR          : out   std_logic; 
             MW          : out   std_logic; 
             GPR_WE      : out   std_logic; 
             Itype       : out   std_logic; 
             Jlink       : out   std_logic; 
             IN_INIT     : out   std_logic; 
             MAC_EN      : out   std_logic; 
             MAC_RST     : out   std_logic; 
             mul_mac     : out   std_logic; 
             STATE_o     : out   std_logic_vector (4 downto 0); 
             ALUf        : out   std_logic_vector (2 downto 0); 
             S1sel       : out   std_logic_vector (1 downto 0); 
             S2sel       : out   std_logic_vector (1 downto 0); 
             DINTsel     : out   std_logic_vector (1 downto 0));
   end component;
   
begin
   busy_m <= busy_m_DUMMY;
   MR <= MR_DUMMY;
   MW <= MW_DUMMY;
   XLXI_1 : MAC_STATE_MACHINE
      port map (ACK_N=>ack_n,
                CLK=>CLK,
                MR=>MR_DUMMY,
                MW=>MW_DUMMY,
                RESET=>RESET,
                AS_N=>as_N,
                busy=>busy_m_DUMMY,
                STATE(1 downto 0)=>MAC_state(1 downto 0),
                STOP_N=>STOP_N,
                WR_N=>wr_N);
   
   XLXI_4 : BUF
      port map (I=>busy_m_DUMMY,
                O=>busy);
   
   XLXI_5 : control_FSM
      port map (AEQZ=>AEQZ,
                busy=>busy_m_DUMMY,
                CLK=>CLK,
                opcode(5 downto 0)=>opcode(5 downto 0),
                RESET=>RESET,
                R_type_func(5 downto 0)=>R_type_func(5 downto 0),
                STEP_EN=>STEP_EN,
                Ace=>Ace,
                add_o=>add,
                ALUf(2 downto 0)=>ALUf(2 downto 0),
                Asel=>Asel,
                Bce=>Bce,
                Cce=>Cce,
                DINTsel(1 downto 0)=>DINTsel(1 downto 0),
                GPR_WE=>GPR_WE,
                IN_INIT=>IN_INIT,
                IRce=>IRce,
                Itype=>Itype,
                Jlink=>Jlink,
                MAC_EN=>MAC_EN,
                MAC_RST=>MAC_RST,
                MARce=>MARce,
                MDRce=>MDR,
                MDRsel=>MDRsel,
                MR=>MR_DUMMY,
                mul_mac=>mul_mac,
                MW=>MW_DUMMY,
                PCce=>PCce,
                right=>right,
                shift_o=>shift,
                STATE_o(4 downto 0)=>STATE(4 downto 0),
                S1sel(1 downto 0)=>S1sel(1 downto 0),
                S2sel(1 downto 0)=>S2sel(1 downto 0),
                test=>test);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity DLX_toplevel is
   port ( ack_n     : in    std_logic; 
          CLK       : in    std_logic; 
          Daddr     : in    std_logic_vector (4 downto 0); 
          DI        : in    std_logic_vector (31 downto 0); 
          RST       : in    std_logic; 
          STEP_EN   : in    std_logic; 
          Ace       : out   std_logic; 
          add       : out   std_logic; 
          AEQZ      : out   std_logic; 
          ALUf      : out   std_logic_vector (2 downto 0); 
          Asel      : out   std_logic; 
          as_N      : out   std_logic; 
          Bce       : out   std_logic; 
          busy      : out   std_logic; 
          Cce       : out   std_logic; 
          D         : out   std_logic_vector (31 downto 0); 
          DINTsel   : out   std_logic_vector (1 downto 0); 
          DO        : out   std_logic_vector (31 downto 0); 
          GPR_WE    : out   std_logic; 
          IN_INIT   : out   std_logic; 
          IRce      : out   std_logic; 
          IR_OUT    : out   std_logic_vector (31 downto 0); 
          Itype     : out   std_logic; 
          Jlink     : out   std_logic; 
          MAC_EN    : out   std_logic; 
          MAC_RST   : out   std_logic; 
          MAC_State : out   std_logic_vector (1 downto 0); 
          MARce     : out   std_logic; 
          MDRce     : out   std_logic; 
          MDRsel    : out   std_logic; 
          MMU_AO    : out   std_logic_vector (31 downto 0); 
          MR        : out   std_logic; 
          mul_mac   : out   std_logic; 
          MW        : out   std_logic; 
          PC        : out   std_logic_vector (31 downto 0); 
          PCce      : out   std_logic; 
          right     : out   std_logic; 
          shift     : out   std_logic; 
          STATE     : out   std_logic_vector (4 downto 0); 
          STOP_N    : out   std_logic; 
          S1sel     : out   std_logic_vector (1 downto 0); 
          S2sel     : out   std_logic_vector (1 downto 0); 
          test      : out   std_logic; 
          wr_N      : out   std_logic);
end DLX_toplevel;

architecture BEHAVIORAL of DLX_toplevel is
   signal MARce_DUMMY   : std_logic;
   signal ALUf_DUMMY    : std_logic_vector (2 downto 0);
   signal mul_mac_DUMMY : std_logic;
   signal Bce_DUMMY     : std_logic;
   signal IR_OUT_DUMMY  : std_logic_vector (31 downto 0);
   signal right_DUMMY   : std_logic;
   signal add_DUMMY     : std_logic;
   signal MAC_RST_DUMMY : std_logic;
   signal S1sel_DUMMY   : std_logic_vector (1 downto 0);
   signal Jlink_DUMMY   : std_logic;
   signal MDRsel_DUMMY  : std_logic;
   signal DINTsel_DUMMY : std_logic_vector (1 downto 0);
   signal Ace_DUMMY     : std_logic;
   signal S2sel_DUMMY   : std_logic_vector (1 downto 0);
   signal MDRce_DUMMY   : std_logic;
   signal shift_DUMMY   : std_logic;
   signal test_DUMMY    : std_logic;
   signal GPR_WE_DUMMY  : std_logic;
   signal PCce_DUMMY    : std_logic;
   signal AEQZ_DUMMY    : std_logic;
   signal Cce_DUMMY     : std_logic;
   signal Asel_DUMMY    : std_logic;
   signal Itype_DUMMY   : std_logic;
   signal MAC_EN_DUMMY  : std_logic;
   signal IRce_DUMMY    : std_logic;
   component control_MUSER_DLX_toplevel
      port ( CLK         : in    std_logic; 
             RESET       : in    std_logic; 
             ack_n       : in    std_logic; 
             STEP_EN     : in    std_logic; 
             AEQZ        : in    std_logic; 
             opcode      : in    std_logic_vector (5 downto 0); 
             R_type_func : in    std_logic_vector (5 downto 0); 
             MR          : out   std_logic; 
             MW          : out   std_logic; 
             as_N        : out   std_logic; 
             wr_N        : out   std_logic; 
             STOP_N      : out   std_logic; 
             MAC_state   : out   std_logic_vector (1 downto 0); 
             busy_m      : out   std_logic; 
             busy        : out   std_logic; 
             IRce        : out   std_logic; 
             PCce        : out   std_logic; 
             Ace         : out   std_logic; 
             Bce         : out   std_logic; 
             Cce         : out   std_logic; 
             MARce       : out   std_logic; 
             MDR         : out   std_logic; 
             MDRsel      : out   std_logic; 
             Asel        : out   std_logic; 
             shift       : out   std_logic; 
             right       : out   std_logic; 
             add         : out   std_logic; 
             test        : out   std_logic; 
             GPR_WE      : out   std_logic; 
             Itype       : out   std_logic; 
             Jlink       : out   std_logic; 
             IN_INIT     : out   std_logic; 
             STATE       : out   std_logic_vector (4 downto 0); 
             ALUf        : out   std_logic_vector (2 downto 0); 
             S1sel       : out   std_logic_vector (1 downto 0); 
             S2sel       : out   std_logic_vector (1 downto 0); 
             DINTsel     : out   std_logic_vector (1 downto 0); 
             MAC_EN      : out   std_logic; 
             MAC_RST     : out   std_logic; 
             mul_mac     : out   std_logic);
   end component;
   
   component datapath_DLX_MUSER_DLX_toplevel
      port ( Ace     : in    std_logic; 
             ALUf    : in    std_logic_vector (2 downto 0); 
             S2sel   : in    std_logic_vector (1 downto 0); 
             S1sel   : in    std_logic_vector (1 downto 0); 
             jlink   : in    std_logic; 
             add     : in    std_logic; 
             test    : in    std_logic; 
             Itype   : in    std_logic; 
             right   : in    std_logic; 
             shift   : in    std_logic; 
             Asel    : in    std_logic; 
             MDRsel  : in    std_logic; 
             MARce   : in    std_logic; 
             IRce    : in    std_logic; 
             MDRce   : in    std_logic; 
             PCce    : in    std_logic; 
             GPR_WE  : in    std_logic; 
             Cce     : in    std_logic; 
             Bce     : in    std_logic; 
             CLK     : in    std_logic; 
             RST     : in    std_logic; 
             Daddr   : in    std_logic_vector (4 downto 0); 
             DI      : in    std_logic_vector (31 downto 0); 
             MAC_RST : in    std_logic; 
             MAC_EN  : in    std_logic; 
             mul_mac : in    std_logic; 
             DINTsel : in    std_logic_vector (1 downto 0); 
             D       : out   std_logic_vector (31 downto 0); 
             AQEZ    : out   std_logic; 
             MMU_AO  : out   std_logic_vector (31 downto 0); 
             DO      : out   std_logic_vector (31 downto 0); 
             IR_OUT  : out   std_logic_vector (31 downto 0); 
             PC      : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   Ace <= Ace_DUMMY;
   add <= add_DUMMY;
   AEQZ <= AEQZ_DUMMY;
   ALUf(2 downto 0) <= ALUf_DUMMY(2 downto 0);
   Asel <= Asel_DUMMY;
   Bce <= Bce_DUMMY;
   Cce <= Cce_DUMMY;
   DINTsel(1 downto 0) <= DINTsel_DUMMY(1 downto 0);
   GPR_WE <= GPR_WE_DUMMY;
   IRce <= IRce_DUMMY;
   IR_OUT(31 downto 0) <= IR_OUT_DUMMY(31 downto 0);
   Itype <= Itype_DUMMY;
   Jlink <= Jlink_DUMMY;
   MAC_EN <= MAC_EN_DUMMY;
   MAC_RST <= MAC_RST_DUMMY;
   MARce <= MARce_DUMMY;
   MDRce <= MDRce_DUMMY;
   MDRsel <= MDRsel_DUMMY;
   mul_mac <= mul_mac_DUMMY;
   PCce <= PCce_DUMMY;
   right <= right_DUMMY;
   shift <= shift_DUMMY;
   S1sel(1 downto 0) <= S1sel_DUMMY(1 downto 0);
   S2sel(1 downto 0) <= S2sel_DUMMY(1 downto 0);
   test <= test_DUMMY;
   XLXI_1 : control_MUSER_DLX_toplevel
      port map (ack_n=>ack_n,
                AEQZ=>AEQZ_DUMMY,
                CLK=>CLK,
                opcode(5 downto 0)=>IR_OUT_DUMMY(31 downto 26),
                RESET=>RST,
                R_type_func(5 downto 0)=>IR_OUT_DUMMY(5 downto 0),
                STEP_EN=>STEP_EN,
                Ace=>Ace_DUMMY,
                add=>add_DUMMY,
                ALUf(2 downto 0)=>ALUf_DUMMY(2 downto 0),
                Asel=>Asel_DUMMY,
                as_N=>as_N,
                Bce=>Bce_DUMMY,
                busy=>busy,
                busy_m=>open,
                Cce=>Cce_DUMMY,
                DINTsel(1 downto 0)=>DINTsel_DUMMY(1 downto 0),
                GPR_WE=>GPR_WE_DUMMY,
                IN_INIT=>IN_INIT,
                IRce=>IRce_DUMMY,
                Itype=>Itype_DUMMY,
                Jlink=>Jlink_DUMMY,
                MAC_EN=>MAC_EN_DUMMY,
                MAC_RST=>MAC_RST_DUMMY,
                MAC_state(1 downto 0)=>MAC_State(1 downto 0),
                MARce=>MARce_DUMMY,
                MDR=>MDRce_DUMMY,
                MDRsel=>MDRsel_DUMMY,
                MR=>MR,
                mul_mac=>mul_mac_DUMMY,
                MW=>MW,
                PCce=>PCce_DUMMY,
                right=>right_DUMMY,
                shift=>shift_DUMMY,
                STATE(4 downto 0)=>STATE(4 downto 0),
                STOP_N=>STOP_N,
                S1sel(1 downto 0)=>S1sel_DUMMY(1 downto 0),
                S2sel(1 downto 0)=>S2sel_DUMMY(1 downto 0),
                test=>test_DUMMY,
                wr_N=>wr_N);
   
   XLXI_2 : datapath_DLX_MUSER_DLX_toplevel
      port map (Ace=>Ace_DUMMY,
                add=>add_DUMMY,
                ALUf(2 downto 0)=>ALUf_DUMMY(2 downto 0),
                Asel=>Asel_DUMMY,
                Bce=>Bce_DUMMY,
                Cce=>Cce_DUMMY,
                CLK=>CLK,
                Daddr(4 downto 0)=>Daddr(4 downto 0),
                DI(31 downto 0)=>DI(31 downto 0),
                DINTsel(1 downto 0)=>DINTsel_DUMMY(1 downto 0),
                GPR_WE=>GPR_WE_DUMMY,
                IRce=>IRce_DUMMY,
                Itype=>Itype_DUMMY,
                jlink=>Jlink_DUMMY,
                MAC_EN=>MAC_EN_DUMMY,
                MAC_RST=>MAC_RST_DUMMY,
                MARce=>MARce_DUMMY,
                MDRce=>MDRce_DUMMY,
                MDRsel=>MDRsel_DUMMY,
                mul_mac=>mul_mac_DUMMY,
                PCce=>PCce_DUMMY,
                right=>right_DUMMY,
                RST=>RST,
                shift=>shift_DUMMY,
                S1sel(1 downto 0)=>S1sel_DUMMY(1 downto 0),
                S2sel(1 downto 0)=>S2sel_DUMMY(1 downto 0),
                test=>test_DUMMY,
                AQEZ=>AEQZ_DUMMY,
                D(31 downto 0)=>D(31 downto 0),
                DO(31 downto 0)=>DO(31 downto 0),
                IR_OUT(31 downto 0)=>IR_OUT_DUMMY(31 downto 0),
                MMU_AO(31 downto 0)=>MMU_AO(31 downto 0),
                PC(31 downto 0)=>PC(31 downto 0));
   
end BEHAVIORAL;


