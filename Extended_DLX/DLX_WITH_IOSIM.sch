<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="as_N" />
        <signal name="wr_N" />
        <signal name="CLK" />
        <signal name="RST" />
        <signal name="STEP" />
        <signal name="ACK_N" />
        <signal name="DI(31:0)" />
        <signal name="MAO(31:0)" />
        <signal name="MDO(31:0)" />
        <signal name="STEP_IN" />
        <signal name="RST_IN" />
        <signal name="CLK_IN" />
        <signal name="jlink" />
        <signal name="Itype" />
        <signal name="GPR_WE" />
        <signal name="test" />
        <signal name="add" />
        <signal name="right" />
        <signal name="shift" />
        <signal name="Asel" />
        <signal name="MDRsel" />
        <signal name="MDRce" />
        <signal name="MARce" />
        <signal name="Cce" />
        <signal name="Bce" />
        <signal name="Ace" />
        <signal name="PCce" />
        <signal name="IRce" />
        <signal name="S1sel(1:0)" />
        <signal name="ALUf(2:0)" />
        <signal name="STATE(4:0)" />
        <signal name="S2sel(1:0)" />
        <signal name="AEQZ" />
        <signal name="MW" />
        <signal name="MR" />
        <signal name="STOP_N" />
        <signal name="MAC_STATE(1:0)" />
        <signal name="busy" />
        <signal name="IN_INIT" />
        <signal name="DINTsel(1:0)" />
        <signal name="IR_OUT(31:0)" />
        <signal name="PC(31:0)" />
        <signal name="MAC_EN" />
        <signal name="MAC_RST" />
        <signal name="mul_mac" />
        <port polarity="Output" name="as_N" />
        <port polarity="Output" name="wr_N" />
        <port polarity="Output" name="ACK_N" />
        <port polarity="Output" name="DI(31:0)" />
        <port polarity="Output" name="MAO(31:0)" />
        <port polarity="Output" name="MDO(31:0)" />
        <port polarity="Input" name="STEP_IN" />
        <port polarity="Input" name="RST_IN" />
        <port polarity="Input" name="CLK_IN" />
        <port polarity="Output" name="jlink" />
        <port polarity="Output" name="Itype" />
        <port polarity="Output" name="GPR_WE" />
        <port polarity="Output" name="test" />
        <port polarity="Output" name="add" />
        <port polarity="Output" name="right" />
        <port polarity="Output" name="shift" />
        <port polarity="Output" name="Asel" />
        <port polarity="Output" name="MDRsel" />
        <port polarity="Output" name="MDRce" />
        <port polarity="Output" name="MARce" />
        <port polarity="Output" name="Cce" />
        <port polarity="Output" name="Bce" />
        <port polarity="Output" name="Ace" />
        <port polarity="Output" name="PCce" />
        <port polarity="Output" name="IRce" />
        <port polarity="Output" name="S1sel(1:0)" />
        <port polarity="Output" name="ALUf(2:0)" />
        <port polarity="Output" name="STATE(4:0)" />
        <port polarity="Output" name="S2sel(1:0)" />
        <port polarity="Output" name="AEQZ" />
        <port polarity="Output" name="MW" />
        <port polarity="Output" name="MR" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Output" name="MAC_STATE(1:0)" />
        <port polarity="Output" name="busy" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="DINTsel(1:0)" />
        <port polarity="Output" name="IR_OUT(31:0)" />
        <port polarity="Output" name="PC(31:0)" />
        <port polarity="Output" name="MAC_EN" />
        <port polarity="Output" name="MAC_RST" />
        <port polarity="Output" name="mul_mac" />
        <blockdef name="IO_SIM">
            <timestamp>2020-8-7T17:33:7</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-320" y2="-320" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="DLX_toplevel">
            <timestamp>2025-3-11T15:17:7</timestamp>
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
        <block symbolname="IO_SIM" name="XLXI_2">
            <blockpin signalname="CLK_IN" name="CLK_IN" />
            <blockpin signalname="RST_IN" name="RST_IN" />
            <blockpin signalname="STEP_IN" name="STEP_IN" />
            <blockpin signalname="as_N" name="AS_N" />
            <blockpin signalname="wr_N" name="WR_N" />
            <blockpin signalname="MAO(31:0)" name="MAO(31:0)" />
            <blockpin signalname="MDO(31:0)" name="MDO(31:0)" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="STEP" name="STEP" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="DI(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="DLX_toplevel" name="XLXI_5">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="ACK_N" name="ack_n" />
            <blockpin signalname="STEP" name="STEP_EN" />
            <blockpin name="Daddr(4:0)" />
            <blockpin signalname="DI(31:0)" name="DI(31:0)" />
            <blockpin signalname="jlink" name="Jlink" />
            <blockpin signalname="Itype" name="Itype" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="test" name="test" />
            <blockpin signalname="add" name="add" />
            <blockpin signalname="right" name="right" />
            <blockpin signalname="shift" name="shift" />
            <blockpin signalname="Asel" name="Asel" />
            <blockpin signalname="MDRsel" name="MDRsel" />
            <blockpin signalname="MDRce" name="MDRce" />
            <blockpin signalname="MARce" name="MARce" />
            <blockpin signalname="Cce" name="Cce" />
            <blockpin signalname="Bce" name="Bce" />
            <blockpin signalname="Ace" name="Ace" />
            <blockpin signalname="PCce" name="PCce" />
            <blockpin signalname="IRce" name="IRce" />
            <blockpin signalname="S1sel(1:0)" name="S1sel(1:0)" />
            <blockpin signalname="ALUf(2:0)" name="ALUf(2:0)" />
            <blockpin signalname="S2sel(1:0)" name="S2sel(1:0)" />
            <blockpin signalname="AEQZ" name="AEQZ" />
            <blockpin signalname="MW" name="MW" />
            <blockpin signalname="MR" name="MR" />
            <blockpin signalname="as_N" name="as_N" />
            <blockpin signalname="wr_N" name="wr_N" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin signalname="MAC_STATE(1:0)" name="MAC_State(1:0)" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="STATE(4:0)" name="STATE(4:0)" />
            <blockpin signalname="DINTsel(1:0)" name="DINTsel(1:0)" />
            <blockpin signalname="MAC_EN" name="MAC_EN" />
            <blockpin signalname="MAC_RST" name="MAC_RST" />
            <blockpin signalname="mul_mac" name="mul_mac" />
            <blockpin name="D(31:0)" />
            <blockpin signalname="MAO(31:0)" name="MMU_AO(31:0)" />
            <blockpin signalname="MDO(31:0)" name="DO(31:0)" />
            <blockpin signalname="IR_OUT(31:0)" name="IR_OUT(31:0)" />
            <blockpin signalname="PC(31:0)" name="PC(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="DI(31:0)">
            <wire x2="1984" y1="2192" y2="2192" x1="1488" />
            <wire x2="2000" y1="2192" y2="2192" x1="1984" />
            <wire x2="2000" y1="2192" y2="2512" x1="2000" />
            <wire x2="2208" y1="2512" y2="2512" x1="2000" />
            <wire x2="2224" y1="2512" y2="2512" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="1520" y="2096" name="ACK_N" orien="R0" />
        <iomarker fontsize="28" x="1072" y="1936" name="STEP_IN" orien="R180" />
        <iomarker fontsize="28" x="1072" y="1872" name="RST_IN" orien="R180" />
        <iomarker fontsize="28" x="1072" y="1808" name="CLK_IN" orien="R180" />
        <instance x="1104" y="2224" name="XLXI_2" orien="R0">
        </instance>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="2192" type="branch" />
            <wire x2="1104" y1="2192" y2="2192" x1="1056" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="2128" type="branch" />
            <wire x2="1104" y1="2128" y2="2128" x1="1056" />
        </branch>
        <branch name="wr_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="2064" type="branch" />
            <wire x2="1104" y1="2064" y2="2064" x1="1056" />
        </branch>
        <branch name="as_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="2000" type="branch" />
            <wire x2="1104" y1="2000" y2="2000" x1="1056" />
        </branch>
        <branch name="STEP_IN">
            <wire x2="1104" y1="1936" y2="1936" x1="1072" />
        </branch>
        <branch name="RST_IN">
            <wire x2="1104" y1="1872" y2="1872" x1="1072" />
        </branch>
        <branch name="CLK_IN">
            <wire x2="1104" y1="1808" y2="1808" x1="1072" />
        </branch>
        <branch name="ACK_N">
            <wire x2="1520" y1="2096" y2="2096" x1="1488" />
        </branch>
        <branch name="STEP">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="2000" type="branch" />
            <wire x2="1520" y1="2000" y2="2000" x1="1488" />
        </branch>
        <branch name="RST">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1904" type="branch" />
            <wire x2="1504" y1="1904" y2="1904" x1="1488" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1808" type="branch" />
            <wire x2="1504" y1="1808" y2="1808" x1="1488" />
        </branch>
        <branch name="STEP">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1584" type="branch" />
            <wire x2="2208" y1="1584" y2="1584" x1="2176" />
            <wire x2="2224" y1="1584" y2="1584" x1="2208" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1120" type="branch" />
            <wire x2="2208" y1="1120" y2="1120" x1="2192" />
            <wire x2="2224" y1="1120" y2="1120" x1="2208" />
        </branch>
        <branch name="RST">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="656" type="branch" />
            <wire x2="2208" y1="656" y2="656" x1="2192" />
            <wire x2="2224" y1="656" y2="656" x1="2208" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="192" type="branch" />
            <wire x2="2208" y1="192" y2="192" x1="2192" />
            <wire x2="2224" y1="192" y2="192" x1="2208" />
        </branch>
        <branch name="jlink">
            <wire x2="2672" y1="192" y2="192" x1="2656" />
            <wire x2="2688" y1="192" y2="192" x1="2672" />
        </branch>
        <branch name="Itype">
            <wire x2="2672" y1="256" y2="256" x1="2656" />
            <wire x2="2688" y1="256" y2="256" x1="2672" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="2672" y1="320" y2="320" x1="2656" />
            <wire x2="2688" y1="320" y2="320" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="192" name="jlink" orien="R0" />
        <iomarker fontsize="28" x="2688" y="256" name="Itype" orien="R0" />
        <iomarker fontsize="28" x="2688" y="320" name="GPR_WE" orien="R0" />
        <branch name="test">
            <wire x2="2672" y1="384" y2="384" x1="2656" />
            <wire x2="2688" y1="384" y2="384" x1="2672" />
        </branch>
        <branch name="add">
            <wire x2="2672" y1="448" y2="448" x1="2656" />
            <wire x2="2688" y1="448" y2="448" x1="2672" />
        </branch>
        <branch name="right">
            <wire x2="2672" y1="512" y2="512" x1="2656" />
            <wire x2="2688" y1="512" y2="512" x1="2672" />
        </branch>
        <branch name="shift">
            <wire x2="2672" y1="576" y2="576" x1="2656" />
            <wire x2="2688" y1="576" y2="576" x1="2672" />
        </branch>
        <branch name="Asel">
            <wire x2="2672" y1="640" y2="640" x1="2656" />
            <wire x2="2688" y1="640" y2="640" x1="2672" />
        </branch>
        <branch name="MDRsel">
            <wire x2="2672" y1="704" y2="704" x1="2656" />
            <wire x2="2688" y1="704" y2="704" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="384" name="test" orien="R0" />
        <iomarker fontsize="28" x="2688" y="448" name="add" orien="R0" />
        <iomarker fontsize="28" x="2688" y="512" name="right" orien="R0" />
        <iomarker fontsize="28" x="2688" y="576" name="shift" orien="R0" />
        <iomarker fontsize="28" x="2688" y="640" name="Asel" orien="R0" />
        <iomarker fontsize="28" x="2688" y="704" name="MDRsel" orien="R0" />
        <branch name="MDRce">
            <wire x2="2672" y1="768" y2="768" x1="2656" />
            <wire x2="2688" y1="768" y2="768" x1="2672" />
        </branch>
        <branch name="MARce">
            <wire x2="2672" y1="832" y2="832" x1="2656" />
            <wire x2="2688" y1="832" y2="832" x1="2672" />
        </branch>
        <branch name="Cce">
            <wire x2="2672" y1="896" y2="896" x1="2656" />
            <wire x2="2688" y1="896" y2="896" x1="2672" />
        </branch>
        <branch name="Bce">
            <wire x2="2672" y1="960" y2="960" x1="2656" />
            <wire x2="2688" y1="960" y2="960" x1="2672" />
        </branch>
        <branch name="Ace">
            <wire x2="2672" y1="1024" y2="1024" x1="2656" />
            <wire x2="2688" y1="1024" y2="1024" x1="2672" />
        </branch>
        <branch name="PCce">
            <wire x2="2672" y1="1088" y2="1088" x1="2656" />
            <wire x2="2688" y1="1088" y2="1088" x1="2672" />
        </branch>
        <branch name="IRce">
            <wire x2="2672" y1="1152" y2="1152" x1="2656" />
            <wire x2="2688" y1="1152" y2="1152" x1="2672" />
        </branch>
        <branch name="S1sel(1:0)">
            <wire x2="2672" y1="1216" y2="1216" x1="2656" />
            <wire x2="2688" y1="1216" y2="1216" x1="2672" />
        </branch>
        <branch name="ALUf(2:0)">
            <wire x2="2672" y1="1280" y2="1280" x1="2656" />
            <wire x2="2688" y1="1280" y2="1280" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="768" name="MDRce" orien="R0" />
        <iomarker fontsize="28" x="2688" y="832" name="MARce" orien="R0" />
        <iomarker fontsize="28" x="2688" y="896" name="Cce" orien="R0" />
        <iomarker fontsize="28" x="2688" y="960" name="Bce" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1024" name="Ace" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1088" name="PCce" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1152" name="IRce" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1216" name="S1sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1280" name="ALUf(2:0)" orien="R0" />
        <branch name="STATE(4:0)">
            <wire x2="2672" y1="1984" y2="1984" x1="2656" />
            <wire x2="2688" y1="1984" y2="1984" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1984" name="STATE(4:0)" orien="R0" />
        <branch name="S2sel(1:0)">
            <wire x2="2672" y1="1344" y2="1344" x1="2656" />
            <wire x2="2688" y1="1344" y2="1344" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1344" name="S2sel(1:0)" orien="R0" />
        <branch name="AEQZ">
            <wire x2="2672" y1="1408" y2="1408" x1="2656" />
            <wire x2="2688" y1="1408" y2="1408" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1408" name="AEQZ" orien="R0" />
        <branch name="MW">
            <wire x2="2672" y1="1472" y2="1472" x1="2656" />
            <wire x2="2688" y1="1472" y2="1472" x1="2672" />
        </branch>
        <branch name="MR">
            <wire x2="2672" y1="1536" y2="1536" x1="2656" />
            <wire x2="2688" y1="1536" y2="1536" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1472" name="MW" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1536" name="MR" orien="R0" />
        <branch name="as_N">
            <wire x2="2672" y1="1600" y2="1600" x1="2656" />
            <wire x2="2688" y1="1600" y2="1600" x1="2672" />
        </branch>
        <branch name="wr_N">
            <wire x2="2672" y1="1664" y2="1664" x1="2656" />
            <wire x2="2688" y1="1664" y2="1664" x1="2672" />
        </branch>
        <branch name="STOP_N">
            <wire x2="2672" y1="1728" y2="1728" x1="2656" />
            <wire x2="2688" y1="1728" y2="1728" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1600" name="as_N" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1664" name="wr_N" orien="R0" />
        <iomarker fontsize="28" x="2688" y="1728" name="STOP_N" orien="R0" />
        <branch name="MAC_STATE(1:0)">
            <wire x2="2672" y1="1792" y2="1792" x1="2656" />
            <wire x2="2688" y1="1792" y2="1792" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1792" name="MAC_STATE(1:0)" orien="R0" />
        <branch name="busy">
            <wire x2="2672" y1="1856" y2="1856" x1="2656" />
            <wire x2="2688" y1="1856" y2="1856" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1856" name="busy" orien="R0" />
        <branch name="IN_INIT">
            <wire x2="2672" y1="1920" y2="1920" x1="2656" />
            <wire x2="2688" y1="1920" y2="1920" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="1920" name="IN_INIT" orien="R0" />
        <branch name="DINTsel(1:0)">
            <wire x2="2672" y1="2048" y2="2048" x1="2656" />
            <wire x2="2688" y1="2048" y2="2048" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="2048" name="DINTsel(1:0)" orien="R0" />
        <branch name="IR_OUT(31:0)">
            <wire x2="2672" y1="2496" y2="2496" x1="2656" />
            <wire x2="2688" y1="2496" y2="2496" x1="2672" />
        </branch>
        <branch name="PC(31:0)">
            <wire x2="2672" y1="2560" y2="2560" x1="2656" />
            <wire x2="2688" y1="2560" y2="2560" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="2496" name="IR_OUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2688" y="2560" name="PC(31:0)" orien="R0" />
        <branch name="MAO(31:0)">
            <wire x2="2672" y1="2368" y2="2368" x1="2656" />
            <wire x2="2688" y1="2368" y2="2368" x1="2672" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="2432" type="branch" />
            <wire x2="2672" y1="2432" y2="2432" x1="2656" />
            <wire x2="2688" y1="2432" y2="2432" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="2368" name="MAO(31:0)" orien="R0" />
        <branch name="DI(31:0)">
            <wire x2="3184" y1="192" y2="192" x1="3120" />
        </branch>
        <branch name="MDO(31:0)">
            <wire x2="3200" y1="304" y2="304" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3184" y="192" name="DI(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3200" y="304" name="MDO(31:0)" orien="R0" />
        <branch name="MAC_EN">
            <wire x2="2672" y1="2112" y2="2112" x1="2656" />
            <wire x2="2688" y1="2112" y2="2112" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="2112" name="MAC_EN" orien="R0" />
        <branch name="MAC_RST">
            <wire x2="2672" y1="2176" y2="2176" x1="2656" />
            <wire x2="2688" y1="2176" y2="2176" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="2176" name="MAC_RST" orien="R0" />
        <branch name="mul_mac">
            <wire x2="2672" y1="2240" y2="2240" x1="2656" />
            <wire x2="2688" y1="2240" y2="2240" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2688" y="2240" name="mul_mac" orien="R0" />
        <instance x="2224" y="2592" name="XLXI_5" orien="R0">
        </instance>
    </sheet>
</drawing>