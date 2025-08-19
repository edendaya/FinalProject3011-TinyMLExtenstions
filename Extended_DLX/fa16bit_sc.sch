<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(15:0)" />
        <signal name="B(15:0)" />
        <signal name="Cin" />
        <signal name="SUM(15:0)" />
        <signal name="Cout" />
        <signal name="A(3:0)" />
        <signal name="B(3:0)" />
        <signal name="A(7:4)" />
        <signal name="B(7:4)" />
        <signal name="carry0" />
        <signal name="A(11:8)" />
        <signal name="B(11:8)" />
        <signal name="SUM(3:0)" />
        <signal name="SUM(7:4)" />
        <signal name="carry1" />
        <signal name="SUM(11:8)" />
        <signal name="carry2" />
        <signal name="A(15:12)" />
        <signal name="B(15:12)" />
        <signal name="SUM(15:12)" />
        <port polarity="Input" name="A(15:0)" />
        <port polarity="Input" name="B(15:0)" />
        <port polarity="Input" name="Cin" />
        <port polarity="Output" name="SUM(15:0)" />
        <port polarity="Output" name="Cout" />
        <blockdef name="fa_4bit_sc">
            <timestamp>2025-3-3T12:28:1</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="fa_4bit_sc" name="XLXI_1">
            <blockpin signalname="A(3:0)" name="A(3:0)" />
            <blockpin signalname="B(3:0)" name="B(3:0)" />
            <blockpin signalname="Cin" name="Cin" />
            <blockpin signalname="SUM(3:0)" name="SUM(3:0)" />
            <blockpin signalname="carry0" name="Cout" />
        </block>
        <block symbolname="fa_4bit_sc" name="XLXI_2">
            <blockpin signalname="A(7:4)" name="A(3:0)" />
            <blockpin signalname="B(7:4)" name="B(3:0)" />
            <blockpin signalname="carry0" name="Cin" />
            <blockpin signalname="SUM(7:4)" name="SUM(3:0)" />
            <blockpin signalname="carry1" name="Cout" />
        </block>
        <block symbolname="fa_4bit_sc" name="XLXI_3">
            <blockpin signalname="A(11:8)" name="A(3:0)" />
            <blockpin signalname="B(11:8)" name="B(3:0)" />
            <blockpin signalname="carry1" name="Cin" />
            <blockpin signalname="SUM(11:8)" name="SUM(3:0)" />
            <blockpin signalname="carry2" name="Cout" />
        </block>
        <block symbolname="fa_4bit_sc" name="XLXI_4">
            <blockpin signalname="A(15:12)" name="A(3:0)" />
            <blockpin signalname="B(15:12)" name="B(3:0)" />
            <blockpin signalname="carry2" name="Cin" />
            <blockpin signalname="SUM(15:12)" name="SUM(3:0)" />
            <blockpin signalname="Cout" name="Cout" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="992" y="1232" name="XLXI_1" orien="R0">
        </instance>
        <instance x="976" y="1552" name="XLXI_2" orien="R0">
        </instance>
        <instance x="992" y="1840" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1008" y="2160" name="XLXI_4" orien="R0">
        </instance>
        <branch name="A(15:0)">
            <wire x2="544" y1="720" y2="720" x1="512" />
        </branch>
        <branch name="B(15:0)">
            <wire x2="544" y1="768" y2="768" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="720" name="A(15:0)" orien="R180" />
        <iomarker fontsize="28" x="512" y="768" name="B(15:0)" orien="R180" />
        <branch name="Cin">
            <wire x2="544" y1="832" y2="832" x1="512" />
        </branch>
        <branch name="SUM(15:0)">
            <wire x2="896" y1="704" y2="704" x1="832" />
        </branch>
        <branch name="Cout">
            <wire x2="896" y1="752" y2="752" x1="848" />
        </branch>
        <iomarker fontsize="28" x="512" y="832" name="Cin" orien="R180" />
        <iomarker fontsize="28" x="896" y="704" name="SUM(15:0)" orien="R0" />
        <iomarker fontsize="28" x="896" y="752" name="Cout" orien="R0" />
        <branch name="A(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1072" type="branch" />
            <wire x2="976" y1="1072" y2="1072" x1="960" />
            <wire x2="992" y1="1072" y2="1072" x1="976" />
        </branch>
        <branch name="B(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1136" type="branch" />
            <wire x2="992" y1="1136" y2="1136" x1="960" />
        </branch>
        <branch name="Cin">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1200" type="branch" />
            <wire x2="992" y1="1200" y2="1200" x1="960" />
        </branch>
        <branch name="A(7:4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1392" type="branch" />
            <wire x2="976" y1="1392" y2="1392" x1="960" />
        </branch>
        <branch name="B(7:4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1456" type="branch" />
            <wire x2="976" y1="1456" y2="1456" x1="960" />
        </branch>
        <branch name="carry0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1520" type="branch" />
            <wire x2="976" y1="1520" y2="1520" x1="960" />
        </branch>
        <branch name="A(11:8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1680" type="branch" />
            <wire x2="992" y1="1680" y2="1680" x1="960" />
        </branch>
        <branch name="B(11:8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1744" type="branch" />
            <wire x2="992" y1="1744" y2="1744" x1="960" />
        </branch>
        <branch name="carry1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1808" type="branch" />
            <wire x2="992" y1="1808" y2="1808" x1="960" />
        </branch>
        <branch name="SUM(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1072" type="branch" />
            <wire x2="1408" y1="1072" y2="1072" x1="1376" />
        </branch>
        <branch name="carry0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1200" type="branch" />
            <wire x2="1408" y1="1200" y2="1200" x1="1376" />
        </branch>
        <branch name="SUM(7:4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1392" type="branch" />
            <wire x2="1392" y1="1392" y2="1392" x1="1360" />
        </branch>
        <branch name="carry1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="1520" type="branch" />
            <wire x2="1392" y1="1520" y2="1520" x1="1360" />
        </branch>
        <branch name="SUM(11:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1680" type="branch" />
            <wire x2="1408" y1="1680" y2="1680" x1="1376" />
        </branch>
        <branch name="carry2">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1808" type="branch" />
            <wire x2="1408" y1="1808" y2="1808" x1="1376" />
        </branch>
        <branch name="A(15:12)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="2000" type="branch" />
            <wire x2="1008" y1="2000" y2="2000" x1="976" />
        </branch>
        <branch name="B(15:12)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="2064" type="branch" />
            <wire x2="1008" y1="2064" y2="2064" x1="976" />
        </branch>
        <branch name="carry2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="2128" type="branch" />
            <wire x2="1008" y1="2128" y2="2128" x1="976" />
        </branch>
        <branch name="SUM(15:12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="2000" type="branch" />
            <wire x2="1424" y1="2000" y2="2000" x1="1392" />
        </branch>
        <branch name="Cout">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="2128" type="branch" />
            <wire x2="1424" y1="2128" y2="2128" x1="1392" />
        </branch>
    </sheet>
</drawing>