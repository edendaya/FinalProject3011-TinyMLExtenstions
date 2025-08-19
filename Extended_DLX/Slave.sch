<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="x1" />
        <signal name="CLK" />
        <signal name="XLXN_10" />
        <signal name="CARDSEL" />
        <signal name="WR_N" />
        <signal name="SACK_N" />
        <signal name="AI(9)" />
        <signal name="AI(8)" />
        <signal name="AI(7)" />
        <signal name="B(31:0)" />
        <signal name="C(31:0)" />
        <signal name="D(31:0)" />
        <signal name="AI(6:5)" />
        <signal name="A(31:0)" />
        <signal name="MUX_OUTPUT(31:0)" />
        <signal name="reg_write(4:0)" />
        <signal name="AI(4:0)" />
        <signal name="AI(9:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="CARDSEL" />
        <port polarity="Input" name="WR_N" />
        <port polarity="Output" name="SACK_N" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Input" name="C(31:0)" />
        <port polarity="Input" name="D(31:0)" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Output" name="MUX_OUTPUT(31:0)" />
        <port polarity="Output" name="reg_write(4:0)" />
        <port polarity="Input" name="AI(9:0)" />
        <blockdef name="MUX4_32bit">
            <timestamp>2024-4-10T7:9:44</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="BUF5">
            <timestamp>2024-4-10T5:16:9</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="MUX4_32bit" name="XLXI_1">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="C(31:0)" name="C(31:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="AI(6:5)" name="sel(1:0)" />
            <blockpin signalname="MUX_OUTPUT(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="and3" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_1" name="I2" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_3">
            <blockpin signalname="WR_N" name="I0" />
            <blockpin signalname="CARDSEL" name="I1" />
            <blockpin signalname="XLXN_4" name="I2" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_4">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_5" name="D" />
            <blockpin signalname="x1" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="AI(9)" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="AI(8)" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="AI(7)" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="XLXN_6" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_9">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="x1" name="I1" />
            <blockpin signalname="SACK_N" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_10">
            <blockpin signalname="XLXN_10" name="C" />
            <blockpin signalname="x1" name="D" />
            <blockpin signalname="XLXN_6" name="Q" />
        </block>
        <block symbolname="BUF5" name="XLXI_22">
            <blockpin signalname="AI(4:0)" name="I(4:0)" />
            <blockpin signalname="reg_write(4:0)" name="O(4:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1584" y="784" name="XLXI_1" orien="R0">
        </instance>
        <instance x="688" y="1712" name="XLXI_2" orien="R0" />
        <instance x="1136" y="1776" name="XLXI_3" orien="R0" />
        <instance x="1568" y="1904" name="XLXI_4" orien="R0" />
        <instance x="432" y="1552" name="XLXI_5" orien="R0" />
        <instance x="432" y="1616" name="XLXI_6" orien="R0" />
        <instance x="432" y="1680" name="XLXI_7" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="688" y1="1520" y2="1520" x1="656" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="688" y1="1584" y2="1584" x1="656" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="688" y1="1648" y2="1648" x1="656" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1136" y1="1584" y2="1584" x1="944" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1408" y1="1648" y2="1648" x1="1392" />
            <wire x2="1568" y1="1648" y2="1648" x1="1408" />
        </branch>
        <instance x="2560" y="1680" name="XLXI_8" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="2544" y1="1648" y2="1648" x1="2512" />
            <wire x2="2560" y1="1648" y2="1648" x1="2544" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2800" y1="1648" y2="1648" x1="2784" />
        </branch>
        <instance x="2800" y="1712" name="XLXI_9" orien="R0" />
        <instance x="2128" y="1904" name="XLXI_10" orien="R0" />
        <branch name="x1">
            <wire x2="2064" y1="1648" y2="1648" x1="1952" />
            <wire x2="2128" y1="1648" y2="1648" x1="2064" />
            <wire x2="2064" y1="1568" y2="1648" x1="2064" />
            <wire x2="2752" y1="1568" y2="1568" x1="2064" />
            <wire x2="2752" y1="1568" y2="1584" x1="2752" />
            <wire x2="2800" y1="1584" y2="1584" x1="2752" />
        </branch>
        <branch name="CLK">
            <wire x2="1568" y1="1776" y2="1776" x1="1536" />
        </branch>
        <branch name="XLXN_10">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2112" y="1776" type="branch" />
            <wire x2="2128" y1="1776" y2="1776" x1="2112" />
        </branch>
        <branch name="CARDSEL">
            <wire x2="1136" y1="1648" y2="1648" x1="1104" />
        </branch>
        <branch name="WR_N">
            <wire x2="1136" y1="1712" y2="1712" x1="1104" />
        </branch>
        <branch name="SACK_N">
            <wire x2="3104" y1="1616" y2="1616" x1="3056" />
        </branch>
        <branch name="AI(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1520" type="branch" />
            <wire x2="432" y1="1520" y2="1520" x1="400" />
        </branch>
        <branch name="AI(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1584" type="branch" />
            <wire x2="432" y1="1584" y2="1584" x1="400" />
        </branch>
        <branch name="AI(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1648" type="branch" />
            <wire x2="432" y1="1648" y2="1648" x1="400" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="1536" y1="560" y2="560" x1="1520" />
            <wire x2="1584" y1="560" y2="560" x1="1536" />
        </branch>
        <branch name="C(31:0)">
            <wire x2="1584" y1="624" y2="624" x1="1520" />
        </branch>
        <branch name="D(31:0)">
            <wire x2="1584" y1="688" y2="688" x1="1520" />
        </branch>
        <branch name="AI(6:5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="752" type="branch" />
            <wire x2="1584" y1="752" y2="752" x1="1520" />
        </branch>
        <branch name="A(31:0)">
            <wire x2="1584" y1="496" y2="496" x1="1552" />
        </branch>
        <branch name="MUX_OUTPUT(31:0)">
            <wire x2="2000" y1="496" y2="496" x1="1968" />
        </branch>
        <instance x="1584" y="1136" name="XLXI_22" orien="R0">
        </instance>
        <branch name="reg_write(4:0)">
            <wire x2="2032" y1="1104" y2="1104" x1="1968" />
        </branch>
        <branch name="AI(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1104" type="branch" />
            <wire x2="1584" y1="1104" y2="1104" x1="1520" />
        </branch>
        <branch name="AI(9:0)">
            <wire x2="576" y1="1344" y2="1344" x1="368" />
        </branch>
        <iomarker fontsize="28" x="1536" y="1776" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1104" y="1648" name="CARDSEL" orien="R180" />
        <iomarker fontsize="28" x="1104" y="1712" name="WR_N" orien="R180" />
        <iomarker fontsize="28" x="3104" y="1616" name="SACK_N" orien="R0" />
        <iomarker fontsize="28" x="1520" y="560" name="B(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1520" y="624" name="C(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1520" y="688" name="D(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1552" y="496" name="A(31:0)" orien="R180" />
        <iomarker fontsize="28" x="2000" y="496" name="MUX_OUTPUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="368" y="1344" name="AI(9:0)" orien="R180" />
        <iomarker fontsize="28" x="2032" y="1104" name="reg_write(4:0)" orien="R0" />
    </sheet>
</drawing>