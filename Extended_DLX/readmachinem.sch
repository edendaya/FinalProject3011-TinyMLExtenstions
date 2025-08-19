<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="step_en" />
        <signal name="ack_n" />
        <signal name="reset" />
        <signal name="clk" />
        <signal name="WR_N" />
        <signal name="STOP_N" />
        <signal name="IN_INIT" />
        <signal name="AS_N" />
        <signal name="CURR_STATE(1:0)" />
        <signal name="ADDRESS_CNT_CE" />
        <signal name="CNT(4:0)" />
        <signal name="DI(31:0)" />
        <signal name="RDO(31:0)" />
        <signal name="ack_not" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="ack_n" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="CURR_STATE(1:0)" />
        <port polarity="Output" name="ADDRESS_CNT_CE" />
        <port polarity="Output" name="CNT(4:0)" />
        <port polarity="Input" name="DI(31:0)" />
        <port polarity="Output" name="RDO(31:0)" />
        <blockdef name="READ_M">
            <timestamp>2024-12-12T8:37:19</timestamp>
            <rect width="352" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="CNT5">
            <timestamp>2024-4-13T15:48:59</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="REG32CE">
            <timestamp>2024-4-10T5:17:12</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <block symbolname="READ_M" name="XLXI_1">
            <blockpin signalname="step_en" name="STEP_EN" />
            <blockpin signalname="ack_n" name="ACK_N" />
            <blockpin signalname="reset" name="RESET" />
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="WR_N" name="WR_N_o" />
            <blockpin signalname="STOP_N" name="STOP_N_o" />
            <blockpin signalname="IN_INIT" name="IN_INIT_o" />
            <blockpin signalname="AS_N" name="AS_N_o" />
            <blockpin signalname="ADDRESS_CNT_CE" name="Address_CNT_CE_o" />
            <blockpin signalname="CURR_STATE(1:0)" name="CURR_STATE_o(1:0)" />
        </block>
        <block symbolname="CNT5" name="XLXI_2">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="reset" name="RST" />
            <blockpin signalname="ADDRESS_CNT_CE" name="CE" />
            <blockpin signalname="CNT(4:0)" name="CNT(4:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_3">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="ack_not" name="CE" />
            <blockpin signalname="DI(31:0)" name="DI(31:0)" />
            <blockpin signalname="RDO(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="ack_n" name="I" />
            <blockpin signalname="ack_not" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1408" y="800" name="XLXI_1" orien="R0">
        </instance>
        <branch name="step_en">
            <wire x2="1408" y1="448" y2="448" x1="1392" />
        </branch>
        <branch name="reset">
            <wire x2="1408" y1="640" y2="640" x1="1392" />
        </branch>
        <branch name="clk">
            <wire x2="1408" y1="736" y2="736" x1="1392" />
        </branch>
        <branch name="WR_N">
            <wire x2="1904" y1="448" y2="448" x1="1888" />
        </branch>
        <branch name="STOP_N">
            <wire x2="1904" y1="512" y2="512" x1="1888" />
        </branch>
        <branch name="IN_INIT">
            <wire x2="1920" y1="576" y2="576" x1="1888" />
        </branch>
        <branch name="AS_N">
            <wire x2="1904" y1="640" y2="640" x1="1888" />
        </branch>
        <branch name="CURR_STATE(1:0)">
            <wire x2="1920" y1="768" y2="768" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1392" y="448" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="1392" y="640" name="reset" orien="R180" />
        <iomarker fontsize="28" x="1392" y="736" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1904" y="448" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="1904" y="512" name="STOP_N" orien="R0" />
        <iomarker fontsize="28" x="1920" y="576" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="1904" y="640" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="1920" y="768" name="CURR_STATE(1:0)" orien="R0" />
        <instance x="2224" y="736" name="XLXI_2" orien="R0">
        </instance>
        <branch name="ADDRESS_CNT_CE">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="704" type="branch" />
            <wire x2="1952" y1="704" y2="704" x1="1888" />
            <wire x2="2032" y1="704" y2="704" x1="1952" />
            <wire x2="2224" y1="704" y2="704" x1="2032" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="576" type="branch" />
            <wire x2="2224" y1="576" y2="576" x1="2208" />
        </branch>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="640" type="branch" />
            <wire x2="2224" y1="640" y2="640" x1="2208" />
        </branch>
        <branch name="CNT(4:0)">
            <wire x2="2640" y1="576" y2="576" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2640" y="576" name="CNT(4:0)" orien="R0" />
        <instance x="1456" y="1088" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="928" type="branch" />
            <wire x2="1456" y1="928" y2="928" x1="1440" />
        </branch>
        <branch name="ack_not">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="992" type="branch" />
            <wire x2="1344" y1="992" y2="992" x1="1312" />
            <wire x2="1440" y1="992" y2="992" x1="1344" />
            <wire x2="1456" y1="992" y2="992" x1="1440" />
        </branch>
        <branch name="DI(31:0)">
            <wire x2="1456" y1="1056" y2="1056" x1="1440" />
        </branch>
        <branch name="RDO(31:0)">
            <wire x2="1872" y1="928" y2="928" x1="1840" />
        </branch>
        <branch name="ADDRESS_CNT_CE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="1008" type="branch" />
            <wire x2="2464" y1="1008" y2="1008" x1="2288" />
        </branch>
        <iomarker fontsize="28" x="2464" y="1008" name="ADDRESS_CNT_CE" orien="R0" />
        <iomarker fontsize="28" x="1872" y="928" name="RDO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1440" y="1056" name="DI(31:0)" orien="R180" />
        <branch name="ack_n">
            <wire x2="1408" y1="544" y2="544" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1376" y="544" name="ack_n" orien="R180" />
        <branch name="ack_n">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="992" type="branch" />
            <wire x2="1088" y1="992" y2="992" x1="1072" />
        </branch>
        <instance x="1088" y="1024" name="XLXI_7" orien="R0" />
    </sheet>
</drawing>