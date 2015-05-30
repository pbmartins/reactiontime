-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "05/28/2015 17:51:23"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RandomGeneratorDemo IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END RandomGeneratorDemo;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RandomGeneratorDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(5 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rnd_generator|fsm|PS.C~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rnd_generator|fsm|PS.B~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \rnd_generator|fsm|PS~10_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|PS.A~q\ : std_logic;
SIGNAL \rnd_generator|fsm|PS~8_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|PS.B~clkctrl_outclk\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[29]~86_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[59]~26_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[30]~87_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[40]~96_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[25]~76_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[17]~59_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[17]~60_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[17]~61_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[24]~7_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[45]~73_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[24]~74_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[53]~30_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[52]~119_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[53]~29_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[53]~31_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[31]~82_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[20]~72_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[14]~23_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[25]~52_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[25]~77_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[25]~78_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[63]~88_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[35]~95_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[38]~100_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[38]~99_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[38]~101_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[57]~70_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[57]~123_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[57]~63_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[57]~124_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[27]~75_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[62]~129_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[62]~130_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[15]~5_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[37]~97_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[37]~98_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[15]~32_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[59]~22_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[55]~24_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[55]~25_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[0]~2_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[44]~39_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[0]~3_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[0]~4_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~2_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~3_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~0_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~1_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~4_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~7_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~6_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~5_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~8_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~9_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~14_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~10_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~11_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~12_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~13_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~16_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~18_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~17_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~15_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~19_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~20_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|state~0_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[10]~45_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[10]~46_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[10]~47_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[9]~48_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[60]~50_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[10]~49_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[9]~51_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[58]~79_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[26]~80_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[26]~81_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[61]~110_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[22]~57_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[39]~58_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[48]~114_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[48]~113_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[60]~127_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[60]~128_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[23]~18_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[23]~19_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[47]~111_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[36]~20_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[47]~112_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[50]~40_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[50]~115_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[50]~117_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[46]~107_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[28]~83_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[28]~84_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[33]~44_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[33]~90_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[33]~91_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[45]~108_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[45]~109_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[41]~105_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[40]~103_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[40]~104_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[18]~66_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[18]~68_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[43]~67_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[43]~106_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[11]~17_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[63]~85_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[63]~131_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[13]~54_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[13]~55_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[13]~56_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[21]~69_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[21]~71_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[5]~15_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[5]~14_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[5]~16_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[1]~6_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[3]~11_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[12]~10_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[3]~12_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[6]~41_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[6]~42_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[2]~8_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[2]~9_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[51]~118_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[7]~43_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[54]~120_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[22]~34_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[22]~33_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[22]~35_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[19]~64_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[56]~62_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[19]~65_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[49]~116_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[59]~27_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[59]~28_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[39]~102_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[12]~53_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[42]~37_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[42]~36_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[42]~38_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[34]~92_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[34]~93_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[34]~94_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[36]~21_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[58]~125_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[58]~126_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[56]~121_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[56]~122_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[32]~89_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[4]~13_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|main_proc~0_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|main_proc~1_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|PS~9_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|PS.B~q\ : std_logic;
SIGNAL \rnd_generator|fsm|PS~7_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|PS.C~feeder_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|PS.C~q\ : std_logic;
SIGNAL \rnd_generator|fsm|PS~6_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|PS.D~q\ : std_logic;
SIGNAL \rnd_generator|fsm|PS.C~clkctrl_outclk\ : std_logic;
SIGNAL \rnd_generator|fsm|validOut~combout\ : std_logic;
SIGNAL \rnd_generator|fsm|Selector6~0_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|Selector7~0_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|Selector8~0_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|Selector9~0_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|Selector10~0_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|Selector11~0_combout\ : std_logic;
SIGNAL \rnd_generator|fsm|s_dataIn\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \rnd_generator|fsm|dataOut\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \rnd_generator|rnd_gen|next_state\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \rnd_generator|rnd_gen|state\ : std_logic_vector(63 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\rnd_generator|fsm|PS.C~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rnd_generator|fsm|PS.C~q\);

\rnd_generator|fsm|PS.B~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rnd_generator|fsm|PS.B~q\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rnd_generator|fsm|validOut~combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rnd_generator|fsm|dataOut\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rnd_generator|fsm|dataOut\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rnd_generator|fsm|dataOut\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rnd_generator|fsm|dataOut\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rnd_generator|fsm|dataOut\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rnd_generator|fsm|dataOut\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X108_Y43_N28
\rnd_generator|fsm|PS~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|PS~10_combout\ = (!\KEY[1]~input_o\ & ((\KEY[0]~input_o\) # (\rnd_generator|fsm|PS.A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \rnd_generator|fsm|PS.A~q\,
	combout => \rnd_generator|fsm|PS~10_combout\);

-- Location: FF_X108_Y43_N29
\rnd_generator|fsm|PS.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|fsm|PS~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|fsm|PS.A~q\);

-- Location: LCCOMB_X108_Y43_N14
\rnd_generator|fsm|PS~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|PS~8_combout\ = (!\KEY[1]~input_o\ & (\KEY[0]~input_o\ & !\rnd_generator|fsm|PS.A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \rnd_generator|fsm|PS.A~q\,
	combout => \rnd_generator|fsm|PS~8_combout\);

-- Location: CLKCTRL_G6
\rnd_generator|fsm|PS.B~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rnd_generator|fsm|PS.B~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rnd_generator|fsm|PS.B~clkctrl_outclk\);

-- Location: LCCOMB_X101_Y43_N2
\rnd_generator|rnd_gen|next_state[29]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[29]~86_combout\ = \rnd_generator|rnd_gen|state\(3) $ (\rnd_generator|rnd_gen|state\(6) $ (\rnd_generator|rnd_gen|state\(58) $ (\rnd_generator|rnd_gen|state\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(3),
	datab => \rnd_generator|rnd_gen|state\(6),
	datac => \rnd_generator|rnd_gen|state\(58),
	datad => \rnd_generator|rnd_gen|state\(63),
	combout => \rnd_generator|rnd_gen|next_state[29]~86_combout\);

-- Location: LCCOMB_X100_Y43_N28
\rnd_generator|rnd_gen|next_state[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(29) = \rnd_generator|rnd_gen|next_state[63]~85_combout\ $ (\rnd_generator|rnd_gen|next_state[29]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|next_state[63]~85_combout\,
	datad => \rnd_generator|rnd_gen|next_state[29]~86_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(29));

-- Location: FF_X100_Y43_N29
\rnd_generator|rnd_gen|state[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(29));

-- Location: LCCOMB_X101_Y44_N12
\rnd_generator|rnd_gen|next_state[59]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[59]~26_combout\ = \rnd_generator|rnd_gen|state\(11) $ (\rnd_generator|rnd_gen|state\(4) $ (\rnd_generator|rnd_gen|state\(45) $ (!\rnd_generator|rnd_gen|state\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(11),
	datab => \rnd_generator|rnd_gen|state\(4),
	datac => \rnd_generator|rnd_gen|state\(45),
	datad => \rnd_generator|rnd_gen|state\(63),
	combout => \rnd_generator|rnd_gen|next_state[59]~26_combout\);

-- Location: LCCOMB_X101_Y45_N14
\rnd_generator|rnd_gen|next_state[30]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[30]~87_combout\ = \rnd_generator|rnd_gen|state\(56) $ (\rnd_generator|rnd_gen|state\(47) $ (\rnd_generator|rnd_gen|state\(40) $ (\rnd_generator|rnd_gen|state\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(56),
	datab => \rnd_generator|rnd_gen|state\(47),
	datac => \rnd_generator|rnd_gen|state\(40),
	datad => \rnd_generator|rnd_gen|state\(45),
	combout => \rnd_generator|rnd_gen|next_state[30]~87_combout\);

-- Location: LCCOMB_X101_Y43_N16
\rnd_generator|rnd_gen|next_state[40]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[40]~96_combout\ = \rnd_generator|rnd_gen|state\(32) $ (\rnd_generator|rnd_gen|state\(37) $ (\rnd_generator|rnd_gen|state\(13) $ (!\rnd_generator|rnd_gen|state\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(32),
	datab => \rnd_generator|rnd_gen|state\(37),
	datac => \rnd_generator|rnd_gen|state\(13),
	datad => \rnd_generator|rnd_gen|state\(34),
	combout => \rnd_generator|rnd_gen|next_state[40]~96_combout\);

-- Location: LCCOMB_X101_Y44_N26
\rnd_generator|rnd_gen|next_state[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[25]~76_combout\ = \rnd_generator|rnd_gen|state\(38) $ (!\rnd_generator|rnd_gen|state\(36))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(38),
	datad => \rnd_generator|rnd_gen|state\(36),
	combout => \rnd_generator|rnd_gen|next_state[25]~76_combout\);

-- Location: LCCOMB_X98_Y43_N14
\rnd_generator|rnd_gen|next_state[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[17]~59_combout\ = \rnd_generator|rnd_gen|state\(41) $ (\rnd_generator|rnd_gen|state\(7) $ (\rnd_generator|rnd_gen|state\(0) $ (!\rnd_generator|rnd_gen|state\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(41),
	datab => \rnd_generator|rnd_gen|state\(7),
	datac => \rnd_generator|rnd_gen|state\(0),
	datad => \rnd_generator|rnd_gen|state\(49),
	combout => \rnd_generator|rnd_gen|next_state[17]~59_combout\);

-- Location: LCCOMB_X98_Y43_N24
\rnd_generator|rnd_gen|next_state[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[17]~60_combout\ = \rnd_generator|rnd_gen|state\(6) $ (\rnd_generator|rnd_gen|state\(1) $ (!\rnd_generator|rnd_gen|state\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(6),
	datac => \rnd_generator|rnd_gen|state\(1),
	datad => \rnd_generator|rnd_gen|state\(11),
	combout => \rnd_generator|rnd_gen|next_state[17]~60_combout\);

-- Location: LCCOMB_X98_Y43_N12
\rnd_generator|rnd_gen|next_state[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[17]~61_combout\ = \rnd_generator|rnd_gen|state\(22) $ (\rnd_generator|rnd_gen|state\(38) $ (\rnd_generator|rnd_gen|next_state[17]~59_combout\ $ (\rnd_generator|rnd_gen|next_state[17]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(22),
	datab => \rnd_generator|rnd_gen|state\(38),
	datac => \rnd_generator|rnd_gen|next_state[17]~59_combout\,
	datad => \rnd_generator|rnd_gen|next_state[17]~60_combout\,
	combout => \rnd_generator|rnd_gen|next_state[17]~61_combout\);

-- Location: FF_X98_Y43_N13
\rnd_generator|rnd_gen|state[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[17]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(17));

-- Location: LCCOMB_X101_Y43_N26
\rnd_generator|rnd_gen|next_state[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[24]~7_combout\ = \rnd_generator|rnd_gen|state\(53) $ (\rnd_generator|rnd_gen|state\(31) $ (\rnd_generator|rnd_gen|state\(5) $ (\rnd_generator|rnd_gen|state\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(53),
	datab => \rnd_generator|rnd_gen|state\(31),
	datac => \rnd_generator|rnd_gen|state\(5),
	datad => \rnd_generator|rnd_gen|state\(46),
	combout => \rnd_generator|rnd_gen|next_state[24]~7_combout\);

-- Location: LCCOMB_X102_Y43_N28
\rnd_generator|rnd_gen|next_state[45]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[45]~73_combout\ = \rnd_generator|rnd_gen|state\(30) $ (\rnd_generator|rnd_gen|state\(35) $ (\rnd_generator|rnd_gen|state\(12) $ (\rnd_generator|rnd_gen|state\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(30),
	datab => \rnd_generator|rnd_gen|state\(35),
	datac => \rnd_generator|rnd_gen|state\(12),
	datad => \rnd_generator|rnd_gen|state\(18),
	combout => \rnd_generator|rnd_gen|next_state[45]~73_combout\);

-- Location: LCCOMB_X101_Y43_N4
\rnd_generator|rnd_gen|next_state[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[24]~74_combout\ = \rnd_generator|rnd_gen|state\(60) $ (\rnd_generator|rnd_gen|state\(17) $ (\rnd_generator|rnd_gen|next_state[24]~7_combout\ $ (\rnd_generator|rnd_gen|next_state[45]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(60),
	datab => \rnd_generator|rnd_gen|state\(17),
	datac => \rnd_generator|rnd_gen|next_state[24]~7_combout\,
	datad => \rnd_generator|rnd_gen|next_state[45]~73_combout\,
	combout => \rnd_generator|rnd_gen|next_state[24]~74_combout\);

-- Location: FF_X101_Y43_N5
\rnd_generator|rnd_gen|state[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[24]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(24));

-- Location: LCCOMB_X100_Y45_N24
\rnd_generator|rnd_gen|next_state[53]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[53]~30_combout\ = \rnd_generator|rnd_gen|state\(16) $ (\rnd_generator|rnd_gen|state\(33) $ (\rnd_generator|rnd_gen|state\(24) $ (\rnd_generator|rnd_gen|state\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(16),
	datab => \rnd_generator|rnd_gen|state\(33),
	datac => \rnd_generator|rnd_gen|state\(24),
	datad => \rnd_generator|rnd_gen|state\(34),
	combout => \rnd_generator|rnd_gen|next_state[53]~30_combout\);

-- Location: LCCOMB_X98_Y44_N8
\rnd_generator|rnd_gen|next_state[52]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[52]~119_combout\ = \rnd_generator|rnd_gen|state\(56) $ (\rnd_generator|rnd_gen|state\(47) $ (\rnd_generator|rnd_gen|state\(14) $ (!\rnd_generator|rnd_gen|state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(56),
	datab => \rnd_generator|rnd_gen|state\(47),
	datac => \rnd_generator|rnd_gen|state\(14),
	datad => \rnd_generator|rnd_gen|state\(7),
	combout => \rnd_generator|rnd_gen|next_state[52]~119_combout\);

-- Location: LCCOMB_X98_Y43_N30
\rnd_generator|rnd_gen|next_state[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(52) = \rnd_generator|rnd_gen|state\(28) $ (\rnd_generator|rnd_gen|next_state[52]~119_combout\ $ (\rnd_generator|rnd_gen|next_state[47]~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(28),
	datac => \rnd_generator|rnd_gen|next_state[52]~119_combout\,
	datad => \rnd_generator|rnd_gen|next_state[47]~111_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(52));

-- Location: FF_X98_Y43_N31
\rnd_generator|rnd_gen|state[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(52));

-- Location: LCCOMB_X100_Y45_N10
\rnd_generator|rnd_gen|next_state[53]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[53]~29_combout\ = \rnd_generator|rnd_gen|state\(17) $ (\rnd_generator|rnd_gen|state\(43) $ (\rnd_generator|rnd_gen|state\(52) $ (\rnd_generator|rnd_gen|state\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(17),
	datab => \rnd_generator|rnd_gen|state\(43),
	datac => \rnd_generator|rnd_gen|state\(52),
	datad => \rnd_generator|rnd_gen|state\(5),
	combout => \rnd_generator|rnd_gen|next_state[53]~29_combout\);

-- Location: LCCOMB_X100_Y45_N8
\rnd_generator|rnd_gen|next_state[53]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[53]~31_combout\ = \rnd_generator|rnd_gen|state\(38) $ (\rnd_generator|rnd_gen|next_state[53]~30_combout\ $ (\rnd_generator|rnd_gen|state\(57) $ (\rnd_generator|rnd_gen|next_state[53]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(38),
	datab => \rnd_generator|rnd_gen|next_state[53]~30_combout\,
	datac => \rnd_generator|rnd_gen|state\(57),
	datad => \rnd_generator|rnd_gen|next_state[53]~29_combout\,
	combout => \rnd_generator|rnd_gen|next_state[53]~31_combout\);

-- Location: FF_X100_Y45_N9
\rnd_generator|rnd_gen|state[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[53]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(53));

-- Location: LCCOMB_X101_Y43_N28
\rnd_generator|rnd_gen|next_state[31]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[31]~82_combout\ = \rnd_generator|rnd_gen|state\(26) $ (\rnd_generator|rnd_gen|state\(0) $ (\rnd_generator|rnd_gen|state\(53) $ (!\rnd_generator|rnd_gen|state\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(26),
	datab => \rnd_generator|rnd_gen|state\(0),
	datac => \rnd_generator|rnd_gen|state\(53),
	datad => \rnd_generator|rnd_gen|state\(46),
	combout => \rnd_generator|rnd_gen|next_state[31]~82_combout\);

-- Location: LCCOMB_X101_Y43_N8
\rnd_generator|rnd_gen|next_state[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(31) = \rnd_generator|rnd_gen|state\(61) $ (\rnd_generator|rnd_gen|state\(35) $ (\rnd_generator|rnd_gen|state\(43) $ (!\rnd_generator|rnd_gen|next_state[31]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(61),
	datab => \rnd_generator|rnd_gen|state\(35),
	datac => \rnd_generator|rnd_gen|state\(43),
	datad => \rnd_generator|rnd_gen|next_state[31]~82_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(31));

-- Location: FF_X101_Y43_N9
\rnd_generator|rnd_gen|state[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(31));

-- Location: LCCOMB_X101_Y45_N16
\rnd_generator|rnd_gen|next_state[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[20]~72_combout\ = \rnd_generator|rnd_gen|state\(28) $ (\rnd_generator|rnd_gen|state\(13) $ (\rnd_generator|rnd_gen|state\(40) $ (\rnd_generator|rnd_gen|state\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(28),
	datab => \rnd_generator|rnd_gen|state\(13),
	datac => \rnd_generator|rnd_gen|state\(40),
	datad => \rnd_generator|rnd_gen|state\(33),
	combout => \rnd_generator|rnd_gen|next_state[20]~72_combout\);

-- Location: LCCOMB_X101_Y45_N12
\rnd_generator|rnd_gen|next_state[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(20) = \rnd_generator|rnd_gen|next_state[20]~72_combout\ $ (\rnd_generator|rnd_gen|state\(20) $ (\rnd_generator|rnd_gen|next_state[22]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|next_state[20]~72_combout\,
	datac => \rnd_generator|rnd_gen|state\(20),
	datad => \rnd_generator|rnd_gen|next_state[22]~57_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(20));

-- Location: FF_X101_Y45_N13
\rnd_generator|rnd_gen|state[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(20));

-- Location: LCCOMB_X102_Y44_N0
\rnd_generator|rnd_gen|next_state[14]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[14]~23_combout\ = \rnd_generator|rnd_gen|state\(20) $ (!\rnd_generator|rnd_gen|state\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|rnd_gen|state\(20),
	datad => \rnd_generator|rnd_gen|state\(14),
	combout => \rnd_generator|rnd_gen|next_state[14]~23_combout\);

-- Location: LCCOMB_X102_Y44_N16
\rnd_generator|rnd_gen|next_state[25]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[25]~52_combout\ = \rnd_generator|rnd_gen|state\(21) $ (\rnd_generator|rnd_gen|state\(60) $ (\rnd_generator|rnd_gen|state\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(21),
	datac => \rnd_generator|rnd_gen|state\(60),
	datad => \rnd_generator|rnd_gen|state\(42),
	combout => \rnd_generator|rnd_gen|next_state[25]~52_combout\);

-- Location: LCCOMB_X101_Y44_N24
\rnd_generator|rnd_gen|next_state[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(14) = \rnd_generator|rnd_gen|state\(39) $ (\rnd_generator|rnd_gen|state\(31) $ (\rnd_generator|rnd_gen|next_state[14]~23_combout\ $ (\rnd_generator|rnd_gen|next_state[25]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(39),
	datab => \rnd_generator|rnd_gen|state\(31),
	datac => \rnd_generator|rnd_gen|next_state[14]~23_combout\,
	datad => \rnd_generator|rnd_gen|next_state[25]~52_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(14));

-- Location: FF_X101_Y44_N25
\rnd_generator|rnd_gen|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(14));

-- Location: LCCOMB_X101_Y44_N8
\rnd_generator|rnd_gen|next_state[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[25]~77_combout\ = \rnd_generator|rnd_gen|state\(7) $ (\rnd_generator|rnd_gen|state\(14) $ (\rnd_generator|rnd_gen|state\(51) $ (!\rnd_generator|rnd_gen|state\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(7),
	datab => \rnd_generator|rnd_gen|state\(14),
	datac => \rnd_generator|rnd_gen|state\(51),
	datad => \rnd_generator|rnd_gen|state\(33),
	combout => \rnd_generator|rnd_gen|next_state[25]~77_combout\);

-- Location: LCCOMB_X101_Y44_N14
\rnd_generator|rnd_gen|next_state[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[25]~78_combout\ = \rnd_generator|rnd_gen|next_state[25]~76_combout\ $ (\rnd_generator|rnd_gen|state\(45) $ (\rnd_generator|rnd_gen|next_state[25]~77_combout\ $ (\rnd_generator|rnd_gen|next_state[25]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[25]~76_combout\,
	datab => \rnd_generator|rnd_gen|state\(45),
	datac => \rnd_generator|rnd_gen|next_state[25]~77_combout\,
	datad => \rnd_generator|rnd_gen|next_state[25]~52_combout\,
	combout => \rnd_generator|rnd_gen|next_state[25]~78_combout\);

-- Location: FF_X101_Y44_N15
\rnd_generator|rnd_gen|state[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[25]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(25));

-- Location: LCCOMB_X102_Y43_N2
\rnd_generator|rnd_gen|next_state[63]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[63]~88_combout\ = \rnd_generator|rnd_gen|state\(25) $ (!\rnd_generator|rnd_gen|state\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|rnd_gen|state\(25),
	datad => \rnd_generator|rnd_gen|state\(11),
	combout => \rnd_generator|rnd_gen|next_state[63]~88_combout\);

-- Location: LCCOMB_X102_Y43_N16
\rnd_generator|rnd_gen|next_state[35]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[35]~95_combout\ = \rnd_generator|rnd_gen|state\(16) $ (\rnd_generator|rnd_gen|state\(12) $ (\rnd_generator|rnd_gen|state\(63) $ (\rnd_generator|rnd_gen|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(16),
	datab => \rnd_generator|rnd_gen|state\(12),
	datac => \rnd_generator|rnd_gen|state\(63),
	datad => \rnd_generator|rnd_gen|state\(0),
	combout => \rnd_generator|rnd_gen|next_state[35]~95_combout\);

-- Location: LCCOMB_X102_Y43_N24
\rnd_generator|rnd_gen|next_state[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(35) = \rnd_generator|rnd_gen|state\(30) $ (\rnd_generator|rnd_gen|next_state[63]~88_combout\ $ (\rnd_generator|rnd_gen|state\(60) $ (\rnd_generator|rnd_gen|next_state[35]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(30),
	datab => \rnd_generator|rnd_gen|next_state[63]~88_combout\,
	datac => \rnd_generator|rnd_gen|state\(60),
	datad => \rnd_generator|rnd_gen|next_state[35]~95_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(35));

-- Location: FF_X102_Y43_N25
\rnd_generator|rnd_gen|state[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(35));

-- Location: LCCOMB_X98_Y43_N26
\rnd_generator|rnd_gen|next_state[38]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[38]~100_combout\ = \rnd_generator|rnd_gen|state\(19) $ (\rnd_generator|rnd_gen|state\(35) $ (\rnd_generator|rnd_gen|state\(29) $ (\rnd_generator|rnd_gen|state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(19),
	datab => \rnd_generator|rnd_gen|state\(35),
	datac => \rnd_generator|rnd_gen|state\(29),
	datad => \rnd_generator|rnd_gen|state\(7),
	combout => \rnd_generator|rnd_gen|next_state[38]~100_combout\);

-- Location: LCCOMB_X98_Y43_N0
\rnd_generator|rnd_gen|next_state[38]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[38]~99_combout\ = \rnd_generator|rnd_gen|state\(52) $ (\rnd_generator|rnd_gen|state\(17) $ (\rnd_generator|rnd_gen|state\(23) $ (\rnd_generator|rnd_gen|state\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(52),
	datab => \rnd_generator|rnd_gen|state\(17),
	datac => \rnd_generator|rnd_gen|state\(23),
	datad => \rnd_generator|rnd_gen|state\(61),
	combout => \rnd_generator|rnd_gen|next_state[38]~99_combout\);

-- Location: LCCOMB_X98_Y43_N2
\rnd_generator|rnd_gen|next_state[38]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[38]~101_combout\ = \rnd_generator|rnd_gen|next_state[38]~100_combout\ $ (\rnd_generator|rnd_gen|state\(41) $ (!\rnd_generator|rnd_gen|next_state[38]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[38]~100_combout\,
	datac => \rnd_generator|rnd_gen|state\(41),
	datad => \rnd_generator|rnd_gen|next_state[38]~99_combout\,
	combout => \rnd_generator|rnd_gen|next_state[38]~101_combout\);

-- Location: FF_X98_Y43_N3
\rnd_generator|rnd_gen|state[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[38]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(38));

-- Location: LCCOMB_X99_Y43_N16
\rnd_generator|rnd_gen|next_state[57]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[57]~70_combout\ = \rnd_generator|rnd_gen|state\(52) $ (\rnd_generator|rnd_gen|state\(8) $ (\rnd_generator|rnd_gen|state\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(52),
	datac => \rnd_generator|rnd_gen|state\(8),
	datad => \rnd_generator|rnd_gen|state\(53),
	combout => \rnd_generator|rnd_gen|next_state[57]~70_combout\);

-- Location: LCCOMB_X98_Y43_N22
\rnd_generator|rnd_gen|next_state[57]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[57]~123_combout\ = \rnd_generator|rnd_gen|state\(30) $ (\rnd_generator|rnd_gen|state\(51) $ (\rnd_generator|rnd_gen|state\(60) $ (\rnd_generator|rnd_gen|next_state[57]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(30),
	datab => \rnd_generator|rnd_gen|state\(51),
	datac => \rnd_generator|rnd_gen|state\(60),
	datad => \rnd_generator|rnd_gen|next_state[57]~70_combout\,
	combout => \rnd_generator|rnd_gen|next_state[57]~123_combout\);

-- Location: LCCOMB_X98_Y44_N30
\rnd_generator|rnd_gen|next_state[57]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[57]~63_combout\ = \rnd_generator|rnd_gen|state\(14) $ (\rnd_generator|rnd_gen|state\(47) $ (!\rnd_generator|rnd_gen|state\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(14),
	datab => \rnd_generator|rnd_gen|state\(47),
	datad => \rnd_generator|rnd_gen|state\(35),
	combout => \rnd_generator|rnd_gen|next_state[57]~63_combout\);

-- Location: LCCOMB_X98_Y43_N18
\rnd_generator|rnd_gen|next_state[57]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[57]~124_combout\ = \rnd_generator|rnd_gen|state\(38) $ (\rnd_generator|rnd_gen|next_state[57]~123_combout\ $ (!\rnd_generator|rnd_gen|next_state[57]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(38),
	datac => \rnd_generator|rnd_gen|next_state[57]~123_combout\,
	datad => \rnd_generator|rnd_gen|next_state[57]~63_combout\,
	combout => \rnd_generator|rnd_gen|next_state[57]~124_combout\);

-- Location: FF_X98_Y43_N19
\rnd_generator|rnd_gen|state[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[57]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(57));

-- Location: LCCOMB_X98_Y43_N6
\rnd_generator|rnd_gen|next_state[27]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[27]~75_combout\ = \rnd_generator|rnd_gen|state\(52) $ (\rnd_generator|rnd_gen|state\(17) $ (\rnd_generator|rnd_gen|state\(14) $ (!\rnd_generator|rnd_gen|state\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(52),
	datab => \rnd_generator|rnd_gen|state\(17),
	datac => \rnd_generator|rnd_gen|state\(14),
	datad => \rnd_generator|rnd_gen|state\(31),
	combout => \rnd_generator|rnd_gen|next_state[27]~75_combout\);

-- Location: LCCOMB_X98_Y43_N10
\rnd_generator|rnd_gen|next_state[62]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[62]~129_combout\ = \rnd_generator|rnd_gen|state\(48) $ (\rnd_generator|rnd_gen|state\(3) $ (\rnd_generator|rnd_gen|state\(29) $ (!\rnd_generator|rnd_gen|state\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(48),
	datab => \rnd_generator|rnd_gen|state\(3),
	datac => \rnd_generator|rnd_gen|state\(29),
	datad => \rnd_generator|rnd_gen|state\(34),
	combout => \rnd_generator|rnd_gen|next_state[62]~129_combout\);

-- Location: LCCOMB_X99_Y43_N24
\rnd_generator|rnd_gen|next_state[62]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[62]~130_combout\ = \rnd_generator|rnd_gen|state\(46) $ (\rnd_generator|rnd_gen|next_state[57]~70_combout\ $ (\rnd_generator|rnd_gen|state\(0) $ (\rnd_generator|rnd_gen|next_state[62]~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(46),
	datab => \rnd_generator|rnd_gen|next_state[57]~70_combout\,
	datac => \rnd_generator|rnd_gen|state\(0),
	datad => \rnd_generator|rnd_gen|next_state[62]~129_combout\,
	combout => \rnd_generator|rnd_gen|next_state[62]~130_combout\);

-- Location: FF_X99_Y43_N25
\rnd_generator|rnd_gen|state[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[62]~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(62));

-- Location: LCCOMB_X101_Y43_N12
\rnd_generator|rnd_gen|next_state[15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[15]~5_combout\ = \rnd_generator|rnd_gen|state\(62) $ (\rnd_generator|rnd_gen|state\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(62),
	datad => \rnd_generator|rnd_gen|state\(18),
	combout => \rnd_generator|rnd_gen|next_state[15]~5_combout\);

-- Location: LCCOMB_X101_Y43_N18
\rnd_generator|rnd_gen|next_state[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(27) = \rnd_generator|rnd_gen|state\(57) $ (\rnd_generator|rnd_gen|state\(9) $ (\rnd_generator|rnd_gen|next_state[27]~75_combout\ $ (!\rnd_generator|rnd_gen|next_state[15]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(57),
	datab => \rnd_generator|rnd_gen|state\(9),
	datac => \rnd_generator|rnd_gen|next_state[27]~75_combout\,
	datad => \rnd_generator|rnd_gen|next_state[15]~5_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(27));

-- Location: FF_X101_Y43_N19
\rnd_generator|rnd_gen|state[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(27));

-- Location: LCCOMB_X101_Y43_N30
\rnd_generator|rnd_gen|next_state[37]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[37]~97_combout\ = \rnd_generator|rnd_gen|state\(9) $ (\rnd_generator|rnd_gen|state\(27) $ (\rnd_generator|rnd_gen|state\(2) $ (\rnd_generator|rnd_gen|state\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(9),
	datab => \rnd_generator|rnd_gen|state\(27),
	datac => \rnd_generator|rnd_gen|state\(2),
	datad => \rnd_generator|rnd_gen|state\(57),
	combout => \rnd_generator|rnd_gen|next_state[37]~97_combout\);

-- Location: LCCOMB_X101_Y43_N24
\rnd_generator|rnd_gen|next_state[37]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[37]~98_combout\ = \rnd_generator|rnd_gen|next_state[40]~96_combout\ $ (\rnd_generator|rnd_gen|next_state[37]~97_combout\ $ (\rnd_generator|rnd_gen|state\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|next_state[40]~96_combout\,
	datac => \rnd_generator|rnd_gen|next_state[37]~97_combout\,
	datad => \rnd_generator|rnd_gen|state\(49),
	combout => \rnd_generator|rnd_gen|next_state[37]~98_combout\);

-- Location: FF_X101_Y43_N25
\rnd_generator|rnd_gen|state[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[37]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(37));

-- Location: LCCOMB_X100_Y45_N30
\rnd_generator|rnd_gen|next_state[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[15]~32_combout\ = \rnd_generator|rnd_gen|state\(18) $ (\rnd_generator|rnd_gen|state\(62) $ (\rnd_generator|rnd_gen|state\(33) $ (!\rnd_generator|rnd_gen|state\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(18),
	datab => \rnd_generator|rnd_gen|state\(62),
	datac => \rnd_generator|rnd_gen|state\(33),
	datad => \rnd_generator|rnd_gen|state\(51),
	combout => \rnd_generator|rnd_gen|next_state[15]~32_combout\);

-- Location: LCCOMB_X100_Y44_N12
\rnd_generator|rnd_gen|next_state[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(15) = \rnd_generator|rnd_gen|next_state[15]~32_combout\ $ (\rnd_generator|rnd_gen|state\(34) $ (\rnd_generator|rnd_gen|state\(15) $ (\rnd_generator|rnd_gen|state\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[15]~32_combout\,
	datab => \rnd_generator|rnd_gen|state\(34),
	datac => \rnd_generator|rnd_gen|state\(15),
	datad => \rnd_generator|rnd_gen|state\(40),
	combout => \rnd_generator|rnd_gen|next_state\(15));

-- Location: FF_X100_Y44_N13
\rnd_generator|rnd_gen|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(15));

-- Location: LCCOMB_X100_Y44_N20
\rnd_generator|rnd_gen|next_state[59]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[59]~22_combout\ = \rnd_generator|rnd_gen|state\(36) $ (!\rnd_generator|rnd_gen|state\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|rnd_gen|state\(36),
	datad => \rnd_generator|rnd_gen|state\(10),
	combout => \rnd_generator|rnd_gen|next_state[59]~22_combout\);

-- Location: LCCOMB_X102_Y44_N22
\rnd_generator|rnd_gen|next_state[55]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[55]~24_combout\ = \rnd_generator|rnd_gen|state\(34) $ (\rnd_generator|rnd_gen|state\(55) $ (\rnd_generator|rnd_gen|state\(21) $ (\rnd_generator|rnd_gen|next_state[14]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(34),
	datab => \rnd_generator|rnd_gen|state\(55),
	datac => \rnd_generator|rnd_gen|state\(21),
	datad => \rnd_generator|rnd_gen|next_state[14]~23_combout\,
	combout => \rnd_generator|rnd_gen|next_state[55]~24_combout\);

-- Location: LCCOMB_X99_Y44_N12
\rnd_generator|rnd_gen|next_state[55]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[55]~25_combout\ = \rnd_generator|rnd_gen|state\(37) $ (\rnd_generator|rnd_gen|state\(15) $ (\rnd_generator|rnd_gen|next_state[59]~22_combout\ $ (\rnd_generator|rnd_gen|next_state[55]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(37),
	datab => \rnd_generator|rnd_gen|state\(15),
	datac => \rnd_generator|rnd_gen|next_state[59]~22_combout\,
	datad => \rnd_generator|rnd_gen|next_state[55]~24_combout\,
	combout => \rnd_generator|rnd_gen|next_state[55]~25_combout\);

-- Location: FF_X99_Y44_N13
\rnd_generator|rnd_gen|state[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[55]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(55));

-- Location: LCCOMB_X99_Y44_N24
\rnd_generator|rnd_gen|next_state[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[0]~2_combout\ = \rnd_generator|rnd_gen|state\(55) $ (\rnd_generator|rnd_gen|state\(59) $ (\rnd_generator|rnd_gen|state\(36) $ (!\rnd_generator|rnd_gen|state\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(55),
	datab => \rnd_generator|rnd_gen|state\(59),
	datac => \rnd_generator|rnd_gen|state\(36),
	datad => \rnd_generator|rnd_gen|state\(23),
	combout => \rnd_generator|rnd_gen|next_state[0]~2_combout\);

-- Location: LCCOMB_X99_Y44_N20
\rnd_generator|rnd_gen|next_state[44]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[44]~39_combout\ = \rnd_generator|rnd_gen|state\(7) $ (\rnd_generator|rnd_gen|state\(0) $ (\rnd_generator|rnd_gen|state\(18) $ (\rnd_generator|rnd_gen|state\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(7),
	datab => \rnd_generator|rnd_gen|state\(0),
	datac => \rnd_generator|rnd_gen|state\(18),
	datad => \rnd_generator|rnd_gen|state\(62),
	combout => \rnd_generator|rnd_gen|next_state[44]~39_combout\);

-- Location: LCCOMB_X99_Y44_N22
\rnd_generator|rnd_gen|next_state[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(44) = \rnd_generator|rnd_gen|state\(61) $ (\rnd_generator|rnd_gen|next_state[44]~39_combout\ $ (\rnd_generator|rnd_gen|state\(50) $ (!\rnd_generator|rnd_gen|state\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(61),
	datab => \rnd_generator|rnd_gen|next_state[44]~39_combout\,
	datac => \rnd_generator|rnd_gen|state\(50),
	datad => \rnd_generator|rnd_gen|state\(17),
	combout => \rnd_generator|rnd_gen|next_state\(44));

-- Location: FF_X99_Y44_N23
\rnd_generator|rnd_gen|state[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(44));

-- Location: LCCOMB_X99_Y44_N4
\rnd_generator|rnd_gen|next_state[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[0]~3_combout\ = \rnd_generator|rnd_gen|state\(44) $ (\rnd_generator|rnd_gen|state\(22) $ (\rnd_generator|rnd_gen|state\(15) $ (\rnd_generator|rnd_gen|state\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(44),
	datab => \rnd_generator|rnd_gen|state\(22),
	datac => \rnd_generator|rnd_gen|state\(15),
	datad => \rnd_generator|rnd_gen|state\(42),
	combout => \rnd_generator|rnd_gen|next_state[0]~3_combout\);

-- Location: LCCOMB_X99_Y44_N30
\rnd_generator|rnd_gen|next_state[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[0]~4_combout\ = \rnd_generator|rnd_gen|next_state[0]~2_combout\ $ (\rnd_generator|rnd_gen|next_state[0]~3_combout\ $ (!\rnd_generator|rnd_gen|state\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|next_state[0]~2_combout\,
	datac => \rnd_generator|rnd_gen|next_state[0]~3_combout\,
	datad => \rnd_generator|rnd_gen|state\(53),
	combout => \rnd_generator|rnd_gen|next_state[0]~4_combout\);

-- Location: LCCOMB_X100_Y44_N6
\rnd_generator|rnd_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~2_combout\ = (\rnd_generator|rnd_gen|state\(8) & (\rnd_generator|rnd_gen|state\(10) & (\rnd_generator|rnd_gen|state\(11) & !\rnd_generator|rnd_gen|state\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(8),
	datab => \rnd_generator|rnd_gen|state\(10),
	datac => \rnd_generator|rnd_gen|state\(11),
	datad => \rnd_generator|rnd_gen|state\(9),
	combout => \rnd_generator|rnd_gen|Equal0~2_combout\);

-- Location: LCCOMB_X100_Y44_N8
\rnd_generator|rnd_gen|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~3_combout\ = (\rnd_generator|rnd_gen|state\(15) & (!\rnd_generator|rnd_gen|state\(12) & (!\rnd_generator|rnd_gen|state\(13) & \rnd_generator|rnd_gen|state\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(15),
	datab => \rnd_generator|rnd_gen|state\(12),
	datac => \rnd_generator|rnd_gen|state\(13),
	datad => \rnd_generator|rnd_gen|state\(14),
	combout => \rnd_generator|rnd_gen|Equal0~3_combout\);

-- Location: LCCOMB_X100_Y44_N26
\rnd_generator|rnd_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~0_combout\ = (\rnd_generator|rnd_gen|state\(3) & (\rnd_generator|rnd_gen|state\(2) & (\rnd_generator|rnd_gen|state\(0) & \rnd_generator|rnd_gen|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(3),
	datab => \rnd_generator|rnd_gen|state\(2),
	datac => \rnd_generator|rnd_gen|state\(0),
	datad => \rnd_generator|rnd_gen|state\(1),
	combout => \rnd_generator|rnd_gen|Equal0~0_combout\);

-- Location: LCCOMB_X100_Y44_N16
\rnd_generator|rnd_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~1_combout\ = (!\rnd_generator|rnd_gen|state\(4) & (\rnd_generator|rnd_gen|state\(7) & (\rnd_generator|rnd_gen|state\(6) & \rnd_generator|rnd_gen|state\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(4),
	datab => \rnd_generator|rnd_gen|state\(7),
	datac => \rnd_generator|rnd_gen|state\(6),
	datad => \rnd_generator|rnd_gen|state\(5),
	combout => \rnd_generator|rnd_gen|Equal0~1_combout\);

-- Location: LCCOMB_X100_Y44_N14
\rnd_generator|rnd_gen|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~4_combout\ = (\rnd_generator|rnd_gen|Equal0~2_combout\ & (\rnd_generator|rnd_gen|Equal0~3_combout\ & (\rnd_generator|rnd_gen|Equal0~0_combout\ & \rnd_generator|rnd_gen|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|Equal0~2_combout\,
	datab => \rnd_generator|rnd_gen|Equal0~3_combout\,
	datac => \rnd_generator|rnd_gen|Equal0~0_combout\,
	datad => \rnd_generator|rnd_gen|Equal0~1_combout\,
	combout => \rnd_generator|rnd_gen|Equal0~4_combout\);

-- Location: LCCOMB_X100_Y43_N22
\rnd_generator|rnd_gen|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~7_combout\ = (\rnd_generator|rnd_gen|state\(24) & (\rnd_generator|rnd_gen|state\(27) & (!\rnd_generator|rnd_gen|state\(26) & !\rnd_generator|rnd_gen|state\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(24),
	datab => \rnd_generator|rnd_gen|state\(27),
	datac => \rnd_generator|rnd_gen|state\(26),
	datad => \rnd_generator|rnd_gen|state\(25),
	combout => \rnd_generator|rnd_gen|Equal0~7_combout\);

-- Location: LCCOMB_X100_Y43_N2
\rnd_generator|rnd_gen|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~6_combout\ = (\rnd_generator|rnd_gen|state\(21) & (\rnd_generator|rnd_gen|state\(23) & (!\rnd_generator|rnd_gen|state\(20) & !\rnd_generator|rnd_gen|state\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(21),
	datab => \rnd_generator|rnd_gen|state\(23),
	datac => \rnd_generator|rnd_gen|state\(20),
	datad => \rnd_generator|rnd_gen|state\(22),
	combout => \rnd_generator|rnd_gen|Equal0~6_combout\);

-- Location: LCCOMB_X100_Y43_N4
\rnd_generator|rnd_gen|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~5_combout\ = (!\rnd_generator|rnd_gen|state\(18) & (\rnd_generator|rnd_gen|state\(16) & (\rnd_generator|rnd_gen|state\(19) & \rnd_generator|rnd_gen|state\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(18),
	datab => \rnd_generator|rnd_gen|state\(16),
	datac => \rnd_generator|rnd_gen|state\(19),
	datad => \rnd_generator|rnd_gen|state\(17),
	combout => \rnd_generator|rnd_gen|Equal0~5_combout\);

-- Location: LCCOMB_X100_Y43_N18
\rnd_generator|rnd_gen|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~8_combout\ = (!\rnd_generator|rnd_gen|state\(29) & (\rnd_generator|rnd_gen|state\(31) & (!\rnd_generator|rnd_gen|state\(28) & !\rnd_generator|rnd_gen|state\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(29),
	datab => \rnd_generator|rnd_gen|state\(31),
	datac => \rnd_generator|rnd_gen|state\(28),
	datad => \rnd_generator|rnd_gen|state\(30),
	combout => \rnd_generator|rnd_gen|Equal0~8_combout\);

-- Location: LCCOMB_X100_Y43_N12
\rnd_generator|rnd_gen|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~9_combout\ = (\rnd_generator|rnd_gen|Equal0~7_combout\ & (\rnd_generator|rnd_gen|Equal0~6_combout\ & (\rnd_generator|rnd_gen|Equal0~5_combout\ & \rnd_generator|rnd_gen|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|Equal0~7_combout\,
	datab => \rnd_generator|rnd_gen|Equal0~6_combout\,
	datac => \rnd_generator|rnd_gen|Equal0~5_combout\,
	datad => \rnd_generator|rnd_gen|Equal0~8_combout\,
	combout => \rnd_generator|rnd_gen|Equal0~9_combout\);

-- Location: LCCOMB_X98_Y43_N8
\rnd_generator|rnd_gen|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~14_combout\ = (\rnd_generator|rnd_gen|state\(46) & (!\rnd_generator|rnd_gen|state\(45) & (!\rnd_generator|rnd_gen|state\(44) & !\rnd_generator|rnd_gen|state\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(46),
	datab => \rnd_generator|rnd_gen|state\(45),
	datac => \rnd_generator|rnd_gen|state\(44),
	datad => \rnd_generator|rnd_gen|state\(47),
	combout => \rnd_generator|rnd_gen|Equal0~14_combout\);

-- Location: LCCOMB_X99_Y43_N4
\rnd_generator|rnd_gen|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~10_combout\ = (\rnd_generator|rnd_gen|state\(34) & !\rnd_generator|rnd_gen|state\(35))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|rnd_gen|state\(34),
	datad => \rnd_generator|rnd_gen|state\(35),
	combout => \rnd_generator|rnd_gen|Equal0~10_combout\);

-- Location: LCCOMB_X99_Y43_N10
\rnd_generator|rnd_gen|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~11_combout\ = (!\rnd_generator|rnd_gen|state\(36) & (\rnd_generator|rnd_gen|state\(38) & (\rnd_generator|rnd_gen|state\(37) & !\rnd_generator|rnd_gen|state\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(36),
	datab => \rnd_generator|rnd_gen|state\(38),
	datac => \rnd_generator|rnd_gen|state\(37),
	datad => \rnd_generator|rnd_gen|state\(39),
	combout => \rnd_generator|rnd_gen|Equal0~11_combout\);

-- Location: LCCOMB_X99_Y43_N0
\rnd_generator|rnd_gen|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~12_combout\ = (\rnd_generator|rnd_gen|state\(32) & (\rnd_generator|rnd_gen|state\(33) & (\rnd_generator|rnd_gen|Equal0~10_combout\ & \rnd_generator|rnd_gen|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(32),
	datab => \rnd_generator|rnd_gen|state\(33),
	datac => \rnd_generator|rnd_gen|Equal0~10_combout\,
	datad => \rnd_generator|rnd_gen|Equal0~11_combout\,
	combout => \rnd_generator|rnd_gen|Equal0~12_combout\);

-- Location: LCCOMB_X100_Y45_N6
\rnd_generator|rnd_gen|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~13_combout\ = (!\rnd_generator|rnd_gen|state\(41) & (\rnd_generator|rnd_gen|state\(40) & (\rnd_generator|rnd_gen|state\(42) & !\rnd_generator|rnd_gen|state\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(41),
	datab => \rnd_generator|rnd_gen|state\(40),
	datac => \rnd_generator|rnd_gen|state\(42),
	datad => \rnd_generator|rnd_gen|state\(43),
	combout => \rnd_generator|rnd_gen|Equal0~13_combout\);

-- Location: LCCOMB_X99_Y43_N26
\rnd_generator|rnd_gen|Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~16_combout\ = (!\rnd_generator|rnd_gen|state\(54) & (!\rnd_generator|rnd_gen|state\(52) & (!\rnd_generator|rnd_gen|state\(55) & \rnd_generator|rnd_gen|state\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(54),
	datab => \rnd_generator|rnd_gen|state\(52),
	datac => \rnd_generator|rnd_gen|state\(55),
	datad => \rnd_generator|rnd_gen|state\(53),
	combout => \rnd_generator|rnd_gen|Equal0~16_combout\);

-- Location: LCCOMB_X99_Y43_N2
\rnd_generator|rnd_gen|Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~18_combout\ = (!\rnd_generator|rnd_gen|state\(61) & (!\rnd_generator|rnd_gen|state\(62) & (!\rnd_generator|rnd_gen|state\(60) & !\rnd_generator|rnd_gen|state\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(61),
	datab => \rnd_generator|rnd_gen|state\(62),
	datac => \rnd_generator|rnd_gen|state\(60),
	datad => \rnd_generator|rnd_gen|state\(63),
	combout => \rnd_generator|rnd_gen|Equal0~18_combout\);

-- Location: LCCOMB_X99_Y43_N14
\rnd_generator|rnd_gen|Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~17_combout\ = (!\rnd_generator|rnd_gen|state\(58) & (!\rnd_generator|rnd_gen|state\(57) & (!\rnd_generator|rnd_gen|state\(59) & \rnd_generator|rnd_gen|state\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(58),
	datab => \rnd_generator|rnd_gen|state\(57),
	datac => \rnd_generator|rnd_gen|state\(59),
	datad => \rnd_generator|rnd_gen|state\(56),
	combout => \rnd_generator|rnd_gen|Equal0~17_combout\);

-- Location: LCCOMB_X100_Y43_N6
\rnd_generator|rnd_gen|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~15_combout\ = (\rnd_generator|rnd_gen|state\(48) & (!\rnd_generator|rnd_gen|state\(51) & (!\rnd_generator|rnd_gen|state\(50) & \rnd_generator|rnd_gen|state\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(48),
	datab => \rnd_generator|rnd_gen|state\(51),
	datac => \rnd_generator|rnd_gen|state\(50),
	datad => \rnd_generator|rnd_gen|state\(49),
	combout => \rnd_generator|rnd_gen|Equal0~15_combout\);

-- Location: LCCOMB_X99_Y43_N28
\rnd_generator|rnd_gen|Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~19_combout\ = (\rnd_generator|rnd_gen|Equal0~16_combout\ & (\rnd_generator|rnd_gen|Equal0~18_combout\ & (\rnd_generator|rnd_gen|Equal0~17_combout\ & \rnd_generator|rnd_gen|Equal0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|Equal0~16_combout\,
	datab => \rnd_generator|rnd_gen|Equal0~18_combout\,
	datac => \rnd_generator|rnd_gen|Equal0~17_combout\,
	datad => \rnd_generator|rnd_gen|Equal0~15_combout\,
	combout => \rnd_generator|rnd_gen|Equal0~19_combout\);

-- Location: LCCOMB_X99_Y43_N6
\rnd_generator|rnd_gen|Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~20_combout\ = (\rnd_generator|rnd_gen|Equal0~14_combout\ & (\rnd_generator|rnd_gen|Equal0~12_combout\ & (\rnd_generator|rnd_gen|Equal0~13_combout\ & \rnd_generator|rnd_gen|Equal0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|Equal0~14_combout\,
	datab => \rnd_generator|rnd_gen|Equal0~12_combout\,
	datac => \rnd_generator|rnd_gen|Equal0~13_combout\,
	datad => \rnd_generator|rnd_gen|Equal0~19_combout\,
	combout => \rnd_generator|rnd_gen|Equal0~20_combout\);

-- Location: LCCOMB_X99_Y43_N18
\rnd_generator|rnd_gen|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|state~0_combout\ = (!\rnd_generator|rnd_gen|next_state[0]~4_combout\ & (((!\rnd_generator|rnd_gen|Equal0~20_combout\) # (!\rnd_generator|rnd_gen|Equal0~9_combout\)) # (!\rnd_generator|rnd_gen|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[0]~4_combout\,
	datab => \rnd_generator|rnd_gen|Equal0~4_combout\,
	datac => \rnd_generator|rnd_gen|Equal0~9_combout\,
	datad => \rnd_generator|rnd_gen|Equal0~20_combout\,
	combout => \rnd_generator|rnd_gen|state~0_combout\);

-- Location: FF_X99_Y43_N19
\rnd_generator|rnd_gen|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(0));

-- Location: LCCOMB_X100_Y44_N4
\rnd_generator|rnd_gen|next_state[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[10]~45_combout\ = \rnd_generator|rnd_gen|state\(63) $ (\rnd_generator|rnd_gen|state\(7) $ (\rnd_generator|rnd_gen|state\(0) $ (\rnd_generator|rnd_gen|state\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(63),
	datab => \rnd_generator|rnd_gen|state\(7),
	datac => \rnd_generator|rnd_gen|state\(0),
	datad => \rnd_generator|rnd_gen|state\(47),
	combout => \rnd_generator|rnd_gen|next_state[10]~45_combout\);

-- Location: LCCOMB_X101_Y44_N4
\rnd_generator|rnd_gen|next_state[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[10]~46_combout\ = \rnd_generator|rnd_gen|state\(20) $ (\rnd_generator|rnd_gen|state\(23) $ (\rnd_generator|rnd_gen|state\(26) $ (\rnd_generator|rnd_gen|state\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(20),
	datab => \rnd_generator|rnd_gen|state\(23),
	datac => \rnd_generator|rnd_gen|state\(26),
	datad => \rnd_generator|rnd_gen|state\(31),
	combout => \rnd_generator|rnd_gen|next_state[10]~46_combout\);

-- Location: LCCOMB_X100_Y44_N28
\rnd_generator|rnd_gen|next_state[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[10]~47_combout\ = \rnd_generator|rnd_gen|next_state[10]~45_combout\ $ (\rnd_generator|rnd_gen|state\(57) $ (!\rnd_generator|rnd_gen|next_state[10]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|next_state[10]~45_combout\,
	datac => \rnd_generator|rnd_gen|state\(57),
	datad => \rnd_generator|rnd_gen|next_state[10]~46_combout\,
	combout => \rnd_generator|rnd_gen|next_state[10]~47_combout\);

-- Location: FF_X100_Y44_N29
\rnd_generator|rnd_gen|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[10]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(10));

-- Location: LCCOMB_X99_Y44_N6
\rnd_generator|rnd_gen|next_state[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[9]~48_combout\ = \rnd_generator|rnd_gen|state\(42) $ (\rnd_generator|rnd_gen|state\(10) $ (\rnd_generator|rnd_gen|state\(18) $ (!\rnd_generator|rnd_gen|state\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(42),
	datab => \rnd_generator|rnd_gen|state\(10),
	datac => \rnd_generator|rnd_gen|state\(18),
	datad => \rnd_generator|rnd_gen|state\(37),
	combout => \rnd_generator|rnd_gen|next_state[9]~48_combout\);

-- Location: LCCOMB_X100_Y43_N30
\rnd_generator|rnd_gen|next_state[60]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[60]~50_combout\ = \rnd_generator|rnd_gen|state\(29) $ (\rnd_generator|rnd_gen|state\(45) $ (\rnd_generator|rnd_gen|state\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(29),
	datac => \rnd_generator|rnd_gen|state\(45),
	datad => \rnd_generator|rnd_gen|state\(57),
	combout => \rnd_generator|rnd_gen|next_state[60]~50_combout\);

-- Location: LCCOMB_X101_Y44_N6
\rnd_generator|rnd_gen|next_state[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[10]~49_combout\ = \rnd_generator|rnd_gen|state\(47) $ (\rnd_generator|rnd_gen|state\(63))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(47),
	datad => \rnd_generator|rnd_gen|state\(63),
	combout => \rnd_generator|rnd_gen|next_state[10]~49_combout\);

-- Location: LCCOMB_X100_Y44_N0
\rnd_generator|rnd_gen|next_state[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[9]~51_combout\ = \rnd_generator|rnd_gen|state\(33) $ (\rnd_generator|rnd_gen|next_state[9]~48_combout\ $ (\rnd_generator|rnd_gen|next_state[60]~50_combout\ $ (!\rnd_generator|rnd_gen|next_state[10]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(33),
	datab => \rnd_generator|rnd_gen|next_state[9]~48_combout\,
	datac => \rnd_generator|rnd_gen|next_state[60]~50_combout\,
	datad => \rnd_generator|rnd_gen|next_state[10]~49_combout\,
	combout => \rnd_generator|rnd_gen|next_state[9]~51_combout\);

-- Location: FF_X100_Y44_N1
\rnd_generator|rnd_gen|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[9]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(9));

-- Location: LCCOMB_X101_Y43_N10
\rnd_generator|rnd_gen|next_state[58]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[58]~79_combout\ = \rnd_generator|rnd_gen|state\(60) $ (\rnd_generator|rnd_gen|state\(48) $ (\rnd_generator|rnd_gen|state\(9) $ (!\rnd_generator|rnd_gen|state\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(60),
	datab => \rnd_generator|rnd_gen|state\(48),
	datac => \rnd_generator|rnd_gen|state\(9),
	datad => \rnd_generator|rnd_gen|state\(41),
	combout => \rnd_generator|rnd_gen|next_state[58]~79_combout\);

-- Location: LCCOMB_X101_Y44_N10
\rnd_generator|rnd_gen|next_state[26]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[26]~80_combout\ = \rnd_generator|rnd_gen|state\(2) $ (\rnd_generator|rnd_gen|state\(25) $ (\rnd_generator|rnd_gen|state\(4) $ (\rnd_generator|rnd_gen|state\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(2),
	datab => \rnd_generator|rnd_gen|state\(25),
	datac => \rnd_generator|rnd_gen|state\(4),
	datad => \rnd_generator|rnd_gen|state\(10),
	combout => \rnd_generator|rnd_gen|next_state[26]~80_combout\);

-- Location: LCCOMB_X100_Y43_N8
\rnd_generator|rnd_gen|next_state[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[26]~81_combout\ = \rnd_generator|rnd_gen|state\(51) $ (\rnd_generator|rnd_gen|next_state[58]~79_combout\ $ (\rnd_generator|rnd_gen|next_state[26]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(51),
	datac => \rnd_generator|rnd_gen|next_state[58]~79_combout\,
	datad => \rnd_generator|rnd_gen|next_state[26]~80_combout\,
	combout => \rnd_generator|rnd_gen|next_state[26]~81_combout\);

-- Location: FF_X100_Y43_N9
\rnd_generator|rnd_gen|state[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[26]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(26));

-- Location: LCCOMB_X99_Y43_N22
\rnd_generator|rnd_gen|next_state[61]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[61]~110_combout\ = \rnd_generator|rnd_gen|state\(26) $ (!\rnd_generator|rnd_gen|state\(53))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|rnd_gen|state\(26),
	datad => \rnd_generator|rnd_gen|state\(53),
	combout => \rnd_generator|rnd_gen|next_state[61]~110_combout\);

-- Location: LCCOMB_X98_Y43_N16
\rnd_generator|rnd_gen|next_state[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(61) = \rnd_generator|rnd_gen|state\(42) $ (\rnd_generator|rnd_gen|next_state[61]~110_combout\ $ (\rnd_generator|rnd_gen|state\(52) $ (!\rnd_generator|rnd_gen|next_state[17]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(42),
	datab => \rnd_generator|rnd_gen|next_state[61]~110_combout\,
	datac => \rnd_generator|rnd_gen|state\(52),
	datad => \rnd_generator|rnd_gen|next_state[17]~60_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(61));

-- Location: FF_X98_Y43_N17
\rnd_generator|rnd_gen|state[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(61));

-- Location: LCCOMB_X101_Y45_N2
\rnd_generator|rnd_gen|next_state[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(30) = \rnd_generator|rnd_gen|state\(2) $ (\rnd_generator|rnd_gen|next_state[30]~87_combout\ $ (\rnd_generator|rnd_gen|state\(4) $ (!\rnd_generator|rnd_gen|state\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(2),
	datab => \rnd_generator|rnd_gen|next_state[30]~87_combout\,
	datac => \rnd_generator|rnd_gen|state\(4),
	datad => \rnd_generator|rnd_gen|state\(61),
	combout => \rnd_generator|rnd_gen|next_state\(30));

-- Location: FF_X101_Y45_N3
\rnd_generator|rnd_gen|state[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(30));

-- Location: LCCOMB_X101_Y45_N24
\rnd_generator|rnd_gen|next_state[22]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[22]~57_combout\ = \rnd_generator|rnd_gen|state\(19) $ (\rnd_generator|rnd_gen|state\(30) $ (\rnd_generator|rnd_gen|state\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(19),
	datab => \rnd_generator|rnd_gen|state\(30),
	datac => \rnd_generator|rnd_gen|state\(49),
	combout => \rnd_generator|rnd_gen|next_state[22]~57_combout\);

-- Location: LCCOMB_X100_Y45_N2
\rnd_generator|rnd_gen|next_state[39]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[39]~58_combout\ = \rnd_generator|rnd_gen|state\(8) $ (\rnd_generator|rnd_gen|state\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(8),
	datad => \rnd_generator|rnd_gen|state\(23),
	combout => \rnd_generator|rnd_gen|next_state[39]~58_combout\);

-- Location: LCCOMB_X100_Y45_N18
\rnd_generator|rnd_gen|next_state[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(16) = \rnd_generator|rnd_gen|state\(2) $ (\rnd_generator|rnd_gen|state\(43) $ (\rnd_generator|rnd_gen|next_state[22]~57_combout\ $ (\rnd_generator|rnd_gen|next_state[39]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(2),
	datab => \rnd_generator|rnd_gen|state\(43),
	datac => \rnd_generator|rnd_gen|next_state[22]~57_combout\,
	datad => \rnd_generator|rnd_gen|next_state[39]~58_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(16));

-- Location: FF_X100_Y45_N19
\rnd_generator|rnd_gen|state[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(16));

-- Location: LCCOMB_X100_Y43_N26
\rnd_generator|rnd_gen|next_state[48]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[48]~114_combout\ = \rnd_generator|rnd_gen|state\(42) $ (\rnd_generator|rnd_gen|state\(16) $ (\rnd_generator|rnd_gen|state\(45) $ (\rnd_generator|rnd_gen|state\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(42),
	datab => \rnd_generator|rnd_gen|state\(16),
	datac => \rnd_generator|rnd_gen|state\(45),
	datad => \rnd_generator|rnd_gen|state\(62),
	combout => \rnd_generator|rnd_gen|next_state[48]~114_combout\);

-- Location: LCCOMB_X100_Y43_N24
\rnd_generator|rnd_gen|next_state[48]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[48]~113_combout\ = \rnd_generator|rnd_gen|state\(59) $ (\rnd_generator|rnd_gen|state\(37) $ (\rnd_generator|rnd_gen|state\(54) $ (!\rnd_generator|rnd_gen|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(59),
	datab => \rnd_generator|rnd_gen|state\(37),
	datac => \rnd_generator|rnd_gen|state\(54),
	datad => \rnd_generator|rnd_gen|state\(4),
	combout => \rnd_generator|rnd_gen|next_state[48]~113_combout\);

-- Location: LCCOMB_X100_Y43_N10
\rnd_generator|rnd_gen|next_state[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(48) = \rnd_generator|rnd_gen|next_state[48]~114_combout\ $ (!\rnd_generator|rnd_gen|next_state[48]~113_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|rnd_gen|next_state[48]~114_combout\,
	datad => \rnd_generator|rnd_gen|next_state[48]~113_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(48));

-- Location: FF_X100_Y43_N11
\rnd_generator|rnd_gen|state[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(48));

-- Location: LCCOMB_X101_Y43_N6
\rnd_generator|rnd_gen|next_state[60]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[60]~127_combout\ = \rnd_generator|rnd_gen|state\(32) $ (\rnd_generator|rnd_gen|state\(20) $ (\rnd_generator|rnd_gen|state\(30) $ (!\rnd_generator|rnd_gen|state\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(32),
	datab => \rnd_generator|rnd_gen|state\(20),
	datac => \rnd_generator|rnd_gen|state\(30),
	datad => \rnd_generator|rnd_gen|state\(22),
	combout => \rnd_generator|rnd_gen|next_state[60]~127_combout\);

-- Location: LCCOMB_X100_Y43_N0
\rnd_generator|rnd_gen|next_state[60]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[60]~128_combout\ = \rnd_generator|rnd_gen|state\(48) $ (\rnd_generator|rnd_gen|state\(5) $ (\rnd_generator|rnd_gen|next_state[60]~50_combout\ $ (\rnd_generator|rnd_gen|next_state[60]~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(48),
	datab => \rnd_generator|rnd_gen|state\(5),
	datac => \rnd_generator|rnd_gen|next_state[60]~50_combout\,
	datad => \rnd_generator|rnd_gen|next_state[60]~127_combout\,
	combout => \rnd_generator|rnd_gen|next_state[60]~128_combout\);

-- Location: FF_X100_Y43_N1
\rnd_generator|rnd_gen|state[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[60]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(60));

-- Location: LCCOMB_X98_Y44_N16
\rnd_generator|rnd_gen|next_state[23]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[23]~18_combout\ = \rnd_generator|rnd_gen|state\(6) $ (\rnd_generator|rnd_gen|state\(55) $ (\rnd_generator|rnd_gen|state\(54) $ (\rnd_generator|rnd_gen|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(6),
	datab => \rnd_generator|rnd_gen|state\(55),
	datac => \rnd_generator|rnd_gen|state\(54),
	datad => \rnd_generator|rnd_gen|state\(0),
	combout => \rnd_generator|rnd_gen|next_state[23]~18_combout\);

-- Location: LCCOMB_X99_Y44_N28
\rnd_generator|rnd_gen|next_state[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[23]~19_combout\ = \rnd_generator|rnd_gen|state\(60) $ (\rnd_generator|rnd_gen|next_state[23]~18_combout\ $ (!\rnd_generator|rnd_gen|next_state[11]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(60),
	datac => \rnd_generator|rnd_gen|next_state[23]~18_combout\,
	datad => \rnd_generator|rnd_gen|next_state[11]~17_combout\,
	combout => \rnd_generator|rnd_gen|next_state[23]~19_combout\);

-- Location: FF_X99_Y44_N29
\rnd_generator|rnd_gen|state[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[23]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(23));

-- Location: LCCOMB_X99_Y44_N2
\rnd_generator|rnd_gen|next_state[47]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[47]~111_combout\ = \rnd_generator|rnd_gen|state\(23) $ (\rnd_generator|rnd_gen|state\(38) $ (\rnd_generator|rnd_gen|state\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(23),
	datac => \rnd_generator|rnd_gen|state\(38),
	datad => \rnd_generator|rnd_gen|state\(61),
	combout => \rnd_generator|rnd_gen|next_state[47]~111_combout\);

-- Location: LCCOMB_X98_Y44_N14
\rnd_generator|rnd_gen|next_state[36]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[36]~20_combout\ = \rnd_generator|rnd_gen|state\(58) $ (\rnd_generator|rnd_gen|state\(54) $ (!\rnd_generator|rnd_gen|state\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(58),
	datac => \rnd_generator|rnd_gen|state\(54),
	datad => \rnd_generator|rnd_gen|state\(40),
	combout => \rnd_generator|rnd_gen|next_state[36]~20_combout\);

-- Location: LCCOMB_X98_Y44_N28
\rnd_generator|rnd_gen|next_state[47]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[47]~112_combout\ = \rnd_generator|rnd_gen|next_state[47]~111_combout\ $ (\rnd_generator|rnd_gen|next_state[36]~20_combout\ $ (\rnd_generator|rnd_gen|next_state[61]~110_combout\ $ (!\rnd_generator|rnd_gen|state\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[47]~111_combout\,
	datab => \rnd_generator|rnd_gen|next_state[36]~20_combout\,
	datac => \rnd_generator|rnd_gen|next_state[61]~110_combout\,
	datad => \rnd_generator|rnd_gen|state\(49),
	combout => \rnd_generator|rnd_gen|next_state[47]~112_combout\);

-- Location: FF_X98_Y44_N29
\rnd_generator|rnd_gen|state[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[47]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(47));

-- Location: LCCOMB_X101_Y45_N26
\rnd_generator|rnd_gen|next_state[50]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[50]~40_combout\ = \rnd_generator|rnd_gen|state\(40) $ (\rnd_generator|rnd_gen|state\(16) $ (\rnd_generator|rnd_gen|state\(27) $ (\rnd_generator|rnd_gen|state\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(40),
	datab => \rnd_generator|rnd_gen|state\(16),
	datac => \rnd_generator|rnd_gen|state\(27),
	datad => \rnd_generator|rnd_gen|state\(32),
	combout => \rnd_generator|rnd_gen|next_state[50]~40_combout\);

-- Location: LCCOMB_X101_Y45_N18
\rnd_generator|rnd_gen|next_state[50]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[50]~115_combout\ = \rnd_generator|rnd_gen|state\(15) $ (\rnd_generator|rnd_gen|state\(37) $ (\rnd_generator|rnd_gen|state\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(15),
	datac => \rnd_generator|rnd_gen|state\(37),
	datad => \rnd_generator|rnd_gen|state\(35),
	combout => \rnd_generator|rnd_gen|next_state[50]~115_combout\);

-- Location: LCCOMB_X101_Y45_N28
\rnd_generator|rnd_gen|next_state[50]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[50]~117_combout\ = \rnd_generator|rnd_gen|state\(58) $ (\rnd_generator|rnd_gen|state\(47) $ (\rnd_generator|rnd_gen|next_state[50]~40_combout\ $ (\rnd_generator|rnd_gen|next_state[50]~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(58),
	datab => \rnd_generator|rnd_gen|state\(47),
	datac => \rnd_generator|rnd_gen|next_state[50]~40_combout\,
	datad => \rnd_generator|rnd_gen|next_state[50]~115_combout\,
	combout => \rnd_generator|rnd_gen|next_state[50]~117_combout\);

-- Location: FF_X101_Y45_N29
\rnd_generator|rnd_gen|state[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[50]~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(50));

-- Location: LCCOMB_X102_Y43_N26
\rnd_generator|rnd_gen|next_state[46]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[46]~107_combout\ = \rnd_generator|rnd_gen|state\(32) $ (\rnd_generator|rnd_gen|state\(11) $ (\rnd_generator|rnd_gen|state\(25) $ (\rnd_generator|rnd_gen|state\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(32),
	datab => \rnd_generator|rnd_gen|state\(11),
	datac => \rnd_generator|rnd_gen|state\(25),
	datad => \rnd_generator|rnd_gen|state\(20),
	combout => \rnd_generator|rnd_gen|next_state[46]~107_combout\);

-- Location: LCCOMB_X102_Y43_N18
\rnd_generator|rnd_gen|next_state[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(46) = \rnd_generator|rnd_gen|state\(50) $ (\rnd_generator|rnd_gen|state\(51) $ (\rnd_generator|rnd_gen|next_state[46]~107_combout\ $ (!\rnd_generator|rnd_gen|state\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(50),
	datab => \rnd_generator|rnd_gen|state\(51),
	datac => \rnd_generator|rnd_gen|next_state[46]~107_combout\,
	datad => \rnd_generator|rnd_gen|state\(59),
	combout => \rnd_generator|rnd_gen|next_state\(46));

-- Location: FF_X102_Y43_N19
\rnd_generator|rnd_gen|state[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(46));

-- Location: LCCOMB_X101_Y44_N16
\rnd_generator|rnd_gen|next_state[28]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[28]~83_combout\ = \rnd_generator|rnd_gen|state\(30) $ (\rnd_generator|rnd_gen|state\(58) $ (\rnd_generator|rnd_gen|state\(55) $ (!\rnd_generator|rnd_gen|state\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(30),
	datab => \rnd_generator|rnd_gen|state\(58),
	datac => \rnd_generator|rnd_gen|state\(55),
	datad => \rnd_generator|rnd_gen|state\(48),
	combout => \rnd_generator|rnd_gen|next_state[28]~83_combout\);

-- Location: LCCOMB_X101_Y44_N20
\rnd_generator|rnd_gen|next_state[28]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[28]~84_combout\ = \rnd_generator|rnd_gen|next_state[59]~26_combout\ $ (\rnd_generator|rnd_gen|state\(46) $ (!\rnd_generator|rnd_gen|next_state[28]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[59]~26_combout\,
	datac => \rnd_generator|rnd_gen|state\(46),
	datad => \rnd_generator|rnd_gen|next_state[28]~83_combout\,
	combout => \rnd_generator|rnd_gen|next_state[28]~84_combout\);

-- Location: FF_X101_Y44_N21
\rnd_generator|rnd_gen|state[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[28]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(28));

-- Location: LCCOMB_X101_Y43_N0
\rnd_generator|rnd_gen|next_state[33]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[33]~44_combout\ = \rnd_generator|rnd_gen|state\(28) $ (\rnd_generator|rnd_gen|state\(26) $ (\rnd_generator|rnd_gen|state\(31) $ (\rnd_generator|rnd_gen|state\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(28),
	datab => \rnd_generator|rnd_gen|state\(26),
	datac => \rnd_generator|rnd_gen|state\(31),
	datad => \rnd_generator|rnd_gen|state\(27),
	combout => \rnd_generator|rnd_gen|next_state[33]~44_combout\);

-- Location: LCCOMB_X102_Y43_N22
\rnd_generator|rnd_gen|next_state[33]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[33]~90_combout\ = \rnd_generator|rnd_gen|state\(25) $ (\rnd_generator|rnd_gen|state\(0) $ (\rnd_generator|rnd_gen|state\(6) $ (!\rnd_generator|rnd_gen|state\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(25),
	datab => \rnd_generator|rnd_gen|state\(0),
	datac => \rnd_generator|rnd_gen|state\(6),
	datad => \rnd_generator|rnd_gen|state\(11),
	combout => \rnd_generator|rnd_gen|next_state[33]~90_combout\);

-- Location: LCCOMB_X101_Y43_N22
\rnd_generator|rnd_gen|next_state[33]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[33]~91_combout\ = \rnd_generator|rnd_gen|state\(40) $ (\rnd_generator|rnd_gen|next_state[33]~44_combout\ $ (\rnd_generator|rnd_gen|state\(44) $ (\rnd_generator|rnd_gen|next_state[33]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(40),
	datab => \rnd_generator|rnd_gen|next_state[33]~44_combout\,
	datac => \rnd_generator|rnd_gen|state\(44),
	datad => \rnd_generator|rnd_gen|next_state[33]~90_combout\,
	combout => \rnd_generator|rnd_gen|next_state[33]~91_combout\);

-- Location: FF_X101_Y43_N23
\rnd_generator|rnd_gen|state[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[33]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(33));

-- Location: LCCOMB_X101_Y43_N20
\rnd_generator|rnd_gen|next_state[45]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[45]~108_combout\ = \rnd_generator|rnd_gen|state\(33) $ (\rnd_generator|rnd_gen|state\(27) $ (\rnd_generator|rnd_gen|state\(43) $ (!\rnd_generator|rnd_gen|state\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(33),
	datab => \rnd_generator|rnd_gen|state\(27),
	datac => \rnd_generator|rnd_gen|state\(43),
	datad => \rnd_generator|rnd_gen|state\(6),
	combout => \rnd_generator|rnd_gen|next_state[45]~108_combout\);

-- Location: LCCOMB_X101_Y43_N14
\rnd_generator|rnd_gen|next_state[45]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[45]~109_combout\ = \rnd_generator|rnd_gen|next_state[45]~108_combout\ $ (\rnd_generator|rnd_gen|state\(52) $ (\rnd_generator|rnd_gen|next_state[45]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|next_state[45]~108_combout\,
	datac => \rnd_generator|rnd_gen|state\(52),
	datad => \rnd_generator|rnd_gen|next_state[45]~73_combout\,
	combout => \rnd_generator|rnd_gen|next_state[45]~109_combout\);

-- Location: FF_X101_Y43_N15
\rnd_generator|rnd_gen|state[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[45]~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(45));

-- Location: LCCOMB_X101_Y45_N4
\rnd_generator|rnd_gen|next_state[41]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[41]~105_combout\ = \rnd_generator|rnd_gen|state\(1) $ (\rnd_generator|rnd_gen|state\(45) $ (\rnd_generator|rnd_gen|state\(56) $ (\rnd_generator|rnd_gen|state\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(1),
	datab => \rnd_generator|rnd_gen|state\(45),
	datac => \rnd_generator|rnd_gen|state\(56),
	datad => \rnd_generator|rnd_gen|state\(47),
	combout => \rnd_generator|rnd_gen|next_state[41]~105_combout\);

-- Location: LCCOMB_X100_Y45_N26
\rnd_generator|rnd_gen|next_state[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(41) = \rnd_generator|rnd_gen|state\(54) $ (\rnd_generator|rnd_gen|state\(36) $ (\rnd_generator|rnd_gen|state\(29) $ (\rnd_generator|rnd_gen|next_state[41]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(54),
	datab => \rnd_generator|rnd_gen|state\(36),
	datac => \rnd_generator|rnd_gen|state\(29),
	datad => \rnd_generator|rnd_gen|next_state[41]~105_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(41));

-- Location: FF_X100_Y45_N27
\rnd_generator|rnd_gen|state[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(41));

-- Location: LCCOMB_X101_Y45_N30
\rnd_generator|rnd_gen|next_state[40]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[40]~103_combout\ = \rnd_generator|rnd_gen|state\(39) $ (\rnd_generator|rnd_gen|state\(4) $ (\rnd_generator|rnd_gen|state\(41) $ (!\rnd_generator|rnd_gen|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(39),
	datab => \rnd_generator|rnd_gen|state\(4),
	datac => \rnd_generator|rnd_gen|state\(41),
	datad => \rnd_generator|rnd_gen|state\(2),
	combout => \rnd_generator|rnd_gen|next_state[40]~103_combout\);

-- Location: LCCOMB_X100_Y45_N0
\rnd_generator|rnd_gen|next_state[40]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[40]~104_combout\ = \rnd_generator|rnd_gen|state\(18) $ (\rnd_generator|rnd_gen|next_state[40]~103_combout\ $ (!\rnd_generator|rnd_gen|next_state[40]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(18),
	datac => \rnd_generator|rnd_gen|next_state[40]~103_combout\,
	datad => \rnd_generator|rnd_gen|next_state[40]~96_combout\,
	combout => \rnd_generator|rnd_gen|next_state[40]~104_combout\);

-- Location: FF_X100_Y45_N1
\rnd_generator|rnd_gen|state[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[40]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(40));

-- Location: LCCOMB_X101_Y45_N10
\rnd_generator|rnd_gen|next_state[18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[18]~66_combout\ = \rnd_generator|rnd_gen|state\(43) $ (\rnd_generator|rnd_gen|state\(50) $ (\rnd_generator|rnd_gen|state\(24) $ (!\rnd_generator|rnd_gen|state\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(43),
	datab => \rnd_generator|rnd_gen|state\(50),
	datac => \rnd_generator|rnd_gen|state\(24),
	datad => \rnd_generator|rnd_gen|state\(13),
	combout => \rnd_generator|rnd_gen|next_state[18]~66_combout\);

-- Location: LCCOMB_X100_Y45_N12
\rnd_generator|rnd_gen|next_state[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[18]~68_combout\ = \rnd_generator|rnd_gen|state\(40) $ (\rnd_generator|rnd_gen|next_state[18]~66_combout\ $ (\rnd_generator|rnd_gen|next_state[59]~22_combout\ $ (!\rnd_generator|rnd_gen|next_state[43]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(40),
	datab => \rnd_generator|rnd_gen|next_state[18]~66_combout\,
	datac => \rnd_generator|rnd_gen|next_state[59]~22_combout\,
	datad => \rnd_generator|rnd_gen|next_state[43]~67_combout\,
	combout => \rnd_generator|rnd_gen|next_state[18]~68_combout\);

-- Location: FF_X100_Y45_N13
\rnd_generator|rnd_gen|state[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[18]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(18));

-- Location: LCCOMB_X100_Y45_N20
\rnd_generator|rnd_gen|next_state[43]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[43]~67_combout\ = \rnd_generator|rnd_gen|state\(18) $ (\rnd_generator|rnd_gen|state\(51) $ (\rnd_generator|rnd_gen|state\(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(18),
	datab => \rnd_generator|rnd_gen|state\(51),
	datad => \rnd_generator|rnd_gen|state\(58),
	combout => \rnd_generator|rnd_gen|next_state[43]~67_combout\);

-- Location: LCCOMB_X99_Y45_N24
\rnd_generator|rnd_gen|next_state[43]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[43]~106_combout\ = \rnd_generator|rnd_gen|state\(49) $ (\rnd_generator|rnd_gen|state\(16) $ (\rnd_generator|rnd_gen|state\(41) $ (!\rnd_generator|rnd_gen|state\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(49),
	datab => \rnd_generator|rnd_gen|state\(16),
	datac => \rnd_generator|rnd_gen|state\(41),
	datad => \rnd_generator|rnd_gen|state\(27),
	combout => \rnd_generator|rnd_gen|next_state[43]~106_combout\);

-- Location: LCCOMB_X100_Y45_N28
\rnd_generator|rnd_gen|next_state[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(43) = \rnd_generator|rnd_gen|next_state[43]~67_combout\ $ (\rnd_generator|rnd_gen|state\(29) $ (\rnd_generator|rnd_gen|next_state[43]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|next_state[43]~67_combout\,
	datac => \rnd_generator|rnd_gen|state\(29),
	datad => \rnd_generator|rnd_gen|next_state[43]~106_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(43));

-- Location: FF_X100_Y45_N29
\rnd_generator|rnd_gen|state[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(43));

-- Location: LCCOMB_X99_Y44_N10
\rnd_generator|rnd_gen|next_state[11]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[11]~17_combout\ = \rnd_generator|rnd_gen|state\(43) $ (\rnd_generator|rnd_gen|state\(56) $ (\rnd_generator|rnd_gen|state\(22) $ (\rnd_generator|rnd_gen|state\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(43),
	datab => \rnd_generator|rnd_gen|state\(56),
	datac => \rnd_generator|rnd_gen|state\(22),
	datad => \rnd_generator|rnd_gen|state\(16),
	combout => \rnd_generator|rnd_gen|next_state[11]~17_combout\);

-- Location: LCCOMB_X100_Y44_N18
\rnd_generator|rnd_gen|next_state[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(11) = \rnd_generator|rnd_gen|next_state[11]~17_combout\ $ (\rnd_generator|rnd_gen|next_state[59]~22_combout\ $ (\rnd_generator|rnd_gen|state\(39) $ (!\rnd_generator|rnd_gen|state\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[11]~17_combout\,
	datab => \rnd_generator|rnd_gen|next_state[59]~22_combout\,
	datac => \rnd_generator|rnd_gen|state\(39),
	datad => \rnd_generator|rnd_gen|state\(44),
	combout => \rnd_generator|rnd_gen|next_state\(11));

-- Location: FF_X100_Y44_N19
\rnd_generator|rnd_gen|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(11));

-- Location: LCCOMB_X101_Y44_N30
\rnd_generator|rnd_gen|next_state[63]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[63]~85_combout\ = \rnd_generator|rnd_gen|state\(11) $ (\rnd_generator|rnd_gen|state\(28) $ (\rnd_generator|rnd_gen|state\(25) $ (\rnd_generator|rnd_gen|state\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(11),
	datab => \rnd_generator|rnd_gen|state\(28),
	datac => \rnd_generator|rnd_gen|state\(25),
	datad => \rnd_generator|rnd_gen|state\(10),
	combout => \rnd_generator|rnd_gen|next_state[63]~85_combout\);

-- Location: LCCOMB_X99_Y45_N2
\rnd_generator|rnd_gen|next_state[63]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[63]~131_combout\ = \rnd_generator|rnd_gen|state\(15) $ (!\rnd_generator|rnd_gen|state\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(15),
	datad => \rnd_generator|rnd_gen|state\(22),
	combout => \rnd_generator|rnd_gen|next_state[63]~131_combout\);

-- Location: LCCOMB_X100_Y43_N14
\rnd_generator|rnd_gen|next_state[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(63) = \rnd_generator|rnd_gen|state\(21) $ (\rnd_generator|rnd_gen|next_state[63]~85_combout\ $ (\rnd_generator|rnd_gen|state\(26) $ (!\rnd_generator|rnd_gen|next_state[63]~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(21),
	datab => \rnd_generator|rnd_gen|next_state[63]~85_combout\,
	datac => \rnd_generator|rnd_gen|state\(26),
	datad => \rnd_generator|rnd_gen|next_state[63]~131_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(63));

-- Location: FF_X100_Y43_N15
\rnd_generator|rnd_gen|state[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(63));

-- Location: LCCOMB_X99_Y44_N16
\rnd_generator|rnd_gen|next_state[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[13]~54_combout\ = \rnd_generator|rnd_gen|state\(54) $ (\rnd_generator|rnd_gen|state\(38) $ (\rnd_generator|rnd_gen|state\(36) $ (!\rnd_generator|rnd_gen|state\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(54),
	datab => \rnd_generator|rnd_gen|state\(38),
	datac => \rnd_generator|rnd_gen|state\(36),
	datad => \rnd_generator|rnd_gen|state\(59),
	combout => \rnd_generator|rnd_gen|next_state[13]~54_combout\);

-- Location: LCCOMB_X100_Y44_N2
\rnd_generator|rnd_gen|next_state[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[13]~55_combout\ = \rnd_generator|rnd_gen|state\(13) $ (\rnd_generator|rnd_gen|state\(9) $ (\rnd_generator|rnd_gen|state\(39) $ (!\rnd_generator|rnd_gen|state\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(13),
	datab => \rnd_generator|rnd_gen|state\(9),
	datac => \rnd_generator|rnd_gen|state\(39),
	datad => \rnd_generator|rnd_gen|state\(53),
	combout => \rnd_generator|rnd_gen|next_state[13]~55_combout\);

-- Location: LCCOMB_X100_Y44_N30
\rnd_generator|rnd_gen|next_state[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[13]~56_combout\ = \rnd_generator|rnd_gen|state\(63) $ (\rnd_generator|rnd_gen|next_state[13]~54_combout\ $ (\rnd_generator|rnd_gen|next_state[13]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(63),
	datac => \rnd_generator|rnd_gen|next_state[13]~54_combout\,
	datad => \rnd_generator|rnd_gen|next_state[13]~55_combout\,
	combout => \rnd_generator|rnd_gen|next_state[13]~56_combout\);

-- Location: FF_X100_Y44_N31
\rnd_generator|rnd_gen|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[13]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(13));

-- Location: LCCOMB_X98_Y44_N10
\rnd_generator|rnd_gen|next_state[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[21]~69_combout\ = \rnd_generator|rnd_gen|state\(56) $ (\rnd_generator|rnd_gen|state\(13) $ (\rnd_generator|rnd_gen|state\(22) $ (\rnd_generator|rnd_gen|state\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(56),
	datab => \rnd_generator|rnd_gen|state\(13),
	datac => \rnd_generator|rnd_gen|state\(22),
	datad => \rnd_generator|rnd_gen|state\(16),
	combout => \rnd_generator|rnd_gen|next_state[21]~69_combout\);

-- Location: LCCOMB_X99_Y44_N8
\rnd_generator|rnd_gen|next_state[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[21]~71_combout\ = \rnd_generator|rnd_gen|next_state[21]~69_combout\ $ (\rnd_generator|rnd_gen|state\(39) $ (\rnd_generator|rnd_gen|state\(41) $ (!\rnd_generator|rnd_gen|next_state[57]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[21]~69_combout\,
	datab => \rnd_generator|rnd_gen|state\(39),
	datac => \rnd_generator|rnd_gen|state\(41),
	datad => \rnd_generator|rnd_gen|next_state[57]~70_combout\,
	combout => \rnd_generator|rnd_gen|next_state[21]~71_combout\);

-- Location: FF_X99_Y44_N9
\rnd_generator|rnd_gen|state[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[21]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(21));

-- Location: LCCOMB_X100_Y43_N20
\rnd_generator|rnd_gen|next_state[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[5]~15_combout\ = \rnd_generator|rnd_gen|state\(31) $ (\rnd_generator|rnd_gen|state\(41) $ (!\rnd_generator|rnd_gen|state\(62)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(31),
	datac => \rnd_generator|rnd_gen|state\(41),
	datad => \rnd_generator|rnd_gen|state\(62),
	combout => \rnd_generator|rnd_gen|next_state[5]~15_combout\);

-- Location: LCCOMB_X102_Y43_N30
\rnd_generator|rnd_gen|next_state[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[5]~14_combout\ = \rnd_generator|rnd_gen|state\(14) $ (\rnd_generator|rnd_gen|state\(35) $ (\rnd_generator|rnd_gen|state\(24) $ (\rnd_generator|rnd_gen|state\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(14),
	datab => \rnd_generator|rnd_gen|state\(35),
	datac => \rnd_generator|rnd_gen|state\(24),
	datad => \rnd_generator|rnd_gen|state\(47),
	combout => \rnd_generator|rnd_gen|next_state[5]~14_combout\);

-- Location: LCCOMB_X103_Y43_N24
\rnd_generator|rnd_gen|next_state[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[5]~16_combout\ = \rnd_generator|rnd_gen|state\(21) $ (\rnd_generator|rnd_gen|state\(42) $ (\rnd_generator|rnd_gen|next_state[5]~15_combout\ $ (!\rnd_generator|rnd_gen|next_state[5]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(21),
	datab => \rnd_generator|rnd_gen|state\(42),
	datac => \rnd_generator|rnd_gen|next_state[5]~15_combout\,
	datad => \rnd_generator|rnd_gen|next_state[5]~14_combout\,
	combout => \rnd_generator|rnd_gen|next_state[5]~16_combout\);

-- Location: FF_X103_Y43_N25
\rnd_generator|rnd_gen|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(5));

-- Location: LCCOMB_X102_Y43_N4
\rnd_generator|rnd_gen|next_state[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[1]~6_combout\ = \rnd_generator|rnd_gen|state\(28) $ (\rnd_generator|rnd_gen|state\(13) $ (\rnd_generator|rnd_gen|state\(63) $ (!\rnd_generator|rnd_gen|state\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(28),
	datab => \rnd_generator|rnd_gen|state\(13),
	datac => \rnd_generator|rnd_gen|state\(63),
	datad => \rnd_generator|rnd_gen|state\(21),
	combout => \rnd_generator|rnd_gen|next_state[1]~6_combout\);

-- Location: LCCOMB_X102_Y43_N0
\rnd_generator|rnd_gen|next_state[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(1) = \rnd_generator|rnd_gen|state\(5) $ (\rnd_generator|rnd_gen|state\(2) $ (\rnd_generator|rnd_gen|next_state[1]~6_combout\ $ (!\rnd_generator|rnd_gen|next_state[15]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(5),
	datab => \rnd_generator|rnd_gen|state\(2),
	datac => \rnd_generator|rnd_gen|next_state[1]~6_combout\,
	datad => \rnd_generator|rnd_gen|next_state[15]~5_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(1));

-- Location: FF_X102_Y43_N1
\rnd_generator|rnd_gen|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(1));

-- Location: LCCOMB_X102_Y44_N12
\rnd_generator|rnd_gen|next_state[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[3]~11_combout\ = \rnd_generator|rnd_gen|state\(6) $ (\rnd_generator|rnd_gen|state\(1) $ (\rnd_generator|rnd_gen|state\(41) $ (\rnd_generator|rnd_gen|state\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(6),
	datab => \rnd_generator|rnd_gen|state\(1),
	datac => \rnd_generator|rnd_gen|state\(41),
	datad => \rnd_generator|rnd_gen|state\(51),
	combout => \rnd_generator|rnd_gen|next_state[3]~11_combout\);

-- Location: LCCOMB_X102_Y44_N10
\rnd_generator|rnd_gen|next_state[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[12]~10_combout\ = \rnd_generator|rnd_gen|state\(37) $ (\rnd_generator|rnd_gen|state\(39) $ (\rnd_generator|rnd_gen|state\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(37),
	datac => \rnd_generator|rnd_gen|state\(39),
	datad => \rnd_generator|rnd_gen|state\(27),
	combout => \rnd_generator|rnd_gen|next_state[12]~10_combout\);

-- Location: LCCOMB_X102_Y44_N20
\rnd_generator|rnd_gen|next_state[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[3]~12_combout\ = \rnd_generator|rnd_gen|next_state[3]~11_combout\ $ (\rnd_generator|rnd_gen|state\(63) $ (\rnd_generator|rnd_gen|state\(24) $ (\rnd_generator|rnd_gen|next_state[12]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[3]~11_combout\,
	datab => \rnd_generator|rnd_gen|state\(63),
	datac => \rnd_generator|rnd_gen|state\(24),
	datad => \rnd_generator|rnd_gen|next_state[12]~10_combout\,
	combout => \rnd_generator|rnd_gen|next_state[3]~12_combout\);

-- Location: FF_X102_Y44_N21
\rnd_generator|rnd_gen|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(3));

-- Location: LCCOMB_X102_Y44_N4
\rnd_generator|rnd_gen|next_state[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[6]~41_combout\ = \rnd_generator|rnd_gen|state\(59) $ (\rnd_generator|rnd_gen|state\(50) $ (\rnd_generator|rnd_gen|state\(24) $ (!\rnd_generator|rnd_gen|state\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(59),
	datab => \rnd_generator|rnd_gen|state\(50),
	datac => \rnd_generator|rnd_gen|state\(24),
	datad => \rnd_generator|rnd_gen|state\(43),
	combout => \rnd_generator|rnd_gen|next_state[6]~41_combout\);

-- Location: LCCOMB_X101_Y44_N0
\rnd_generator|rnd_gen|next_state[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[6]~42_combout\ = \rnd_generator|rnd_gen|state\(3) $ (\rnd_generator|rnd_gen|state\(48) $ (\rnd_generator|rnd_gen|next_state[50]~40_combout\ $ (!\rnd_generator|rnd_gen|next_state[6]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(3),
	datab => \rnd_generator|rnd_gen|state\(48),
	datac => \rnd_generator|rnd_gen|next_state[50]~40_combout\,
	datad => \rnd_generator|rnd_gen|next_state[6]~41_combout\,
	combout => \rnd_generator|rnd_gen|next_state[6]~42_combout\);

-- Location: FF_X101_Y44_N1
\rnd_generator|rnd_gen|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(6));

-- Location: LCCOMB_X102_Y44_N24
\rnd_generator|rnd_gen|next_state[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[2]~8_combout\ = \rnd_generator|rnd_gen|state\(23) $ (\rnd_generator|rnd_gen|state\(36) $ (\rnd_generator|rnd_gen|state\(39) $ (!\rnd_generator|rnd_gen|state\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(23),
	datab => \rnd_generator|rnd_gen|state\(36),
	datac => \rnd_generator|rnd_gen|state\(39),
	datad => \rnd_generator|rnd_gen|state\(44),
	combout => \rnd_generator|rnd_gen|next_state[2]~8_combout\);

-- Location: LCCOMB_X102_Y44_N2
\rnd_generator|rnd_gen|next_state[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[2]~9_combout\ = \rnd_generator|rnd_gen|state\(6) $ (\rnd_generator|rnd_gen|next_state[2]~8_combout\ $ (\rnd_generator|rnd_gen|next_state[24]~7_combout\ $ (\rnd_generator|rnd_gen|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(6),
	datab => \rnd_generator|rnd_gen|next_state[2]~8_combout\,
	datac => \rnd_generator|rnd_gen|next_state[24]~7_combout\,
	datad => \rnd_generator|rnd_gen|state\(4),
	combout => \rnd_generator|rnd_gen|next_state[2]~9_combout\);

-- Location: FF_X102_Y44_N3
\rnd_generator|rnd_gen|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(2));

-- Location: LCCOMB_X100_Y43_N16
\rnd_generator|rnd_gen|next_state[51]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[51]~118_combout\ = \rnd_generator|rnd_gen|state\(2) $ (\rnd_generator|rnd_gen|next_state[5]~15_combout\ $ (\rnd_generator|rnd_gen|next_state[47]~111_combout\ $ (\rnd_generator|rnd_gen|state\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(2),
	datab => \rnd_generator|rnd_gen|next_state[5]~15_combout\,
	datac => \rnd_generator|rnd_gen|next_state[47]~111_combout\,
	datad => \rnd_generator|rnd_gen|state\(5),
	combout => \rnd_generator|rnd_gen|next_state[51]~118_combout\);

-- Location: FF_X100_Y43_N17
\rnd_generator|rnd_gen|state[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[51]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(51));

-- Location: LCCOMB_X102_Y44_N18
\rnd_generator|rnd_gen|next_state[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[7]~43_combout\ = \rnd_generator|rnd_gen|state\(32) $ (\rnd_generator|rnd_gen|state\(4) $ (\rnd_generator|rnd_gen|state\(33) $ (!\rnd_generator|rnd_gen|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(32),
	datab => \rnd_generator|rnd_gen|state\(4),
	datac => \rnd_generator|rnd_gen|state\(33),
	datad => \rnd_generator|rnd_gen|state\(1),
	combout => \rnd_generator|rnd_gen|next_state[7]~43_combout\);

-- Location: LCCOMB_X101_Y44_N22
\rnd_generator|rnd_gen|next_state[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(7) = \rnd_generator|rnd_gen|state\(51) $ (\rnd_generator|rnd_gen|state\(23) $ (\rnd_generator|rnd_gen|state\(43) $ (\rnd_generator|rnd_gen|next_state[7]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(51),
	datab => \rnd_generator|rnd_gen|state\(23),
	datac => \rnd_generator|rnd_gen|state\(43),
	datad => \rnd_generator|rnd_gen|next_state[7]~43_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(7));

-- Location: FF_X101_Y44_N23
\rnd_generator|rnd_gen|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(7));

-- Location: LCCOMB_X98_Y43_N4
\rnd_generator|rnd_gen|next_state[54]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[54]~120_combout\ = \rnd_generator|rnd_gen|state\(37) $ (\rnd_generator|rnd_gen|state\(6) $ (\rnd_generator|rnd_gen|state\(3) $ (\rnd_generator|rnd_gen|state\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(37),
	datab => \rnd_generator|rnd_gen|state\(6),
	datac => \rnd_generator|rnd_gen|state\(3),
	datad => \rnd_generator|rnd_gen|state\(15),
	combout => \rnd_generator|rnd_gen|next_state[54]~120_combout\);

-- Location: LCCOMB_X98_Y43_N28
\rnd_generator|rnd_gen|next_state[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(54) = \rnd_generator|rnd_gen|state\(7) $ (\rnd_generator|rnd_gen|state\(51) $ (\rnd_generator|rnd_gen|next_state[54]~120_combout\ $ (\rnd_generator|rnd_gen|state\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(7),
	datab => \rnd_generator|rnd_gen|state\(51),
	datac => \rnd_generator|rnd_gen|next_state[54]~120_combout\,
	datad => \rnd_generator|rnd_gen|state\(33),
	combout => \rnd_generator|rnd_gen|next_state\(54));

-- Location: FF_X98_Y43_N29
\rnd_generator|rnd_gen|state[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(54));

-- Location: LCCOMB_X101_Y45_N8
\rnd_generator|rnd_gen|next_state[22]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[22]~34_combout\ = \rnd_generator|rnd_gen|state\(63) $ (\rnd_generator|rnd_gen|state\(3) $ (\rnd_generator|rnd_gen|state\(15) $ (\rnd_generator|rnd_gen|state\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(63),
	datab => \rnd_generator|rnd_gen|state\(3),
	datac => \rnd_generator|rnd_gen|state\(15),
	datad => \rnd_generator|rnd_gen|state\(9),
	combout => \rnd_generator|rnd_gen|next_state[22]~34_combout\);

-- Location: LCCOMB_X101_Y45_N22
\rnd_generator|rnd_gen|next_state[22]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[22]~33_combout\ = \rnd_generator|rnd_gen|state\(49) $ (\rnd_generator|rnd_gen|state\(30) $ (\rnd_generator|rnd_gen|state\(19) $ (!\rnd_generator|rnd_gen|state\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(49),
	datab => \rnd_generator|rnd_gen|state\(30),
	datac => \rnd_generator|rnd_gen|state\(19),
	datad => \rnd_generator|rnd_gen|state\(27),
	combout => \rnd_generator|rnd_gen|next_state[22]~33_combout\);

-- Location: LCCOMB_X100_Y45_N4
\rnd_generator|rnd_gen|next_state[22]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[22]~35_combout\ = \rnd_generator|rnd_gen|state\(58) $ (\rnd_generator|rnd_gen|state\(54) $ (\rnd_generator|rnd_gen|next_state[22]~34_combout\ $ (\rnd_generator|rnd_gen|next_state[22]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(58),
	datab => \rnd_generator|rnd_gen|state\(54),
	datac => \rnd_generator|rnd_gen|next_state[22]~34_combout\,
	datad => \rnd_generator|rnd_gen|next_state[22]~33_combout\,
	combout => \rnd_generator|rnd_gen|next_state[22]~35_combout\);

-- Location: FF_X99_Y44_N11
\rnd_generator|rnd_gen|state[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \rnd_generator|rnd_gen|next_state[22]~35_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(22));

-- Location: LCCOMB_X98_Y44_N4
\rnd_generator|rnd_gen|next_state[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[19]~64_combout\ = \rnd_generator|rnd_gen|state\(46) $ (\rnd_generator|rnd_gen|state\(59) $ (\rnd_generator|rnd_gen|state\(41) $ (!\rnd_generator|rnd_gen|next_state[57]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(46),
	datab => \rnd_generator|rnd_gen|state\(59),
	datac => \rnd_generator|rnd_gen|state\(41),
	datad => \rnd_generator|rnd_gen|next_state[57]~63_combout\,
	combout => \rnd_generator|rnd_gen|next_state[19]~64_combout\);

-- Location: LCCOMB_X98_Y44_N24
\rnd_generator|rnd_gen|next_state[56]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[56]~62_combout\ = \rnd_generator|rnd_gen|state\(44) $ (\rnd_generator|rnd_gen|state\(39) $ (!\rnd_generator|rnd_gen|state\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(44),
	datac => \rnd_generator|rnd_gen|state\(39),
	datad => \rnd_generator|rnd_gen|state\(16),
	combout => \rnd_generator|rnd_gen|next_state[56]~62_combout\);

-- Location: LCCOMB_X98_Y44_N0
\rnd_generator|rnd_gen|next_state[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[19]~65_combout\ = \rnd_generator|rnd_gen|state\(22) $ (\rnd_generator|rnd_gen|next_state[19]~64_combout\ $ (!\rnd_generator|rnd_gen|next_state[56]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(22),
	datac => \rnd_generator|rnd_gen|next_state[19]~64_combout\,
	datad => \rnd_generator|rnd_gen|next_state[56]~62_combout\,
	combout => \rnd_generator|rnd_gen|next_state[19]~65_combout\);

-- Location: FF_X98_Y44_N1
\rnd_generator|rnd_gen|state[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[19]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(19));

-- Location: LCCOMB_X100_Y45_N22
\rnd_generator|rnd_gen|next_state[49]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[49]~116_combout\ = \rnd_generator|rnd_gen|state\(59) $ (\rnd_generator|rnd_gen|state\(43) $ (\rnd_generator|rnd_gen|state\(55) $ (!\rnd_generator|rnd_gen|state\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(59),
	datab => \rnd_generator|rnd_gen|state\(43),
	datac => \rnd_generator|rnd_gen|state\(55),
	datad => \rnd_generator|rnd_gen|state\(5),
	combout => \rnd_generator|rnd_gen|next_state[49]~116_combout\);

-- Location: LCCOMB_X100_Y45_N16
\rnd_generator|rnd_gen|next_state[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(49) = \rnd_generator|rnd_gen|state\(19) $ (\rnd_generator|rnd_gen|next_state[49]~116_combout\ $ (\rnd_generator|rnd_gen|next_state[50]~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(19),
	datac => \rnd_generator|rnd_gen|next_state[49]~116_combout\,
	datad => \rnd_generator|rnd_gen|next_state[50]~115_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(49));

-- Location: FF_X100_Y45_N17
\rnd_generator|rnd_gen|state[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(49));

-- Location: LCCOMB_X100_Y44_N10
\rnd_generator|rnd_gen|next_state[59]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[59]~27_combout\ = \rnd_generator|rnd_gen|state\(24) $ (\rnd_generator|rnd_gen|state\(10) $ (\rnd_generator|rnd_gen|state\(36) $ (\rnd_generator|rnd_gen|state\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(24),
	datab => \rnd_generator|rnd_gen|state\(10),
	datac => \rnd_generator|rnd_gen|state\(36),
	datad => \rnd_generator|rnd_gen|state\(44),
	combout => \rnd_generator|rnd_gen|next_state[59]~27_combout\);

-- Location: LCCOMB_X99_Y44_N18
\rnd_generator|rnd_gen|next_state[59]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[59]~28_combout\ = \rnd_generator|rnd_gen|state\(49) $ (\rnd_generator|rnd_gen|next_state[59]~27_combout\ $ (!\rnd_generator|rnd_gen|next_state[59]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(49),
	datac => \rnd_generator|rnd_gen|next_state[59]~27_combout\,
	datad => \rnd_generator|rnd_gen|next_state[59]~26_combout\,
	combout => \rnd_generator|rnd_gen|next_state[59]~28_combout\);

-- Location: FF_X99_Y44_N19
\rnd_generator|rnd_gen|state[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[59]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(59));

-- Location: LCCOMB_X101_Y45_N20
\rnd_generator|rnd_gen|next_state[39]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[39]~102_combout\ = \rnd_generator|rnd_gen|state\(31) $ (\rnd_generator|rnd_gen|state\(15) $ (\rnd_generator|rnd_gen|state\(3) $ (!\rnd_generator|rnd_gen|state\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(31),
	datab => \rnd_generator|rnd_gen|state\(15),
	datac => \rnd_generator|rnd_gen|state\(3),
	datad => \rnd_generator|rnd_gen|state\(9),
	combout => \rnd_generator|rnd_gen|next_state[39]~102_combout\);

-- Location: LCCOMB_X100_Y45_N14
\rnd_generator|rnd_gen|next_state[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(39) = \rnd_generator|rnd_gen|state\(59) $ (\rnd_generator|rnd_gen|next_state[39]~58_combout\ $ (\rnd_generator|rnd_gen|next_state[39]~102_combout\ $ (\rnd_generator|rnd_gen|state\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(59),
	datab => \rnd_generator|rnd_gen|next_state[39]~58_combout\,
	datac => \rnd_generator|rnd_gen|next_state[39]~102_combout\,
	datad => \rnd_generator|rnd_gen|state\(12),
	combout => \rnd_generator|rnd_gen|next_state\(39));

-- Location: FF_X100_Y45_N15
\rnd_generator|rnd_gen|state[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(39));

-- Location: LCCOMB_X101_Y44_N28
\rnd_generator|rnd_gen|next_state[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[12]~53_combout\ = \rnd_generator|rnd_gen|state\(1) $ (\rnd_generator|rnd_gen|state\(14) $ (\rnd_generator|rnd_gen|state\(17) $ (!\rnd_generator|rnd_gen|state\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(1),
	datab => \rnd_generator|rnd_gen|state\(14),
	datac => \rnd_generator|rnd_gen|state\(17),
	datad => \rnd_generator|rnd_gen|state\(52),
	combout => \rnd_generator|rnd_gen|next_state[12]~53_combout\);

-- Location: LCCOMB_X100_Y44_N24
\rnd_generator|rnd_gen|next_state[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(12) = \rnd_generator|rnd_gen|state\(39) $ (\rnd_generator|rnd_gen|state\(37) $ (\rnd_generator|rnd_gen|state\(27) $ (\rnd_generator|rnd_gen|next_state[12]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(39),
	datab => \rnd_generator|rnd_gen|state\(37),
	datac => \rnd_generator|rnd_gen|state\(27),
	datad => \rnd_generator|rnd_gen|next_state[12]~53_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(12));

-- Location: FF_X100_Y44_N25
\rnd_generator|rnd_gen|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(12));

-- Location: LCCOMB_X99_Y44_N26
\rnd_generator|rnd_gen|next_state[42]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[42]~37_combout\ = \rnd_generator|rnd_gen|state\(42) $ (\rnd_generator|rnd_gen|state\(12) $ (\rnd_generator|rnd_gen|state\(18) $ (\rnd_generator|rnd_gen|state\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(42),
	datab => \rnd_generator|rnd_gen|state\(12),
	datac => \rnd_generator|rnd_gen|state\(18),
	datad => \rnd_generator|rnd_gen|state\(37),
	combout => \rnd_generator|rnd_gen|next_state[42]~37_combout\);

-- Location: LCCOMB_X101_Y44_N2
\rnd_generator|rnd_gen|next_state[42]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[42]~36_combout\ = \rnd_generator|rnd_gen|state\(36) $ (\rnd_generator|rnd_gen|state\(14) $ (\rnd_generator|rnd_gen|state\(20) $ (\rnd_generator|rnd_gen|state\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(36),
	datab => \rnd_generator|rnd_gen|state\(14),
	datac => \rnd_generator|rnd_gen|state\(20),
	datad => \rnd_generator|rnd_gen|state\(23),
	combout => \rnd_generator|rnd_gen|next_state[42]~36_combout\);

-- Location: LCCOMB_X99_Y44_N0
\rnd_generator|rnd_gen|next_state[42]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[42]~38_combout\ = \rnd_generator|rnd_gen|next_state[42]~37_combout\ $ (\rnd_generator|rnd_gen|state\(19) $ (\rnd_generator|rnd_gen|next_state[42]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[42]~37_combout\,
	datac => \rnd_generator|rnd_gen|state\(19),
	datad => \rnd_generator|rnd_gen|next_state[42]~36_combout\,
	combout => \rnd_generator|rnd_gen|next_state[42]~38_combout\);

-- Location: FF_X99_Y44_N1
\rnd_generator|rnd_gen|state[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[42]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(42));

-- Location: LCCOMB_X98_Y44_N20
\rnd_generator|rnd_gen|next_state[34]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[34]~92_combout\ = \rnd_generator|rnd_gen|state\(34) $ (\rnd_generator|rnd_gen|state\(42) $ (\rnd_generator|rnd_gen|state\(29) $ (\rnd_generator|rnd_gen|state\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(34),
	datab => \rnd_generator|rnd_gen|state\(42),
	datac => \rnd_generator|rnd_gen|state\(29),
	datad => \rnd_generator|rnd_gen|state\(44),
	combout => \rnd_generator|rnd_gen|next_state[34]~92_combout\);

-- Location: LCCOMB_X98_Y44_N6
\rnd_generator|rnd_gen|next_state[34]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[34]~93_combout\ = \rnd_generator|rnd_gen|state\(48) $ (\rnd_generator|rnd_gen|state\(55) $ (\rnd_generator|rnd_gen|state\(8) $ (\rnd_generator|rnd_gen|state\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(48),
	datab => \rnd_generator|rnd_gen|state\(55),
	datac => \rnd_generator|rnd_gen|state\(8),
	datad => \rnd_generator|rnd_gen|state\(58),
	combout => \rnd_generator|rnd_gen|next_state[34]~93_combout\);

-- Location: LCCOMB_X98_Y44_N26
\rnd_generator|rnd_gen|next_state[34]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[34]~94_combout\ = \rnd_generator|rnd_gen|state\(56) $ (\rnd_generator|rnd_gen|next_state[34]~92_combout\ $ (\rnd_generator|rnd_gen|state\(57) $ (\rnd_generator|rnd_gen|next_state[34]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(56),
	datab => \rnd_generator|rnd_gen|next_state[34]~92_combout\,
	datac => \rnd_generator|rnd_gen|state\(57),
	datad => \rnd_generator|rnd_gen|next_state[34]~93_combout\,
	combout => \rnd_generator|rnd_gen|next_state[34]~94_combout\);

-- Location: FF_X98_Y44_N27
\rnd_generator|rnd_gen|state[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[34]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(34));

-- Location: LCCOMB_X100_Y44_N22
\rnd_generator|rnd_gen|next_state[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(8) = \rnd_generator|rnd_gen|state\(34) $ (\rnd_generator|rnd_gen|state\(50) $ (\rnd_generator|rnd_gen|next_state[33]~44_combout\ $ (\rnd_generator|rnd_gen|state\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(34),
	datab => \rnd_generator|rnd_gen|state\(50),
	datac => \rnd_generator|rnd_gen|next_state[33]~44_combout\,
	datad => \rnd_generator|rnd_gen|state\(29),
	combout => \rnd_generator|rnd_gen|next_state\(8));

-- Location: FF_X100_Y44_N23
\rnd_generator|rnd_gen|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(8));

-- Location: LCCOMB_X101_Y44_N18
\rnd_generator|rnd_gen|next_state[36]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[36]~21_combout\ = \rnd_generator|rnd_gen|state\(39) $ (\rnd_generator|rnd_gen|state\(28) $ (\rnd_generator|rnd_gen|state\(46) $ (\rnd_generator|rnd_gen|state\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(39),
	datab => \rnd_generator|rnd_gen|state\(28),
	datac => \rnd_generator|rnd_gen|state\(46),
	datad => \rnd_generator|rnd_gen|state\(31),
	combout => \rnd_generator|rnd_gen|next_state[36]~21_combout\);

-- Location: LCCOMB_X99_Y44_N14
\rnd_generator|rnd_gen|next_state[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(36) = \rnd_generator|rnd_gen|state\(8) $ (\rnd_generator|rnd_gen|next_state[36]~21_combout\ $ (!\rnd_generator|rnd_gen|next_state[36]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(8),
	datac => \rnd_generator|rnd_gen|next_state[36]~21_combout\,
	datad => \rnd_generator|rnd_gen|next_state[36]~20_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(36));

-- Location: FF_X99_Y44_N15
\rnd_generator|rnd_gen|state[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(36));

-- Location: LCCOMB_X98_Y43_N20
\rnd_generator|rnd_gen|next_state[58]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[58]~125_combout\ = \rnd_generator|rnd_gen|state\(32) $ (\rnd_generator|rnd_gen|state\(33) $ (\rnd_generator|rnd_gen|state\(1) $ (\rnd_generator|rnd_gen|state\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(32),
	datab => \rnd_generator|rnd_gen|state\(33),
	datac => \rnd_generator|rnd_gen|state\(1),
	datad => \rnd_generator|rnd_gen|state\(15),
	combout => \rnd_generator|rnd_gen|next_state[58]~125_combout\);

-- Location: LCCOMB_X99_Y43_N12
\rnd_generator|rnd_gen|next_state[58]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[58]~126_combout\ = \rnd_generator|rnd_gen|state\(36) $ (\rnd_generator|rnd_gen|next_state[58]~79_combout\ $ (\rnd_generator|rnd_gen|next_state[58]~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(36),
	datac => \rnd_generator|rnd_gen|next_state[58]~79_combout\,
	datad => \rnd_generator|rnd_gen|next_state[58]~125_combout\,
	combout => \rnd_generator|rnd_gen|next_state[58]~126_combout\);

-- Location: FF_X99_Y43_N13
\rnd_generator|rnd_gen|state[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[58]~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(58));

-- Location: LCCOMB_X98_Y44_N2
\rnd_generator|rnd_gen|next_state[56]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[56]~121_combout\ = \rnd_generator|rnd_gen|state\(43) $ (\rnd_generator|rnd_gen|state\(59) $ (\rnd_generator|rnd_gen|state\(12) $ (\rnd_generator|rnd_gen|state\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(43),
	datab => \rnd_generator|rnd_gen|state\(59),
	datac => \rnd_generator|rnd_gen|state\(12),
	datad => \rnd_generator|rnd_gen|state\(13),
	combout => \rnd_generator|rnd_gen|next_state[56]~121_combout\);

-- Location: LCCOMB_X98_Y44_N22
\rnd_generator|rnd_gen|next_state[56]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[56]~122_combout\ = \rnd_generator|rnd_gen|state\(58) $ (\rnd_generator|rnd_gen|next_state[56]~121_combout\ $ (\rnd_generator|rnd_gen|state\(11) $ (\rnd_generator|rnd_gen|next_state[56]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(58),
	datab => \rnd_generator|rnd_gen|next_state[56]~121_combout\,
	datac => \rnd_generator|rnd_gen|state\(11),
	datad => \rnd_generator|rnd_gen|next_state[56]~62_combout\,
	combout => \rnd_generator|rnd_gen|next_state[56]~122_combout\);

-- Location: FF_X98_Y44_N23
\rnd_generator|rnd_gen|state[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[56]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(56));

-- Location: LCCOMB_X102_Y43_N20
\rnd_generator|rnd_gen|next_state[32]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[32]~89_combout\ = \rnd_generator|rnd_gen|state\(34) $ (\rnd_generator|rnd_gen|state\(59) $ (\rnd_generator|rnd_gen|state\(55) $ (!\rnd_generator|rnd_gen|state\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(34),
	datab => \rnd_generator|rnd_gen|state\(59),
	datac => \rnd_generator|rnd_gen|state\(55),
	datad => \rnd_generator|rnd_gen|state\(35),
	combout => \rnd_generator|rnd_gen|next_state[32]~89_combout\);

-- Location: LCCOMB_X102_Y43_N6
\rnd_generator|rnd_gen|next_state[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(32) = \rnd_generator|rnd_gen|state\(56) $ (\rnd_generator|rnd_gen|next_state[63]~88_combout\ $ (\rnd_generator|rnd_gen|state\(47) $ (\rnd_generator|rnd_gen|next_state[32]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(56),
	datab => \rnd_generator|rnd_gen|next_state[63]~88_combout\,
	datac => \rnd_generator|rnd_gen|state\(47),
	datad => \rnd_generator|rnd_gen|next_state[32]~89_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(32));

-- Location: FF_X102_Y43_N7
\rnd_generator|rnd_gen|state[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(32));

-- Location: LCCOMB_X102_Y44_N6
\rnd_generator|rnd_gen|next_state[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[4]~13_combout\ = \rnd_generator|rnd_gen|state\(46) $ (\rnd_generator|rnd_gen|state\(28) $ (\rnd_generator|rnd_gen|state\(4) $ (\rnd_generator|rnd_gen|state\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(46),
	datab => \rnd_generator|rnd_gen|state\(28),
	datac => \rnd_generator|rnd_gen|state\(4),
	datad => \rnd_generator|rnd_gen|state\(37),
	combout => \rnd_generator|rnd_gen|next_state[4]~13_combout\);

-- Location: LCCOMB_X102_Y44_N14
\rnd_generator|rnd_gen|next_state[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(4) = \rnd_generator|rnd_gen|state\(32) $ (\rnd_generator|rnd_gen|state\(3) $ (\rnd_generator|rnd_gen|state\(50) $ (\rnd_generator|rnd_gen|next_state[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(32),
	datab => \rnd_generator|rnd_gen|state\(3),
	datac => \rnd_generator|rnd_gen|state\(50),
	datad => \rnd_generator|rnd_gen|next_state[4]~13_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(4));

-- Location: FF_X102_Y44_N15
\rnd_generator|rnd_gen|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(4));

-- Location: LCCOMB_X103_Y43_N0
\rnd_generator|fsm|s_dataIn[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|s_dataIn\(4) = (GLOBAL(\rnd_generator|fsm|PS.B~clkctrl_outclk\) & ((\rnd_generator|rnd_gen|state\(4)))) # (!GLOBAL(\rnd_generator|fsm|PS.B~clkctrl_outclk\) & (\rnd_generator|fsm|s_dataIn\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|fsm|s_dataIn\(4),
	datac => \rnd_generator|fsm|PS.B~clkctrl_outclk\,
	datad => \rnd_generator|rnd_gen|state\(4),
	combout => \rnd_generator|fsm|s_dataIn\(4));

-- Location: LCCOMB_X103_Y43_N6
\rnd_generator|fsm|s_dataIn[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|s_dataIn\(5) = (GLOBAL(\rnd_generator|fsm|PS.B~clkctrl_outclk\) & ((!\rnd_generator|rnd_gen|state\(5)))) # (!GLOBAL(\rnd_generator|fsm|PS.B~clkctrl_outclk\) & (\rnd_generator|fsm|s_dataIn\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|fsm|s_dataIn\(5),
	datac => \rnd_generator|fsm|PS.B~clkctrl_outclk\,
	datad => \rnd_generator|rnd_gen|state\(5),
	combout => \rnd_generator|fsm|s_dataIn\(5));

-- Location: LCCOMB_X103_Y43_N2
\rnd_generator|fsm|s_dataIn[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|s_dataIn\(3) = (GLOBAL(\rnd_generator|fsm|PS.B~clkctrl_outclk\) & ((!\rnd_generator|rnd_gen|state\(3)))) # (!GLOBAL(\rnd_generator|fsm|PS.B~clkctrl_outclk\) & (\rnd_generator|fsm|s_dataIn\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|fsm|s_dataIn\(3),
	datac => \rnd_generator|fsm|PS.B~clkctrl_outclk\,
	datad => \rnd_generator|rnd_gen|state\(3),
	combout => \rnd_generator|fsm|s_dataIn\(3));

-- Location: LCCOMB_X102_Y43_N14
\rnd_generator|fsm|s_dataIn[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|s_dataIn\(1) = (GLOBAL(\rnd_generator|fsm|PS.B~clkctrl_outclk\) & ((!\rnd_generator|rnd_gen|state\(1)))) # (!GLOBAL(\rnd_generator|fsm|PS.B~clkctrl_outclk\) & (\rnd_generator|fsm|s_dataIn\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|fsm|s_dataIn\(1),
	datac => \rnd_generator|fsm|PS.B~clkctrl_outclk\,
	datad => \rnd_generator|rnd_gen|state\(1),
	combout => \rnd_generator|fsm|s_dataIn\(1));

-- Location: LCCOMB_X99_Y43_N30
\rnd_generator|fsm|s_dataIn[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|s_dataIn\(0) = (GLOBAL(\rnd_generator|fsm|PS.B~clkctrl_outclk\) & ((!\rnd_generator|rnd_gen|state\(0)))) # (!GLOBAL(\rnd_generator|fsm|PS.B~clkctrl_outclk\) & (\rnd_generator|fsm|s_dataIn\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|fsm|s_dataIn\(0),
	datac => \rnd_generator|fsm|PS.B~clkctrl_outclk\,
	datad => \rnd_generator|rnd_gen|state\(0),
	combout => \rnd_generator|fsm|s_dataIn\(0));

-- Location: LCCOMB_X102_Y44_N8
\rnd_generator|fsm|s_dataIn[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|s_dataIn\(2) = (GLOBAL(\rnd_generator|fsm|PS.B~clkctrl_outclk\) & ((!\rnd_generator|rnd_gen|state\(2)))) # (!GLOBAL(\rnd_generator|fsm|PS.B~clkctrl_outclk\) & (\rnd_generator|fsm|s_dataIn\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|fsm|s_dataIn\(2),
	datac => \rnd_generator|fsm|PS.B~clkctrl_outclk\,
	datad => \rnd_generator|rnd_gen|state\(2),
	combout => \rnd_generator|fsm|s_dataIn\(2));

-- Location: LCCOMB_X103_Y43_N20
\rnd_generator|fsm|main_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|main_proc~0_combout\ = (\rnd_generator|fsm|s_dataIn\(2) & ((\rnd_generator|fsm|s_dataIn\(1)) # (\rnd_generator|fsm|s_dataIn\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|fsm|s_dataIn\(1),
	datac => \rnd_generator|fsm|s_dataIn\(0),
	datad => \rnd_generator|fsm|s_dataIn\(2),
	combout => \rnd_generator|fsm|main_proc~0_combout\);

-- Location: LCCOMB_X103_Y43_N10
\rnd_generator|fsm|main_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|main_proc~1_combout\ = (\rnd_generator|fsm|s_dataIn\(4) & (\rnd_generator|fsm|s_dataIn\(5) & (\rnd_generator|fsm|s_dataIn\(3) & \rnd_generator|fsm|main_proc~0_combout\))) # (!\rnd_generator|fsm|s_dataIn\(4) & 
-- (!\rnd_generator|fsm|s_dataIn\(5) & (!\rnd_generator|fsm|s_dataIn\(3) & !\rnd_generator|fsm|main_proc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|fsm|s_dataIn\(4),
	datab => \rnd_generator|fsm|s_dataIn\(5),
	datac => \rnd_generator|fsm|s_dataIn\(3),
	datad => \rnd_generator|fsm|main_proc~0_combout\,
	combout => \rnd_generator|fsm|main_proc~1_combout\);

-- Location: LCCOMB_X103_Y43_N8
\rnd_generator|fsm|PS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|PS~9_combout\ = (\rnd_generator|fsm|PS~8_combout\) # ((\rnd_generator|fsm|PS.C~q\ & (!\KEY[1]~input_o\ & \rnd_generator|fsm|main_proc~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|fsm|PS.C~q\,
	datab => \KEY[1]~input_o\,
	datac => \rnd_generator|fsm|PS~8_combout\,
	datad => \rnd_generator|fsm|main_proc~1_combout\,
	combout => \rnd_generator|fsm|PS~9_combout\);

-- Location: FF_X103_Y43_N9
\rnd_generator|fsm|PS.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|fsm|PS~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|fsm|PS.B~q\);

-- Location: LCCOMB_X114_Y37_N0
\rnd_generator|fsm|PS~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|PS~7_combout\ = (\rnd_generator|fsm|PS.B~q\ & !\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|fsm|PS.B~q\,
	datad => \KEY[1]~input_o\,
	combout => \rnd_generator|fsm|PS~7_combout\);

-- Location: LCCOMB_X114_Y37_N2
\rnd_generator|fsm|PS.C~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|PS.C~feeder_combout\ = \rnd_generator|fsm|PS~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|fsm|PS~7_combout\,
	combout => \rnd_generator|fsm|PS.C~feeder_combout\);

-- Location: FF_X114_Y37_N3
\rnd_generator|fsm|PS.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|fsm|PS.C~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|fsm|PS.C~q\);

-- Location: LCCOMB_X103_Y43_N14
\rnd_generator|fsm|PS~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|PS~6_combout\ = (!\KEY[1]~input_o\ & ((\rnd_generator|fsm|PS.D~q\) # ((\rnd_generator|fsm|PS.C~q\ & !\rnd_generator|fsm|main_proc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|fsm|PS.C~q\,
	datab => \KEY[1]~input_o\,
	datac => \rnd_generator|fsm|PS.D~q\,
	datad => \rnd_generator|fsm|main_proc~1_combout\,
	combout => \rnd_generator|fsm|PS~6_combout\);

-- Location: FF_X103_Y43_N15
\rnd_generator|fsm|PS.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_generator|fsm|PS~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|fsm|PS.D~q\);

-- Location: CLKCTRL_G5
\rnd_generator|fsm|PS.C~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rnd_generator|fsm|PS.C~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rnd_generator|fsm|PS.C~clkctrl_outclk\);

-- Location: LCCOMB_X102_Y43_N8
\rnd_generator|fsm|validOut\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|validOut~combout\ = (GLOBAL(\rnd_generator|fsm|PS.C~clkctrl_outclk\) & (\rnd_generator|fsm|validOut~combout\)) # (!GLOBAL(\rnd_generator|fsm|PS.C~clkctrl_outclk\) & ((\rnd_generator|fsm|PS.D~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|fsm|validOut~combout\,
	datac => \rnd_generator|fsm|PS.D~q\,
	datad => \rnd_generator|fsm|PS.C~clkctrl_outclk\,
	combout => \rnd_generator|fsm|validOut~combout\);

-- Location: LCCOMB_X99_Y43_N20
\rnd_generator|fsm|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|Selector6~0_combout\ = (\rnd_generator|fsm|s_dataIn\(0) & \rnd_generator|fsm|PS.D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|fsm|s_dataIn\(0),
	datad => \rnd_generator|fsm|PS.D~q\,
	combout => \rnd_generator|fsm|Selector6~0_combout\);

-- Location: LCCOMB_X99_Y43_N8
\rnd_generator|fsm|dataOut[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|dataOut\(0) = (GLOBAL(\rnd_generator|fsm|PS.C~clkctrl_outclk\) & (\rnd_generator|fsm|dataOut\(0))) # (!GLOBAL(\rnd_generator|fsm|PS.C~clkctrl_outclk\) & ((\rnd_generator|fsm|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|fsm|dataOut\(0),
	datac => \rnd_generator|fsm|PS.C~clkctrl_outclk\,
	datad => \rnd_generator|fsm|Selector6~0_combout\,
	combout => \rnd_generator|fsm|dataOut\(0));

-- Location: LCCOMB_X103_Y43_N16
\rnd_generator|fsm|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|Selector7~0_combout\ = (\rnd_generator|fsm|PS.D~q\ & \rnd_generator|fsm|s_dataIn\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|fsm|PS.D~q\,
	datad => \rnd_generator|fsm|s_dataIn\(1),
	combout => \rnd_generator|fsm|Selector7~0_combout\);

-- Location: LCCOMB_X103_Y43_N26
\rnd_generator|fsm|dataOut[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|dataOut\(1) = (GLOBAL(\rnd_generator|fsm|PS.C~clkctrl_outclk\) & (\rnd_generator|fsm|dataOut\(1))) # (!GLOBAL(\rnd_generator|fsm|PS.C~clkctrl_outclk\) & ((\rnd_generator|fsm|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|fsm|dataOut\(1),
	datac => \rnd_generator|fsm|PS.C~clkctrl_outclk\,
	datad => \rnd_generator|fsm|Selector7~0_combout\,
	combout => \rnd_generator|fsm|dataOut\(1));

-- Location: LCCOMB_X102_Y44_N28
\rnd_generator|fsm|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|Selector8~0_combout\ = (\rnd_generator|fsm|s_dataIn\(2) & \rnd_generator|fsm|PS.D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|fsm|s_dataIn\(2),
	datad => \rnd_generator|fsm|PS.D~q\,
	combout => \rnd_generator|fsm|Selector8~0_combout\);

-- Location: LCCOMB_X102_Y44_N30
\rnd_generator|fsm|dataOut[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|dataOut\(2) = (GLOBAL(\rnd_generator|fsm|PS.C~clkctrl_outclk\) & (\rnd_generator|fsm|dataOut\(2))) # (!GLOBAL(\rnd_generator|fsm|PS.C~clkctrl_outclk\) & ((\rnd_generator|fsm|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|fsm|dataOut\(2),
	datac => \rnd_generator|fsm|PS.C~clkctrl_outclk\,
	datad => \rnd_generator|fsm|Selector8~0_combout\,
	combout => \rnd_generator|fsm|dataOut\(2));

-- Location: LCCOMB_X103_Y43_N28
\rnd_generator|fsm|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|Selector9~0_combout\ = (\rnd_generator|fsm|PS.D~q\ & \rnd_generator|fsm|s_dataIn\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|fsm|PS.D~q\,
	datad => \rnd_generator|fsm|s_dataIn\(3),
	combout => \rnd_generator|fsm|Selector9~0_combout\);

-- Location: LCCOMB_X103_Y43_N4
\rnd_generator|fsm|dataOut[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|dataOut\(3) = (GLOBAL(\rnd_generator|fsm|PS.C~clkctrl_outclk\) & (\rnd_generator|fsm|dataOut\(3))) # (!GLOBAL(\rnd_generator|fsm|PS.C~clkctrl_outclk\) & ((\rnd_generator|fsm|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|fsm|dataOut\(3),
	datac => \rnd_generator|fsm|PS.C~clkctrl_outclk\,
	datad => \rnd_generator|fsm|Selector9~0_combout\,
	combout => \rnd_generator|fsm|dataOut\(3));

-- Location: LCCOMB_X103_Y43_N18
\rnd_generator|fsm|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|Selector10~0_combout\ = (\rnd_generator|fsm|PS.D~q\ & \rnd_generator|fsm|s_dataIn\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|fsm|PS.D~q\,
	datad => \rnd_generator|fsm|s_dataIn\(4),
	combout => \rnd_generator|fsm|Selector10~0_combout\);

-- Location: LCCOMB_X103_Y43_N22
\rnd_generator|fsm|dataOut[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|dataOut\(4) = (GLOBAL(\rnd_generator|fsm|PS.C~clkctrl_outclk\) & (\rnd_generator|fsm|dataOut\(4))) # (!GLOBAL(\rnd_generator|fsm|PS.C~clkctrl_outclk\) & ((\rnd_generator|fsm|Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|fsm|dataOut\(4),
	datac => \rnd_generator|fsm|PS.C~clkctrl_outclk\,
	datad => \rnd_generator|fsm|Selector10~0_combout\,
	combout => \rnd_generator|fsm|dataOut\(4));

-- Location: LCCOMB_X103_Y43_N12
\rnd_generator|fsm|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|Selector11~0_combout\ = (\rnd_generator|fsm|PS.D~q\ & \rnd_generator|fsm|s_dataIn\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|fsm|PS.D~q\,
	datad => \rnd_generator|fsm|s_dataIn\(5),
	combout => \rnd_generator|fsm|Selector11~0_combout\);

-- Location: LCCOMB_X103_Y43_N30
\rnd_generator|fsm|dataOut[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|fsm|dataOut\(5) = (GLOBAL(\rnd_generator|fsm|PS.C~clkctrl_outclk\) & (\rnd_generator|fsm|dataOut\(5))) # (!GLOBAL(\rnd_generator|fsm|PS.C~clkctrl_outclk\) & ((\rnd_generator|fsm|Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|fsm|dataOut\(5),
	datac => \rnd_generator|fsm|PS.C~clkctrl_outclk\,
	datad => \rnd_generator|fsm|Selector11~0_combout\,
	combout => \rnd_generator|fsm|dataOut\(5));

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;
END structure;


