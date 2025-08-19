<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S(31:0)" />
        <signal name="neg" />
        <signal name="B(31)" />
        <signal name="A(31)" />
        <signal name="XLXN_92" />
        <signal name="S(31:16)" />
        <signal name="COnoCI" />
        <signal name="XLXN_26" />
        <signal name="tmpSnoCI(15:0)" />
        <signal name="XLXN_17" />
        <signal name="COwithCI" />
        <signal name="XLXN_23" />
        <signal name="tmpSwithCI(15:0)" />
        <signal name="B(31:16)" />
        <signal name="A(31:16)" />
        <signal name="XLXN_8" />
        <signal name="B(15:0)" />
        <signal name="A(15:0)" />
        <signal name="lsbCO" />
        <signal name="XLXN_7" />
        <signal name="S(15:0)" />
        <signal name="sub" />
        <signal name="add" />
        <signal name="B(31:0)" />
        <signal name="A(31:0)" />
        <port polarity="Output" name="S(31:0)" />
        <port polarity="Output" name="neg" />
        <port polarity="Input" name="sub" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Input" name="A(31:0)" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="adsu16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <rect width="64" x="0" y="-204" height="24" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="48" y1="-64" y2="-64" x1="128" />
            <line x2="128" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="xor4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="60" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="208" y1="-160" y2="-160" x1="256" />
            <arc ex="64" ey="-208" sx="64" sy="-112" r="56" cx="32" cy="-160" />
            <line x2="64" y1="-208" y2="-208" x1="128" />
            <line x2="64" y1="-112" y2="-112" x1="128" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <arc ex="128" ey="-208" sx="208" sy="-160" r="88" cx="132" cy="-120" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="208" ey="-160" sx="128" sy="-112" r="88" cx="132" cy="-200" />
        </blockdef>
        <blockdef name="MUX_16BIT">
            <timestamp>2024-12-10T13:29:25</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="xor4" name="XLXI_23">
            <blockpin signalname="sub" name="I0" />
            <blockpin signalname="B(31)" name="I1" />
            <blockpin signalname="A(31)" name="I2" />
            <blockpin signalname="XLXN_92" name="I3" />
            <blockpin signalname="neg" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_21">
            <blockpin signalname="COnoCI" name="D0" />
            <blockpin signalname="COwithCI" name="D1" />
            <blockpin signalname="lsbCO" name="S0" />
            <blockpin signalname="XLXN_92" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_10">
            <blockpin signalname="XLXN_17" name="G" />
        </block>
        <block symbolname="adsu16" name="XLXI_5">
            <blockpin signalname="A(31:16)" name="A(15:0)" />
            <blockpin signalname="add" name="ADD" />
            <blockpin signalname="B(31:16)" name="B(15:0)" />
            <blockpin signalname="XLXN_17" name="CI" />
            <blockpin signalname="COnoCI" name="CO" />
            <blockpin signalname="XLXN_26" name="OFL" />
            <blockpin signalname="tmpSnoCI(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="XLXN_8" name="P" />
        </block>
        <block symbolname="adsu16" name="XLXI_3">
            <blockpin signalname="A(31:16)" name="A(15:0)" />
            <blockpin signalname="add" name="ADD" />
            <blockpin signalname="B(31:16)" name="B(15:0)" />
            <blockpin signalname="XLXN_8" name="CI" />
            <blockpin signalname="COwithCI" name="CO" />
            <blockpin signalname="XLXN_23" name="OFL" />
            <blockpin signalname="tmpSwithCI(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="adsu16" name="XLXI_2">
            <blockpin signalname="A(15:0)" name="A(15:0)" />
            <blockpin signalname="add" name="ADD" />
            <blockpin signalname="B(15:0)" name="B(15:0)" />
            <blockpin signalname="sub" name="CI" />
            <blockpin signalname="lsbCO" name="CO" />
            <blockpin signalname="XLXN_7" name="OFL" />
            <blockpin signalname="S(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="sub" name="I" />
            <blockpin signalname="add" name="O" />
        </block>
        <block symbolname="MUX_16BIT" name="XLXI_40">
            <blockpin signalname="lsbCO" name="sel" />
            <blockpin signalname="tmpSnoCI(15:0)" name="in0(15:0)" />
            <blockpin signalname="tmpSwithCI(15:0)" name="in1(15:0)" />
            <blockpin signalname="S(31:16)" name="muxout(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="2080" y="1056" name="S(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1808" y="1152" name="neg" orien="R0" />
        <iomarker fontsize="28" x="160" y="272" name="sub" orien="R180" />
        <iomarker fontsize="28" x="208" y="192" name="B(31:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="112" name="A(31:0)" orien="R180" />
        <instance x="1520" y="1312" name="XLXI_23" orien="R0" />
        <instance x="976" y="1184" name="XLXI_21" orien="R0" />
        <instance x="1616" y="496" name="XLXI_10" orien="R0" />
        <instance x="1728" y="912" name="XLXI_5" orien="R0" />
        <instance x="832" y="416" name="XLXI_4" orien="R0" />
        <instance x="896" y="896" name="XLXI_3" orien="R0" />
        <instance x="192" y="896" name="XLXI_2" orien="R0" />
        <instance x="224" y="304" name="XLXI_1" orien="R0" />
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1056" type="branch" />
            <wire x2="2048" y1="1056" y2="1056" x1="2032" />
            <wire x2="2080" y1="1056" y2="1056" x1="2048" />
        </branch>
        <branch name="neg">
            <wire x2="1808" y1="1152" y2="1152" x1="1776" />
        </branch>
        <branch name="sub">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1248" type="branch" />
            <wire x2="1520" y1="1248" y2="1248" x1="1488" />
        </branch>
        <branch name="B(31)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1184" type="branch" />
            <wire x2="1520" y1="1184" y2="1184" x1="1488" />
        </branch>
        <branch name="A(31)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1120" type="branch" />
            <wire x2="1520" y1="1120" y2="1120" x1="1488" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="1328" y1="1056" y2="1056" x1="1296" />
            <wire x2="1520" y1="1056" y2="1056" x1="1328" />
        </branch>
        <branch name="lsbCO">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1152" type="branch" />
            <wire x2="976" y1="1152" y2="1152" x1="944" />
        </branch>
        <branch name="COwithCI">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1088" type="branch" />
            <wire x2="976" y1="1088" y2="1088" x1="944" />
        </branch>
        <branch name="COnoCI">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1024" type="branch" />
            <wire x2="976" y1="1024" y2="1024" x1="944" />
        </branch>
        <branch name="lsbCO">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="208" y="1040" type="branch" />
            <wire x2="208" y1="1040" y2="1040" x1="176" />
            <wire x2="224" y1="1040" y2="1040" x1="208" />
        </branch>
        <branch name="tmpSnoCI(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="192" y="1104" type="branch" />
            <wire x2="192" y1="1104" y2="1104" x1="176" />
            <wire x2="224" y1="1104" y2="1104" x1="192" />
        </branch>
        <branch name="tmpSwithCI(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="192" y="1168" type="branch" />
            <wire x2="192" y1="1168" y2="1168" x1="176" />
            <wire x2="224" y1="1168" y2="1168" x1="192" />
        </branch>
        <branch name="S(31:16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1040" type="branch" />
            <wire x2="640" y1="1040" y2="1040" x1="608" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="848" type="branch" />
            <wire x2="1712" y1="848" y2="848" x1="1696" />
            <wire x2="1728" y1="848" y2="848" x1="1712" />
        </branch>
        <branch name="B(31:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="720" type="branch" />
            <wire x2="1728" y1="720" y2="720" x1="1696" />
        </branch>
        <branch name="A(31:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="592" type="branch" />
            <wire x2="1712" y1="592" y2="592" x1="1696" />
            <wire x2="1728" y1="592" y2="592" x1="1712" />
        </branch>
        <branch name="COnoCI">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="848" type="branch" />
            <wire x2="2208" y1="848" y2="848" x1="2176" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2192" y1="784" y2="784" x1="2176" />
            <wire x2="2208" y1="784" y2="784" x1="2192" />
        </branch>
        <branch name="tmpSnoCI(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="656" type="branch" />
            <wire x2="2208" y1="656" y2="656" x1="2176" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1728" y1="368" y2="368" x1="1680" />
            <wire x2="1728" y1="368" y2="464" x1="1728" />
        </branch>
        <branch name="COwithCI">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="832" type="branch" />
            <wire x2="1376" y1="832" y2="832" x1="1344" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1376" y1="768" y2="768" x1="1344" />
        </branch>
        <branch name="tmpSwithCI(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="640" type="branch" />
            <wire x2="1376" y1="640" y2="640" x1="1344" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="832" type="branch" />
            <wire x2="896" y1="832" y2="832" x1="864" />
        </branch>
        <branch name="B(31:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="704" type="branch" />
            <wire x2="896" y1="704" y2="704" x1="864" />
        </branch>
        <branch name="A(31:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="864" y="576" type="branch" />
            <wire x2="896" y1="576" y2="576" x1="864" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="896" y1="416" y2="448" x1="896" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="160" y="832" type="branch" />
            <wire x2="176" y1="832" y2="832" x1="160" />
            <wire x2="192" y1="832" y2="832" x1="176" />
        </branch>
        <branch name="B(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="160" y="704" type="branch" />
            <wire x2="176" y1="704" y2="704" x1="160" />
            <wire x2="192" y1="704" y2="704" x1="176" />
        </branch>
        <branch name="A(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="160" y="576" type="branch" />
            <wire x2="192" y1="576" y2="576" x1="160" />
        </branch>
        <branch name="lsbCO">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="832" type="branch" />
            <wire x2="672" y1="832" y2="832" x1="640" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="672" y1="768" y2="768" x1="640" />
        </branch>
        <branch name="S(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="640" type="branch" />
            <wire x2="672" y1="640" y2="640" x1="640" />
        </branch>
        <branch name="sub">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="144" y="416" type="branch" />
            <wire x2="192" y1="368" y2="368" x1="144" />
            <wire x2="192" y1="368" y2="448" x1="192" />
            <wire x2="144" y1="368" y2="416" x1="144" />
        </branch>
        <branch name="sub">
            <wire x2="176" y1="272" y2="272" x1="160" />
            <wire x2="208" y1="272" y2="272" x1="176" />
            <wire x2="224" y1="272" y2="272" x1="208" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="272" type="branch" />
            <wire x2="464" y1="272" y2="272" x1="448" />
            <wire x2="480" y1="272" y2="272" x1="464" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="368" y1="192" y2="192" x1="208" />
        </branch>
        <branch name="A(31:0)">
            <wire x2="368" y1="112" y2="112" x1="208" />
        </branch>
        <instance x="224" y="1200" name="XLXI_40" orien="R0">
        </instance>
    </sheet>
</drawing>