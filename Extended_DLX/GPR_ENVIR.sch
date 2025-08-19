<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="GPR_WE" />
        <signal name="MUX_O_A(4:0)" />
        <signal name="C(31:0)" />
        <signal name="A(31:0)" />
        <signal name="DO_B(31:0)" />
        <signal name="B(31:0)" />
        <signal name="MUX_O_D(4:0)" />
        <signal name="DO_D(31:0)" />
        <signal name="MUX_O_B(4:0)" />
        <signal name="DO_A(31:0)" />
        <signal name="MUX_O_A(0)" />
        <signal name="MUX_O_A(1)" />
        <signal name="MUX_O_A(2)" />
        <signal name="MUX_O_A(3)" />
        <signal name="MUX_O_A(4)" />
        <signal name="OR_O_A" />
        <signal name="MUX_O_D(0)" />
        <signal name="MUX_O_D(1)" />
        <signal name="MUX_O_D(2)" />
        <signal name="MUX_O_D(3)" />
        <signal name="MUX_O_D(4)" />
        <signal name="OR_O_D" />
        <signal name="MUX_O_B(0)" />
        <signal name="MUX_O_B(1)" />
        <signal name="MUX_O_B(2)" />
        <signal name="MUX_O_B(3)" />
        <signal name="MUX_O_B(4)" />
        <signal name="D(31:0)" />
        <signal name="AEQZ_O" />
        <signal name="Cadr(4:0)" />
        <signal name="Aadr(4:0)" />
        <signal name="Badr(4:0)" />
        <signal name="Dadr(4:0)" />
        <signal name="OR_O_B" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="GPR_WE" />
        <port polarity="Input" name="C(31:0)" />
        <port polarity="Output" name="A(31:0)" />
        <port polarity="Output" name="B(31:0)" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Output" name="AEQZ_O" />
        <port polarity="Input" name="Cadr(4:0)" />
        <port polarity="Input" name="Aadr(4:0)" />
        <port polarity="Input" name="Badr(4:0)" />
        <port polarity="Input" name="Dadr(4:0)" />
        <blockdef name="RAM32x32">
            <timestamp>2024-12-15T13:46:24</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
        </blockdef>
        <blockdef name="AEQZ">
            <timestamp>2024-12-15T13:59:30</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MUX_5to5">
            <timestamp>2024-12-15T13:22:26</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="AND32WITH">
            <timestamp>2024-12-23T12:9:19</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="RAM32x32" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="GPR_WE" name="WE" />
            <blockpin signalname="MUX_O_A(4:0)" name="ADDR(4:0)" />
            <blockpin signalname="C(31:0)" name="DI(31:0)" />
            <blockpin signalname="DO_A(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="RAM32x32" name="XLXI_27">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="GPR_WE" name="WE" />
            <blockpin signalname="MUX_O_D(4:0)" name="ADDR(4:0)" />
            <blockpin signalname="C(31:0)" name="DI(31:0)" />
            <blockpin signalname="DO_D(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="RAM32x32" name="XLXI_26">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="GPR_WE" name="WE" />
            <blockpin signalname="MUX_O_B(4:0)" name="ADDR(4:0)" />
            <blockpin signalname="C(31:0)" name="DI(31:0)" />
            <blockpin signalname="DO_B(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="or5" name="XLXI_61">
            <blockpin signalname="MUX_O_A(4)" name="I0" />
            <blockpin signalname="MUX_O_A(3)" name="I1" />
            <blockpin signalname="MUX_O_A(2)" name="I2" />
            <blockpin signalname="MUX_O_A(1)" name="I3" />
            <blockpin signalname="MUX_O_A(0)" name="I4" />
            <blockpin signalname="OR_O_A" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_62">
            <blockpin signalname="MUX_O_B(4)" name="I0" />
            <blockpin signalname="MUX_O_B(3)" name="I1" />
            <blockpin signalname="MUX_O_B(2)" name="I2" />
            <blockpin signalname="MUX_O_B(1)" name="I3" />
            <blockpin signalname="MUX_O_B(0)" name="I4" />
            <blockpin signalname="OR_O_B" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_63">
            <blockpin signalname="MUX_O_D(4)" name="I0" />
            <blockpin signalname="MUX_O_D(3)" name="I1" />
            <blockpin signalname="MUX_O_D(2)" name="I2" />
            <blockpin signalname="MUX_O_D(1)" name="I3" />
            <blockpin signalname="MUX_O_D(0)" name="I4" />
            <blockpin signalname="OR_O_D" name="O" />
        </block>
        <block symbolname="AEQZ" name="XLXI_25">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="AEQZ_O" name="A_eqz" />
        </block>
        <block symbolname="MUX_5to5" name="XLXI_4">
            <blockpin signalname="GPR_WE" name="S0" />
            <blockpin signalname="Aadr(4:0)" name="D0(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="D1(4:0)" />
            <blockpin signalname="MUX_O_A(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="MUX_5to5" name="XLXI_35">
            <blockpin signalname="GPR_WE" name="S0" />
            <blockpin signalname="Badr(4:0)" name="D0(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="D1(4:0)" />
            <blockpin signalname="MUX_O_B(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="MUX_5to5" name="XLXI_36">
            <blockpin signalname="GPR_WE" name="S0" />
            <blockpin signalname="Dadr(4:0)" name="D0(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="D1(4:0)" />
            <blockpin signalname="MUX_O_D(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="AND32WITH" name="XLXI_65">
            <blockpin signalname="OR_O_A" name="pullD" />
            <blockpin signalname="DO_A(31:0)" name="Din(31:0)" />
            <blockpin signalname="A(31:0)" name="Dout(31:0)" />
        </block>
        <block symbolname="AND32WITH" name="XLXI_66">
            <blockpin signalname="OR_O_B" name="pullD" />
            <blockpin signalname="DO_B(31:0)" name="Din(31:0)" />
            <blockpin signalname="B(31:0)" name="Dout(31:0)" />
        </block>
        <block symbolname="AND32WITH" name="XLXI_67">
            <blockpin signalname="OR_O_D" name="pullD" />
            <blockpin signalname="DO_D(31:0)" name="Din(31:0)" />
            <blockpin signalname="D(31:0)" name="Dout(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1184" y="784" name="XLXI_1" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="560" type="branch" />
            <wire x2="1184" y1="560" y2="560" x1="1168" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="624" type="branch" />
            <wire x2="1184" y1="624" y2="624" x1="1168" />
        </branch>
        <branch name="MUX_O_A(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="688" type="branch" />
            <wire x2="1184" y1="688" y2="688" x1="1152" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="752" type="branch" />
            <wire x2="1184" y1="752" y2="752" x1="1168" />
        </branch>
        <branch name="A(31:0)">
            <wire x2="1552" y1="1472" y2="1472" x1="1520" />
        </branch>
        <branch name="OR_O_B">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1488" type="branch" />
            <wire x2="1904" y1="1488" y2="1488" x1="1888" />
        </branch>
        <branch name="DO_B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1552" type="branch" />
            <wire x2="1904" y1="1552" y2="1552" x1="1888" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="2304" y1="1488" y2="1488" x1="2288" />
            <wire x2="2320" y1="1488" y2="1488" x1="2304" />
        </branch>
        <instance x="2656" y="768" name="XLXI_27" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="544" type="branch" />
            <wire x2="2656" y1="544" y2="544" x1="2640" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="608" type="branch" />
            <wire x2="2656" y1="608" y2="608" x1="2640" />
        </branch>
        <branch name="MUX_O_D(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="672" type="branch" />
            <wire x2="2656" y1="672" y2="672" x1="2624" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="736" type="branch" />
            <wire x2="2656" y1="736" y2="736" x1="2640" />
        </branch>
        <branch name="DO_D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3056" y="544" type="branch" />
            <wire x2="3056" y1="544" y2="544" x1="3040" />
        </branch>
        <instance x="1904" y="768" name="XLXI_26" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="544" type="branch" />
            <wire x2="1904" y1="544" y2="544" x1="1888" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="608" type="branch" />
            <wire x2="1904" y1="608" y2="608" x1="1888" />
        </branch>
        <branch name="MUX_O_B(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="672" type="branch" />
            <wire x2="1904" y1="672" y2="672" x1="1872" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="736" type="branch" />
            <wire x2="1904" y1="736" y2="736" x1="1888" />
        </branch>
        <branch name="DO_B(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="544" type="branch" />
            <wire x2="2304" y1="544" y2="544" x1="2288" />
        </branch>
        <branch name="DO_A(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="560" type="branch" />
            <wire x2="1600" y1="560" y2="560" x1="1568" />
        </branch>
        <branch name="MUX_O_A(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="976" type="branch" />
            <wire x2="1440" y1="976" y2="976" x1="1424" />
        </branch>
        <branch name="MUX_O_A(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1040" type="branch" />
            <wire x2="1440" y1="1040" y2="1040" x1="1424" />
        </branch>
        <branch name="MUX_O_A(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1104" type="branch" />
            <wire x2="1440" y1="1104" y2="1104" x1="1424" />
        </branch>
        <branch name="MUX_O_A(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1168" type="branch" />
            <wire x2="1440" y1="1168" y2="1168" x1="1424" />
        </branch>
        <branch name="MUX_O_A(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="1232" type="branch" />
            <wire x2="1440" y1="1232" y2="1232" x1="1424" />
        </branch>
        <branch name="OR_O_A">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="1104" type="branch" />
            <wire x2="1712" y1="1104" y2="1104" x1="1696" />
        </branch>
        <branch name="MUX_O_D(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="976" type="branch" />
            <wire x2="2720" y1="976" y2="976" x1="2704" />
        </branch>
        <branch name="MUX_O_D(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1040" type="branch" />
            <wire x2="2720" y1="1040" y2="1040" x1="2704" />
        </branch>
        <branch name="MUX_O_D(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1104" type="branch" />
            <wire x2="2720" y1="1104" y2="1104" x1="2704" />
        </branch>
        <branch name="MUX_O_D(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1168" type="branch" />
            <wire x2="2720" y1="1168" y2="1168" x1="2704" />
        </branch>
        <branch name="MUX_O_D(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1232" type="branch" />
            <wire x2="2720" y1="1232" y2="1232" x1="2704" />
        </branch>
        <branch name="OR_O_D">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2992" y="1104" type="branch" />
            <wire x2="2992" y1="1104" y2="1104" x1="2976" />
        </branch>
        <branch name="MUX_O_B(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="976" type="branch" />
            <wire x2="2080" y1="976" y2="976" x1="2064" />
        </branch>
        <branch name="MUX_O_B(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1040" type="branch" />
            <wire x2="2080" y1="1040" y2="1040" x1="2064" />
        </branch>
        <branch name="MUX_O_B(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1104" type="branch" />
            <wire x2="2080" y1="1104" y2="1104" x1="2064" />
        </branch>
        <branch name="MUX_O_B(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1168" type="branch" />
            <wire x2="2080" y1="1168" y2="1168" x1="2064" />
        </branch>
        <branch name="MUX_O_B(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1232" type="branch" />
            <wire x2="2080" y1="1232" y2="1232" x1="2064" />
        </branch>
        <branch name="OR_O_B">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1104" type="branch" />
            <wire x2="2352" y1="1104" y2="1104" x1="2336" />
        </branch>
        <branch name="OR_O_A">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1472" type="branch" />
            <wire x2="1088" y1="1472" y2="1472" x1="1072" />
            <wire x2="1120" y1="1472" y2="1472" x1="1088" />
            <wire x2="1136" y1="1472" y2="1472" x1="1120" />
        </branch>
        <branch name="DO_A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1536" type="branch" />
            <wire x2="1088" y1="1536" y2="1536" x1="1072" />
            <wire x2="1120" y1="1536" y2="1536" x1="1088" />
            <wire x2="1136" y1="1536" y2="1536" x1="1120" />
        </branch>
        <instance x="1440" y="1296" name="XLXI_61" orien="R0" />
        <instance x="2080" y="1296" name="XLXI_62" orien="R0" />
        <instance x="2720" y="1296" name="XLXI_63" orien="R0" />
        <branch name="OR_O_D">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1488" type="branch" />
            <wire x2="2688" y1="1488" y2="1488" x1="2672" />
        </branch>
        <branch name="DO_D(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1552" type="branch" />
            <wire x2="2688" y1="1552" y2="1552" x1="2672" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="3104" y1="1488" y2="1488" x1="3072" />
        </branch>
        <instance x="1248" y="1808" name="XLXI_25" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1776" type="branch" />
            <wire x2="1248" y1="1776" y2="1776" x1="1232" />
        </branch>
        <branch name="AEQZ_O">
            <wire x2="1664" y1="1776" y2="1776" x1="1632" />
        </branch>
        <instance x="336" y="1056" name="XLXI_4" orien="R0">
        </instance>
        <branch name="MUX_O_A(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="896" type="branch" />
            <wire x2="752" y1="896" y2="896" x1="720" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1024" type="branch" />
            <wire x2="336" y1="1024" y2="1024" x1="320" />
        </branch>
        <branch name="Aadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="960" type="branch" />
            <wire x2="336" y1="960" y2="960" x1="320" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="896" type="branch" />
            <wire x2="336" y1="896" y2="896" x1="304" />
        </branch>
        <instance x="336" y="1392" name="XLXI_35" orien="R0">
        </instance>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1232" type="branch" />
            <wire x2="336" y1="1232" y2="1232" x1="304" />
        </branch>
        <branch name="Badr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1296" type="branch" />
            <wire x2="336" y1="1296" y2="1296" x1="320" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1360" type="branch" />
            <wire x2="336" y1="1360" y2="1360" x1="320" />
        </branch>
        <branch name="MUX_O_B(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1232" type="branch" />
            <wire x2="752" y1="1232" y2="1232" x1="720" />
        </branch>
        <instance x="336" y="1792" name="XLXI_36" orien="R0">
        </instance>
        <branch name="MUX_O_D(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="1632" type="branch" />
            <wire x2="736" y1="1632" y2="1632" x1="720" />
            <wire x2="752" y1="1632" y2="1632" x1="736" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1760" type="branch" />
            <wire x2="336" y1="1760" y2="1760" x1="320" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1696" type="branch" />
            <wire x2="336" y1="1696" y2="1696" x1="320" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1632" type="branch" />
            <wire x2="320" y1="1632" y2="1632" x1="304" />
            <wire x2="336" y1="1632" y2="1632" x1="320" />
        </branch>
        <branch name="CLK">
            <wire x2="400" y1="192" y2="192" x1="336" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="400" y1="256" y2="256" x1="336" />
        </branch>
        <branch name="C(31:0)">
            <wire x2="416" y1="304" y2="304" x1="352" />
        </branch>
        <branch name="Aadr(4:0)">
            <wire x2="416" y1="368" y2="368" x1="352" />
        </branch>
        <branch name="Cadr(4:0)">
            <wire x2="432" y1="416" y2="416" x1="368" />
        </branch>
        <branch name="Badr(4:0)">
            <wire x2="416" y1="464" y2="464" x1="352" />
        </branch>
        <branch name="Dadr(4:0)">
            <wire x2="416" y1="512" y2="512" x1="352" />
        </branch>
        <iomarker fontsize="28" x="1552" y="1472" name="A(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2320" y="1488" name="B(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3104" y="1488" name="D(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1664" y="1776" name="AEQZ_O" orien="R0" />
        <iomarker fontsize="28" x="336" y="192" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="336" y="256" name="GPR_WE" orien="R180" />
        <iomarker fontsize="28" x="352" y="304" name="C(31:0)" orien="R180" />
        <iomarker fontsize="28" x="352" y="368" name="Aadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="416" name="Cadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="352" y="464" name="Badr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="352" y="512" name="Dadr(4:0)" orien="R180" />
        <instance x="1136" y="1568" name="XLXI_65" orien="R0">
        </instance>
        <instance x="1904" y="1584" name="XLXI_66" orien="R0">
        </instance>
        <instance x="2688" y="1584" name="XLXI_67" orien="R0">
        </instance>
    </sheet>
</drawing>