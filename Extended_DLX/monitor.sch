<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="STATUS(7:0)" />
        <signal name="LA_RAM(31:0)" />
        <signal name="SIGNALS(31:0)" />
        <signal name="step_en" />
        <signal name="in_init" />
        <signal name="stop_n" />
        <signal name="CLK" />
        <signal name="CARDSEL" />
        <signal name="SACK_N" />
        <signal name="WR_N" />
        <signal name="STATUS_ID(31:0)" />
        <signal name="SLAVE_C(31:0)" />
        <signal name="SLAVE_D(31:0)" />
        <signal name="AI(9:0)" />
        <signal name="reg_write(4:0)" />
        <signal name="SLAVE_OUTPUT(31:0)" />
        <signal name="STATUS_ID(7:0)" />
        <signal name="IDNUM(7:0)" />
        <signal name="STATUS_ID(15:8)" />
        <port polarity="Input" name="SIGNALS(31:0)" />
        <port polarity="Input" name="step_en" />
        <port polarity="Input" name="in_init" />
        <port polarity="Input" name="stop_n" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="CARDSEL" />
        <port polarity="Output" name="SACK_N" />
        <port polarity="Input" name="WR_N" />
        <port polarity="Input" name="SLAVE_C(31:0)" />
        <port polarity="Input" name="SLAVE_D(31:0)" />
        <port polarity="Input" name="AI(9:0)" />
        <port polarity="Output" name="reg_write(4:0)" />
        <port polarity="Output" name="SLAVE_OUTPUT(31:0)" />
        <blockdef name="LogiAnalyzer">
            <timestamp>2024-11-25T12:7:33</timestamp>
            <rect width="368" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-364" height="24" />
            <line x2="496" y1="-352" y2="-352" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <blockdef name="Slave">
            <timestamp>2024-11-18T13:38:55</timestamp>
            <rect width="336" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <rect width="64" x="400" y="-268" height="24" />
            <line x2="464" y1="-256" y2="-256" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="ID_NUM">
            <timestamp>2024-11-18T11:49:11</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="BUF8">
            <timestamp>2024-11-25T12:15:9</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="LogiAnalyzer" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="SIGNALS(31:0)" name="SIGNALS(31:0)" />
            <blockpin signalname="reg_write(4:0)" name="AI(4:0)" />
            <blockpin signalname="step_en" name="step_en" />
            <blockpin signalname="in_init" name="in_init" />
            <blockpin signalname="stop_n" name="stop_n" />
            <blockpin signalname="STATUS(7:0)" name="STATUS_OUT(7:0)" />
            <blockpin signalname="LA_RAM(31:0)" name="RAM_OUT(31:0)" />
        </block>
        <block symbolname="Slave" name="XLXI_2">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="CARDSEL" name="CARDSEL" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="STATUS_ID(31:0)" name="B(31:0)" />
            <blockpin signalname="SLAVE_C(31:0)" name="C(31:0)" />
            <blockpin signalname="SLAVE_D(31:0)" name="D(31:0)" />
            <blockpin signalname="LA_RAM(31:0)" name="A(31:0)" />
            <blockpin signalname="AI(9:0)" name="AI(9:0)" />
            <blockpin signalname="SACK_N" name="SACK_N" />
            <blockpin signalname="SLAVE_OUTPUT(31:0)" name="MUX_OUTPUT(31:0)" />
            <blockpin signalname="reg_write(4:0)" name="reg_write(4:0)" />
        </block>
        <block symbolname="ID_NUM" name="XLXI_3">
            <blockpin signalname="IDNUM(7:0)" name="ID(7:0)" />
        </block>
        <block symbolname="BUF8" name="XLXI_6">
            <blockpin signalname="STATUS(7:0)" name="I(7:0)" />
            <blockpin signalname="STATUS_ID(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="BUF8" name="XLXI_7">
            <blockpin signalname="IDNUM(7:0)" name="I(7:0)" />
            <blockpin signalname="STATUS_ID(15:8)" name="O(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1488" y="1664" name="XLXI_1" orien="R0">
        </instance>
        <branch name="STATUS(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="1312" type="branch" />
            <wire x2="2048" y1="1312" y2="1312" x1="1984" />
            <wire x2="2128" y1="1312" y2="1312" x1="2048" />
        </branch>
        <branch name="LA_RAM(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2048" y="1632" type="branch" />
            <wire x2="2048" y1="1632" y2="1632" x1="1984" />
            <wire x2="2144" y1="1632" y2="1632" x1="2048" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1312" type="branch" />
            <wire x2="1328" y1="1312" y2="1312" x1="1296" />
            <wire x2="1488" y1="1312" y2="1312" x1="1328" />
        </branch>
        <branch name="SIGNALS(31:0)">
            <wire x2="1488" y1="1376" y2="1376" x1="1312" />
        </branch>
        <branch name="reg_write(4:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1440" type="branch" />
            <wire x2="1344" y1="1440" y2="1440" x1="1312" />
            <wire x2="1488" y1="1440" y2="1440" x1="1344" />
        </branch>
        <branch name="step_en">
            <wire x2="1488" y1="1504" y2="1504" x1="1312" />
        </branch>
        <branch name="in_init">
            <wire x2="1488" y1="1568" y2="1568" x1="1312" />
        </branch>
        <branch name="stop_n">
            <wire x2="1488" y1="1632" y2="1632" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1312" y="1376" name="SIGNALS(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1312" y="1504" name="step_en" orien="R180" />
        <iomarker fontsize="28" x="1312" y="1568" name="in_init" orien="R180" />
        <iomarker fontsize="28" x="1296" y="1632" name="stop_n" orien="R180" />
        <instance x="1488" y="2304" name="XLXI_2" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="1488" y1="1824" y2="1824" x1="1280" />
        </branch>
        <branch name="CARDSEL">
            <wire x2="1488" y1="1888" y2="1888" x1="1280" />
        </branch>
        <branch name="SACK_N">
            <wire x2="2144" y1="1824" y2="1824" x1="1952" />
        </branch>
        <branch name="WR_N">
            <wire x2="1488" y1="1952" y2="1952" x1="1280" />
        </branch>
        <branch name="STATUS_ID(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="2016" type="branch" />
            <wire x2="1328" y1="2016" y2="2016" x1="1296" />
            <wire x2="1488" y1="2016" y2="2016" x1="1328" />
        </branch>
        <branch name="SLAVE_C(31:0)">
            <wire x2="1488" y1="2080" y2="2080" x1="1280" />
        </branch>
        <branch name="SLAVE_D(31:0)">
            <wire x2="1488" y1="2144" y2="2144" x1="1264" />
        </branch>
        <branch name="LA_RAM(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="2208" type="branch" />
            <wire x2="1344" y1="2208" y2="2208" x1="1280" />
            <wire x2="1488" y1="2208" y2="2208" x1="1344" />
        </branch>
        <branch name="AI(9:0)">
            <wire x2="1488" y1="2272" y2="2272" x1="1280" />
        </branch>
        <branch name="reg_write(4:0)">
            <wire x2="2144" y1="2272" y2="2272" x1="1952" />
        </branch>
        <branch name="SLAVE_OUTPUT(31:0)">
            <wire x2="2144" y1="2048" y2="2048" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="1280" y="2080" name="SLAVE_C(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1264" y="2144" name="SLAVE_D(31:0)" orien="R180" />
        <iomarker fontsize="28" x="1280" y="1824" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1280" y="1888" name="CARDSEL" orien="R180" />
        <iomarker fontsize="28" x="1280" y="1952" name="WR_N" orien="R180" />
        <iomarker fontsize="28" x="1280" y="2272" name="AI(9:0)" orien="R180" />
        <iomarker fontsize="28" x="2144" y="1824" name="SACK_N" orien="R0" />
        <iomarker fontsize="28" x="2144" y="2048" name="SLAVE_OUTPUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2144" y="2272" name="reg_write(4:0)" orien="R0" />
        <instance x="2512" y="1872" name="XLXI_3" orien="R0">
        </instance>
        <branch name="IDNUM(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2992" y="1840" type="branch" />
            <wire x2="2992" y1="1840" y2="1840" x1="2896" />
            <wire x2="3040" y1="1840" y2="1840" x1="2992" />
        </branch>
        <instance x="2496" y="1600" name="XLXI_6" orien="R0">
        </instance>
        <branch name="STATUS(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1568" type="branch" />
            <wire x2="2384" y1="1568" y2="1568" x1="2336" />
            <wire x2="2496" y1="1568" y2="1568" x1="2384" />
        </branch>
        <branch name="STATUS_ID(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="1568" type="branch" />
            <wire x2="2960" y1="1568" y2="1568" x1="2880" />
            <wire x2="3088" y1="1568" y2="1568" x1="2960" />
        </branch>
        <instance x="2496" y="1344" name="XLXI_7" orien="R0">
        </instance>
        <branch name="IDNUM(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1312" type="branch" />
            <wire x2="2384" y1="1312" y2="1312" x1="2336" />
            <wire x2="2496" y1="1312" y2="1312" x1="2384" />
        </branch>
        <branch name="STATUS_ID(15:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="1312" type="branch" />
            <wire x2="2976" y1="1312" y2="1312" x1="2880" />
            <wire x2="3088" y1="1312" y2="1312" x1="2976" />
        </branch>
    </sheet>
</drawing>