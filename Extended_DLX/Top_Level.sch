<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Card_Sel" />
        <signal name="Rsel" />
        <signal name="AI(9:0)" />
        <signal name="DO(31:0)" />
        <signal name="WR_IN_N" />
        <signal name="RACK_N" />
        <signal name="MAO(31:0)" />
        <signal name="MDO(31:0)" />
        <signal name="SACK_N" />
        <signal name="IN_INIT" />
        <signal name="CLK" />
        <signal name="STEP_EN" />
        <signal name="AS_N" />
        <signal name="WR_OUT_N" />
        <signal name="RESET" />
        <signal name="R_DO(31:0)" />
        <signal name="sdClk_o" />
        <signal name="sdBs_o(1:0)" />
        <signal name="sdDqml_o" />
        <signal name="sdDqmh_o" />
        <signal name="sdWe_bo" />
        <signal name="sdCas_bo" />
        <signal name="sdRas_bo" />
        <signal name="sdCe_bo" />
        <signal name="sdCke_o" />
        <signal name="fpgaClk_i" />
        <signal name="sdClkFb_i" />
        <signal name="sdData_io(15:0)" />
        <signal name="sdAddr_o(12:0)" />
        <signal name="SDO(31:0)" />
        <signal name="ACK_N" />
        <signal name="STOP_N" />
        <signal name="reg_adr(4:0)" />
        <signal name="SIGNALS(31:0)" />
        <signal name="D(31:0)" />
        <signal name="SIGNALS(21)" />
        <signal name="SIGNALS(20)" />
        <signal name="SIGNALS(19)" />
        <signal name="SIGNALS(22)" />
        <signal name="SIGNALS(23)" />
        <signal name="SIGNALS(25)" />
        <signal name="SIGNALS(24)" />
        <signal name="SIGNALS(9)" />
        <signal name="SIGNALS(11)" />
        <signal name="SIGNALS(28:26)" />
        <signal name="SIGNALS(6:5)" />
        <signal name="SIGNALS(12)" />
        <signal name="SIGNALS(17)" />
        <signal name="SIGNALS(18)" />
        <signal name="SIGNALS(8:7)" />
        <signal name="SIGNALS(31)" />
        <signal name="SIGNALS(30)" />
        <signal name="SIGNALS(29)" />
        <signal name="SIGNALS(4:0)" />
        <signal name="SIGNALS(10)" />
        <signal name="SIGNALS(14)" />
        <signal name="SIGNALS(13)" />
        <signal name="SIGNALS(16:15)" />
        <port polarity="Output" name="sdClk_o" />
        <port polarity="Output" name="sdBs_o(1:0)" />
        <port polarity="Output" name="sdDqml_o" />
        <port polarity="Output" name="sdDqmh_o" />
        <port polarity="Output" name="sdWe_bo" />
        <port polarity="Output" name="sdCas_bo" />
        <port polarity="Output" name="sdRas_bo" />
        <port polarity="Output" name="sdCe_bo" />
        <port polarity="Output" name="sdCke_o" />
        <port polarity="Input" name="fpgaClk_i" />
        <port polarity="Input" name="sdClkFb_i" />
        <port polarity="BiDirectional" name="sdData_io(15:0)" />
        <port polarity="Output" name="sdAddr_o(12:0)" />
        <blockdef name="IO_LOGIC_U">
            <timestamp>2015-7-8T11:14:45</timestamp>
            <rect width="304" x="64" y="-1280" height="1280" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <line x2="0" y1="-1136" y2="-1136" x1="64" />
            <line x2="0" y1="-1024" y2="-1024" x1="64" />
            <line x2="0" y1="-912" y2="-912" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-688" y2="-688" x1="64" />
            <line x2="0" y1="-576" y2="-576" x1="64" />
            <rect width="64" x="0" y="-476" height="24" />
            <line x2="0" y1="-464" y2="-464" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-252" height="24" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="432" y1="-1248" y2="-1248" x1="368" />
            <line x2="432" y1="-1184" y2="-1184" x1="368" />
            <line x2="432" y1="-1120" y2="-1120" x1="368" />
            <line x2="432" y1="-1056" y2="-1056" x1="368" />
            <line x2="432" y1="-992" y2="-992" x1="368" />
            <line x2="432" y1="-928" y2="-928" x1="368" />
            <line x2="432" y1="-864" y2="-864" x1="368" />
            <line x2="432" y1="-800" y2="-800" x1="368" />
            <line x2="432" y1="-736" y2="-736" x1="368" />
            <line x2="432" y1="-672" y2="-672" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="monitor">
            <timestamp>2024-11-28T14:46:33</timestamp>
            <rect width="416" x="64" y="-640" height="640" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="544" y1="-608" y2="-608" x1="480" />
            <rect width="64" x="480" y="-332" height="24" />
            <line x2="544" y1="-320" y2="-320" x1="480" />
            <rect width="64" x="480" y="-44" height="24" />
            <line x2="544" y1="-32" y2="-32" x1="480" />
        </blockdef>
        <blockdef name="DLX_toplevel">
            <timestamp>2025-3-11T16:17:7</timestamp>
            <rect width="304" x="64" y="-2432" height="2432" />
            <line x2="0" y1="-2400" y2="-2400" x1="64" />
            <line x2="0" y1="-1936" y2="-1936" x1="64" />
            <line x2="0" y1="-1472" y2="-1472" x1="64" />
            <line x2="0" y1="-1008" y2="-1008" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-92" height="24" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="432" y1="-2400" y2="-2400" x1="368" />
            <line x2="432" y1="-2336" y2="-2336" x1="368" />
            <line x2="432" y1="-2272" y2="-2272" x1="368" />
            <line x2="432" y1="-2208" y2="-2208" x1="368" />
            <line x2="432" y1="-2144" y2="-2144" x1="368" />
            <line x2="432" y1="-2080" y2="-2080" x1="368" />
            <line x2="432" y1="-2016" y2="-2016" x1="368" />
            <line x2="432" y1="-1952" y2="-1952" x1="368" />
            <line x2="432" y1="-1888" y2="-1888" x1="368" />
            <line x2="432" y1="-1824" y2="-1824" x1="368" />
            <line x2="432" y1="-1760" y2="-1760" x1="368" />
            <line x2="432" y1="-1696" y2="-1696" x1="368" />
            <line x2="432" y1="-1632" y2="-1632" x1="368" />
            <line x2="432" y1="-1568" y2="-1568" x1="368" />
            <line x2="432" y1="-1504" y2="-1504" x1="368" />
            <line x2="432" y1="-1440" y2="-1440" x1="368" />
            <rect width="64" x="368" y="-1388" height="24" />
            <line x2="432" y1="-1376" y2="-1376" x1="368" />
            <rect width="64" x="368" y="-1324" height="24" />
            <line x2="432" y1="-1312" y2="-1312" x1="368" />
            <rect width="64" x="368" y="-1260" height="24" />
            <line x2="432" y1="-1248" y2="-1248" x1="368" />
            <line x2="432" y1="-1184" y2="-1184" x1="368" />
            <line x2="432" y1="-1120" y2="-1120" x1="368" />
            <line x2="432" y1="-1056" y2="-1056" x1="368" />
            <line x2="432" y1="-992" y2="-992" x1="368" />
            <line x2="432" y1="-928" y2="-928" x1="368" />
            <line x2="432" y1="-864" y2="-864" x1="368" />
            <rect width="64" x="368" y="-812" height="24" />
            <line x2="432" y1="-800" y2="-800" x1="368" />
            <line x2="432" y1="-736" y2="-736" x1="368" />
            <line x2="432" y1="-672" y2="-672" x1="368" />
            <rect width="64" x="368" y="-620" height="24" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <rect width="64" x="368" y="-556" height="24" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <block symbolname="IO_LOGIC_U" name="XLXI_23">
            <blockpin signalname="AS_N" name="AS_N_i" />
            <blockpin signalname="fpgaClk_i" name="fpgaClk_i" />
            <blockpin signalname="IN_INIT" name="in_init_i" />
            <blockpin signalname="RACK_N" name="RACK_N_i" />
            <blockpin signalname="SACK_N" name="SACK_N_i" />
            <blockpin signalname="sdClkFb_i" name="sdClkFb_i" />
            <blockpin signalname="WR_OUT_N" name="WR_N_i" />
            <blockpin signalname="MAO(31:0)" name="MA_i(31:0)" />
            <blockpin signalname="MDO(31:0)" name="MD_i(31:0)" />
            <blockpin signalname="R_DO(31:0)" name="RD_i(31:0)" />
            <blockpin signalname="SDO(31:0)" name="SD_i(31:0)" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="ACK_N" name="MACK_N_o" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="Rsel" name="Rsel_o" />
            <blockpin signalname="sdCas_bo" name="sdCas_bo" />
            <blockpin signalname="sdCe_bo" name="sdCe_bo" />
            <blockpin signalname="sdCke_o" name="sdCke_o" />
            <blockpin signalname="sdClk_o" name="sdClk_o" />
            <blockpin signalname="sdDqmh_o" name="sdDqmh_o" />
            <blockpin signalname="sdDqml_o" name="sdDqml_o" />
            <blockpin signalname="sdRas_bo" name="sdRas_bo" />
            <blockpin signalname="sdWe_bo" name="sdWe_bo" />
            <blockpin signalname="Card_Sel" name="Ssel_o" />
            <blockpin signalname="STEP_EN" name="step_en_o" />
            <blockpin signalname="WR_IN_N" name="WR_N_o" />
            <blockpin signalname="AI(9:0)" name="A_o(9:0)" />
            <blockpin signalname="DO(31:0)" name="DO(31:0)" />
            <blockpin signalname="sdAddr_o(12:0)" name="sdAddr_o(12:0)" />
            <blockpin signalname="sdBs_o(1:0)" name="sdBs_o(1:0)" />
            <blockpin signalname="sdData_io(15:0)" name="sdData_io(15:0)" />
        </block>
        <block symbolname="monitor" name="XLXI_33">
            <blockpin signalname="SIGNALS(31:0)" name="SIGNALS(31:0)" />
            <blockpin signalname="STEP_EN" name="step_en" />
            <blockpin signalname="IN_INIT" name="in_init" />
            <blockpin signalname="STOP_N" name="stop_n" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="Card_Sel" name="CARDSEL" />
            <blockpin signalname="WR_IN_N" name="WR_N" />
            <blockpin signalname="MAO(31:0)" name="SLAVE_C(31:0)" />
            <blockpin signalname="D(31:0)" name="SLAVE_D(31:0)" />
            <blockpin signalname="AI(9:0)" name="AI(9:0)" />
            <blockpin signalname="SACK_N" name="SACK_N" />
            <blockpin signalname="reg_adr(4:0)" name="reg_write(4:0)" />
            <blockpin signalname="SDO(31:0)" name="SLAVE_OUTPUT(31:0)" />
        </block>
        <block symbolname="DLX_toplevel" name="XLXI_35">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="ACK_N" name="ack_n" />
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="reg_adr(4:0)" name="Daddr(4:0)" />
            <blockpin signalname="DO(31:0)" name="DI(31:0)" />
            <blockpin signalname="SIGNALS(21)" name="Jlink" />
            <blockpin signalname="SIGNALS(20)" name="Itype" />
            <blockpin signalname="SIGNALS(19)" name="GPR_WE" />
            <blockpin signalname="SIGNALS(22)" name="test" />
            <blockpin signalname="SIGNALS(23)" name="add" />
            <blockpin signalname="SIGNALS(25)" name="right" />
            <blockpin signalname="SIGNALS(24)" name="shift" />
            <blockpin signalname="SIGNALS(9)" name="Asel" />
            <blockpin signalname="SIGNALS(11)" name="MDRsel" />
            <blockpin signalname="SIGNALS(18)" name="MDRce" />
            <blockpin signalname="SIGNALS(17)" name="MARce" />
            <blockpin name="Cce" />
            <blockpin name="Bce" />
            <blockpin name="Ace" />
            <blockpin name="PCce" />
            <blockpin signalname="SIGNALS(12)" name="IRce" />
            <blockpin signalname="SIGNALS(6:5)" name="S1sel(1:0)" />
            <blockpin signalname="SIGNALS(28:26)" name="ALUf(2:0)" />
            <blockpin signalname="SIGNALS(8:7)" name="S2sel(1:0)" />
            <blockpin name="AEQZ" />
            <blockpin signalname="SIGNALS(31)" name="MW" />
            <blockpin signalname="SIGNALS(30)" name="MR" />
            <blockpin signalname="AS_N" name="as_N" />
            <blockpin signalname="WR_OUT_N" name="wr_N" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin name="MAC_State(1:0)" />
            <blockpin signalname="SIGNALS(29)" name="busy" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="SIGNALS(4:0)" name="STATE(4:0)" />
            <blockpin signalname="SIGNALS(16:15)" name="DINTsel(1:0)" />
            <blockpin signalname="SIGNALS(10)" name="MAC_EN" />
            <blockpin signalname="SIGNALS(14)" name="MAC_RST" />
            <blockpin signalname="SIGNALS(13)" name="mul_mac" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="MAO(31:0)" name="MMU_AO(31:0)" />
            <blockpin signalname="MDO(31:0)" name="DO(31:0)" />
            <blockpin name="IR_OUT(31:0)" />
            <blockpin name="PC(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="208" type="branch" />
            <wire x2="608" y1="208" y2="208" x1="416" />
        </branch>
        <branch name="WR_OUT_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="256" type="branch" />
            <wire x2="608" y1="256" y2="256" x1="416" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="304" type="branch" />
            <wire x2="608" y1="304" y2="304" x1="416" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="352" type="branch" />
            <wire x2="608" y1="352" y2="352" x1="416" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="400" type="branch" />
            <wire x2="608" y1="400" y2="400" x1="416" />
        </branch>
        <text style="fontsize:32;fontname:Arial" x="444" y="488">Master I/O</text>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="592" type="branch" />
            <wire x2="592" y1="592" y2="592" x1="400" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="640" type="branch" />
            <wire x2="592" y1="640" y2="640" x1="400" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="688" type="branch" />
            <wire x2="592" y1="688" y2="688" x1="400" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="736" type="branch" />
            <wire x2="592" y1="736" y2="736" x1="400" />
        </branch>
        <text style="fontsize:32;fontname:Arial" x="428" y="800">Control I/O</text>
        <branch name="SDO(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1408" type="branch" />
            <wire x2="1728" y1="1408" y2="1408" x1="1680" />
            <wire x2="1744" y1="1408" y2="1408" x1="1728" />
        </branch>
        <branch name="reg_adr(4:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1120" type="branch" />
            <wire x2="1728" y1="1120" y2="1120" x1="1680" />
            <wire x2="1744" y1="1120" y2="1120" x1="1728" />
        </branch>
        <branch name="SACK_N">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="832" type="branch" />
            <wire x2="1728" y1="832" y2="832" x1="1680" />
            <wire x2="1744" y1="832" y2="832" x1="1728" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1408" type="branch" />
            <wire x2="1088" y1="1408" y2="1408" x1="1072" />
            <wire x2="1136" y1="1408" y2="1408" x1="1088" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1344" type="branch" />
            <wire x2="1120" y1="1344" y2="1344" x1="1104" />
            <wire x2="1136" y1="1344" y2="1344" x1="1120" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1280" type="branch" />
            <wire x2="1120" y1="1280" y2="1280" x1="1104" />
            <wire x2="1136" y1="1280" y2="1280" x1="1120" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1216" type="branch" />
            <wire x2="1104" y1="1216" y2="1216" x1="1088" />
            <wire x2="1136" y1="1216" y2="1216" x1="1104" />
        </branch>
        <branch name="Card_Sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1152" type="branch" />
            <wire x2="1104" y1="1152" y2="1152" x1="1088" />
            <wire x2="1136" y1="1152" y2="1152" x1="1104" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1088" type="branch" />
            <wire x2="1104" y1="1088" y2="1088" x1="1088" />
            <wire x2="1136" y1="1088" y2="1088" x1="1104" />
        </branch>
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1024" type="branch" />
            <wire x2="960" y1="1024" y2="1024" x1="896" />
            <wire x2="1104" y1="1024" y2="1024" x1="960" />
            <wire x2="1136" y1="1024" y2="1024" x1="1104" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="960" type="branch" />
            <wire x2="1104" y1="960" y2="960" x1="1088" />
            <wire x2="1136" y1="960" y2="960" x1="1104" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="896" type="branch" />
            <wire x2="1104" y1="896" y2="896" x1="1088" />
            <wire x2="1136" y1="896" y2="896" x1="1104" />
        </branch>
        <branch name="SIGNALS(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="832" type="branch" />
            <wire x2="1104" y1="832" y2="832" x1="1088" />
            <wire x2="1136" y1="832" y2="832" x1="1104" />
        </branch>
        <instance x="1136" y="1440" name="XLXI_33" orien="R0">
        </instance>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="944" type="branch" />
            <wire x2="608" y1="944" y2="944" x1="400" />
        </branch>
        <text style="fontsize:32;fontname:Arial" x="416" y="1004">Bus data O</text>
        <branch name="Card_Sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1344" type="branch" />
            <wire x2="624" y1="1344" y2="1344" x1="416" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1296" type="branch" />
            <wire x2="624" y1="1296" y2="1296" x1="416" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1248" type="branch" />
            <wire x2="624" y1="1248" y2="1248" x1="416" />
        </branch>
        <branch name="SDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1200" type="branch" />
            <wire x2="624" y1="1200" y2="1200" x1="416" />
        </branch>
        <branch name="SACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="1152" type="branch" />
            <wire x2="624" y1="1152" y2="1152" x1="416" />
        </branch>
        <text style="fontsize:32;fontname:Arial" x="456" y="1404">Slave I/O</text>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="144" type="branch" />
            <wire x2="2400" y1="144" y2="144" x1="2368" />
            <wire x2="2416" y1="144" y2="144" x1="2400" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="608" type="branch" />
            <wire x2="2400" y1="608" y2="608" x1="2384" />
            <wire x2="2416" y1="608" y2="608" x1="2400" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1072" type="branch" />
            <wire x2="2400" y1="1072" y2="1072" x1="2384" />
            <wire x2="2416" y1="1072" y2="1072" x1="2400" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1536" type="branch" />
            <wire x2="2384" y1="1536" y2="1536" x1="2352" />
            <wire x2="2400" y1="1536" y2="1536" x1="2384" />
            <wire x2="2416" y1="1536" y2="1536" x1="2400" />
        </branch>
        <branch name="reg_adr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="2000" type="branch" />
            <wire x2="2400" y1="2000" y2="2000" x1="2352" />
            <wire x2="2416" y1="2000" y2="2000" x1="2400" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="2464" type="branch" />
            <wire x2="2400" y1="2464" y2="2464" x1="2368" />
            <wire x2="2416" y1="2464" y2="2464" x1="2400" />
        </branch>
        <branch name="SIGNALS(21)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="144" type="branch" />
            <wire x2="2928" y1="144" y2="144" x1="2848" />
        </branch>
        <branch name="SIGNALS(20)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="208" type="branch" />
            <wire x2="2896" y1="208" y2="208" x1="2848" />
            <wire x2="2912" y1="208" y2="208" x1="2896" />
        </branch>
        <branch name="SIGNALS(19)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="272" type="branch" />
            <wire x2="2928" y1="272" y2="272" x1="2848" />
        </branch>
        <branch name="SIGNALS(22)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="336" type="branch" />
            <wire x2="2928" y1="336" y2="336" x1="2848" />
        </branch>
        <branch name="SIGNALS(23)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="400" type="branch" />
            <wire x2="2928" y1="400" y2="400" x1="2848" />
        </branch>
        <branch name="SIGNALS(25)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="464" type="branch" />
            <wire x2="2928" y1="464" y2="464" x1="2848" />
        </branch>
        <branch name="SIGNALS(24)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="528" type="branch" />
            <wire x2="2912" y1="528" y2="528" x1="2848" />
            <wire x2="2928" y1="528" y2="528" x1="2912" />
        </branch>
        <branch name="SIGNALS(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="592" type="branch" />
            <wire x2="2912" y1="592" y2="592" x1="2848" />
        </branch>
        <branch name="SIGNALS(11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="656" type="branch" />
            <wire x2="2896" y1="656" y2="656" x1="2848" />
        </branch>
        <branch name="SIGNALS(28:26)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="1232" type="branch" />
            <wire x2="2896" y1="1232" y2="1232" x1="2848" />
        </branch>
        <branch name="SIGNALS(6:5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="1168" type="branch" />
            <wire x2="2912" y1="1168" y2="1168" x1="2848" />
        </branch>
        <branch name="SIGNALS(12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="1104" type="branch" />
            <wire x2="2912" y1="1104" y2="1104" x1="2848" />
        </branch>
        <branch name="SIGNALS(17)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="784" type="branch" />
            <wire x2="2896" y1="784" y2="784" x1="2848" />
            <wire x2="2912" y1="784" y2="784" x1="2896" />
        </branch>
        <branch name="SIGNALS(18)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="720" type="branch" />
            <wire x2="2912" y1="720" y2="720" x1="2848" />
        </branch>
        <branch name="SIGNALS(8:7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="1296" type="branch" />
            <wire x2="2896" y1="1296" y2="1296" x1="2848" />
        </branch>
        <branch name="SIGNALS(31)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="1424" type="branch" />
            <wire x2="2928" y1="1424" y2="1424" x1="2848" />
        </branch>
        <branch name="SIGNALS(30)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2944" y="1488" type="branch" />
            <wire x2="2944" y1="1488" y2="1488" x1="2848" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="1552" type="branch" />
            <wire x2="2864" y1="1552" y2="1552" x1="2848" />
        </branch>
        <branch name="WR_OUT_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="1616" type="branch" />
            <wire x2="2864" y1="1616" y2="1616" x1="2848" />
        </branch>
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="1680" type="branch" />
            <wire x2="2864" y1="1680" y2="1680" x1="2848" />
        </branch>
        <branch name="SIGNALS(29)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="1808" type="branch" />
            <wire x2="2864" y1="1808" y2="1808" x1="2848" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2944" y="1872" type="branch" />
            <wire x2="2944" y1="1872" y2="1872" x1="2848" />
        </branch>
        <branch name="SIGNALS(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="1936" type="branch" />
            <wire x2="2896" y1="1936" y2="1936" x1="2848" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="2256" type="branch" />
            <wire x2="2864" y1="2256" y2="2256" x1="2848" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="2320" type="branch" />
            <wire x2="2864" y1="2320" y2="2320" x1="2848" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2864" y="2384" type="branch" />
            <wire x2="2864" y1="2384" y2="2384" x1="2848" />
        </branch>
        <branch name="SIGNALS(10)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="2064" type="branch" />
            <wire x2="2896" y1="2064" y2="2064" x1="2848" />
            <wire x2="2912" y1="2064" y2="2064" x1="2896" />
        </branch>
        <branch name="SIGNALS(14)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="2128" type="branch" />
            <wire x2="2928" y1="2128" y2="2128" x1="2848" />
        </branch>
        <branch name="SIGNALS(13)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="2192" type="branch" />
            <wire x2="2928" y1="2192" y2="2192" x1="2848" />
        </branch>
        <branch name="SIGNALS(16:15)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="2000" type="branch" />
            <wire x2="2912" y1="2000" y2="2000" x1="2848" />
        </branch>
        <instance x="2416" y="2544" name="XLXI_35" orien="R0">
        </instance>
    </sheet>
    <sheet sheetnum="2" width="3520" height="2720">
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1632" type="branch" />
            <wire x2="2240" y1="1632" y2="1632" x1="1840" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1568" type="branch" />
            <wire x2="2240" y1="1568" y2="1568" x1="1840" />
        </branch>
        <branch name="sdClk_o">
            <wire x2="1856" y1="1056" y2="1056" x1="1840" />
            <wire x2="1904" y1="1056" y2="1056" x1="1856" />
        </branch>
        <branch name="sdBs_o(1:0)">
            <wire x2="1856" y1="1760" y2="1760" x1="1840" />
            <wire x2="1904" y1="1760" y2="1760" x1="1856" />
        </branch>
        <branch name="sdDqml_o">
            <wire x2="1856" y1="1184" y2="1184" x1="1840" />
            <wire x2="1904" y1="1184" y2="1184" x1="1856" />
        </branch>
        <branch name="sdDqmh_o">
            <wire x2="1856" y1="1120" y2="1120" x1="1840" />
            <wire x2="1904" y1="1120" y2="1120" x1="1856" />
        </branch>
        <branch name="sdWe_bo">
            <wire x2="1856" y1="1312" y2="1312" x1="1840" />
            <wire x2="1904" y1="1312" y2="1312" x1="1856" />
        </branch>
        <branch name="sdCas_bo">
            <wire x2="1856" y1="864" y2="864" x1="1840" />
            <wire x2="1888" y1="864" y2="864" x1="1856" />
        </branch>
        <branch name="sdRas_bo">
            <wire x2="1856" y1="1248" y2="1248" x1="1840" />
            <wire x2="1904" y1="1248" y2="1248" x1="1856" />
        </branch>
        <branch name="sdCe_bo">
            <wire x2="1856" y1="928" y2="928" x1="1840" />
            <wire x2="1888" y1="928" y2="928" x1="1856" />
        </branch>
        <branch name="sdCke_o">
            <wire x2="1856" y1="992" y2="992" x1="1840" />
            <wire x2="1888" y1="992" y2="992" x1="1856" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="832" type="branch" />
            <wire x2="1408" y1="832" y2="832" x1="1360" />
        </branch>
        <branch name="fpgaClk_i">
            <wire x2="1408" y1="720" y2="720" x1="1376" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1392" type="branch" />
            <wire x2="1408" y1="1392" y2="1392" x1="1344" />
        </branch>
        <branch name="R_DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1616" type="branch" />
            <wire x2="1408" y1="1616" y2="1616" x1="1328" />
        </branch>
        <instance x="1408" y="1856" name="XLXI_23" orien="R0">
        </instance>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="608" type="branch" />
            <wire x2="1408" y1="608" y2="608" x1="1360" />
        </branch>
        <branch name="WR_OUT_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1280" type="branch" />
            <wire x2="1408" y1="1280" y2="1280" x1="1344" />
        </branch>
        <branch name="RACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="944" type="branch" />
            <wire x2="1408" y1="944" y2="944" x1="1360" />
        </branch>
        <branch name="SACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1056" type="branch" />
            <wire x2="1408" y1="1056" y2="1056" x1="1344" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1504" type="branch" />
            <wire x2="1408" y1="1504" y2="1504" x1="1344" />
        </branch>
        <branch name="SDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1728" type="branch" />
            <wire x2="1408" y1="1728" y2="1728" x1="1344" />
        </branch>
        <branch name="sdClkFb_i">
            <wire x2="1408" y1="1168" y2="1168" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1168" name="sdClkFb_i" orien="R180" />
        <iomarker fontsize="28" x="1376" y="720" name="fpgaClk_i" orien="R180" />
        <branch name="RESET">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="736" type="branch" />
            <wire x2="1904" y1="736" y2="736" x1="1840" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="608" type="branch" />
            <wire x2="1904" y1="608" y2="608" x1="1840" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1440" type="branch" />
            <wire x2="1920" y1="1440" y2="1440" x1="1840" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1504" type="branch" />
            <wire x2="1936" y1="1504" y2="1504" x1="1840" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="672" type="branch" />
            <wire x2="1936" y1="672" y2="672" x1="1840" />
        </branch>
        <branch name="Rsel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="800" type="branch" />
            <wire x2="1936" y1="800" y2="800" x1="1840" />
        </branch>
        <branch name="Card_Sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1376" type="branch" />
            <wire x2="1936" y1="1376" y2="1376" x1="1840" />
        </branch>
        <branch name="sdData_io(15:0)">
            <wire x2="1856" y1="1824" y2="1824" x1="1840" />
            <wire x2="1904" y1="1824" y2="1824" x1="1856" />
        </branch>
        <branch name="sdAddr_o(12:0)">
            <wire x2="1904" y1="1696" y2="1696" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1696" name="sdAddr_o(12:0)" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1824" name="sdData_io(15:0)" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1056" name="sdClk_o" orien="R0" />
        <iomarker fontsize="28" x="1888" y="864" name="sdCas_bo" orien="R0" />
        <iomarker fontsize="28" x="1888" y="928" name="sdCe_bo" orien="R0" />
        <iomarker fontsize="28" x="1888" y="992" name="sdCke_o" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1184" name="sdDqml_o" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1120" name="sdDqmh_o" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1312" name="sdWe_bo" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1248" name="sdRas_bo" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1760" name="sdBs_o(1:0)" orien="R0" />
    </sheet>
</drawing>