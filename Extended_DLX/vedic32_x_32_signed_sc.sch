<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a(31:0)" />
        <signal name="b(31:0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_7(31:0)" />
        <signal name="XLXN_9(31:0)" />
        <signal name="c(63:0)" />
        <signal name="c(31:0)" />
        <signal name="res(31:0)" />
        <signal name="a(31)" />
        <signal name="b(31)" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <port polarity="Input" name="a(31:0)" />
        <port polarity="Input" name="b(31:0)" />
        <port polarity="Output" name="res(31:0)" />
        <blockdef name="twoscomplement_32bit">
            <timestamp>2025-3-3T8:53:56</timestamp>
            <rect width="320" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
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
        <blockdef name="vedic32_x_32_sc">
            <timestamp>2025-3-4T9:42:45</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="twoscomplement_32bit" name="XLXI_1">
            <blockpin signalname="a(31)" name="en" />
            <blockpin signalname="a(31:0)" name="in_twos(31:0)" />
            <blockpin signalname="XLXN_7(31:0)" name="out_twos(31:0)" />
        </block>
        <block symbolname="twoscomplement_32bit" name="XLXI_2">
            <blockpin signalname="b(31)" name="en" />
            <blockpin signalname="b(31:0)" name="in_twos(31:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="out_twos(31:0)" />
        </block>
        <block symbolname="twoscomplement_32bit" name="XLXI_4">
            <blockpin signalname="XLXN_16" name="en" />
            <blockpin signalname="c(31:0)" name="in_twos(31:0)" />
            <blockpin signalname="res(31:0)" name="out_twos(31:0)" />
        </block>
        <block symbolname="vedic32_x_32_sc" name="XLXI_8">
            <blockpin signalname="XLXN_7(31:0)" name="a(31:0)" />
            <blockpin signalname="XLXN_9(31:0)" name="b(31:0)" />
            <blockpin signalname="c(63:0)" name="c(63:0)" />
        </block>
        <block symbolname="xor2" name="XLXI_10">
            <blockpin signalname="a(31)" name="I0" />
            <blockpin signalname="b(31)" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="1360" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1024" y="1712" name="XLXI_2" orien="R0">
        </instance>
        <branch name="a(31:0)">
            <wire x2="512" y1="1024" y2="1024" x1="464" />
        </branch>
        <branch name="b(31:0)">
            <wire x2="512" y1="1072" y2="1072" x1="464" />
        </branch>
        <branch name="a(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1328" type="branch" />
            <wire x2="1024" y1="1328" y2="1328" x1="944" />
        </branch>
        <branch name="b(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="1680" type="branch" />
            <wire x2="1024" y1="1680" y2="1680" x1="976" />
        </branch>
        <branch name="XLXN_7(31:0)">
            <wire x2="1616" y1="1264" y2="1264" x1="1472" />
            <wire x2="1616" y1="1264" y2="1408" x1="1616" />
            <wire x2="1648" y1="1408" y2="1408" x1="1616" />
        </branch>
        <branch name="XLXN_9(31:0)">
            <wire x2="1616" y1="1616" y2="1616" x1="1472" />
            <wire x2="1616" y1="1472" y2="1616" x1="1616" />
            <wire x2="1648" y1="1472" y2="1472" x1="1616" />
        </branch>
        <branch name="c(63:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="1408" type="branch" />
            <wire x2="2096" y1="1408" y2="1408" x1="2032" />
        </branch>
        <branch name="c(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1312" type="branch" />
            <wire x2="2304" y1="1312" y2="1312" x1="2288" />
        </branch>
        <instance x="2304" y="1344" name="XLXI_4" orien="R0">
        </instance>
        <branch name="res(31:0)">
            <wire x2="2816" y1="1248" y2="1248" x1="2752" />
        </branch>
        <branch name="a(31)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1264" type="branch" />
            <wire x2="384" y1="1264" y2="1264" x1="368" />
            <wire x2="464" y1="1264" y2="1264" x1="384" />
            <wire x2="1024" y1="1264" y2="1264" x1="464" />
            <wire x2="464" y1="1264" y2="1792" x1="464" />
            <wire x2="464" y1="1792" y2="1856" x1="464" />
            <wire x2="1184" y1="1856" y2="1856" x1="464" />
        </branch>
        <branch name="b(31)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1616" type="branch" />
            <wire x2="608" y1="1616" y2="1616" x1="528" />
            <wire x2="1024" y1="1616" y2="1616" x1="608" />
            <wire x2="608" y1="1616" y2="1792" x1="608" />
            <wire x2="1184" y1="1792" y2="1792" x1="608" />
        </branch>
        <iomarker fontsize="28" x="464" y="1024" name="a(31:0)" orien="R180" />
        <iomarker fontsize="28" x="464" y="1072" name="b(31:0)" orien="R180" />
        <iomarker fontsize="28" x="2816" y="1248" name="res(31:0)" orien="R0" />
        <instance x="1648" y="1504" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1184" y="1920" name="XLXI_10" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="2272" y1="1824" y2="1824" x1="1440" />
            <wire x2="2304" y1="1248" y2="1248" x1="2272" />
            <wire x2="2272" y1="1248" y2="1824" x1="2272" />
        </branch>
    </sheet>
</drawing>