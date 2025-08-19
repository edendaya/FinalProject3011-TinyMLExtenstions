<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="RESET" />
        <signal name="STEP_EN" />
        <signal name="ACK_N" />
        <signal name="Din(31:0)" />
        <signal name="Dadr(4:0)" />
        <signal name="A_WE" />
        <signal name="IR_WE" />
        <signal name="GPR_WE" />
        <signal name="AO_MUXSEL" />
        <signal name="B_WE" />
        <signal name="C_WE" />
        <signal name="INC_PC" />
        <signal name="DRAM_OUT(31:0)" />
        <signal name="AS_N" />
        <signal name="IN_INIT" />
        <signal name="MR" />
        <signal name="MW" />
        <signal name="BUSY" />
        <signal name="MAC_STATE(1:0)" />
        <signal name="DLX_STATE(2:0)" />
        <signal name="WR_N" />
        <signal name="REQ" />
        <signal name="STOP_N" />
        <signal name="AEQZ" />
        <signal name="PC(15:0)" />
        <signal name="AO(31:0)" />
        <signal name="A_OUT(31:0)" />
        <signal name="B_OUT(31:0)" />
        <signal name="opcode(5:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Input" name="Din(31:0)" />
        <port polarity="Input" name="Dadr(4:0)" />
        <port polarity="Output" name="A_WE" />
        <port polarity="Output" name="IR_WE" />
        <port polarity="Output" name="GPR_WE" />
        <port polarity="Output" name="AO_MUXSEL" />
        <port polarity="Output" name="B_WE" />
        <port polarity="Output" name="C_WE" />
        <port polarity="Output" name="INC_PC" />
        <port polarity="Output" name="DRAM_OUT(31:0)" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="MR" />
        <port polarity="Output" name="MW" />
        <port polarity="Output" name="BUSY" />
        <port polarity="Output" name="MAC_STATE(1:0)" />
        <port polarity="Output" name="DLX_STATE(2:0)" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="REQ" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Output" name="AEQZ" />
        <port polarity="Output" name="PC(15:0)" />
        <port polarity="Output" name="AO(31:0)" />
        <port polarity="Output" name="A_OUT(31:0)" />
        <port polarity="Output" name="B_OUT(31:0)" />
        <blockdef name="CONTROL">
            <timestamp>2024-12-19T12:39:18</timestamp>
            <rect width="320" x="64" y="-1088" height="1088" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-1056" y2="-1056" x1="384" />
            <line x2="448" y1="-992" y2="-992" x1="384" />
            <line x2="448" y1="-928" y2="-928" x1="384" />
            <line x2="448" y1="-864" y2="-864" x1="384" />
            <line x2="448" y1="-800" y2="-800" x1="384" />
            <line x2="448" y1="-736" y2="-736" x1="384" />
            <line x2="448" y1="-672" y2="-672" x1="384" />
            <line x2="448" y1="-608" y2="-608" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-480" y2="-480" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <rect width="64" x="384" y="-364" height="24" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="datapath_lab5">
            <timestamp>2024-12-23T13:50:20</timestamp>
            <rect width="256" x="64" y="-704" height="704" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-684" height="24" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-576" y2="-576" x1="320" />
            <rect width="64" x="320" y="-492" height="24" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <rect width="64" x="320" y="-396" height="24" />
            <line x2="384" y1="-384" y2="-384" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-204" height="24" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="CONTROL" name="XLXI_1">
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="CLK" name="clock" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="opcode(5:0)" name="opcode(5:0)" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="IR_WE" name="IR_EN" />
            <blockpin signalname="GPR_WE" name="GPR_EN" />
            <blockpin signalname="AO_MUXSEL" name="Mux_sel" />
            <blockpin signalname="A_WE" name="REG_A_EN" />
            <blockpin signalname="B_WE" name="REG_B_EN" />
            <blockpin signalname="C_WE" name="REG_C_EN" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="INC_PC" name="PC_STEP" />
            <blockpin signalname="REQ" name="req" />
            <blockpin signalname="MR" name="MR" />
            <blockpin signalname="MW" name="MW" />
            <blockpin signalname="DLX_STATE(2:0)" name="SM_STATE(2:0)" />
            <blockpin signalname="BUSY" name="busy" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin signalname="MAC_STATE(1:0)" name="MAC_STATE(1:0)" />
        </block>
        <block symbolname="datapath_lab5" name="XLXI_2">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="Din(31:0)" name="Din(31:0)" />
            <blockpin signalname="A_WE" name="A_EN" />
            <blockpin signalname="B_WE" name="B_EN" />
            <blockpin signalname="C_WE" name="C_EN" />
            <blockpin signalname="IR_WE" name="IR_EN" />
            <blockpin signalname="INC_PC" name="PC_EN" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="Dadr(4:0)" name="Dadr(4:0)" />
            <blockpin signalname="AO_MUXSEL" name="MUX_Select" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="DRAM_OUT(31:0)" name="D(31:0)" />
            <blockpin signalname="AEQZ" name="AEQZ" />
            <blockpin signalname="PC(15:0)" name="PC(15:0)" />
            <blockpin signalname="AO(31:0)" name="AO(31:0)" />
            <blockpin signalname="A_OUT(31:0)" name="A_OUT(31:0)" />
            <blockpin signalname="B_OUT(31:0)" name="B_OUT(31:0)" />
            <blockpin signalname="opcode(5:0)" name="opcode(5:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <wire x2="352" y1="96" y2="96" x1="304" />
        </branch>
        <branch name="RESET">
            <wire x2="352" y1="144" y2="144" x1="304" />
        </branch>
        <branch name="STEP_EN">
            <wire x2="352" y1="208" y2="208" x1="304" />
        </branch>
        <branch name="ACK_N">
            <wire x2="352" y1="256" y2="256" x1="304" />
        </branch>
        <branch name="Din(31:0)">
            <wire x2="352" y1="336" y2="336" x1="304" />
        </branch>
        <branch name="Dadr(4:0)">
            <wire x2="352" y1="384" y2="384" x1="304" />
        </branch>
        <iomarker fontsize="28" x="304" y="96" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="304" y="144" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="304" y="208" name="STEP_EN" orien="R180" />
        <iomarker fontsize="28" x="304" y="256" name="ACK_N" orien="R180" />
        <iomarker fontsize="28" x="304" y="336" name="Din(31:0)" orien="R180" />
        <iomarker fontsize="28" x="304" y="384" name="Dadr(4:0)" orien="R180" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="256" type="branch" />
            <wire x2="624" y1="256" y2="256" x1="608" />
        </branch>
        <branch name="Din(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="320" type="branch" />
            <wire x2="624" y1="320" y2="320" x1="608" />
        </branch>
        <branch name="A_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="384" type="branch" />
            <wire x2="624" y1="384" y2="384" x1="608" />
        </branch>
        <branch name="B_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="448" type="branch" />
            <wire x2="624" y1="448" y2="448" x1="608" />
        </branch>
        <branch name="C_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="512" type="branch" />
            <wire x2="624" y1="512" y2="512" x1="608" />
        </branch>
        <branch name="IR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="576" type="branch" />
            <wire x2="624" y1="576" y2="576" x1="608" />
        </branch>
        <branch name="INC_PC">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="640" type="branch" />
            <wire x2="624" y1="640" y2="640" x1="608" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="704" type="branch" />
            <wire x2="624" y1="704" y2="704" x1="608" />
        </branch>
        <branch name="Dadr(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="768" type="branch" />
            <wire x2="624" y1="768" y2="768" x1="608" />
        </branch>
        <branch name="AO_MUXSEL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="832" type="branch" />
            <wire x2="624" y1="832" y2="832" x1="608" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="896" type="branch" />
            <wire x2="624" y1="896" y2="896" x1="608" />
        </branch>
        <branch name="DRAM_OUT(31:0)">
            <wire x2="1040" y1="256" y2="256" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="256" name="DRAM_OUT(31:0)" orien="R0" />
        <instance x="1504" y="1200" name="XLXI_1" orien="R0">
        </instance>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="144" type="branch" />
            <wire x2="1504" y1="144" y2="144" x1="1488" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="400" type="branch" />
            <wire x2="1504" y1="400" y2="400" x1="1488" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="656" type="branch" />
            <wire x2="1504" y1="656" y2="656" x1="1488" />
        </branch>
        <branch name="opcode(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="912" type="branch" />
            <wire x2="1488" y1="912" y2="912" x1="1456" />
            <wire x2="1504" y1="912" y2="912" x1="1488" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1168" type="branch" />
            <wire x2="1504" y1="1168" y2="1168" x1="1488" />
        </branch>
        <branch name="AS_N">
            <wire x2="1984" y1="976" y2="976" x1="1952" />
        </branch>
        <branch name="IR_WE">
            <wire x2="1984" y1="144" y2="144" x1="1952" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="1984" y1="208" y2="208" x1="1952" />
        </branch>
        <branch name="AO_MUXSEL">
            <wire x2="1984" y1="272" y2="272" x1="1952" />
        </branch>
        <branch name="A_WE">
            <wire x2="1984" y1="336" y2="336" x1="1952" />
        </branch>
        <branch name="B_WE">
            <wire x2="1984" y1="400" y2="400" x1="1952" />
        </branch>
        <branch name="C_WE">
            <wire x2="1984" y1="464" y2="464" x1="1952" />
        </branch>
        <branch name="IN_INIT">
            <wire x2="1984" y1="528" y2="528" x1="1952" />
        </branch>
        <branch name="INC_PC">
            <wire x2="1984" y1="592" y2="592" x1="1952" />
        </branch>
        <branch name="MR">
            <wire x2="1984" y1="720" y2="720" x1="1952" />
        </branch>
        <branch name="MW">
            <wire x2="1984" y1="784" y2="784" x1="1952" />
        </branch>
        <branch name="BUSY">
            <wire x2="1984" y1="912" y2="912" x1="1952" />
        </branch>
        <branch name="MAC_STATE(1:0)">
            <wire x2="1984" y1="1168" y2="1168" x1="1952" />
        </branch>
        <branch name="DLX_STATE(2:0)">
            <wire x2="1984" y1="848" y2="848" x1="1952" />
        </branch>
        <branch name="WR_N">
            <wire x2="1984" y1="1040" y2="1040" x1="1952" />
        </branch>
        <branch name="REQ">
            <wire x2="1984" y1="656" y2="656" x1="1952" />
        </branch>
        <branch name="STOP_N">
            <wire x2="1984" y1="1104" y2="1104" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="1984" y="976" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="1984" y="144" name="IR_WE" orien="R0" />
        <iomarker fontsize="28" x="1984" y="208" name="GPR_WE" orien="R0" />
        <iomarker fontsize="28" x="1984" y="272" name="AO_MUXSEL" orien="R0" />
        <iomarker fontsize="28" x="1984" y="400" name="B_WE" orien="R0" />
        <iomarker fontsize="28" x="1984" y="464" name="C_WE" orien="R0" />
        <iomarker fontsize="28" x="1984" y="528" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="1984" y="592" name="INC_PC" orien="R0" />
        <iomarker fontsize="28" x="1984" y="720" name="MR" orien="R0" />
        <iomarker fontsize="28" x="1984" y="784" name="MW" orien="R0" />
        <iomarker fontsize="28" x="1984" y="912" name="BUSY" orien="R0" />
        <iomarker fontsize="28" x="1984" y="1168" name="MAC_STATE(1:0)" orien="R0" />
        <iomarker fontsize="28" x="1984" y="848" name="DLX_STATE(2:0)" orien="R0" />
        <iomarker fontsize="28" x="1984" y="1040" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="1984" y="656" name="REQ" orien="R0" />
        <iomarker fontsize="28" x="1984" y="336" name="A_WE" orien="R0" />
        <iomarker fontsize="28" x="1984" y="1104" name="STOP_N" orien="R0" />
        <instance x="624" y="928" name="XLXI_2" orien="R0">
        </instance>
        <branch name="AEQZ">
            <wire x2="1040" y1="352" y2="352" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="352" name="AEQZ" orien="R0" />
        <branch name="PC(15:0)">
            <wire x2="1040" y1="448" y2="448" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="448" name="PC(15:0)" orien="R0" />
        <branch name="AO(31:0)">
            <wire x2="1040" y1="544" y2="544" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="544" name="AO(31:0)" orien="R0" />
        <branch name="A_OUT(31:0)">
            <wire x2="1040" y1="640" y2="640" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="640" name="A_OUT(31:0)" orien="R0" />
        <branch name="B_OUT(31:0)">
            <wire x2="1040" y1="736" y2="736" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="736" name="B_OUT(31:0)" orien="R0" />
        <branch name="opcode(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="832" type="branch" />
            <wire x2="1056" y1="832" y2="832" x1="1008" />
        </branch>
    </sheet>
</drawing>