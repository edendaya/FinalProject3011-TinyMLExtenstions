<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(31:0)" />
        <signal name="B(31:0)" />
        <signal name="OR_O(31:0)" />
        <signal name="XOR_O(31:0)" />
        <signal name="AND_O(31:0)" />
        <signal name="F(0)" />
        <signal name="MUX1_O(31:0)" />
        <signal name="F(1)" />
        <signal name="F(2)" />
        <signal name="S(31:0)" />
        <signal name="MUX2_O(31:0)" />
        <signal name="neg" />
        <signal name="ALUF(2:0)" />
        <signal name="COMP_OUT" />
        <signal name="test" />
        <signal name="XLXN_68(31:0)" />
        <signal name="ALU_OUT(31:0)" />
        <signal name="F(2:0)" />
        <signal name="add" />
        <signal name="XLXN_73(2:0)" />
        <signal name="MUX3_O(31:0)" />
        <signal name="XLXN_79" />
        <signal name="sub" />
        <signal name="XLXN_80" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Input" name="ALUF(2:0)" />
        <port polarity="Input" name="test" />
        <port polarity="Output" name="ALU_OUT(31:0)" />
        <port polarity="Input" name="add" />
        <blockdef name="XOR32">
            <timestamp>2024-4-10T5:17:23</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="OR32">
            <timestamp>2024-4-10T5:16:57</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="AND32">
            <timestamp>2024-4-10T5:15:44</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="MUX32bit">
            <timestamp>2024-4-10T7:9:38</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="DLX_Comparator">
            <timestamp>2024-7-15T11:25:46</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="DLX_MUX3">
            <timestamp>2024-7-15T11:51:29</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
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
        <blockdef name="DLX_ADD_SUM">
            <timestamp>2024-7-15T12:29:35</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Comp_out_32bits">
            <timestamp>2024-7-22T10:55:41</timestamp>
            <rect width="400" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
        </blockdef>
        <block symbolname="MUX32bit" name="XLXI_6">
            <blockpin signalname="F(2)" name="sel" />
            <blockpin signalname="S(31:0)" name="A(31:0)" />
            <blockpin signalname="MUX2_O(31:0)" name="B(31:0)" />
            <blockpin signalname="MUX3_O(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_7">
            <blockpin signalname="test" name="sel" />
            <blockpin signalname="MUX3_O(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_68(31:0)" name="B(31:0)" />
            <blockpin signalname="ALU_OUT(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="OR32" name="XLXI_2">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="OR_O(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="XOR32" name="XLXI_1">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XOR_O(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="AND32" name="XLXI_3">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="AND_O(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_4">
            <blockpin signalname="F(0)" name="sel" />
            <blockpin signalname="XOR_O(31:0)" name="A(31:0)" />
            <blockpin signalname="OR_O(31:0)" name="B(31:0)" />
            <blockpin signalname="MUX1_O(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_5">
            <blockpin signalname="F(1)" name="sel" />
            <blockpin signalname="MUX1_O(31:0)" name="A(31:0)" />
            <blockpin signalname="AND_O(31:0)" name="B(31:0)" />
            <blockpin signalname="MUX2_O(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="DLX_Comparator" name="XLXI_17">
            <blockpin signalname="S(31:0)" name="S(31:0)" />
            <blockpin signalname="neg" name="neg" />
            <blockpin signalname="F(2:0)" name="ALUF(2:0)" />
            <blockpin signalname="COMP_OUT" name="COMP_OUT" />
        </block>
        <block symbolname="DLX_MUX3" name="XLXI_19">
            <blockpin signalname="add" name="sel" />
            <blockpin signalname="ALUF(2:0)" name="A(2:0)" />
            <blockpin signalname="XLXN_73(2:0)" name="B(2:0)" />
            <blockpin signalname="F(2:0)" name="O(2:0)" />
        </block>
        <block symbolname="constant" name="XLXI_20">
            <attr value="00000003" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_73(2:0)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_23">
            <blockpin signalname="XLXN_79" name="I0" />
            <blockpin signalname="test" name="I1" />
            <blockpin signalname="sub" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_24">
            <blockpin signalname="F(0)" name="I" />
            <blockpin signalname="XLXN_79" name="O" />
        </block>
        <block symbolname="DLX_ADD_SUM" name="XLXI_25">
            <blockpin signalname="sub" name="sub" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="S(31:0)" name="S(31:0)" />
            <blockpin signalname="neg" name="neg" />
        </block>
        <block symbolname="Comp_out_32bits" name="XLXI_26">
            <blockpin signalname="COMP_OUT" name="COMP_OUT" />
            <blockpin signalname="XLXN_68(31:0)" name="COMP_OUT_32bits(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1920" y="368" name="XLXI_2" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="272" type="branch" />
            <wire x2="1920" y1="272" y2="272" x1="1824" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="336" type="branch" />
            <wire x2="1920" y1="336" y2="336" x1="1808" />
        </branch>
        <branch name="OR_O(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="272" type="branch" />
            <wire x2="2368" y1="272" y2="272" x1="2304" />
        </branch>
        <instance x="2832" y="352" name="XLXI_1" orien="R0">
        </instance>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="320" type="branch" />
            <wire x2="2832" y1="320" y2="320" x1="2736" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="256" type="branch" />
            <wire x2="2832" y1="256" y2="256" x1="2736" />
        </branch>
        <branch name="XOR_O(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3328" y="256" type="branch" />
            <wire x2="3328" y1="256" y2="256" x1="3216" />
        </branch>
        <instance x="1744" y="640" name="XLXI_3" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="544" type="branch" />
            <wire x2="1744" y1="544" y2="544" x1="1648" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="608" type="branch" />
            <wire x2="1744" y1="608" y2="608" x1="1648" />
        </branch>
        <branch name="AND_O(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="544" type="branch" />
            <wire x2="2224" y1="544" y2="544" x1="2128" />
        </branch>
        <branch name="OR_O(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="640" type="branch" />
            <wire x2="2768" y1="640" y2="640" x1="2672" />
        </branch>
        <instance x="2768" y="672" name="XLXI_4" orien="R0">
        </instance>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="512" type="branch" />
            <wire x2="2768" y1="512" y2="512" x1="2704" />
        </branch>
        <branch name="XOR_O(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="576" type="branch" />
            <wire x2="2768" y1="576" y2="576" x1="2672" />
        </branch>
        <branch name="MUX1_O(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3264" y="512" type="branch" />
            <wire x2="3264" y1="512" y2="512" x1="3152" />
        </branch>
        <instance x="1792" y="944" name="XLXI_5" orien="R0">
        </instance>
        <branch name="F(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="784" type="branch" />
            <wire x2="1792" y1="784" y2="784" x1="1696" />
        </branch>
        <branch name="MUX1_O(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="848" type="branch" />
            <wire x2="1792" y1="848" y2="848" x1="1664" />
        </branch>
        <branch name="AND_O(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="912" type="branch" />
            <wire x2="1792" y1="912" y2="912" x1="1696" />
        </branch>
        <branch name="MUX2_O(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="784" type="branch" />
            <wire x2="2272" y1="784" y2="784" x1="2176" />
        </branch>
        <instance x="2768" y="976" name="XLXI_6" orien="R0">
        </instance>
        <branch name="F(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="816" type="branch" />
            <wire x2="2768" y1="816" y2="816" x1="2704" />
        </branch>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="880" type="branch" />
            <wire x2="2768" y1="880" y2="880" x1="2688" />
        </branch>
        <branch name="MUX2_O(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="944" type="branch" />
            <wire x2="2768" y1="944" y2="944" x1="2704" />
        </branch>
        <branch name="MUX3_O(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3264" y="816" type="branch" />
            <wire x2="3264" y1="816" y2="816" x1="3152" />
        </branch>
        <instance x="2208" y="1376" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1072" y="1376" name="XLXI_17" orien="R0">
        </instance>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1216" type="branch" />
            <wire x2="1072" y1="1216" y2="1216" x1="1008" />
        </branch>
        <branch name="neg">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1280" type="branch" />
            <wire x2="1072" y1="1280" y2="1280" x1="1024" />
        </branch>
        <branch name="F(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1344" type="branch" />
            <wire x2="1072" y1="1344" y2="1344" x1="1008" />
        </branch>
        <branch name="COMP_OUT">
            <wire x2="1568" y1="1216" y2="1216" x1="1456" />
            <wire x2="1584" y1="1216" y2="1216" x1="1568" />
            <wire x2="1584" y1="1216" y2="1344" x1="1584" />
            <wire x2="1600" y1="1344" y2="1344" x1="1584" />
        </branch>
        <branch name="test">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1216" type="branch" />
            <wire x2="2208" y1="1216" y2="1216" x1="2160" />
        </branch>
        <branch name="MUX3_O(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1280" type="branch" />
            <wire x2="2208" y1="1280" y2="1280" x1="2160" />
        </branch>
        <branch name="XLXN_68(31:0)">
            <wire x2="2128" y1="1344" y2="1344" x1="2112" />
            <wire x2="2208" y1="1344" y2="1344" x1="2128" />
        </branch>
        <branch name="ALU_OUT(31:0)">
            <wire x2="2672" y1="1216" y2="1216" x1="2592" />
        </branch>
        <instance x="2192" y="1760" name="XLXI_19" orien="R0">
        </instance>
        <branch name="F(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1600" type="branch" />
            <wire x2="2672" y1="1600" y2="1600" x1="2576" />
        </branch>
        <branch name="add">
            <wire x2="2192" y1="1600" y2="1600" x1="2096" />
        </branch>
        <branch name="ALUF(2:0)">
            <wire x2="2192" y1="1664" y2="1664" x1="2112" />
        </branch>
        <branch name="XLXN_73(2:0)">
            <wire x2="2192" y1="1728" y2="1728" x1="1984" />
        </branch>
        <instance x="1840" y="1696" name="XLXI_20" orien="R0">
        </instance>
        <instance x="576" y="896" name="XLXI_24" orien="R0" />
        <branch name="XLXN_79">
            <wire x2="832" y1="864" y2="864" x1="800" />
        </branch>
        <instance x="832" y="928" name="XLXI_23" orien="R0" />
        <branch name="test">
            <wire x2="832" y1="800" y2="800" x1="800" />
        </branch>
        <branch name="sub">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="832" type="branch" />
            <wire x2="1136" y1="832" y2="832" x1="1088" />
        </branch>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="864" type="branch" />
            <wire x2="576" y1="864" y2="864" x1="544" />
        </branch>
        <instance x="736" y="624" name="XLXI_25" orien="R0">
        </instance>
        <branch name="sub">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="464" type="branch" />
            <wire x2="736" y1="464" y2="464" x1="640" />
        </branch>
        <branch name="A(31:0)">
            <wire x2="736" y1="528" y2="528" x1="672" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="736" y1="592" y2="592" x1="640" />
        </branch>
        <branch name="neg">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="592" type="branch" />
            <wire x2="1200" y1="592" y2="592" x1="1120" />
        </branch>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="464" type="branch" />
            <wire x2="1200" y1="464" y2="464" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="672" y="528" name="A(31:0)" orien="R180" />
        <iomarker fontsize="28" x="640" y="592" name="B(31:0)" orien="R180" />
        <iomarker fontsize="28" x="800" y="800" name="test" orien="R180" />
        <iomarker fontsize="28" x="2112" y="1664" name="ALUF(2:0)" orien="R180" />
        <iomarker fontsize="28" x="2096" y="1600" name="add" orien="R180" />
        <iomarker fontsize="28" x="2672" y="1216" name="ALU_OUT(31:0)" orien="R0" />
        <instance x="1600" y="1376" name="XLXI_26" orien="R0">
        </instance>
    </sheet>
</drawing>