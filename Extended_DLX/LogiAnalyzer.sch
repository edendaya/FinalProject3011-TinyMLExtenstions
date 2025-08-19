<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="STATUS_OUT(7:0)" />
        <signal name="SIGNALS(31:0)" />
        <signal name="XLXN_8(4:0)" />
        <signal name="RAM_OUT(31:0)" />
        <signal name="la_we" />
        <signal name="sts_ce" />
        <signal name="AI(4:0)" />
        <signal name="CNT(4:0)" />
        <signal name="CNT(7:0)" />
        <signal name="la_run" />
        <signal name="step_en" />
        <signal name="XLXN_73" />
        <signal name="XLXN_65" />
        <signal name="in_init" />
        <signal name="XLXN_89" />
        <signal name="XLXN_124" />
        <signal name="stop_n" />
        <signal name="XLXN_176" />
        <signal name="XLXN_177" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="STATUS_OUT(7:0)" />
        <port polarity="Input" name="SIGNALS(31:0)" />
        <port polarity="Output" name="RAM_OUT(31:0)" />
        <port polarity="Input" name="AI(4:0)" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="in_init" />
        <port polarity="Input" name="stop_n" />
        <blockdef name="RAM32x32">
            <timestamp>2024-11-21T13:51:20</timestamp>
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
        <blockdef name="MUX5bit">
            <timestamp>2024-11-21T13:53:56</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="CNT5">
            <timestamp>2024-11-21T13:55:13</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <blockdef name="fd8re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="CNT5" name="XLXI_3">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="sts_ce" name="RST" />
            <blockpin signalname="la_we" name="CE" />
            <blockpin signalname="CNT(4:0)" name="CNT(4:0)" />
        </block>
        <block symbolname="fd8re" name="XLXI_9">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="sts_ce" name="CE" />
            <blockpin signalname="CNT(7:0)" name="D(7:0)" />
            <blockpin name="R" />
            <blockpin signalname="STATUS_OUT(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="RAM32x32" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="la_we" name="WE" />
            <blockpin signalname="XLXN_8(4:0)" name="ADDR(4:0)" />
            <blockpin signalname="SIGNALS(31:0)" name="DI(31:0)" />
            <blockpin signalname="RAM_OUT(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="MUX5bit" name="XLXI_2">
            <blockpin signalname="la_we" name="sel" />
            <blockpin signalname="AI(4:0)" name="A(4:0)" />
            <blockpin signalname="CNT(4:0)" name="B(4:0)" />
            <blockpin signalname="XLXN_8(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="or2" name="XLXI_26">
            <blockpin signalname="XLXN_73" name="I0" />
            <blockpin signalname="XLXN_177" name="I1" />
            <blockpin signalname="la_run" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_25">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_177" name="D" />
            <blockpin signalname="XLXN_73" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_32">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="la_run" name="D" />
            <blockpin signalname="XLXN_89" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_34">
            <blockpin signalname="XLXN_89" name="I0" />
            <blockpin signalname="XLXN_124" name="I1" />
            <blockpin signalname="sts_ce" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_33">
            <blockpin signalname="la_run" name="I" />
            <blockpin signalname="XLXN_124" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="stop_n" name="I0" />
            <blockpin signalname="la_run" name="I1" />
            <blockpin signalname="la_we" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_39">
            <blockpin signalname="step_en" name="I0" />
            <blockpin signalname="XLXN_176" name="I1" />
            <blockpin signalname="XLXN_177" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_42">
            <blockpin signalname="in_init" name="I" />
            <blockpin signalname="XLXN_176" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="864" y="880" name="XLXI_3" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="864" y1="720" y2="720" x1="832" />
        </branch>
        <branch name="CNT(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="720" type="branch" />
            <wire x2="1296" y1="720" y2="720" x1="1248" />
        </branch>
        <instance x="1856" y="912" name="XLXI_9" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="784" type="branch" />
            <wire x2="1856" y1="784" y2="784" x1="1792" />
        </branch>
        <branch name="STATUS_OUT(7:0)">
            <wire x2="2320" y1="656" y2="656" x1="2240" />
        </branch>
        <branch name="CNT(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="656" type="branch" />
            <wire x2="1840" y1="656" y2="656" x1="1808" />
            <wire x2="1856" y1="656" y2="656" x1="1840" />
        </branch>
        <instance x="1888" y="480" name="XLXI_1" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="1888" y1="256" y2="256" x1="1856" />
        </branch>
        <branch name="la_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="320" type="branch" />
            <wire x2="1888" y1="320" y2="320" x1="1856" />
        </branch>
        <branch name="SIGNALS(31:0)">
            <wire x2="1888" y1="448" y2="448" x1="1840" />
        </branch>
        <branch name="XLXN_8(4:0)">
            <wire x2="1872" y1="384" y2="384" x1="1488" />
            <wire x2="1888" y1="384" y2="384" x1="1872" />
        </branch>
        <branch name="RAM_OUT(31:0)">
            <wire x2="2320" y1="256" y2="256" x1="2272" />
        </branch>
        <instance x="1104" y="544" name="XLXI_2" orien="R0">
        </instance>
        <branch name="AI(4:0)">
            <wire x2="1104" y1="448" y2="448" x1="1072" />
        </branch>
        <branch name="sts_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="720" type="branch" />
            <wire x2="1824" y1="720" y2="720" x1="1808" />
            <wire x2="1856" y1="720" y2="720" x1="1824" />
        </branch>
        <branch name="la_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="384" type="branch" />
            <wire x2="1104" y1="384" y2="384" x1="1072" />
        </branch>
        <branch name="CNT(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="512" type="branch" />
            <wire x2="1104" y1="512" y2="512" x1="1072" />
        </branch>
        <branch name="sts_ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="784" type="branch" />
            <wire x2="864" y1="784" y2="784" x1="832" />
        </branch>
        <branch name="la_we">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="848" type="branch" />
            <wire x2="864" y1="848" y2="848" x1="848" />
        </branch>
        <iomarker fontsize="28" x="832" y="720" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="2320" y="656" name="STATUS_OUT(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1856" y="256" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1840" y="448" name="SIGNALS(31:0)" orien="R180" />
        <iomarker fontsize="28" x="2320" y="256" name="RAM_OUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1072" y="448" name="AI(4:0)" orien="R180" />
        <instance x="2288" y="1392" name="XLXI_26" orien="R0" />
        <branch name="la_run">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="1296" type="branch" />
            <wire x2="2592" y1="1296" y2="1296" x1="2544" />
            <wire x2="2688" y1="1296" y2="1296" x1="2592" />
        </branch>
        <instance x="1760" y="1664" name="XLXI_25" orien="R0" />
        <branch name="XLXN_73">
            <wire x2="2256" y1="1408" y2="1408" x1="2144" />
            <wire x2="2256" y1="1328" y2="1408" x1="2256" />
            <wire x2="2288" y1="1328" y2="1328" x1="2256" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1536" type="branch" />
            <wire x2="1680" y1="1536" y2="1536" x1="1648" />
            <wire x2="1760" y1="1536" y2="1536" x1="1680" />
        </branch>
        <instance x="1632" y="2176" name="XLXI_32" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="2048" type="branch" />
            <wire x2="1536" y1="2048" y2="2048" x1="1504" />
            <wire x2="1632" y1="2048" y2="2048" x1="1536" />
        </branch>
        <branch name="XLXN_89">
            <wire x2="2048" y1="1920" y2="1920" x1="2016" />
            <wire x2="2064" y1="1920" y2="1920" x1="2048" />
            <wire x2="2288" y1="1920" y2="1920" x1="2064" />
            <wire x2="2320" y1="1872" y2="1872" x1="2288" />
            <wire x2="2288" y1="1872" y2="1920" x1="2288" />
        </branch>
        <instance x="2320" y="1936" name="XLXI_34" orien="R0" />
        <branch name="sts_ce">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="1840" type="branch" />
            <wire x2="2608" y1="1840" y2="1840" x1="2576" />
        </branch>
        <branch name="XLXN_124">
            <wire x2="2304" y1="1776" y2="1776" x1="2288" />
            <wire x2="2304" y1="1776" y2="1808" x1="2304" />
            <wire x2="2320" y1="1808" y2="1808" x1="2304" />
        </branch>
        <instance x="2064" y="1808" name="XLXI_33" orien="R0" />
        <branch name="la_run">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1920" type="branch" />
            <wire x2="1616" y1="1920" y2="1920" x1="1536" />
            <wire x2="1632" y1="1920" y2="1920" x1="1616" />
            <wire x2="2064" y1="1776" y2="1776" x1="1616" />
            <wire x2="1616" y1="1776" y2="1920" x1="1616" />
        </branch>
        <branch name="la_run">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="608" y="1856" type="branch" />
            <wire x2="608" y1="1856" y2="1856" x1="544" />
            <wire x2="720" y1="1856" y2="1856" x1="608" />
            <wire x2="720" y1="1856" y2="1936" x1="720" />
            <wire x2="848" y1="1936" y2="1936" x1="720" />
        </branch>
        <branch name="stop_n">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="592" y="2112" type="branch" />
            <wire x2="592" y1="2112" y2="2112" x1="560" />
            <wire x2="720" y1="2112" y2="2112" x1="592" />
            <wire x2="720" y1="2000" y2="2112" x1="720" />
            <wire x2="848" y1="2000" y2="2000" x1="720" />
        </branch>
        <branch name="la_we">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1968" type="branch" />
            <wire x2="1120" y1="1968" y2="1968" x1="1104" />
            <wire x2="1184" y1="1968" y2="1968" x1="1120" />
        </branch>
        <instance x="848" y="2064" name="XLXI_23" orien="R0" />
        <branch name="step_en">
            <wire x2="464" y1="1120" y2="1120" x1="304" />
        </branch>
        <branch name="stop_n">
            <wire x2="464" y1="1312" y2="1312" x1="304" />
        </branch>
        <branch name="in_init">
            <wire x2="464" y1="1216" y2="1216" x1="304" />
        </branch>
        <iomarker fontsize="28" x="464" y="1120" name="step_en" orien="R0" />
        <iomarker fontsize="28" x="464" y="1312" name="stop_n" orien="R0" />
        <iomarker fontsize="28" x="464" y="1216" name="in_init" orien="R0" />
        <instance x="1376" y="1504" name="XLXI_39" orien="R0" />
        <branch name="step_en">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1440" type="branch" />
            <wire x2="1344" y1="1440" y2="1440" x1="1216" />
            <wire x2="1376" y1="1440" y2="1440" x1="1344" />
        </branch>
        <branch name="in_init">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1376" type="branch" />
            <wire x2="1008" y1="1376" y2="1376" x1="944" />
            <wire x2="1104" y1="1376" y2="1376" x1="1008" />
        </branch>
        <instance x="1104" y="1408" name="XLXI_42" orien="R0" />
        <branch name="XLXN_176">
            <wire x2="1376" y1="1376" y2="1376" x1="1328" />
        </branch>
        <branch name="XLXN_177">
            <wire x2="1696" y1="1408" y2="1408" x1="1632" />
            <wire x2="1760" y1="1408" y2="1408" x1="1696" />
            <wire x2="2288" y1="1264" y2="1264" x1="1696" />
            <wire x2="1696" y1="1264" y2="1408" x1="1696" />
        </branch>
    </sheet>
</drawing>