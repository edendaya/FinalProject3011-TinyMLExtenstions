<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(5:0)" />
        <signal name="B(5:0)" />
        <signal name="Cin" />
        <signal name="B(0)" />
        <signal name="A(0)" />
        <signal name="Carry0" />
        <signal name="B(1)" />
        <signal name="A(1)" />
        <signal name="Carry1" />
        <signal name="B(2)" />
        <signal name="A(2)" />
        <signal name="Carry2" />
        <signal name="B(3)" />
        <signal name="A(3)" />
        <signal name="SUM(0)" />
        <signal name="SUM(1)" />
        <signal name="SUM(2)" />
        <signal name="SUM(3)" />
        <signal name="Cout" />
        <signal name="SUM(5:0)" />
        <signal name="B(4)" />
        <signal name="A(4)" />
        <signal name="SUM(4)" />
        <signal name="carry4" />
        <signal name="B(5)" />
        <signal name="A(5)" />
        <signal name="SUM(5)" />
        <signal name="carry3" />
        <port polarity="Input" name="A(5:0)" />
        <port polarity="Input" name="B(5:0)" />
        <port polarity="Input" name="Cin" />
        <port polarity="Output" name="Cout" />
        <port polarity="Output" name="SUM(5:0)" />
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
            <blockpin signalname="carry3" name="carry" />
        </block>
        <block symbolname="fulladd_sc" name="XLXI_5">
            <blockpin signalname="carry3" name="c" />
            <blockpin signalname="B(4)" name="b" />
            <blockpin signalname="A(4)" name="a" />
            <blockpin signalname="SUM(4)" name="sum" />
            <blockpin signalname="carry4" name="carry" />
        </block>
        <block symbolname="fulladd_sc" name="XLXI_6">
            <blockpin signalname="carry4" name="c" />
            <blockpin signalname="B(5)" name="b" />
            <blockpin signalname="A(5)" name="a" />
            <blockpin signalname="SUM(5)" name="sum" />
            <blockpin signalname="Cout" name="carry" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="976" y="1200" name="XLXI_1" orien="R0">
        </instance>
        <instance x="976" y="1488" name="XLXI_2" orien="R0">
        </instance>
        <instance x="976" y="1760" name="XLXI_3" orien="R0">
        </instance>
        <instance x="976" y="2016" name="XLXI_4" orien="R0">
        </instance>
        <branch name="A(5:0)">
            <wire x2="656" y1="624" y2="624" x1="624" />
        </branch>
        <branch name="B(5:0)">
            <wire x2="672" y1="672" y2="672" x1="624" />
        </branch>
        <branch name="Cin">
            <wire x2="672" y1="736" y2="736" x1="640" />
        </branch>
        <branch name="Cin">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1040" type="branch" />
            <wire x2="976" y1="1040" y2="1040" x1="960" />
        </branch>
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1104" type="branch" />
            <wire x2="976" y1="1104" y2="1104" x1="960" />
        </branch>
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1168" type="branch" />
            <wire x2="976" y1="1168" y2="1168" x1="960" />
        </branch>
        <branch name="Carry0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1328" type="branch" />
            <wire x2="976" y1="1328" y2="1328" x1="960" />
        </branch>
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1392" type="branch" />
            <wire x2="976" y1="1392" y2="1392" x1="960" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1456" type="branch" />
            <wire x2="976" y1="1456" y2="1456" x1="960" />
        </branch>
        <branch name="Carry1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1600" type="branch" />
            <wire x2="976" y1="1600" y2="1600" x1="960" />
        </branch>
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1664" type="branch" />
            <wire x2="976" y1="1664" y2="1664" x1="960" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1728" type="branch" />
            <wire x2="976" y1="1728" y2="1728" x1="960" />
        </branch>
        <branch name="Carry2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1856" type="branch" />
            <wire x2="976" y1="1856" y2="1856" x1="960" />
        </branch>
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1920" type="branch" />
            <wire x2="976" y1="1920" y2="1920" x1="960" />
        </branch>
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1984" type="branch" />
            <wire x2="976" y1="1984" y2="1984" x1="960" />
        </branch>
        <branch name="SUM(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1040" type="branch" />
            <wire x2="1376" y1="1040" y2="1040" x1="1360" />
            <wire x2="1392" y1="1040" y2="1040" x1="1376" />
        </branch>
        <branch name="Carry0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1168" type="branch" />
            <wire x2="1408" y1="1168" y2="1168" x1="1360" />
        </branch>
        <branch name="SUM(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1328" type="branch" />
            <wire x2="1392" y1="1328" y2="1328" x1="1360" />
        </branch>
        <branch name="Carry1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1456" type="branch" />
            <wire x2="1392" y1="1456" y2="1456" x1="1360" />
        </branch>
        <branch name="SUM(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1600" type="branch" />
            <wire x2="1392" y1="1600" y2="1600" x1="1360" />
        </branch>
        <branch name="Carry2">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1728" type="branch" />
            <wire x2="1392" y1="1728" y2="1728" x1="1360" />
        </branch>
        <branch name="SUM(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1856" type="branch" />
            <wire x2="1392" y1="1856" y2="1856" x1="1360" />
        </branch>
        <branch name="carry3">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1984" type="branch" />
            <wire x2="1392" y1="1984" y2="1984" x1="1360" />
        </branch>
        <branch name="SUM(5:0)">
            <wire x2="1616" y1="624" y2="624" x1="1584" />
        </branch>
        <branch name="Cout">
            <wire x2="1616" y1="656" y2="656" x1="1600" />
        </branch>
        <iomarker fontsize="28" x="624" y="624" name="A(5:0)" orien="R180" />
        <iomarker fontsize="28" x="624" y="672" name="B(5:0)" orien="R180" />
        <iomarker fontsize="28" x="640" y="736" name="Cin" orien="R180" />
        <iomarker fontsize="28" x="1616" y="624" name="SUM(5:0)" orien="R0" />
        <iomarker fontsize="28" x="1616" y="656" name="Cout" orien="R0" />
        <branch name="carry3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="2160" type="branch" />
            <wire x2="976" y1="2160" y2="2160" x1="960" />
        </branch>
        <branch name="B(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="2224" type="branch" />
            <wire x2="976" y1="2224" y2="2224" x1="960" />
        </branch>
        <branch name="A(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="2288" type="branch" />
            <wire x2="976" y1="2288" y2="2288" x1="960" />
        </branch>
        <branch name="SUM(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="2160" type="branch" />
            <wire x2="1392" y1="2160" y2="2160" x1="1360" />
        </branch>
        <branch name="carry4">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="2288" type="branch" />
            <wire x2="1392" y1="2288" y2="2288" x1="1360" />
        </branch>
        <instance x="976" y="2320" name="XLXI_5" orien="R0">
        </instance>
        <branch name="carry4">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="2464" type="branch" />
            <wire x2="992" y1="2464" y2="2464" x1="976" />
        </branch>
        <branch name="B(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="2528" type="branch" />
            <wire x2="992" y1="2528" y2="2528" x1="976" />
        </branch>
        <branch name="A(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="2592" type="branch" />
            <wire x2="992" y1="2592" y2="2592" x1="976" />
        </branch>
        <branch name="SUM(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="2464" type="branch" />
            <wire x2="1408" y1="2464" y2="2464" x1="1376" />
        </branch>
        <branch name="Cout">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="2592" type="branch" />
            <wire x2="1408" y1="2592" y2="2592" x1="1376" />
        </branch>
        <instance x="992" y="2624" name="XLXI_6" orien="R0">
        </instance>
    </sheet>
</drawing>