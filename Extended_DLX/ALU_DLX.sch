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
        <signal name="OR_OUT(31:0)" />
        <signal name="XOR_OUT(31:0)" />
        <signal name="sub" />
        <signal name="test" />
        <signal name="F(2)" />
        <signal name="S(31:0)" />
        <signal name="MUX3_OUT(31:0)" />
        <signal name="F(1)" />
        <signal name="MUX2_OUT(31:0)" />
        <signal name="AND_OUT(31:0)" />
        <signal name="F(0)" />
        <signal name="MUX1_OUT(31:0)" />
        <signal name="neg" />
        <signal name="XLXN_79" />
        <signal name="XLXN_5(31:0)" />
        <signal name="relu" />
        <signal name="sel" />
        <signal name="S_middle(31:0)" />
        <signal name="F(2:0)" />
        <signal name="add" />
        <signal name="ALUF(2:0)" />
        <signal name="XLXN_73(2:0)" />
        <signal name="ALU_OUT(31:0)" />
        <signal name="XLXN_147" />
        <signal name="XLXN_148(31:0)" />
        <signal name="XLXN_149" />
        <signal name="MUX3_SEL" />
        <port polarity="Input" name="A(31:0)" />
        <port polarity="Input" name="B(31:0)" />
        <port polarity="Input" name="test" />
        <port polarity="Input" name="add" />
        <port polarity="Input" name="ALUF(2:0)" />
        <port polarity="Output" name="ALU_OUT(31:0)" />
        <blockdef name="ADDSUB32">
            <timestamp>2025-1-2T16:40:36</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="COMPARATOR">
            <timestamp>2025-1-2T16:9:2</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="OR32">
            <timestamp>2024-11-21T15:6:4</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="XOR32">
            <timestamp>2024-11-21T15:6:5</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="AND32">
            <timestamp>2024-11-21T15:5:58</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="MUX32bit">
            <timestamp>2024-11-21T15:6:3</timestamp>
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <blockdef name="mux_3">
            <timestamp>2025-1-6T11:37:44</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="comp_with_zeros_32">
            <timestamp>2025-1-6T11:41:45</timestamp>
            <rect width="400" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
        </blockdef>
        <blockdef name="MUX_32BIT">
            <timestamp>2024-12-10T13:27:25</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <block symbolname="ADDSUB32" name="XLXI_1">
            <blockpin signalname="sub" name="sub" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="S_middle(31:0)" name="S(31:0)" />
            <blockpin signalname="neg" name="neg" />
        </block>
        <block symbolname="OR32" name="XLXI_3">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="OR_OUT(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="XOR32" name="XLXI_4">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XOR_OUT(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_8">
            <blockpin signalname="MUX3_SEL" name="sel" />
            <blockpin signalname="S(31:0)" name="A(31:0)" />
            <blockpin signalname="MUX2_OUT(31:0)" name="B(31:0)" />
            <blockpin signalname="MUX3_OUT(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_7">
            <blockpin signalname="F(1)" name="sel" />
            <blockpin signalname="MUX1_OUT(31:0)" name="A(31:0)" />
            <blockpin signalname="AND_OUT(31:0)" name="B(31:0)" />
            <blockpin signalname="MUX2_OUT(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="AND32" name="XLXI_5">
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="AND_OUT(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_6">
            <blockpin signalname="F(0)" name="sel" />
            <blockpin signalname="XOR_OUT(31:0)" name="A(31:0)" />
            <blockpin signalname="OR_OUT(31:0)" name="B(31:0)" />
            <blockpin signalname="MUX1_OUT(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_24">
            <blockpin signalname="F(0)" name="I" />
            <blockpin signalname="XLXN_79" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_23">
            <blockpin signalname="XLXN_79" name="I0" />
            <blockpin signalname="test" name="I1" />
            <blockpin signalname="sub" name="O" />
        </block>
        <block symbolname="MUX_32BIT" name="XLXI_30">
            <blockpin signalname="sel" name="sel" />
            <blockpin signalname="S_middle(31:0)" name="in0(31:0)" />
            <blockpin signalname="XLXN_5(31:0)" name="in1(31:0)" />
            <blockpin signalname="S(31:0)" name="muxout(31:0)" />
        </block>
        <block symbolname="constant" name="XLXI_33">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_5(31:0)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_34">
            <blockpin signalname="neg" name="I0" />
            <blockpin signalname="relu" name="I1" />
            <blockpin signalname="sel" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_35">
            <blockpin signalname="F(2)" name="I0" />
            <blockpin signalname="F(1)" name="I1" />
            <blockpin signalname="F(0)" name="I2" />
            <blockpin signalname="relu" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_20">
            <attr value="00000003" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_73(2:0)" name="O" />
        </block>
        <block symbolname="mux_3" name="XLXI_27">
            <blockpin signalname="add" name="sel" />
            <blockpin signalname="ALUF(2:0)" name="A(2:0)" />
            <blockpin signalname="XLXN_73(2:0)" name="B(2:0)" />
            <blockpin signalname="F(2:0)" name="O(2:0)" />
        </block>
        <block symbolname="comp_with_zeros_32" name="XLXI_29">
            <blockpin signalname="XLXN_147" name="COMP_OUT" />
            <blockpin signalname="XLXN_148(31:0)" name="COMP_OUT_32bits(31:0)" />
        </block>
        <block symbolname="COMPARATOR" name="XLXI_2">
            <blockpin signalname="F(2:0)" name="ALUF(2:0)" />
            <blockpin signalname="neg" name="neg" />
            <blockpin signalname="S(31:0)" name="S(31:0)" />
            <blockpin signalname="XLXN_147" name="COMP_OUT" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_9">
            <blockpin signalname="test" name="sel" />
            <blockpin signalname="MUX3_OUT(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_148(31:0)" name="B(31:0)" />
            <blockpin signalname="ALU_OUT(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_44">
            <blockpin signalname="relu" name="I" />
            <blockpin signalname="XLXN_149" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_45">
            <blockpin signalname="XLXN_149" name="I0" />
            <blockpin signalname="F(2)" name="I1" />
            <blockpin signalname="MUX3_SEL" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1504" y="240" name="XLXI_3" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="144" type="branch" />
            <wire x2="1504" y1="144" y2="144" x1="1408" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="208" type="branch" />
            <wire x2="1504" y1="208" y2="208" x1="1392" />
        </branch>
        <branch name="OR_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="144" type="branch" />
            <wire x2="1952" y1="144" y2="144" x1="1888" />
        </branch>
        <instance x="2416" y="224" name="XLXI_4" orien="R0">
        </instance>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="192" type="branch" />
            <wire x2="2416" y1="192" y2="192" x1="2320" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="128" type="branch" />
            <wire x2="2416" y1="128" y2="128" x1="2320" />
        </branch>
        <branch name="XOR_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="128" type="branch" />
            <wire x2="2912" y1="128" y2="128" x1="2800" />
        </branch>
        <branch name="MUX3_SEL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="688" type="branch" />
            <wire x2="2416" y1="688" y2="688" x1="2352" />
        </branch>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="752" type="branch" />
            <wire x2="2416" y1="752" y2="752" x1="2336" />
        </branch>
        <branch name="MUX2_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="816" type="branch" />
            <wire x2="2416" y1="816" y2="816" x1="2352" />
        </branch>
        <branch name="MUX3_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="688" type="branch" />
            <wire x2="2912" y1="688" y2="688" x1="2800" />
        </branch>
        <branch name="F(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="688" type="branch" />
            <wire x2="1456" y1="688" y2="688" x1="1360" />
        </branch>
        <branch name="MUX1_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="752" type="branch" />
            <wire x2="1456" y1="752" y2="752" x1="1328" />
        </branch>
        <branch name="AND_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="816" type="branch" />
            <wire x2="1456" y1="816" y2="816" x1="1360" />
        </branch>
        <branch name="MUX2_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="688" type="branch" />
            <wire x2="1936" y1="688" y2="688" x1="1840" />
        </branch>
        <instance x="2416" y="848" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1456" y="848" name="XLXI_7" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="400" type="branch" />
            <wire x2="1392" y1="400" y2="400" x1="1296" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="464" type="branch" />
            <wire x2="1392" y1="464" y2="464" x1="1296" />
        </branch>
        <branch name="AND_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="400" type="branch" />
            <wire x2="1872" y1="400" y2="400" x1="1776" />
        </branch>
        <branch name="OR_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="496" type="branch" />
            <wire x2="2416" y1="496" y2="496" x1="2320" />
        </branch>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="368" type="branch" />
            <wire x2="2416" y1="368" y2="368" x1="2352" />
        </branch>
        <branch name="XOR_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="432" type="branch" />
            <wire x2="2416" y1="432" y2="432" x1="2320" />
        </branch>
        <branch name="MUX1_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="368" type="branch" />
            <wire x2="2912" y1="368" y2="368" x1="2800" />
        </branch>
        <instance x="1392" y="496" name="XLXI_5" orien="R0">
        </instance>
        <instance x="2416" y="528" name="XLXI_6" orien="R0">
        </instance>
        <instance x="400" y="704" name="XLXI_1" orien="R0">
        </instance>
        <branch name="A(31:0)">
            <wire x2="400" y1="544" y2="544" x1="368" />
        </branch>
        <branch name="B(31:0)">
            <wire x2="400" y1="608" y2="608" x1="368" />
        </branch>
        <branch name="sub">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="672" type="branch" />
            <wire x2="400" y1="672" y2="672" x1="368" />
        </branch>
        <branch name="neg">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="544" type="branch" />
            <wire x2="816" y1="544" y2="544" x1="784" />
        </branch>
        <branch name="S_middle(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="672" type="branch" />
            <wire x2="816" y1="672" y2="672" x1="784" />
        </branch>
        <iomarker fontsize="28" x="368" y="544" name="A(31:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="608" name="B(31:0)" orien="R180" />
        <instance x="336" y="368" name="XLXI_24" orien="R0" />
        <branch name="XLXN_79">
            <wire x2="592" y1="336" y2="336" x1="560" />
        </branch>
        <instance x="592" y="400" name="XLXI_23" orien="R0" />
        <branch name="test">
            <wire x2="592" y1="272" y2="272" x1="560" />
        </branch>
        <branch name="sub">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="304" type="branch" />
            <wire x2="896" y1="304" y2="304" x1="848" />
        </branch>
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="336" type="branch" />
            <wire x2="336" y1="336" y2="336" x1="304" />
        </branch>
        <iomarker fontsize="28" x="560" y="272" name="test" orien="R180" />
        <branch name="XLXN_5(31:0)">
            <wire x2="368" y1="1040" y2="1040" x1="304" />
            <wire x2="384" y1="1024" y2="1024" x1="368" />
            <wire x2="368" y1="1024" y2="1040" x1="368" />
        </branch>
        <branch name="sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="896" type="branch" />
            <wire x2="384" y1="896" y2="896" x1="368" />
        </branch>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="896" type="branch" />
            <wire x2="784" y1="896" y2="896" x1="768" />
        </branch>
        <instance x="384" y="1056" name="XLXI_30" orien="R0">
        </instance>
        <branch name="S_middle(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="960" type="branch" />
            <wire x2="384" y1="960" y2="960" x1="368" />
        </branch>
        <instance x="160" y="1008" name="XLXI_33" orien="R0">
        </instance>
        <instance x="336" y="1280" name="XLXI_34" orien="R0" />
        <branch name="relu">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1152" type="branch" />
            <wire x2="336" y1="1152" y2="1152" x1="320" />
        </branch>
        <branch name="neg">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1216" type="branch" />
            <wire x2="336" y1="1216" y2="1216" x1="320" />
        </branch>
        <branch name="sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="1184" type="branch" />
            <wire x2="624" y1="1184" y2="1184" x1="592" />
        </branch>
        <instance x="320" y="1520" name="XLXI_35" orien="R0" />
        <branch name="F(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1328" type="branch" />
            <wire x2="320" y1="1328" y2="1328" x1="304" />
        </branch>
        <branch name="F(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1392" type="branch" />
            <wire x2="320" y1="1392" y2="1392" x1="304" />
        </branch>
        <branch name="F(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1456" type="branch" />
            <wire x2="320" y1="1456" y2="1456" x1="304" />
        </branch>
        <branch name="relu">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="1392" type="branch" />
            <wire x2="592" y1="1392" y2="1392" x1="576" />
        </branch>
        <branch name="F(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2272" y="1936" type="branch" />
            <wire x2="2272" y1="1936" y2="1936" x1="2176" />
        </branch>
        <branch name="add">
            <wire x2="1792" y1="1936" y2="1936" x1="1696" />
        </branch>
        <branch name="ALUF(2:0)">
            <wire x2="1792" y1="2000" y2="2000" x1="1712" />
        </branch>
        <branch name="XLXN_73(2:0)">
            <wire x2="1792" y1="2064" y2="2064" x1="1584" />
        </branch>
        <instance x="1440" y="2032" name="XLXI_20" orien="R0">
        </instance>
        <instance x="1792" y="2096" name="XLXI_27" orien="R0">
        </instance>
        <branch name="test">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1536" type="branch" />
            <wire x2="2400" y1="1536" y2="1536" x1="2352" />
        </branch>
        <branch name="ALU_OUT(31:0)">
            <wire x2="2864" y1="1536" y2="1536" x1="2784" />
        </branch>
        <branch name="MUX3_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1600" type="branch" />
            <wire x2="2400" y1="1600" y2="1600" x1="2352" />
        </branch>
        <instance x="1520" y="1696" name="XLXI_29" orien="R0">
        </instance>
        <instance x="992" y="1824" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_147">
            <wire x2="1520" y1="1664" y2="1664" x1="1376" />
        </branch>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1792" type="branch" />
            <wire x2="992" y1="1792" y2="1792" x1="960" />
        </branch>
        <branch name="neg">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1728" type="branch" />
            <wire x2="992" y1="1728" y2="1728" x1="960" />
        </branch>
        <branch name="F(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1664" type="branch" />
            <wire x2="992" y1="1664" y2="1664" x1="960" />
        </branch>
        <instance x="2400" y="1696" name="XLXI_9" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1712" y="2000" name="ALUF(2:0)" orien="R180" />
        <iomarker fontsize="28" x="1696" y="1936" name="add" orien="R180" />
        <iomarker fontsize="28" x="2864" y="1536" name="ALU_OUT(31:0)" orien="R0" />
        <branch name="XLXN_148(31:0)">
            <wire x2="2400" y1="1664" y2="1664" x1="2048" />
        </branch>
        <branch name="XLXN_149">
            <wire x2="1536" y1="1056" y2="1056" x1="1504" />
        </branch>
        <instance x="1280" y="1088" name="XLXI_44" orien="R0" />
        <branch name="F(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="992" type="branch" />
            <wire x2="1536" y1="992" y2="992" x1="1264" />
        </branch>
        <branch name="relu">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1056" type="branch" />
            <wire x2="1280" y1="1056" y2="1056" x1="1264" />
        </branch>
        <branch name="MUX3_SEL">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="1024" type="branch" />
            <wire x2="1808" y1="1024" y2="1024" x1="1792" />
            <wire x2="1824" y1="1024" y2="1024" x1="1808" />
        </branch>
        <instance x="1536" y="1120" name="XLXI_45" orien="R0" />
    </sheet>
</drawing>