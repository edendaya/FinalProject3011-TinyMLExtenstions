<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a(31:0)" />
        <signal name="b(31:0)" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="en" />
        <signal name="mac_out(31:0)" />
        <signal name="mul_out(31:0)" />
        <signal name="mul_mac_signal" />
        <signal name="o(31:0)" />
        <port polarity="Input" name="a(31:0)" />
        <port polarity="Input" name="b(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="en" />
        <port polarity="Input" name="mul_mac_signal" />
        <port polarity="Output" name="o(31:0)" />
        <blockdef name="vedic16_x_16_signed_sc">
            <timestamp>2025-3-9T14:58:42</timestamp>
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
        <blockdef name="Accumulator">
            <timestamp>2025-4-3T12:47:43</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="vedic16_x_16_signed_sc" name="XLXI_1">
            <blockpin signalname="a(31:0)" name="a(31:0)" />
            <blockpin signalname="b(31:0)" name="b(31:0)" />
            <blockpin signalname="mul_out(31:0)" name="res(31:0)" />
        </block>
        <block symbolname="MUX32bit" name="XLXI_3">
            <blockpin signalname="mul_mac_signal" name="sel" />
            <blockpin signalname="mac_out(31:0)" name="A(31:0)" />
            <blockpin signalname="mul_out(31:0)" name="B(31:0)" />
            <blockpin signalname="o(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="Accumulator" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="en" name="en" />
            <blockpin signalname="mul_out(31:0)" name="D(31:0)" />
            <blockpin name="Q(31:0)" />
            <blockpin signalname="mac_out(31:0)" name="sum_out(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1168" y="1120" name="XLXI_1" orien="R0">
        </instance>
        <branch name="a(31:0)">
            <wire x2="672" y1="864" y2="864" x1="624" />
        </branch>
        <branch name="b(31:0)">
            <wire x2="672" y1="912" y2="912" x1="624" />
        </branch>
        <iomarker fontsize="28" x="624" y="864" name="a(31:0)" orien="R180" />
        <iomarker fontsize="28" x="624" y="912" name="b(31:0)" orien="R180" />
        <branch name="clk">
            <wire x2="672" y1="960" y2="960" x1="624" />
        </branch>
        <branch name="rst">
            <wire x2="672" y1="1008" y2="1008" x1="624" />
        </branch>
        <branch name="en">
            <wire x2="672" y1="1056" y2="1056" x1="624" />
        </branch>
        <iomarker fontsize="28" x="624" y="960" name="clk" orien="R180" />
        <iomarker fontsize="28" x="624" y="1008" name="rst" orien="R180" />
        <iomarker fontsize="28" x="624" y="1056" name="en" orien="R180" />
        <branch name="a(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1024" type="branch" />
            <wire x2="1152" y1="1024" y2="1024" x1="1136" />
            <wire x2="1168" y1="1024" y2="1024" x1="1152" />
        </branch>
        <branch name="b(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="1088" type="branch" />
            <wire x2="1168" y1="1088" y2="1088" x1="1136" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="1328" type="branch" />
            <wire x2="1184" y1="1328" y2="1328" x1="1152" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="1392" type="branch" />
            <wire x2="1184" y1="1392" y2="1392" x1="1152" />
        </branch>
        <branch name="en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="1456" type="branch" />
            <wire x2="1184" y1="1456" y2="1456" x1="1152" />
        </branch>
        <branch name="mul_out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="1024" type="branch" />
            <wire x2="1648" y1="1024" y2="1024" x1="1552" />
        </branch>
        <branch name="mul_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1520" type="branch" />
            <wire x2="1184" y1="1520" y2="1520" x1="1120" />
        </branch>
        <instance x="1936" y="1264" name="XLXI_3" orien="R0">
        </instance>
        <branch name="mac_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1168" type="branch" />
            <wire x2="1920" y1="1168" y2="1168" x1="1904" />
            <wire x2="1936" y1="1168" y2="1168" x1="1920" />
        </branch>
        <branch name="mul_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="1232" type="branch" />
            <wire x2="1936" y1="1232" y2="1232" x1="1904" />
        </branch>
        <branch name="mul_mac_signal">
            <wire x2="1936" y1="1104" y2="1104" x1="1904" />
        </branch>
        <branch name="o(31:0)">
            <wire x2="2352" y1="1104" y2="1104" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2352" y="1104" name="o(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1104" name="mul_mac_signal" orien="R180" />
        <instance x="1184" y="1552" name="XLXI_5" orien="R0">
        </instance>
        <branch name="mac_out(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1520" type="branch" />
            <wire x2="1632" y1="1520" y2="1520" x1="1568" />
        </branch>
    </sheet>
</drawing>