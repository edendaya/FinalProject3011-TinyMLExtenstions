<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Jlink" />
        <signal name="Itype" />
        <signal name="GPR_WE" />
        <signal name="test" />
        <signal name="add" />
        <signal name="right" />
        <signal name="shift" />
        <signal name="Asel" />
        <signal name="MDRsel" />
        <signal name="MDRce" />
        <signal name="MARce" />
        <signal name="Cce" />
        <signal name="Bce" />
        <signal name="Ace" />
        <signal name="PCce" />
        <signal name="IRce" />
        <signal name="S1sel(1:0)" />
        <signal name="ALUf(2:0)" />
        <signal name="S2sel(1:0)" />
        <signal name="CLK" />
        <signal name="RST" />
        <signal name="AEQZ" />
        <signal name="ack_n" />
        <signal name="STEP_EN" />
        <signal name="IR_OUT(31:26)" />
        <signal name="IR_OUT(5:0)" />
        <signal name="MW" />
        <signal name="MR" />
        <signal name="as_N" />
        <signal name="wr_N" />
        <signal name="STOP_N" />
        <signal name="MAC_State(1:0)" />
        <signal name="busy" />
        <signal name="IN_INIT" />
        <signal name="STATE(4:0)" />
        <signal name="DINTsel(1:0)" />
        <signal name="MAC_EN" />
        <signal name="MAC_RST" />
        <signal name="mul_mac" />
        <signal name="D(31:0)" />
        <signal name="MMU_AO(31:0)" />
        <signal name="DO(31:0)" />
        <signal name="IR_OUT(31:0)" />
        <signal name="PC(31:0)" />
        <signal name="Daddr(4:0)" />
        <signal name="DI(31:0)" />
        <port polarity="Output" name="Jlink" />
        <port polarity="Output" name="Itype" />
        <port polarity="Output" name="GPR_WE" />
        <port polarity="Output" name="test" />
        <port polarity="Output" name="add" />
        <port polarity="Output" name="right" />
        <port polarity="Output" name="shift" />
        <port polarity="Output" name="Asel" />
        <port polarity="Output" name="MDRsel" />
        <port polarity="Output" name="MDRce" />
        <port polarity="Output" name="MARce" />
        <port polarity="Output" name="Cce" />
        <port polarity="Output" name="Bce" />
        <port polarity="Output" name="Ace" />
        <port polarity="Output" name="PCce" />
        <port polarity="Output" name="IRce" />
        <port polarity="Output" name="S1sel(1:0)" />
        <port polarity="Output" name="ALUf(2:0)" />
        <port polarity="Output" name="S2sel(1:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RST" />
        <port polarity="Output" name="AEQZ" />
        <port polarity="Input" name="ack_n" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Output" name="MW" />
        <port polarity="Output" name="MR" />
        <port polarity="Output" name="as_N" />
        <port polarity="Output" name="wr_N" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Output" name="MAC_State(1:0)" />
        <port polarity="Output" name="busy" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="STATE(4:0)" />
        <port polarity="Output" name="DINTsel(1:0)" />
        <port polarity="Output" name="MAC_EN" />
        <port polarity="Output" name="MAC_RST" />
        <port polarity="Output" name="mul_mac" />
        <port polarity="Output" name="D(31:0)" />
        <port polarity="Output" name="MMU_AO(31:0)" />
        <port polarity="Output" name="DO(31:0)" />
        <port polarity="Output" name="IR_OUT(31:0)" />
        <port polarity="Output" name="PC(31:0)" />
        <port polarity="Input" name="Daddr(4:0)" />
        <port polarity="Input" name="DI(31:0)" />
        <blockdef name="control">
            <timestamp>2025-3-10T11:5:42</timestamp>
            <rect width="352" x="64" y="-2112" height="2112" />
            <line x2="0" y1="-2080" y2="-2080" x1="64" />
            <line x2="0" y1="-1744" y2="-1744" x1="64" />
            <line x2="0" y1="-1408" y2="-1408" x1="64" />
            <line x2="0" y1="-1072" y2="-1072" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-412" height="24" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="480" y1="-2080" y2="-2080" x1="416" />
            <line x2="480" y1="-2016" y2="-2016" x1="416" />
            <line x2="480" y1="-1952" y2="-1952" x1="416" />
            <line x2="480" y1="-1888" y2="-1888" x1="416" />
            <line x2="480" y1="-1824" y2="-1824" x1="416" />
            <rect width="64" x="416" y="-1772" height="24" />
            <line x2="480" y1="-1760" y2="-1760" x1="416" />
            <line x2="480" y1="-1696" y2="-1696" x1="416" />
            <line x2="480" y1="-1632" y2="-1632" x1="416" />
            <line x2="480" y1="-1568" y2="-1568" x1="416" />
            <line x2="480" y1="-1504" y2="-1504" x1="416" />
            <line x2="480" y1="-1440" y2="-1440" x1="416" />
            <line x2="480" y1="-1376" y2="-1376" x1="416" />
            <line x2="480" y1="-1312" y2="-1312" x1="416" />
            <line x2="480" y1="-1248" y2="-1248" x1="416" />
            <line x2="480" y1="-1184" y2="-1184" x1="416" />
            <line x2="480" y1="-1120" y2="-1120" x1="416" />
            <line x2="480" y1="-1056" y2="-1056" x1="416" />
            <line x2="480" y1="-992" y2="-992" x1="416" />
            <line x2="480" y1="-928" y2="-928" x1="416" />
            <line x2="480" y1="-864" y2="-864" x1="416" />
            <line x2="480" y1="-800" y2="-800" x1="416" />
            <line x2="480" y1="-736" y2="-736" x1="416" />
            <line x2="480" y1="-672" y2="-672" x1="416" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <rect width="64" x="416" y="-492" height="24" />
            <line x2="480" y1="-480" y2="-480" x1="416" />
            <rect width="64" x="416" y="-428" height="24" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <rect width="64" x="416" y="-364" height="24" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <rect width="64" x="416" y="-300" height="24" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="datapath_DLX">
            <timestamp>2025-3-11T14:28:17</timestamp>
            <rect width="304" x="64" y="-1728" height="1728" />
            <line x2="0" y1="-1696" y2="-1696" x1="64" />
            <rect width="64" x="0" y="-1644" height="24" />
            <line x2="0" y1="-1632" y2="-1632" x1="64" />
            <rect width="64" x="0" y="-1580" height="24" />
            <line x2="0" y1="-1568" y2="-1568" x1="64" />
            <rect width="64" x="0" y="-1516" height="24" />
            <line x2="0" y1="-1504" y2="-1504" x1="64" />
            <line x2="0" y1="-1440" y2="-1440" x1="64" />
            <line x2="0" y1="-1376" y2="-1376" x1="64" />
            <line x2="0" y1="-1312" y2="-1312" x1="64" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <line x2="0" y1="-1184" y2="-1184" x1="64" />
            <line x2="0" y1="-1120" y2="-1120" x1="64" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-1708" height="24" />
            <line x2="432" y1="-1696" y2="-1696" x1="368" />
            <line x2="432" y1="-1376" y2="-1376" x1="368" />
            <rect width="64" x="368" y="-1068" height="24" />
            <line x2="432" y1="-1056" y2="-1056" x1="368" />
            <rect width="64" x="368" y="-748" height="24" />
            <line x2="432" y1="-736" y2="-736" x1="368" />
            <rect width="64" x="368" y="-428" height="24" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
        </blockdef>
        <block symbolname="control" name="XLXI_1">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RST" name="RESET" />
            <blockpin signalname="ack_n" name="ack_n" />
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="AEQZ" name="AEQZ" />
            <blockpin signalname="IR_OUT(31:26)" name="opcode(5:0)" />
            <blockpin signalname="IR_OUT(5:0)" name="R_type_func(5:0)" />
            <blockpin signalname="MR" name="MR" />
            <blockpin signalname="MW" name="MW" />
            <blockpin signalname="as_N" name="as_N" />
            <blockpin signalname="wr_N" name="wr_N" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin signalname="MAC_State(1:0)" name="MAC_state(1:0)" />
            <blockpin name="busy_m" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="IRce" name="IRce" />
            <blockpin signalname="PCce" name="PCce" />
            <blockpin signalname="Ace" name="Ace" />
            <blockpin signalname="Bce" name="Bce" />
            <blockpin signalname="Cce" name="Cce" />
            <blockpin signalname="MARce" name="MARce" />
            <blockpin signalname="MDRce" name="MDR" />
            <blockpin signalname="MDRsel" name="MDRsel" />
            <blockpin signalname="Asel" name="Asel" />
            <blockpin signalname="shift" name="shift" />
            <blockpin signalname="right" name="right" />
            <blockpin signalname="add" name="add" />
            <blockpin signalname="test" name="test" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="Itype" name="Itype" />
            <blockpin signalname="Jlink" name="Jlink" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="STATE(4:0)" name="STATE(4:0)" />
            <blockpin signalname="ALUf(2:0)" name="ALUf(2:0)" />
            <blockpin signalname="S1sel(1:0)" name="S1sel(1:0)" />
            <blockpin signalname="S2sel(1:0)" name="S2sel(1:0)" />
            <blockpin signalname="DINTsel(1:0)" name="DINTsel(1:0)" />
            <blockpin signalname="MAC_EN" name="MAC_EN" />
            <blockpin signalname="MAC_RST" name="MAC_RST" />
            <blockpin signalname="mul_mac" name="mul_mac" />
        </block>
        <block symbolname="datapath_DLX" name="XLXI_2">
            <blockpin signalname="Ace" name="Ace" />
            <blockpin signalname="ALUf(2:0)" name="ALUf(2:0)" />
            <blockpin signalname="S2sel(1:0)" name="S2sel(1:0)" />
            <blockpin signalname="S1sel(1:0)" name="S1sel(1:0)" />
            <blockpin signalname="Jlink" name="jlink" />
            <blockpin signalname="add" name="add" />
            <blockpin signalname="test" name="test" />
            <blockpin signalname="Itype" name="Itype" />
            <blockpin signalname="right" name="right" />
            <blockpin signalname="shift" name="shift" />
            <blockpin signalname="Asel" name="Asel" />
            <blockpin signalname="MDRsel" name="MDRsel" />
            <blockpin signalname="MARce" name="MARce" />
            <blockpin signalname="IRce" name="IRce" />
            <blockpin signalname="MDRce" name="MDRce" />
            <blockpin signalname="PCce" name="PCce" />
            <blockpin signalname="GPR_WE" name="GPR_WE" />
            <blockpin signalname="Cce" name="Cce" />
            <blockpin signalname="Bce" name="Bce" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="Daddr(4:0)" name="Daddr(4:0)" />
            <blockpin signalname="DI(31:0)" name="DI(31:0)" />
            <blockpin signalname="MAC_RST" name="MAC_RST" />
            <blockpin signalname="MAC_EN" name="MAC_EN" />
            <blockpin signalname="mul_mac" name="mul_mac" />
            <blockpin signalname="DINTsel(1:0)" name="DINTsel(1:0)" />
            <blockpin signalname="D(31:0)" name="D(31:0)" />
            <blockpin signalname="AEQZ" name="AQEZ" />
            <blockpin signalname="MMU_AO(31:0)" name="MMU_AO(31:0)" />
            <blockpin signalname="DO(31:0)" name="DO(31:0)" />
            <blockpin signalname="IR_OUT(31:0)" name="IR_OUT(31:0)" />
            <blockpin signalname="PC(31:0)" name="PC(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2208" y="2272" name="XLXI_1" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="2192" y1="192" y2="192" x1="2176" />
            <wire x2="2208" y1="192" y2="192" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2176" y="192" name="CLK" orien="R180" />
        <branch name="RST">
            <wire x2="2208" y1="528" y2="528" x1="2176" />
        </branch>
        <iomarker fontsize="28" x="2176" y="528" name="RST" orien="R180" />
        <branch name="ack_n">
            <wire x2="2208" y1="864" y2="864" x1="2176" />
        </branch>
        <iomarker fontsize="28" x="2176" y="864" name="ack_n" orien="R180" />
        <branch name="STEP_EN">
            <wire x2="2208" y1="1200" y2="1200" x1="2176" />
        </branch>
        <iomarker fontsize="28" x="2176" y="1200" name="STEP_EN" orien="R180" />
        <branch name="AEQZ">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1536" type="branch" />
            <wire x2="2208" y1="1536" y2="1536" x1="2192" />
        </branch>
        <branch name="IR_OUT(31:26)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1872" type="branch" />
            <wire x2="2208" y1="1872" y2="1872" x1="2192" />
        </branch>
        <branch name="IR_OUT(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="2208" type="branch" />
            <wire x2="2208" y1="2208" y2="2208" x1="2192" />
        </branch>
        <branch name="MW">
            <wire x2="2704" y1="256" y2="256" x1="2688" />
            <wire x2="2720" y1="256" y2="256" x1="2704" />
        </branch>
        <branch name="MR">
            <wire x2="2704" y1="192" y2="192" x1="2688" />
            <wire x2="2720" y1="192" y2="192" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2720" y="256" name="MW" orien="R0" />
        <iomarker fontsize="28" x="2720" y="192" name="MR" orien="R0" />
        <branch name="as_N">
            <wire x2="2704" y1="320" y2="320" x1="2688" />
            <wire x2="2720" y1="320" y2="320" x1="2704" />
        </branch>
        <branch name="wr_N">
            <wire x2="2704" y1="384" y2="384" x1="2688" />
            <wire x2="2720" y1="384" y2="384" x1="2704" />
        </branch>
        <branch name="STOP_N">
            <wire x2="2704" y1="448" y2="448" x1="2688" />
            <wire x2="2720" y1="448" y2="448" x1="2704" />
        </branch>
        <branch name="MAC_State(1:0)">
            <wire x2="2704" y1="512" y2="512" x1="2688" />
            <wire x2="2720" y1="512" y2="512" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2720" y="320" name="as_N" orien="R0" />
        <iomarker fontsize="28" x="2720" y="384" name="wr_N" orien="R0" />
        <iomarker fontsize="28" x="2720" y="448" name="STOP_N" orien="R0" />
        <iomarker fontsize="28" x="2720" y="512" name="MAC_State(1:0)" orien="R0" />
        <branch name="busy">
            <wire x2="2704" y1="640" y2="640" x1="2688" />
            <wire x2="2720" y1="640" y2="640" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2720" y="640" name="busy" orien="R0" />
        <branch name="MDRce">
            <wire x2="2704" y1="1088" y2="1088" x1="2688" />
            <wire x2="2720" y1="1088" y2="1088" x1="2704" />
        </branch>
        <branch name="MARce">
            <wire x2="2704" y1="1024" y2="1024" x1="2688" />
            <wire x2="2720" y1="1024" y2="1024" x1="2704" />
        </branch>
        <branch name="Cce">
            <wire x2="2704" y1="960" y2="960" x1="2688" />
            <wire x2="2720" y1="960" y2="960" x1="2704" />
        </branch>
        <branch name="Bce">
            <wire x2="2704" y1="896" y2="896" x1="2688" />
            <wire x2="2720" y1="896" y2="896" x1="2704" />
        </branch>
        <branch name="Ace">
            <wire x2="2704" y1="832" y2="832" x1="2688" />
            <wire x2="2720" y1="832" y2="832" x1="2704" />
        </branch>
        <branch name="PCce">
            <wire x2="2704" y1="768" y2="768" x1="2688" />
            <wire x2="2720" y1="768" y2="768" x1="2704" />
        </branch>
        <branch name="IRce">
            <wire x2="2704" y1="704" y2="704" x1="2688" />
            <wire x2="2720" y1="704" y2="704" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1088" name="MDRce" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1024" name="MARce" orien="R0" />
        <iomarker fontsize="28" x="2720" y="960" name="Cce" orien="R0" />
        <iomarker fontsize="28" x="2720" y="896" name="Bce" orien="R0" />
        <iomarker fontsize="28" x="2720" y="832" name="Ace" orien="R0" />
        <iomarker fontsize="28" x="2720" y="768" name="PCce" orien="R0" />
        <iomarker fontsize="28" x="2720" y="704" name="IRce" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1216" name="Asel" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1280" name="shift" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1344" name="right" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1408" name="add" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1472" name="test" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1536" name="GPR_WE" orien="R0" />
        <branch name="Asel">
            <wire x2="2704" y1="1216" y2="1216" x1="2688" />
            <wire x2="2720" y1="1216" y2="1216" x1="2704" />
        </branch>
        <branch name="shift">
            <wire x2="2704" y1="1280" y2="1280" x1="2688" />
            <wire x2="2720" y1="1280" y2="1280" x1="2704" />
        </branch>
        <branch name="right">
            <wire x2="2704" y1="1344" y2="1344" x1="2688" />
            <wire x2="2720" y1="1344" y2="1344" x1="2704" />
        </branch>
        <branch name="add">
            <wire x2="2704" y1="1408" y2="1408" x1="2688" />
            <wire x2="2720" y1="1408" y2="1408" x1="2704" />
        </branch>
        <branch name="test">
            <wire x2="2704" y1="1472" y2="1472" x1="2688" />
            <wire x2="2720" y1="1472" y2="1472" x1="2704" />
        </branch>
        <branch name="GPR_WE">
            <wire x2="2704" y1="1536" y2="1536" x1="2688" />
            <wire x2="2720" y1="1536" y2="1536" x1="2704" />
        </branch>
        <branch name="MDRsel">
            <wire x2="2720" y1="1152" y2="1152" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1152" name="MDRsel" orien="R0" />
        <branch name="IN_INIT">
            <wire x2="2704" y1="1728" y2="1728" x1="2688" />
            <wire x2="2720" y1="1728" y2="1728" x1="2704" />
        </branch>
        <branch name="Jlink">
            <wire x2="2704" y1="1664" y2="1664" x1="2688" />
            <wire x2="2720" y1="1664" y2="1664" x1="2704" />
        </branch>
        <branch name="Itype">
            <wire x2="2704" y1="1600" y2="1600" x1="2688" />
            <wire x2="2720" y1="1600" y2="1600" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1728" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1664" name="Jlink" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1600" name="Itype" orien="R0" />
        <branch name="S1sel(1:0)">
            <wire x2="2704" y1="1920" y2="1920" x1="2688" />
            <wire x2="2720" y1="1920" y2="1920" x1="2704" />
        </branch>
        <branch name="ALUf(2:0)">
            <wire x2="2704" y1="1856" y2="1856" x1="2688" />
            <wire x2="2720" y1="1856" y2="1856" x1="2704" />
        </branch>
        <branch name="STATE(4:0)">
            <wire x2="2704" y1="1792" y2="1792" x1="2688" />
            <wire x2="2720" y1="1792" y2="1792" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1920" name="S1sel(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1856" name="ALUf(2:0)" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1792" name="STATE(4:0)" orien="R0" />
        <branch name="S2sel(1:0)">
            <wire x2="2704" y1="1984" y2="1984" x1="2688" />
            <wire x2="2720" y1="1984" y2="1984" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1984" name="S2sel(1:0)" orien="R0" />
        <branch name="DINTsel(1:0)">
            <wire x2="2720" y1="2048" y2="2048" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2720" y="2048" name="DINTsel(1:0)" orien="R0" />
        <branch name="MAC_EN">
            <wire x2="2720" y1="2112" y2="2112" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2720" y="2112" name="MAC_EN" orien="R0" />
        <branch name="MAC_RST">
            <wire x2="2720" y1="2176" y2="2176" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2720" y="2176" name="MAC_RST" orien="R0" />
        <branch name="mul_mac">
            <wire x2="2720" y1="2240" y2="2240" x1="2688" />
        </branch>
        <iomarker fontsize="28" x="2720" y="2240" name="mul_mac" orien="R0" />
        <branch name="D(31:0)">
            <wire x2="1056" y1="400" y2="400" x1="1040" />
            <wire x2="1072" y1="400" y2="400" x1="1056" />
        </branch>
        <branch name="AEQZ">
            <wire x2="1072" y1="720" y2="720" x1="1040" />
        </branch>
        <branch name="MMU_AO(31:0)">
            <wire x2="1072" y1="1040" y2="1040" x1="1040" />
        </branch>
        <branch name="DO(31:0)">
            <wire x2="1072" y1="1360" y2="1360" x1="1040" />
        </branch>
        <branch name="IR_OUT(31:0)">
            <wire x2="1072" y1="1680" y2="1680" x1="1040" />
        </branch>
        <branch name="PC(31:0)">
            <wire x2="1072" y1="2000" y2="2000" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1072" y="400" name="D(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1072" y="720" name="AEQZ" orien="R0" />
        <iomarker fontsize="28" x="1072" y="1040" name="MMU_AO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1072" y="1360" name="DO(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1072" y="1680" name="IR_OUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1072" y="2000" name="PC(31:0)" orien="R0" />
        <branch name="Ace">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="400" type="branch" />
            <wire x2="608" y1="400" y2="400" x1="576" />
        </branch>
        <branch name="ALUf(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="464" type="branch" />
            <wire x2="608" y1="464" y2="464" x1="576" />
        </branch>
        <branch name="S2sel(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="528" type="branch" />
            <wire x2="608" y1="528" y2="528" x1="576" />
        </branch>
        <branch name="S1sel(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="592" type="branch" />
            <wire x2="608" y1="592" y2="592" x1="576" />
        </branch>
        <branch name="Jlink">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="656" type="branch" />
            <wire x2="608" y1="656" y2="656" x1="576" />
        </branch>
        <branch name="add">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="720" type="branch" />
            <wire x2="592" y1="720" y2="720" x1="576" />
            <wire x2="608" y1="720" y2="720" x1="592" />
        </branch>
        <branch name="test">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="784" type="branch" />
            <wire x2="608" y1="784" y2="784" x1="576" />
        </branch>
        <branch name="Itype">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="848" type="branch" />
            <wire x2="608" y1="848" y2="848" x1="576" />
        </branch>
        <branch name="right">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="912" type="branch" />
            <wire x2="608" y1="912" y2="912" x1="576" />
        </branch>
        <branch name="shift">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="976" type="branch" />
            <wire x2="608" y1="976" y2="976" x1="576" />
        </branch>
        <branch name="Asel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1040" type="branch" />
            <wire x2="608" y1="1040" y2="1040" x1="560" />
        </branch>
        <branch name="MDRsel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1104" type="branch" />
            <wire x2="608" y1="1104" y2="1104" x1="576" />
        </branch>
        <branch name="MARce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1168" type="branch" />
            <wire x2="608" y1="1168" y2="1168" x1="576" />
        </branch>
        <branch name="IRce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1232" type="branch" />
            <wire x2="608" y1="1232" y2="1232" x1="576" />
        </branch>
        <branch name="MDRce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1296" type="branch" />
            <wire x2="608" y1="1296" y2="1296" x1="576" />
        </branch>
        <branch name="PCce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1360" type="branch" />
            <wire x2="608" y1="1360" y2="1360" x1="576" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1424" type="branch" />
            <wire x2="608" y1="1424" y2="1424" x1="576" />
        </branch>
        <branch name="Cce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1488" type="branch" />
            <wire x2="608" y1="1488" y2="1488" x1="576" />
        </branch>
        <branch name="Bce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="1552" type="branch" />
            <wire x2="608" y1="1552" y2="1552" x1="576" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1616" type="branch" />
            <wire x2="608" y1="1616" y2="1616" x1="560" />
        </branch>
        <branch name="RST">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1680" type="branch" />
            <wire x2="608" y1="1680" y2="1680" x1="560" />
        </branch>
        <branch name="Daddr(4:0)">
            <wire x2="608" y1="1744" y2="1744" x1="560" />
        </branch>
        <branch name="DI(31:0)">
            <wire x2="608" y1="1808" y2="1808" x1="576" />
        </branch>
        <branch name="DINTsel(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="2064" type="branch" />
            <wire x2="608" y1="2064" y2="2064" x1="576" />
        </branch>
        <branch name="MAC_RST">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="1872" type="branch" />
            <wire x2="608" y1="1872" y2="1872" x1="592" />
        </branch>
        <branch name="MAC_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="1936" type="branch" />
            <wire x2="608" y1="1936" y2="1936" x1="592" />
        </branch>
        <branch name="mul_mac">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="2000" type="branch" />
            <wire x2="608" y1="2000" y2="2000" x1="592" />
        </branch>
        <iomarker fontsize="28" x="560" y="1744" name="Daddr(4:0)" orien="R180" />
        <iomarker fontsize="28" x="576" y="1808" name="DI(31:0)" orien="R180" />
        <instance x="608" y="2096" name="XLXI_2" orien="R0">
        </instance>
    </sheet>
</drawing>