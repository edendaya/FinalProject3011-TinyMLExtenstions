<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="IRce" />
        <signal name="IR_OUT(31:0)" />
        <signal name="Aaddr(4:0)" />
        <signal name="Baddr(4:0)" />
        <signal name="DI(31:0)" />
        <signal name="IR_OUT(25:21)" />
        <signal name="IR_OUT(20:16)" />
        <signal name="imm_extended(31:0)" />
        <signal name="IR_OUT(15:0)" />
        <signal name="Itype" />
        <signal name="Caddr(4:0)" />
        <signal name="IR_OUT(15:11)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="IRce" />
        <port polarity="Output" name="IR_OUT(31:0)" />
        <port polarity="Output" name="Aaddr(4:0)" />
        <port polarity="Output" name="Baddr(4:0)" />
        <port polarity="Input" name="DI(31:0)" />
        <port polarity="Output" name="imm_extended(31:0)" />
        <port polarity="Input" name="Itype" />
        <port polarity="Output" name="Caddr(4:0)" />
        <blockdef name="REG32CE">
            <timestamp>2024-12-15T13:36:30</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="MUX5bit">
            <timestamp>2024-4-10T7:9:49</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="BUF5">
            <timestamp>2024-4-10T5:16:9</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Sign_ext_DLX">
            <timestamp>2025-1-29T12:35:14</timestamp>
            <rect width="336" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <block symbolname="REG32CE" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="IRce" name="CE" />
            <blockpin signalname="DI(31:0)" name="DI(31:0)" />
            <blockpin signalname="IR_OUT(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="BUF5" name="XLXI_3">
            <blockpin signalname="IR_OUT(25:21)" name="I(4:0)" />
            <blockpin signalname="Aaddr(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="BUF5" name="XLXI_4">
            <blockpin signalname="IR_OUT(20:16)" name="I(4:0)" />
            <blockpin signalname="Baddr(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="MUX5bit" name="XLXI_2">
            <blockpin signalname="Itype" name="sel" />
            <blockpin signalname="IR_OUT(15:11)" name="A(4:0)" />
            <blockpin signalname="IR_OUT(20:16)" name="B(4:0)" />
            <blockpin signalname="Caddr(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="Sign_ext_DLX" name="XLXI_5">
            <blockpin signalname="IR_OUT(15:0)" name="imm(15:0)" />
            <blockpin signalname="imm_extended(31:0)" name="imm_extended(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="848" y="1120" name="XLXI_1" orien="R0">
        </instance>
        <instance x="848" y="1280" name="XLXI_3" orien="R0">
        </instance>
        <instance x="848" y="1424" name="XLXI_4" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="848" y1="960" y2="960" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="960" name="CLK" orien="R180" />
        <branch name="IRce">
            <wire x2="848" y1="1024" y2="1024" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="1024" name="IRce" orien="R180" />
        <branch name="IR_OUT(31:0)">
            <wire x2="1264" y1="960" y2="960" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="960" name="IR_OUT(31:0)" orien="R0" />
        <branch name="Aaddr(4:0)">
            <wire x2="1264" y1="1248" y2="1248" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="1248" name="Aaddr(4:0)" orien="R0" />
        <branch name="Baddr(4:0)">
            <wire x2="1264" y1="1392" y2="1392" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1264" y="1392" name="Baddr(4:0)" orien="R0" />
        <branch name="DI(31:0)">
            <wire x2="848" y1="1088" y2="1088" x1="816" />
        </branch>
        <iomarker fontsize="28" x="816" y="1088" name="DI(31:0)" orien="R180" />
        <branch name="IR_OUT(25:21)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1248" type="branch" />
            <wire x2="848" y1="1248" y2="1248" x1="832" />
        </branch>
        <branch name="IR_OUT(20:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1392" type="branch" />
            <wire x2="848" y1="1392" y2="1392" x1="832" />
        </branch>
        <branch name="imm_extended(31:0)">
            <wire x2="2112" y1="1312" y2="1312" x1="2080" />
        </branch>
        <branch name="IR_OUT(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="1312" type="branch" />
            <wire x2="1616" y1="1312" y2="1312" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="2112" y="1312" name="imm_extended(31:0)" orien="R0" />
        <instance x="1680" y="1120" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Itype">
            <wire x2="1680" y1="960" y2="960" x1="1648" />
        </branch>
        <branch name="Caddr(4:0)">
            <wire x2="2096" y1="960" y2="960" x1="2064" />
        </branch>
        <branch name="IR_OUT(15:11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="1024" type="branch" />
            <wire x2="1680" y1="1024" y2="1024" x1="1664" />
        </branch>
        <branch name="IR_OUT(20:16)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="1088" type="branch" />
            <wire x2="1680" y1="1088" y2="1088" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="1648" y="960" name="Itype" orien="R180" />
        <iomarker fontsize="28" x="2096" y="960" name="Caddr(4:0)" orien="R0" />
        <instance x="1616" y="1344" name="XLXI_5" orien="R0">
        </instance>
    </sheet>
</drawing>