<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="MR" />
        <signal name="MW" />
        <signal name="as_N" />
        <signal name="wr_N" />
        <signal name="STOP_N" />
        <signal name="MAC_state(1:0)" />
        <signal name="ack_n" />
        <signal name="busy_m" />
        <signal name="busy" />
        <signal name="STEP_EN" />
        <signal name="AEQZ" />
        <signal name="opcode(5:0)" />
        <signal name="R_type_func(5:0)" />
        <signal name="IRce" />
        <signal name="PCce" />
        <signal name="Ace" />
        <signal name="Bce" />
        <signal name="Cce" />
        <signal name="MARce" />
        <signal name="MDR" />
        <signal name="MDRsel" />
        <signal name="Asel" />
        <signal name="shift" />
        <signal name="right" />
        <signal name="add" />
        <signal name="test" />
        <signal name="GPR_WE" />
        <signal name="Itype" />
        <signal name="Jlink" />
        <signal name="IN_INIT" />
        <signal name="STATE(4:0)" />
        <signal name="ALUf(2:0)" />
        <signal name="S1sel(1:0)" />
        <signal name="S2sel(1:0)" />
        <signal name="DINTsel(1:0)" />
        <signal name="MAC_EN" />
        <signal name="MAC_RST" />
        <signal name="mul_mac" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="MR" />
        <port polarity="Output" name="MW" />
        <port polarity="Output" name="as_N" />
        <port polarity="Output" name="wr_N" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Output" name="MAC_state(1:0)" />
        <port polarity="Input" name="ack_n" />
        <port polarity="Output" name="busy_m" />
        <port polarity="Output" name="busy" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Input" name="AEQZ" />
        <port polarity="Input" name="opcode(5:0)" />
        <port polarity="Input" name="R_type_func(5:0)" />
        <port polarity="Output" name="IRce" />
        <port polarity="Output" name="PCce" />
        <port polarity="Output" name="Ace" />
        <port polarity="Output" name="Bce" />
        <port polarity="Output" name="Cce" />
        <port polarity="Output" name="MARce" />
        <port polarity="Output" name="MDR" />
        <port polarity="Output" name="MDRsel" />
        <port polarity="Output" name="Asel" />
        <port polarity="Output" name="shift" />
        <port polarity="Output" name="right" />
        <port polarity="Output" name="add" />
        <port polarity="Output" name="test" />
        <port polarity="Output" name="GPR_WE" />
        <port polarity="Output" name="Itype" />
        <port polarity="Output" name="Jlink" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="STATE(4:0)" />
        <port polarity="Output" name="ALUf(2:0)" />
        <port polarity="Output" name="S1sel(1:0)" />
        <port polarity="Output" name="S2sel(1:0)" />
        <port polarity="Output" name="DINTsel(1:0)" />
        <port polarity="Output" name="MAC_EN" />
        <port polarity="Output" name="MAC_RST" />
        <port polarity="Output" name="mul_mac" />
        <blockdef name="MAC_STATE_MACHINE">
            <timestamp>2024-12-16T12:30:39</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="control_FSM">
            <timestamp>2025-3-10T10:57:4</timestamp>
            <rect width="336" x="64" y="-1728" height="1728" />
            <line x2="0" y1="-1696" y2="-1696" x1="64" />
            <line x2="0" y1="-1424" y2="-1424" x1="64" />
            <line x2="0" y1="-1152" y2="-1152" x1="64" />
            <line x2="0" y1="-880" y2="-880" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-348" height="24" />
            <line x2="0" y1="-336" y2="-336" x1="64" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="464" y1="-1696" y2="-1696" x1="400" />
            <line x2="464" y1="-1632" y2="-1632" x1="400" />
            <line x2="464" y1="-1568" y2="-1568" x1="400" />
            <line x2="464" y1="-1504" y2="-1504" x1="400" />
            <line x2="464" y1="-1440" y2="-1440" x1="400" />
            <line x2="464" y1="-1376" y2="-1376" x1="400" />
            <line x2="464" y1="-1312" y2="-1312" x1="400" />
            <line x2="464" y1="-1248" y2="-1248" x1="400" />
            <line x2="464" y1="-1184" y2="-1184" x1="400" />
            <line x2="464" y1="-1120" y2="-1120" x1="400" />
            <line x2="464" y1="-1056" y2="-1056" x1="400" />
            <line x2="464" y1="-992" y2="-992" x1="400" />
            <line x2="464" y1="-928" y2="-928" x1="400" />
            <line x2="464" y1="-864" y2="-864" x1="400" />
            <line x2="464" y1="-800" y2="-800" x1="400" />
            <line x2="464" y1="-736" y2="-736" x1="400" />
            <line x2="464" y1="-672" y2="-672" x1="400" />
            <line x2="464" y1="-608" y2="-608" x1="400" />
            <line x2="464" y1="-544" y2="-544" x1="400" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <rect width="64" x="400" y="-300" height="24" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <block symbolname="MAC_STATE_MACHINE" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="MR" name="MR" />
            <blockpin signalname="MW" name="MW" />
            <blockpin signalname="ack_n" name="ACK_N" />
            <blockpin signalname="busy_m" name="busy" />
            <blockpin signalname="as_N" name="AS_N" />
            <blockpin signalname="wr_N" name="WR_N" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin signalname="MAC_state(1:0)" name="STATE(1:0)" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="busy_m" name="I" />
            <blockpin signalname="busy" name="O" />
        </block>
        <block symbolname="control_FSM" name="XLXI_5">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="busy_m" name="busy" />
            <blockpin signalname="AEQZ" name="AEQZ" />
            <blockpin signalname="opcode(5:0)" name="opcode(5:0)" />
            <blockpin signalname="R_type_func(5:0)" name="R_type_func(5:0)" />
            <blockpin signalname="IRce" name="IRce" />
            <blockpin signalname="PCce" name="PCce" />
            <blockpin signalname="Ace" name="Ace" />
            <blockpin signalname="Bce" name="Bce" />
            <blockpin signalname="Cce" name="Cce" />
            <blockpin signalname="MARce" name="MARce" />
            <blockpin signalname="MDR" name="MDRce" />
            <blockpin signalname="MDRsel" name="MDRsel" />
            <blockpin signalname="Asel" name="Asel" />
            <blockpin signalname="shift" name="shift_o" />
            <blockpin signalname="right" name="right" />
            <blockpin signalname="add" name="add_o" />
            <blockpin signalname="test" name="test" />
            <blockpin signalname="MR" name="MR" />
            <blockpin signalname="MW" name="MW" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="Itype" name="Itype" />
            <blockpin signalname="Jlink" name="Jlink" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="MAC_EN" name="MAC_EN" />
            <blockpin signalname="MAC_RST" name="MAC_RST" />
            <blockpin signalname="mul_mac" name="mul_mac" />
            <blockpin signalname="STATE(4:0)" name="STATE_o(4:0)" />
            <blockpin signalname="ALUf(2:0)" name="ALUf(2:0)" />
            <blockpin signalname="S1sel(1:0)" name="S1sel(1:0)" />
            <blockpin signalname="S2sel(1:0)" name="S2sel(1:0)" />
            <blockpin signalname="DINTsel(1:0)" name="DINTsel(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="720" y="1328" name="XLXI_1" orien="R0">
        </instance>
        <branch name="busy_m">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="1040" type="branch" />
            <wire x2="1168" y1="1040" y2="1040" x1="1104" />
        </branch>
        <branch name="as_N">
            <wire x2="1152" y1="1104" y2="1104" x1="1104" />
        </branch>
        <branch name="wr_N">
            <wire x2="1152" y1="1168" y2="1168" x1="1104" />
        </branch>
        <branch name="STOP_N">
            <wire x2="1152" y1="1232" y2="1232" x1="1104" />
        </branch>
        <branch name="MAC_state(1:0)">
            <wire x2="1152" y1="1296" y2="1296" x1="1104" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="1040" type="branch" />
            <wire x2="720" y1="1040" y2="1040" x1="688" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="1104" type="branch" />
            <wire x2="720" y1="1104" y2="1104" x1="688" />
        </branch>
        <branch name="MR">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="1168" type="branch" />
            <wire x2="720" y1="1168" y2="1168" x1="672" />
        </branch>
        <branch name="MW">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="1232" type="branch" />
            <wire x2="688" y1="1232" y2="1232" x1="672" />
            <wire x2="720" y1="1232" y2="1232" x1="688" />
        </branch>
        <branch name="ack_n">
            <wire x2="720" y1="1296" y2="1296" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="1296" name="ack_n" orien="R180" />
        <iomarker fontsize="28" x="1152" y="1104" name="as_N" orien="R0" />
        <iomarker fontsize="28" x="1152" y="1168" name="wr_N" orien="R0" />
        <iomarker fontsize="28" x="1152" y="1232" name="STOP_N" orien="R0" />
        <iomarker fontsize="28" x="1152" y="1296" name="MAC_state(1:0)" orien="R0" />
        <branch name="busy">
            <wire x2="912" y1="416" y2="416" x1="896" />
            <wire x2="1072" y1="416" y2="416" x1="912" />
        </branch>
        <iomarker fontsize="28" x="1072" y="416" name="busy" orien="R0" />
        <instance x="688" y="448" name="XLXI_4" orien="R0" />
        <branch name="busy_m">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="416" type="branch" />
            <wire x2="688" y1="416" y2="416" x1="656" />
        </branch>
        <instance x="1808" y="1968" name="XLXI_5" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="1808" y1="272" y2="272" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="1792" y="272" name="CLK" orien="R180" />
        <branch name="RESET">
            <wire x2="1808" y1="544" y2="544" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1776" y="544" name="RESET" orien="R180" />
        <branch name="STEP_EN">
            <wire x2="1808" y1="816" y2="816" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1776" y="816" name="STEP_EN" orien="R180" />
        <branch name="busy_m">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1776" y="1088" type="branch" />
            <wire x2="1792" y1="1088" y2="1088" x1="1776" />
            <wire x2="1808" y1="1088" y2="1088" x1="1792" />
        </branch>
        <branch name="AEQZ">
            <wire x2="1808" y1="1360" y2="1360" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1776" y="1360" name="AEQZ" orien="R180" />
        <branch name="opcode(5:0)">
            <wire x2="1808" y1="1632" y2="1632" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1760" y="1632" name="opcode(5:0)" orien="R180" />
        <branch name="R_type_func(5:0)">
            <wire x2="1808" y1="1904" y2="1904" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1776" y="1904" name="R_type_func(5:0)" orien="R180" />
        <branch name="IRce">
            <wire x2="2288" y1="272" y2="272" x1="2272" />
            <wire x2="2304" y1="272" y2="272" x1="2288" />
        </branch>
        <branch name="PCce">
            <wire x2="2288" y1="336" y2="336" x1="2272" />
            <wire x2="2304" y1="336" y2="336" x1="2288" />
        </branch>
        <branch name="Ace">
            <wire x2="2288" y1="400" y2="400" x1="2272" />
            <wire x2="2304" y1="400" y2="400" x1="2288" />
        </branch>
        <branch name="Bce">
            <wire x2="2288" y1="464" y2="464" x1="2272" />
            <wire x2="2304" y1="464" y2="464" x1="2288" />
        </branch>
        <branch name="Cce">
            <wire x2="2288" y1="528" y2="528" x1="2272" />
            <wire x2="2304" y1="528" y2="528" x1="2288" />
        </branch>
        <branch name="MARce">
            <wire x2="2288" y1="592" y2="592" x1="2272" />
            <wire x2="2304" y1="592" y2="592" x1="2288" />
        </branch>
        <branch name="MDR">
            <wire x2="2288" y1="656" y2="656" x1="2272" />
            <wire x2="2304" y1="656" y2="656" x1="2288" />
        </branch>
        <iomarker fontsize="28" x="2304" y="272" name="IRce" orien="R0" />
        <iomarker fontsize="28" x="2304" y="336" name="PCce" orien="R0" />
        <iomarker fontsize="28" x="2304" y="400" name="Ace" orien="R0" />
        <iomarker fontsize="28" x="2304" y="464" name="Bce" orien="R0" />
        <iomarker fontsize="28" x="2304" y="528" name="Cce" orien="R0" />
        <iomarker fontsize="28" x="2304" y="592" name="MARce" orien="R0" />
        <iomarker fontsize="28" x="2304" y="656" name="MDR" orien="R0" />
        <branch name="MDRsel">
            <wire x2="2288" y1="720" y2="720" x1="2272" />
            <wire x2="2304" y1="720" y2="720" x1="2288" />
        </branch>
        <branch name="Asel">
            <wire x2="2288" y1="784" y2="784" x1="2272" />
            <wire x2="2304" y1="784" y2="784" x1="2288" />
        </branch>
        <branch name="shift">
            <wire x2="2288" y1="848" y2="848" x1="2272" />
            <wire x2="2304" y1="848" y2="848" x1="2288" />
        </branch>
        <branch name="right">
            <wire x2="2288" y1="912" y2="912" x1="2272" />
            <wire x2="2304" y1="912" y2="912" x1="2288" />
        </branch>
        <branch name="add">
            <wire x2="2288" y1="976" y2="976" x1="2272" />
            <wire x2="2304" y1="976" y2="976" x1="2288" />
        </branch>
        <branch name="test">
            <wire x2="2288" y1="1040" y2="1040" x1="2272" />
            <wire x2="2304" y1="1040" y2="1040" x1="2288" />
        </branch>
        <branch name="MR">
            <wire x2="2288" y1="1104" y2="1104" x1="2272" />
            <wire x2="2304" y1="1104" y2="1104" x1="2288" />
        </branch>
        <branch name="MW">
            <wire x2="2288" y1="1168" y2="1168" x1="2272" />
            <wire x2="2304" y1="1168" y2="1168" x1="2288" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="2288" y1="1232" y2="1232" x1="2272" />
            <wire x2="2304" y1="1232" y2="1232" x1="2288" />
        </branch>
        <branch name="Itype">
            <wire x2="2288" y1="1296" y2="1296" x1="2272" />
            <wire x2="2304" y1="1296" y2="1296" x1="2288" />
        </branch>
        <branch name="Jlink">
            <wire x2="2288" y1="1360" y2="1360" x1="2272" />
            <wire x2="2304" y1="1360" y2="1360" x1="2288" />
        </branch>
        <branch name="IN_INIT">
            <wire x2="2288" y1="1424" y2="1424" x1="2272" />
            <wire x2="2304" y1="1424" y2="1424" x1="2288" />
        </branch>
        <iomarker fontsize="28" x="2304" y="720" name="MDRsel" orien="R0" />
        <iomarker fontsize="28" x="2304" y="784" name="Asel" orien="R0" />
        <iomarker fontsize="28" x="2304" y="848" name="shift" orien="R0" />
        <iomarker fontsize="28" x="2304" y="912" name="right" orien="R0" />
        <iomarker fontsize="28" x="2304" y="976" name="add" orien="R0" />
        <iomarker fontsize="28" x="2304" y="1040" name="test" orien="R0" />
        <iomarker fontsize="28" x="2304" y="1104" name="MR" orien="R0" />
        <iomarker fontsize="28" x="2304" y="1168" name="MW" orien="R0" />
        <iomarker fontsize="28" x="2304" y="1232" name="GPR_WE" orien="R0" />
        <iomarker fontsize="28" x="2304" y="1296" name="Itype" orien="R0" />
        <iomarker fontsize="28" x="2304" y="1360" name="Jlink" orien="R0" />
        <iomarker fontsize="28" x="2304" y="1424" name="IN_INIT" orien="R0" />
        <branch name="STATE(4:0)">
            <wire x2="2288" y1="1680" y2="1680" x1="2272" />
            <wire x2="2304" y1="1680" y2="1680" x1="2288" />
        </branch>
        <branch name="ALUf(2:0)">
            <wire x2="2288" y1="1744" y2="1744" x1="2272" />
            <wire x2="2304" y1="1744" y2="1744" x1="2288" />
        </branch>
        <branch name="S1sel(1:0)">
            <wire x2="2288" y1="1808" y2="1808" x1="2272" />
            <wire x2="2304" y1="1808" y2="1808" x1="2288" />
        </branch>
        <branch name="S2sel(1:0)">
            <wire x2="2304" y1="1872" y2="1872" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1680" name="STATE(4:0)" orien="R0" />
        <iomarker fontsize="28" x="2304" y="1744" name="ALUf(2:0)" orien="R0" />
        <iomarker fontsize="28" x="2304" y="1808" name="S1sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2304" y="1872" name="S2sel(1:0)" orien="R0" />
        <branch name="DINTsel(1:0)">
            <wire x2="2288" y1="1936" y2="1936" x1="2272" />
            <wire x2="2304" y1="1936" y2="1936" x1="2288" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1936" name="DINTsel(1:0)" orien="R0" />
        <branch name="MAC_EN">
            <wire x2="2304" y1="1488" y2="1488" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1488" name="MAC_EN" orien="R0" />
        <branch name="MAC_RST">
            <wire x2="2304" y1="1552" y2="1552" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1552" name="MAC_RST" orien="R0" />
        <branch name="mul_mac">
            <wire x2="2304" y1="1616" y2="1616" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1616" name="mul_mac" orien="R0" />
    </sheet>
</drawing>