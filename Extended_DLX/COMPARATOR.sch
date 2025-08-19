<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ALUF(2:0)" />
        <signal name="XLXN_13" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_8" />
        <signal name="ALUF(0)" />
        <signal name="XLXN_11" />
        <signal name="XLXN_10" />
        <signal name="XLXN_15" />
        <signal name="is_zero" />
        <signal name="neg" />
        <signal name="ALUF(2)" />
        <signal name="ALUF(1)" />
        <signal name="COMP_OUT" />
        <signal name="S(31:0)" />
        <port polarity="Input" name="ALUF(2:0)" />
        <port polarity="Input" name="neg" />
        <port polarity="Output" name="COMP_OUT" />
        <port polarity="Input" name="S(31:0)" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="ISZERO32">
            <timestamp>2025-1-6T13:9:15</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="ALUF(0)" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="is_zero" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_29">
            <blockpin signalname="neg" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_20" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="ALUF(2)" name="I0" />
            <blockpin signalname="neg" name="I1" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="ALUF(1)" name="I0" />
            <blockpin signalname="is_zero" name="I1" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="COMP_OUT" name="O" />
        </block>
        <block symbolname="ISZERO32" name="XLXI_30">
            <blockpin signalname="S(31:0)" name="inputim(31:0)" />
            <blockpin signalname="is_zero" name="is_zero" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="ALUF(2:0)">
            <wire x2="288" y1="48" y2="48" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="48" name="ALUF(2:0)" orien="R180" />
        <instance x="336" y="800" name="XLXI_3" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="320" y1="672" y2="672" x1="304" />
            <wire x2="336" y1="672" y2="672" x1="320" />
        </branch>
        <branch name="ALUF(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="736" type="branch" />
            <wire x2="336" y1="736" y2="736" x1="304" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="608" y1="704" y2="704" x1="592" />
            <wire x2="848" y1="704" y2="704" x1="608" />
        </branch>
        <instance x="848" y="768" name="XLXI_4" orien="R0" />
        <branch name="XLXN_10">
            <wire x2="848" y1="640" y2="640" x1="832" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1120" y1="528" y2="528" x1="1104" />
            <wire x2="1120" y1="528" y2="672" x1="1120" />
            <wire x2="1120" y1="672" y2="672" x1="1104" />
        </branch>
        <instance x="608" y="672" name="XLXI_21" orien="R0" />
        <branch name="is_zero">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="640" type="branch" />
            <wire x2="608" y1="640" y2="640" x1="576" />
        </branch>
        <instance x="80" y="704" name="XLXI_29" orien="R0" />
        <branch name="neg">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="64" y="672" type="branch" />
            <wire x2="80" y1="672" y2="672" x1="64" />
        </branch>
        <instance x="768" y="448" name="XLXI_7" orien="R0" />
        <instance x="336" y="544" name="XLXI_2" orien="R0" />
        <instance x="336" y="368" name="XLXI_1" orien="R0" />
        <branch name="XLXN_21">
            <wire x2="608" y1="448" y2="448" x1="592" />
            <wire x2="768" y1="384" y2="384" x1="608" />
            <wire x2="608" y1="384" y2="448" x1="608" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="608" y1="272" y2="272" x1="592" />
            <wire x2="608" y1="272" y2="320" x1="608" />
            <wire x2="768" y1="320" y2="320" x1="608" />
        </branch>
        <branch name="ALUF(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="480" type="branch" />
            <wire x2="336" y1="480" y2="480" x1="304" />
        </branch>
        <branch name="neg">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="416" type="branch" />
            <wire x2="336" y1="416" y2="416" x1="304" />
        </branch>
        <branch name="ALUF(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="304" type="branch" />
            <wire x2="336" y1="304" y2="304" x1="304" />
        </branch>
        <branch name="is_zero">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="240" type="branch" />
            <wire x2="336" y1="240" y2="240" x1="304" />
        </branch>
        <instance x="1120" y="592" name="XLXI_8" orien="R0" />
        <branch name="COMP_OUT">
            <wire x2="1408" y1="496" y2="496" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1408" y="496" name="COMP_OUT" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="1040" y1="352" y2="352" x1="1024" />
            <wire x2="1040" y1="352" y2="464" x1="1040" />
            <wire x2="1120" y1="464" y2="464" x1="1040" />
        </branch>
        <branch name="neg">
            <wire x2="208" y1="160" y2="160" x1="144" />
        </branch>
        <iomarker fontsize="28" x="144" y="160" name="neg" orien="R180" />
        <iomarker fontsize="28" x="160" y="112" name="S(31:0)" orien="R180" />
        <branch name="S(31:0)">
            <wire x2="256" y1="112" y2="112" x1="160" />
        </branch>
        <branch name="S(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="128" type="branch" />
            <wire x2="576" y1="128" y2="128" x1="560" />
        </branch>
        <branch name="is_zero">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="128" type="branch" />
            <wire x2="976" y1="128" y2="128" x1="960" />
        </branch>
        <instance x="576" y="160" name="XLXI_30" orien="R0">
        </instance>
    </sheet>
</drawing>