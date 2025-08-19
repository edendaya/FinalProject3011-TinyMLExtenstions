<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="Din(31:0)" />
        <signal name="A_EN" />
        <signal name="B_EN" />
        <signal name="C_EN" />
        <signal name="IR_EN" />
        <signal name="PC_EN" />
        <signal name="GPR_WE" />
        <signal name="Dadr(4:0)" />
        <signal name="MUX_Select" />
        <signal name="RESET" />
        <signal name="C(31:0)" />
        <signal name="imm(15:0)" />
        <signal name="Cadr(4:0)" />
        <signal name="Aadr(4:0)" />
        <signal name="Badr(4:0)" />
        <signal name="A(31:0)" />
        <signal name="B(31:0)" />
        <signal name="D(31:0)" />
        <signal name="AEQZ" />
        <signal name="PC(15:0)" />
        <signal name="AO(31:0)" />
        <signal name="A_OUT(31:0)" />
        <signal name="B_OUT(31:0)" />
        <signal name="AOM(15:0)" />
        <signal name="opcode(5:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="Din(31:0)" />
        <port polarity="Input" name="A_EN" />
        <port polarity="Input" name="B_EN" />
        <port polarity="Input" name="C_EN" />
        <port polarity="Input" name="IR_EN" />
        <port polarity="Input" name="PC_EN" />
        <port polarity="Input" name="GPR_WE" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Input" name="MUX_Select" />
        <port polarity="Input" name="RESET" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Output" name="AEQZ" />
        <port polarity="Output" name="PC(15:0)" />
        <port polarity="Output" name="AO(31:0)" />
        <port polarity="Output" name="A_OUT(31:0)" />
        <port polarity="Output" name="B_OUT(31:0)" />
        <port polarity="Output" name="opcode(5:0)" />
        <blockdef name="PC_ENV">
            <timestamp>2024-12-15T13:18:57</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="REG32CE">
            <timestamp>2024-12-15T13:36:29</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="MUX16bit">
            <timestamp>2024-4-10T7:9:32</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="MMU">
            <timestamp>2024-12-19T13:51:44</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="GPR_ENVIR">
            <timestamp>2024-12-23T12:11:45</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
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
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="IR_ENV">
            <timestamp>2024-12-23T13:46:29</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="REG32CE" name="REGB">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="C_EN" name="CE" />
            <blockpin signalname="Din(31:0)" name="DI(31:0)" />
            <blockpin signalname="C(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="PC_ENV" name="XLXI_2">
            <blockpin signalname="PC_EN" name="PC_EN" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="PC(15:0)" name="PC(15:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_12">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="B_EN" name="CE" />
            <blockpin signalname="B(31:0)" name="DI(31:0)" />
            <blockpin signalname="B_OUT(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="REG32CE" name="XLXI_11">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="A_EN" name="CE" />
            <blockpin signalname="A(31:0)" name="DI(31:0)" />
            <blockpin signalname="A_OUT(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="GPR_ENVIR" name="XLXI_54">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="C(31:0)" name="C(31:0)" />
            <blockpin signalname="Cadr(4:0)" name="Cadr(4:0)" />
            <blockpin signalname="Aadr(4:0)" name="Aadr(4:0)" />
            <blockpin signalname="Badr(4:0)" name="Badr(4:0)" />
            <blockpin signalname="Dadr(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="AEQZ" name="AEQZ_O" />
        </block>
        <block symbolname="IR_ENV" name="XLXI_55">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="IR_EN" name="IR_EN" />
            <blockpin signalname="Din(31:0)" name="Din(31:0)" />
            <blockpin signalname="Aadr(4:0)" name="Aadr(4:0)" />
            <blockpin signalname="Badr(4:0)" name="Badr(4:0)" />
            <blockpin signalname="Cadr(4:0)" name="Cadr(4:0)" />
            <blockpin signalname="imm(15:0)" name="imm(15:0)" />
            <blockpin signalname="opcode(5:0)" name="opcode(5:0)" />
        </block>
        <block symbolname="MUX16bit" name="XLXI_9">
            <blockpin signalname="MUX_Select" name="sel" />
            <blockpin signalname="PC(15:0)" name="A(15:0)" />
            <blockpin signalname="imm(15:0)" name="B(15:0)" />
            <blockpin signalname="AOM(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="MMU" name="XLXI_51">
            <blockpin signalname="AOM(15:0)" name="MMU_IN(15:0)" />
            <blockpin signalname="AO(31:0)" name="AO(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="688" y="576" name="REGB" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="304" y1="80" y2="80" x1="256" />
        </branch>
        <branch name="RESET">
            <wire x2="304" y1="128" y2="128" x1="256" />
        </branch>
        <branch name="Din(31:0)">
            <wire x2="304" y1="192" y2="192" x1="256" />
        </branch>
        <branch name="A_EN">
            <wire x2="304" y1="240" y2="240" x1="256" />
        </branch>
        <branch name="B_EN">
            <wire x2="304" y1="304" y2="304" x1="256" />
        </branch>
        <branch name="C_EN">
            <wire x2="304" y1="352" y2="352" x1="256" />
        </branch>
        <branch name="IR_EN">
            <wire x2="304" y1="416" y2="416" x1="256" />
        </branch>
        <branch name="PC_EN">
            <wire x2="304" y1="464" y2="464" x1="256" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="304" y1="512" y2="512" x1="256" />
        </branch>
        <branch name="Dadr(4:0)">
            <wire x2="304" y1="560" y2="560" x1="256" />
        </branch>
        <branch name="MUX_Select">
            <wire x2="304" y1="624" y2="624" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="80" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="256" y="128" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="256" y="192" name="Din(31:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="240" name="A_EN" orien="R180" />
        <iomarker fontsize="28" x="256" y="304" name="B_EN" orien="R180" />
        <iomarker fontsize="28" x="256" y="352" name="C_EN" orien="R180" />
        <iomarker fontsize="28" x="256" y="416" name="IR_EN" orien="R180" />
        <iomarker fontsize="28" x="256" y="464" name="PC_EN" orien="R180" />
        <iomarker fontsize="28" x="256" y="512" name="GPR_WE" orien="R180" />
        <iomarker fontsize="28" x="256" y="560" name="Dadr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="624" name="MUX_Select" orien="R180" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="416" type="branch" />
            <wire x2="688" y1="416" y2="416" x1="672" />
        </branch>
        <branch name="C_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="480" type="branch" />
            <wire x2="688" y1="480" y2="480" x1="672" />
        </branch>
        <branch name="Din(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="544" type="branch" />
            <wire x2="688" y1="544" y2="544" x1="672" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="416" type="branch" />
            <wire x2="1088" y1="416" y2="416" x1="1072" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="720" type="branch" />
            <wire x2="688" y1="720" y2="720" x1="672" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="784" type="branch" />
            <wire x2="688" y1="784" y2="784" x1="672" />
        </branch>
        <branch name="C(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="848" type="branch" />
            <wire x2="688" y1="848" y2="848" x1="672" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="912" type="branch" />
            <wire x2="688" y1="912" y2="912" x1="672" />
        </branch>
        <branch name="Aadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="976" type="branch" />
            <wire x2="688" y1="976" y2="976" x1="672" />
        </branch>
        <branch name="Badr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="1040" type="branch" />
            <wire x2="688" y1="1040" y2="1040" x1="672" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="672" y="1104" type="branch" />
            <wire x2="688" y1="1104" y2="1104" x1="672" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="720" type="branch" />
            <wire x2="1088" y1="720" y2="720" x1="1072" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="848" type="branch" />
            <wire x2="1088" y1="848" y2="848" x1="1072" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="976" type="branch" />
            <wire x2="1088" y1="976" y2="976" x1="1072" />
        </branch>
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1104" type="branch" />
            <wire x2="1088" y1="1104" y2="1104" x1="1072" />
        </branch>
        <instance x="2048" y="576" name="XLXI_2" orien="R0">
        </instance>
        <branch name="PC_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="416" type="branch" />
            <wire x2="2048" y1="416" y2="416" x1="2032" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="480" type="branch" />
            <wire x2="2048" y1="480" y2="480" x1="2032" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="544" type="branch" />
            <wire x2="2048" y1="544" y2="544" x1="2032" />
        </branch>
        <branch name="PC(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2448" y="416" type="branch" />
            <wire x2="2448" y1="416" y2="416" x1="2432" />
        </branch>
        <branch name="Aadr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="400" type="branch" />
            <wire x2="1728" y1="400" y2="400" x1="1712" />
        </branch>
        <branch name="Badr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="464" type="branch" />
            <wire x2="1728" y1="464" y2="464" x1="1712" />
        </branch>
        <branch name="Cadr(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="528" type="branch" />
            <wire x2="1728" y1="528" y2="528" x1="1712" />
        </branch>
        <branch name="imm(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="592" type="branch" />
            <wire x2="1728" y1="592" y2="592" x1="1712" />
        </branch>
        <instance x="1088" y="1504" name="XLXI_12" orien="R0">
        </instance>
        <branch name="B_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1344" type="branch" />
            <wire x2="1488" y1="1344" y2="1344" x1="1472" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1344" type="branch" />
            <wire x2="1088" y1="1344" y2="1344" x1="1072" />
        </branch>
        <branch name="B_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1408" type="branch" />
            <wire x2="1088" y1="1408" y2="1408" x1="1072" />
        </branch>
        <branch name="B(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1472" type="branch" />
            <wire x2="1088" y1="1472" y2="1472" x1="1072" />
        </branch>
        <branch name="D(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="96" type="branch" />
            <wire x2="2624" y1="96" y2="96" x1="2576" />
        </branch>
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="144" type="branch" />
            <wire x2="2624" y1="144" y2="144" x1="2576" />
        </branch>
        <branch name="PC(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="208" type="branch" />
            <wire x2="2624" y1="208" y2="208" x1="2576" />
        </branch>
        <branch name="B_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="256" type="branch" />
            <wire x2="2624" y1="256" y2="256" x1="2576" />
        </branch>
        <branch name="AO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="304" type="branch" />
            <wire x2="2592" y1="304" y2="304" x1="2576" />
            <wire x2="2624" y1="304" y2="304" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="96" name="D(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2624" y="144" name="AEQZ" orien="R0" />
        <iomarker fontsize="28" x="2624" y="208" name="PC(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2624" y="256" name="B_OUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2624" y="304" name="AO(31:0)" orien="R0" />
        <branch name="A_OUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2576" y="352" type="branch" />
            <wire x2="2624" y1="352" y2="352" x1="2576" />
        </branch>
        <iomarker fontsize="28" x="2624" y="352" name="A_OUT(31:0)" orien="R0" />
        <instance x="416" y="1504" name="XLXI_11" orien="R0">
        </instance>
        <branch name="A_OUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="816" y="1344" type="branch" />
            <wire x2="816" y1="1344" y2="1344" x1="800" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1344" type="branch" />
            <wire x2="416" y1="1344" y2="1344" x1="400" />
        </branch>
        <branch name="A_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1408" type="branch" />
            <wire x2="416" y1="1408" y2="1408" x1="400" />
        </branch>
        <branch name="A(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1472" type="branch" />
            <wire x2="416" y1="1472" y2="1472" x1="400" />
        </branch>
        <instance x="688" y="1136" name="XLXI_54" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="400" type="branch" />
            <wire x2="1328" y1="400" y2="400" x1="1312" />
        </branch>
        <instance x="1328" y="688" name="XLXI_55" orien="R0">
        </instance>
        <branch name="MUX_Select">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="848" type="branch" />
            <wire x2="1632" y1="848" y2="848" x1="1616" />
        </branch>
        <branch name="PC(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="912" type="branch" />
            <wire x2="1632" y1="912" y2="912" x1="1616" />
        </branch>
        <branch name="AOM(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="848" type="branch" />
            <wire x2="2032" y1="848" y2="848" x1="2016" />
        </branch>
        <branch name="imm(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="976" type="branch" />
            <wire x2="1632" y1="976" y2="976" x1="1616" />
        </branch>
        <instance x="1632" y="1008" name="XLXI_9" orien="R0">
        </instance>
        <branch name="IR_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="528" type="branch" />
            <wire x2="1328" y1="528" y2="528" x1="1312" />
        </branch>
        <branch name="Din(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="656" type="branch" />
            <wire x2="1328" y1="656" y2="656" x1="1296" />
        </branch>
        <branch name="opcode(5:0)">
            <wire x2="1744" y1="656" y2="656" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1744" y="656" name="opcode(5:0)" orien="R0" />
        <branch name="AO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1168" type="branch" />
            <wire x2="2000" y1="1168" y2="1168" x1="1984" />
        </branch>
        <branch name="AOM(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1168" type="branch" />
            <wire x2="1600" y1="1168" y2="1168" x1="1584" />
        </branch>
        <instance x="1600" y="1200" name="XLXI_51" orien="R0">
        </instance>
    </sheet>
</drawing>