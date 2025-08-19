<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a" />
        <signal name="sum" />
        <signal name="carry" />
        <signal name="b" />
        <port polarity="Input" name="a" />
        <port polarity="Output" name="sum" />
        <port polarity="Output" name="carry" />
        <port polarity="Input" name="b" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="a" name="I0" />
            <blockpin signalname="b" name="I1" />
            <blockpin signalname="carry" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="sum" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1488" y="1520" name="XLXI_1" orien="R0" />
        <instance x="1488" y="1312" name="XLXI_2" orien="R0" />
        <branch name="a">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="1184" type="branch" />
            <wire x2="1168" y1="1184" y2="1184" x1="1152" />
            <wire x2="1232" y1="1184" y2="1184" x1="1168" />
            <wire x2="1488" y1="1184" y2="1184" x1="1232" />
            <wire x2="1232" y1="1184" y2="1456" x1="1232" />
            <wire x2="1488" y1="1456" y2="1456" x1="1232" />
        </branch>
        <branch name="b">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1248" type="branch" />
            <wire x2="1360" y1="1248" y2="1248" x1="1328" />
            <wire x2="1488" y1="1248" y2="1248" x1="1360" />
            <wire x2="1360" y1="1248" y2="1392" x1="1360" />
            <wire x2="1488" y1="1392" y2="1392" x1="1360" />
        </branch>
        <branch name="a">
            <wire x2="960" y1="1040" y2="1040" x1="896" />
        </branch>
        <branch name="b">
            <wire x2="960" y1="1088" y2="1088" x1="896" />
        </branch>
        <branch name="sum">
            <wire x2="1792" y1="1216" y2="1216" x1="1744" />
        </branch>
        <branch name="carry">
            <wire x2="1760" y1="1424" y2="1424" x1="1744" />
            <wire x2="1792" y1="1424" y2="1424" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="896" y="1040" name="a" orien="R180" />
        <iomarker fontsize="28" x="896" y="1088" name="b" orien="R180" />
        <iomarker fontsize="28" x="1792" y="1216" name="sum" orien="R0" />
        <iomarker fontsize="28" x="1792" y="1424" name="carry" orien="R0" />
    </sheet>
</drawing>