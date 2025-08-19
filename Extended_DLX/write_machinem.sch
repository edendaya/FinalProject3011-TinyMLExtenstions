<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="AS_N" />
        <signal name="INI_INIT" />
        <signal name="reset" />
        <signal name="clk" />
        <signal name="WR_N" />
        <signal name="STOP_N" />
        <signal name="CURR_STATE(1:0)" />
        <signal name="ADDRESS_CNT_CE" />
        <signal name="CNT(4:0)" />
        <signal name="ID(7:0)" />
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="step_en" />
        <signal name="ack_n" />
        <signal name="XLXN_9" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="INI_INIT" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Output" name="CURR_STATE(1:0)" />
        <port polarity="Output" name="ADDRESS_CNT_CE" />
        <port polarity="Output" name="CNT(4:0)" />
        <port polarity="Output" name="ID(7:0)" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="ack_n" />
        <blockdef name="ID_NUM">
            <timestamp>2024-12-9T12:28:31</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="Write_M">
            <timestamp>2024-12-9T13:19:30</timestamp>
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
        <block symbolname="CNT5" name="XLXI_4">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="reset" name="RST" />
            <blockpin signalname="ADDRESS_CNT_CE" name="CE" />
            <blockpin signalname="CNT(4:0)" name="CNT(4:0)" />
        </block>
        <block symbolname="ID_NUM" name="XLXI_3">
            <blockpin signalname="ID(7:0)" name="ID(7:0)" />
        </block>
        <block symbolname="Write_M" name="XLXI_5">
            <blockpin signalname="step_en" name="STEP_EN" />
            <blockpin signalname="ack_n" name="ACK_N" />
            <blockpin signalname="reset" name="RESET" />
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="WR_N" name="WR_N_o" />
            <blockpin signalname="STOP_N" name="STOP_N_o" />
            <blockpin signalname="INI_INIT" name="IN_INIT_o" />
            <blockpin signalname="AS_N" name="AS_N_o" />
            <blockpin signalname="ADDRESS_CNT_CE" name="Address_CNT_CE_o" />
            <blockpin signalname="CURR_STATE(1:0)" name="CURR_STATE_o(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="AS_N">
            <wire x2="1920" y1="1440" y2="1440" x1="1888" />
        </branch>
        <branch name="WR_N">
            <wire x2="1920" y1="1248" y2="1248" x1="1888" />
        </branch>
        <branch name="STOP_N">
            <wire x2="1920" y1="1312" y2="1312" x1="1888" />
        </branch>
        <branch name="CURR_STATE(1:0)">
            <wire x2="1920" y1="1568" y2="1568" x1="1888" />
        </branch>
        <branch name="ADDRESS_CNT_CE">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1504" type="branch" />
            <wire x2="2016" y1="1504" y2="1504" x1="1888" />
            <wire x2="2240" y1="1504" y2="1504" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1248" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1440" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1568" name="CURR_STATE(1:0)" orien="R0" />
        <instance x="2240" y="1536" name="XLXI_4" orien="R0">
        </instance>
        <branch name="reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="1440" type="branch" />
            <wire x2="2240" y1="1440" y2="1440" x1="2224" />
        </branch>
        <branch name="CNT(4:0)">
            <wire x2="2656" y1="1376" y2="1376" x1="2624" />
        </branch>
        <instance x="2176" y="1184" name="XLXI_3" orien="R0">
        </instance>
        <branch name="ID(7:0)">
            <wire x2="2608" y1="1152" y2="1152" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2656" y="1376" name="CNT(4:0)" orien="R0" />
        <iomarker fontsize="28" x="2608" y="1152" name="ID(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1920" y="1312" name="STOP_N" orien="R0" />
        <branch name="INI_INIT">
            <wire x2="1920" y1="1376" y2="1376" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1376" name="INI_INIT" orien="R0" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="1376" type="branch" />
            <wire x2="2240" y1="1376" y2="1376" x1="2224" />
        </branch>
        <branch name="ADDRESS_CNT_CE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="944" type="branch" />
            <wire x2="2432" y1="944" y2="944" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2432" y="944" name="ADDRESS_CNT_CE" orien="R0" />
        <branch name="step_en">
            <wire x2="1296" y1="1280" y2="1280" x1="1280" />
            <wire x2="1408" y1="1248" y2="1248" x1="1296" />
            <wire x2="1296" y1="1248" y2="1280" x1="1296" />
        </branch>
        <branch name="ack_n">
            <wire x2="1408" y1="1344" y2="1344" x1="1296" />
        </branch>
        <branch name="reset">
            <wire x2="1408" y1="1440" y2="1440" x1="1264" />
        </branch>
        <branch name="clk">
            <wire x2="1408" y1="1536" y2="1536" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1280" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="1296" y="1344" name="ack_n" orien="R180" />
        <iomarker fontsize="28" x="1264" y="1440" name="reset" orien="R180" />
        <iomarker fontsize="28" x="1216" y="1536" name="clk" orien="R180" />
        <instance x="1408" y="1600" name="XLXI_5" orien="R0">
        </instance>
    </sheet>
</drawing>