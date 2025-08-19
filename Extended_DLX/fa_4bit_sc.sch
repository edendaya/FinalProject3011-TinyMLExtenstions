<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(3:0)" />
        <signal name="B(3:0)" />
        <signal name="Cin" />
        <signal name="A(0)" />
        <signal name="B(0)" />
        <signal name="B(1)" />
        <signal name="A(1)" />
        <signal name="B(2)" />
        <signal name="A(2)" />
        <signal name="B(3)" />
        <signal name="A(3)" />
        <signal name="SUM(0)" />
        <signal name="Carry0" />
        <signal name="SUM(1)" />
        <signal name="Carry1" />
        <signal name="SUM(2)" />
        <signal name="Carry2" />
        <signal name="SUM(3)" />
        <signal name="SUM(3:0)" />
        <signal name="Cout" />
        <port polarity="Input" name="A(3:0)" />
        <port polarity="Input" name="B(3:0)" />
        <port polarity="Input" name="Cin" />
        <port polarity="Output" name="SUM(3:0)" />
        <port polarity="Output" name="Cout" />
        <blockdef name="fulladd_sc">
            <timestamp>2025-3-3T11:53:18</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="fulladd_sc" name="XLXI_1">
            <blockpin signalname="Cin" name="c" />
            <blockpin signalname="B(0)" name="b" />
            <blockpin signalname="A(0)" name="a" />
            <blockpin signalname="SUM(0)" name="sum" />
            <blockpin signalname="Carry0" name="carry" />
        </block>
        <block symbolname="fulladd_sc" name="XLXI_2">
            <blockpin signalname="Carry0" name="c" />
            <blockpin signalname="B(1)" name="b" />
            <blockpin signalname="A(1)" name="a" />
            <blockpin signalname="SUM(1)" name="sum" />
            <blockpin signalname="Carry1" name="carry" />
        </block>
        <block symbolname="fulladd_sc" name="XLXI_3">
            <blockpin signalname="Carry1" name="c" />
            <blockpin signalname="B(2)" name="b" />
            <blockpin signalname="A(2)" name="a" />
            <blockpin signalname="SUM(2)" name="sum" />
            <blockpin signalname="Carry2" name="carry" />
        </block>
        <block symbolname="fulladd_sc" name="XLXI_4">
            <blockpin signalname="Carry2" name="c" />
            <blockpin signalname="B(3)" name="b" />
            <blockpin signalname="A(3)" name="a" />
            <blockpin signalname="SUM(3)" name="sum" />
            <blockpin signalname="Cout" name="carry" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="656" y="1456" name="XLXI_1" orien="R0">
        </instance>
        <instance x="656" y="1744" name="XLXI_2" orien="R0">
        </instance>
        <instance x="656" y="2016" name="XLXI_3" orien="R0">
        </instance>
        <instance x="656" y="2272" name="XLXI_4" orien="R0">
        </instance>
        <branch name="A(3:0)">
            <wire x2="336" y1="880" y2="880" x1="304" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="352" y1="928" y2="928" x1="304" />
        </branch>
        <iomarker fontsize="28" x="304" y="880" name="A(3:0)" orien="R180" />
        <iomarker fontsize="28" x="304" y="928" name="B(3:0)" orien="R180" />
        <branch name="Cin">
            <wire x2="352" y1="992" y2="992" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="992" name="Cin" orien="R180" />
        <branch name="Cin">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1296" type="branch" />
            <wire x2="656" y1="1296" y2="1296" x1="640" />
        </branch>
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1360" type="branch" />
            <wire x2="656" y1="1360" y2="1360" x1="640" />
        </branch>
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1424" type="branch" />
            <wire x2="656" y1="1424" y2="1424" x1="640" />
        </branch>
        <branch name="Carry0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1584" type="branch" />
            <wire x2="656" y1="1584" y2="1584" x1="640" />
        </branch>
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1648" type="branch" />
            <wire x2="656" y1="1648" y2="1648" x1="640" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1712" type="branch" />
            <wire x2="656" y1="1712" y2="1712" x1="640" />
        </branch>
        <branch name="Carry1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1856" type="branch" />
            <wire x2="656" y1="1856" y2="1856" x1="640" />
        </branch>
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1920" type="branch" />
            <wire x2="656" y1="1920" y2="1920" x1="640" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1984" type="branch" />
            <wire x2="656" y1="1984" y2="1984" x1="640" />
        </branch>
        <branch name="Carry2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="2112" type="branch" />
            <wire x2="656" y1="2112" y2="2112" x1="640" />
        </branch>
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="2176" type="branch" />
            <wire x2="656" y1="2176" y2="2176" x1="640" />
        </branch>
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="2240" type="branch" />
            <wire x2="656" y1="2240" y2="2240" x1="640" />
        </branch>
        <branch name="SUM(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1296" type="branch" />
            <wire x2="1056" y1="1296" y2="1296" x1="1040" />
            <wire x2="1072" y1="1296" y2="1296" x1="1056" />
        </branch>
        <branch name="Carry0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1424" type="branch" />
            <wire x2="1088" y1="1424" y2="1424" x1="1040" />
        </branch>
        <branch name="SUM(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1584" type="branch" />
            <wire x2="1072" y1="1584" y2="1584" x1="1040" />
        </branch>
        <branch name="Carry1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1712" type="branch" />
            <wire x2="1072" y1="1712" y2="1712" x1="1040" />
        </branch>
        <branch name="SUM(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1856" type="branch" />
            <wire x2="1072" y1="1856" y2="1856" x1="1040" />
        </branch>
        <branch name="Carry2">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1984" type="branch" />
            <wire x2="1072" y1="1984" y2="1984" x1="1040" />
        </branch>
        <branch name="SUM(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="2112" type="branch" />
            <wire x2="1072" y1="2112" y2="2112" x1="1040" />
        </branch>
        <branch name="Cout">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="2240" type="branch" />
            <wire x2="1072" y1="2240" y2="2240" x1="1040" />
        </branch>
        <branch name="SUM(3:0)">
            <wire x2="1296" y1="880" y2="880" x1="1264" />
        </branch>
        <branch name="Cout">
            <wire x2="1296" y1="912" y2="912" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1296" y="880" name="SUM(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1296" y="912" name="Cout" orien="R0" />
    </sheet>
</drawing>