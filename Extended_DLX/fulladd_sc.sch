<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="sum" />
        <signal name="a_xor_b" />
        <signal name="c" />
        <signal name="b" />
        <signal name="a" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="carry" />
        <port polarity="Output" name="sum" />
        <port polarity="Input" name="c" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="a" />
        <port polarity="Output" name="carry" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="c" name="I0" />
            <blockpin signalname="a_xor_b" name="I1" />
            <blockpin signalname="sum" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="a_xor_b" name="I0" />
            <blockpin signalname="c" name="I1" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="a" name="I0" />
            <blockpin signalname="b" name="I1" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_4">
            <blockpin signalname="XLXN_20" name="I0" />
            <blockpin signalname="XLXN_19" name="I1" />
            <blockpin signalname="carry" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="a_xor_b" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1520" y="1184" name="XLXI_1" orien="R0" />
        <branch name="sum">
            <wire x2="1840" y1="1088" y2="1088" x1="1776" />
        </branch>
        <instance x="1520" y="1392" name="XLXI_2" orien="R0" />
        <instance x="1520" y="1552" name="XLXI_3" orien="R0" />
        <instance x="1920" y="1456" name="XLXI_4" orien="R0" />
        <branch name="a_xor_b">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1056" type="branch" />
            <wire x2="1520" y1="1056" y2="1056" x1="1488" />
        </branch>
        <branch name="c">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1120" type="branch" />
            <wire x2="1520" y1="1120" y2="1120" x1="1488" />
        </branch>
        <branch name="c">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1264" type="branch" />
            <wire x2="1520" y1="1264" y2="1264" x1="1488" />
        </branch>
        <branch name="a_xor_b">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1328" type="branch" />
            <wire x2="1520" y1="1328" y2="1328" x1="1488" />
        </branch>
        <branch name="b">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1424" type="branch" />
            <wire x2="1520" y1="1424" y2="1424" x1="1488" />
        </branch>
        <branch name="a">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1488" type="branch" />
            <wire x2="1520" y1="1488" y2="1488" x1="1488" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1840" y1="1296" y2="1296" x1="1776" />
            <wire x2="1840" y1="1296" y2="1328" x1="1840" />
            <wire x2="1920" y1="1328" y2="1328" x1="1840" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1840" y1="1456" y2="1456" x1="1776" />
            <wire x2="1840" y1="1392" y2="1456" x1="1840" />
            <wire x2="1920" y1="1392" y2="1392" x1="1840" />
        </branch>
        <branch name="carry">
            <wire x2="2192" y1="1360" y2="1360" x1="2176" />
        </branch>
        <branch name="a_xor_b">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1280" y="1200" type="branch" />
            <wire x2="1280" y1="1200" y2="1200" x1="1248" />
        </branch>
        <instance x="992" y="1296" name="XLXI_5" orien="R0" />
        <branch name="a">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="1168" type="branch" />
            <wire x2="992" y1="1168" y2="1168" x1="976" />
        </branch>
        <branch name="b">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="1232" type="branch" />
            <wire x2="992" y1="1232" y2="1232" x1="976" />
        </branch>
        <branch name="a">
            <wire x2="1168" y1="864" y2="864" x1="1088" />
        </branch>
        <branch name="b">
            <wire x2="1168" y1="912" y2="912" x1="1088" />
        </branch>
        <branch name="c">
            <wire x2="1168" y1="976" y2="976" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1840" y="1088" name="sum" orien="R0" />
        <iomarker fontsize="28" x="2192" y="1360" name="carry" orien="R0" />
        <iomarker fontsize="28" x="1088" y="864" name="a" orien="R180" />
        <iomarker fontsize="28" x="1088" y="912" name="b" orien="R180" />
        <iomarker fontsize="28" x="1088" y="976" name="c" orien="R180" />
    </sheet>
</drawing>