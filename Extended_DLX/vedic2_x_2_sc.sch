<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a(1:0)" />
        <signal name="b(1:0)" />
        <signal name="a(0)" />
        <signal name="b(0)" />
        <signal name="a(1)" />
        <signal name="b(1)" />
        <signal name="q(0)" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="q(1)" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="q(2)" />
        <signal name="q(3)" />
        <signal name="XLXN_24" />
        <signal name="q(3:0)" />
        <port polarity="Input" name="a(1:0)" />
        <port polarity="Input" name="b(1:0)" />
        <port polarity="Output" name="q(3:0)" />
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
        <blockdef name="halfadder_sc">
            <timestamp>2025-3-3T10:59:31</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="b(0)" name="I0" />
            <blockpin signalname="a(0)" name="I1" />
            <blockpin signalname="q(0)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="b(0)" name="I0" />
            <blockpin signalname="a(1)" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="b(1)" name="I0" />
            <blockpin signalname="a(0)" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="b(1)" name="I0" />
            <blockpin signalname="a(1)" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="halfadder_sc" name="XLXI_5">
            <blockpin signalname="XLXN_24" name="a" />
            <blockpin signalname="XLXN_13" name="b" />
            <blockpin signalname="q(1)" name="sum" />
            <blockpin signalname="XLXN_19" name="carry" />
        </block>
        <block symbolname="halfadder_sc" name="XLXI_6">
            <blockpin signalname="XLXN_19" name="a" />
            <blockpin signalname="XLXN_14" name="b" />
            <blockpin signalname="q(2)" name="sum" />
            <blockpin signalname="q(3)" name="carry" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="a(1:0)">
            <wire x2="560" y1="656" y2="656" x1="528" />
        </branch>
        <branch name="b(1:0)">
            <wire x2="560" y1="704" y2="704" x1="528" />
        </branch>
        <iomarker fontsize="28" x="528" y="656" name="a(1:0)" orien="R180" />
        <iomarker fontsize="28" x="528" y="704" name="b(1:0)" orien="R180" />
        <instance x="1024" y="992" name="XLXI_1" orien="R0" />
        <instance x="1024" y="1168" name="XLXI_2" orien="R0" />
        <instance x="1024" y="1344" name="XLXI_3" orien="R0" />
        <instance x="1024" y="1520" name="XLXI_4" orien="R0" />
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="864" type="branch" />
            <wire x2="1024" y1="864" y2="864" x1="1008" />
        </branch>
        <branch name="b(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="928" type="branch" />
            <wire x2="1024" y1="928" y2="928" x1="1008" />
        </branch>
        <branch name="a(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1040" type="branch" />
            <wire x2="1024" y1="1040" y2="1040" x1="992" />
        </branch>
        <branch name="b(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1104" type="branch" />
            <wire x2="1024" y1="1104" y2="1104" x1="1008" />
        </branch>
        <branch name="a(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1216" type="branch" />
            <wire x2="1024" y1="1216" y2="1216" x1="1008" />
        </branch>
        <branch name="b(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1280" type="branch" />
            <wire x2="1024" y1="1280" y2="1280" x1="992" />
        </branch>
        <branch name="a(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1392" type="branch" />
            <wire x2="1024" y1="1392" y2="1392" x1="992" />
        </branch>
        <branch name="b(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1456" type="branch" />
            <wire x2="1024" y1="1456" y2="1456" x1="992" />
        </branch>
        <instance x="1472" y="1216" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1824" y="1424" name="XLXI_6" orien="R0">
        </instance>
        <branch name="q(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="896" type="branch" />
            <wire x2="1296" y1="896" y2="896" x1="1280" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1312" y1="1248" y2="1248" x1="1280" />
            <wire x2="1456" y1="1248" y2="1248" x1="1312" />
            <wire x2="1472" y1="1184" y2="1184" x1="1456" />
            <wire x2="1456" y1="1184" y2="1248" x1="1456" />
        </branch>
        <branch name="q(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="1120" type="branch" />
            <wire x2="1872" y1="1120" y2="1120" x1="1856" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1808" y1="1248" y2="1328" x1="1808" />
            <wire x2="1824" y1="1328" y2="1328" x1="1808" />
            <wire x2="1888" y1="1248" y2="1248" x1="1808" />
            <wire x2="1888" y1="1184" y2="1184" x1="1856" />
            <wire x2="1888" y1="1184" y2="1248" x1="1888" />
        </branch>
        <branch name="q(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="1328" type="branch" />
            <wire x2="2224" y1="1328" y2="1328" x1="2208" />
        </branch>
        <branch name="q(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1392" type="branch" />
            <wire x2="2240" y1="1392" y2="1392" x1="2208" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1312" y1="1424" y2="1424" x1="1280" />
            <wire x2="1808" y1="1424" y2="1424" x1="1312" />
            <wire x2="1824" y1="1392" y2="1392" x1="1808" />
            <wire x2="1808" y1="1392" y2="1424" x1="1808" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1312" y1="1072" y2="1072" x1="1280" />
            <wire x2="1312" y1="1072" y2="1136" x1="1312" />
            <wire x2="1456" y1="1136" y2="1136" x1="1312" />
            <wire x2="1472" y1="1120" y2="1120" x1="1456" />
            <wire x2="1456" y1="1120" y2="1136" x1="1456" />
        </branch>
        <branch name="q(3:0)">
            <wire x2="464" y1="768" y2="768" x1="432" />
        </branch>
        <iomarker fontsize="28" x="464" y="768" name="q(3:0)" orien="R0" />
    </sheet>
</drawing>