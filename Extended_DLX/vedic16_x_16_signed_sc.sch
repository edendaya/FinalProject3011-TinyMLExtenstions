<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="c(31:0)" />
        <signal name="res(31:0)" />
        <signal name="a(15)" />
        <signal name="b(15)" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17(15:0)" />
        <signal name="XLXN_18(15:0)" />
        <signal name="a(31:0)" />
        <signal name="b(31:0)" />
        <signal name="a(15:0)" />
        <signal name="b(15:0)" />
        <port polarity="Output" name="res(31:0)" />
        <port polarity="Input" name="a(31:0)" />
        <port polarity="Input" name="b(31:0)" />
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
        <blockdef name="vedic16_x_16_sc">
            <timestamp>2025-3-4T16:14:31</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="twoscomplement_16bit">
            <timestamp>2025-3-4T16:23:17</timestamp>
            <rect width="320" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
        </blockdef>
        <block symbolname="twoscomplement_32bit" name="XLXI_3">
            <blockpin signalname="XLXN_16" name="en" />
            <blockpin signalname="c(31:0)" name="in_twos(31:0)" />
            <blockpin signalname="res(31:0)" name="out_twos(31:0)" />
        </block>
        <block symbolname="xor2" name="XLXI_10">
            <blockpin signalname="a(15)" name="I0" />
            <blockpin signalname="b(15)" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="vedic16_x_16_sc" name="XLXI_11">
            <blockpin signalname="XLXN_17(15:0)" name="a(15:0)" />
            <blockpin signalname="XLXN_18(15:0)" name="b(15:0)" />
            <blockpin signalname="c(31:0)" name="c(31:0)" />
        </block>
        <block symbolname="twoscomplement_16bit" name="XLXI_12">
            <blockpin signalname="a(15)" name="en" />
            <blockpin signalname="a(15:0)" name="in_twos(15:0)" />
            <blockpin signalname="XLXN_17(15:0)" name="out_twos(15:0)" />
        </block>
        <block symbolname="twoscomplement_16bit" name="XLXI_13">
            <blockpin signalname="b(15)" name="en" />
            <blockpin signalname="b(15:0)" name="in_twos(15:0)" />
            <blockpin signalname="XLXN_18(15:0)" name="out_twos(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="a(31:0)">
            <wire x2="576" y1="1040" y2="1040" x1="528" />
        </branch>
        <branch name="b(31:0)">
            <wire x2="576" y1="1088" y2="1088" x1="528" />
        </branch>
        <branch name="c(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1424" type="branch" />
            <wire x2="2160" y1="1424" y2="1424" x1="2096" />
        </branch>
        <branch name="c(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1328" type="branch" />
            <wire x2="2368" y1="1328" y2="1328" x1="2352" />
        </branch>
        <instance x="2368" y="1360" name="XLXI_3" orien="R0">
        </instance>
        <branch name="res(31:0)">
            <wire x2="2880" y1="1264" y2="1264" x1="2816" />
        </branch>
        <branch name="a(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1280" type="branch" />
            <wire x2="448" y1="1280" y2="1280" x1="432" />
            <wire x2="528" y1="1280" y2="1280" x1="448" />
            <wire x2="1088" y1="1280" y2="1280" x1="528" />
            <wire x2="528" y1="1280" y2="1808" x1="528" />
            <wire x2="528" y1="1808" y2="1872" x1="528" />
            <wire x2="1248" y1="1872" y2="1872" x1="528" />
        </branch>
        <branch name="b(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="1632" type="branch" />
            <wire x2="672" y1="1632" y2="1632" x1="592" />
            <wire x2="1088" y1="1632" y2="1632" x1="672" />
            <wire x2="672" y1="1632" y2="1808" x1="672" />
            <wire x2="1248" y1="1808" y2="1808" x1="672" />
        </branch>
        <instance x="1248" y="1936" name="XLXI_10" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="2336" y1="1840" y2="1840" x1="1504" />
            <wire x2="2368" y1="1264" y2="1264" x1="2336" />
            <wire x2="2336" y1="1264" y2="1840" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="528" y="1040" name="a(31:0)" orien="R180" />
        <iomarker fontsize="28" x="528" y="1088" name="b(31:0)" orien="R180" />
        <iomarker fontsize="28" x="2880" y="1264" name="res(31:0)" orien="R0" />
        <instance x="1712" y="1520" name="XLXI_11" orien="R0">
        </instance>
        <instance x="1088" y="1376" name="XLXI_12" orien="R0">
        </instance>
        <instance x="1088" y="1728" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_17(15:0)">
            <wire x2="1616" y1="1280" y2="1280" x1="1536" />
            <wire x2="1616" y1="1280" y2="1424" x1="1616" />
            <wire x2="1712" y1="1424" y2="1424" x1="1616" />
        </branch>
        <branch name="XLXN_18(15:0)">
            <wire x2="1616" y1="1632" y2="1632" x1="1536" />
            <wire x2="1616" y1="1488" y2="1632" x1="1616" />
            <wire x2="1712" y1="1488" y2="1488" x1="1616" />
        </branch>
        <branch name="a(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1344" type="branch" />
            <wire x2="1088" y1="1344" y2="1344" x1="1024" />
        </branch>
        <branch name="b(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1696" type="branch" />
            <wire x2="1088" y1="1696" y2="1696" x1="1024" />
        </branch>
    </sheet>
</drawing>