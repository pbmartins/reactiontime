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

-- DATE "05/27/2015 23:20:51"

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

ENTITY 	TimerAuxFSM_v2 IS
    PORT (
	newTime : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	timerVal : IN std_logic_vector(5 DOWNTO 0);
	currentValue : BUFFER std_logic_vector(5 DOWNTO 0);
	timeExp : BUFFER std_logic
	);
END TimerAuxFSM_v2;

-- Design Ports Information
-- currentValue[0]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentValue[1]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentValue[2]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentValue[3]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentValue[4]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- currentValue[5]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeExp	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timerVal[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newTime	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timerVal[1]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timerVal[2]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timerVal[3]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timerVal[4]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timerVal[5]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TimerAuxFSM_v2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_newTime : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_timerVal : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_currentValue : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_timeExp : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \currentValue[0]~output_o\ : std_logic;
SIGNAL \currentValue[1]~output_o\ : std_logic;
SIGNAL \currentValue[2]~output_o\ : std_logic;
SIGNAL \currentValue[3]~output_o\ : std_logic;
SIGNAL \currentValue[4]~output_o\ : std_logic;
SIGNAL \currentValue[5]~output_o\ : std_logic;
SIGNAL \timeExp~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \timerVal[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \newTime~input_o\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \timerVal[5]~input_o\ : std_logic;
SIGNAL \timerVal[4]~input_o\ : std_logic;
SIGNAL \timerVal[3]~input_o\ : std_logic;
SIGNAL \timerVal[2]~input_o\ : std_logic;
SIGNAL \timerVal[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \s_counter[0]~1_combout\ : std_logic;
SIGNAL \s_counter[0]~0_combout\ : std_logic;
SIGNAL \s_counter[0]~2_combout\ : std_logic;
SIGNAL \s_timeExp~q\ : std_logic;
SIGNAL s_counter : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_s_counter[0]~2_combout\ : std_logic;
SIGNAL ALT_INV_s_counter : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_newTime <= newTime;
ww_clk <= clk;
ww_reset <= reset;
ww_timerVal <= timerVal;
currentValue <= ww_currentValue;
timeExp <= ww_timeExp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_s_counter[0]~2_combout\ <= NOT \s_counter[0]~2_combout\;
ALT_INV_s_counter(5) <= NOT s_counter(5);
ALT_INV_s_counter(4) <= NOT s_counter(4);
ALT_INV_s_counter(3) <= NOT s_counter(3);
ALT_INV_s_counter(2) <= NOT s_counter(2);
ALT_INV_s_counter(1) <= NOT s_counter(1);
ALT_INV_s_counter(0) <= NOT s_counter(0);

-- Location: IOOBUF_X115_Y65_N16
\currentValue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_counter(0),
	devoe => ww_devoe,
	o => \currentValue[0]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\currentValue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_counter(1),
	devoe => ww_devoe,
	o => \currentValue[1]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\currentValue[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_counter(2),
	devoe => ww_devoe,
	o => \currentValue[2]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\currentValue[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_counter(3),
	devoe => ww_devoe,
	o => \currentValue[3]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\currentValue[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_counter(4),
	devoe => ww_devoe,
	o => \currentValue[4]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\currentValue[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_s_counter(5),
	devoe => ww_devoe,
	o => \currentValue[5]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\timeExp~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_timeExp~q\,
	devoe => ww_devoe,
	o => \timeExp~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y62_N15
\timerVal[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timerVal(0),
	o => \timerVal[0]~input_o\);

-- Location: LCCOMB_X114_Y62_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \timerVal[0]~input_o\ $ (VCC)
-- \Add0~1\ = CARRY(\timerVal[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerVal[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X113_Y62_N14
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = s_counter(0) $ (GND)
-- \Add1~1\ = CARRY(!s_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X115_Y61_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X115_Y63_N8
\newTime~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newTime,
	o => \newTime~input_o\);

-- Location: LCCOMB_X113_Y62_N12
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (!\reset~input_o\ & ((\newTime~input_o\ & (!\Add0~0_combout\)) # (!\newTime~input_o\ & ((!\Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add1~0_combout\,
	datac => \reset~input_o\,
	datad => \newTime~input_o\,
	combout => \Add1~2_combout\);

-- Location: IOIBUF_X115_Y62_N22
\timerVal[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timerVal(5),
	o => \timerVal[5]~input_o\);

-- Location: IOIBUF_X115_Y61_N15
\timerVal[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timerVal(4),
	o => \timerVal[4]~input_o\);

-- Location: IOIBUF_X115_Y62_N8
\timerVal[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timerVal(3),
	o => \timerVal[3]~input_o\);

-- Location: IOIBUF_X115_Y64_N8
\timerVal[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timerVal(2),
	o => \timerVal[2]~input_o\);

-- Location: IOIBUF_X115_Y63_N1
\timerVal[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timerVal(1),
	o => \timerVal[1]~input_o\);

-- Location: LCCOMB_X114_Y62_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\timerVal[1]~input_o\ & (\Add0~1\ & VCC)) # (!\timerVal[1]~input_o\ & (!\Add0~1\))
-- \Add0~3\ = CARRY((!\timerVal[1]~input_o\ & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerVal[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X114_Y62_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\timerVal[2]~input_o\ & ((GND) # (!\Add0~3\))) # (!\timerVal[2]~input_o\ & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((\timerVal[2]~input_o\) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerVal[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X114_Y62_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\timerVal[3]~input_o\ & (\Add0~5\ & VCC)) # (!\timerVal[3]~input_o\ & (!\Add0~5\))
-- \Add0~7\ = CARRY((!\timerVal[3]~input_o\ & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerVal[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X114_Y62_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\timerVal[4]~input_o\ & ((GND) # (!\Add0~7\))) # (!\timerVal[4]~input_o\ & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((\timerVal[4]~input_o\) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerVal[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X114_Y62_N16
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \Add0~9\ $ (!\timerVal[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timerVal[5]~input_o\,
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X113_Y62_N16
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (s_counter(1) & (!\Add1~1\)) # (!s_counter(1) & (\Add1~1\ & VCC))
-- \Add1~4\ = CARRY((s_counter(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X113_Y62_N2
\Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (!\reset~input_o\ & ((\newTime~input_o\ & (!\Add0~2_combout\)) # (!\newTime~input_o\ & ((!\Add1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \newTime~input_o\,
	datac => \Add0~2_combout\,
	datad => \Add1~3_combout\,
	combout => \Add1~5_combout\);

-- Location: FF_X113_Y62_N3
\s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~5_combout\,
	ena => \ALT_INV_s_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(1));

-- Location: LCCOMB_X113_Y62_N18
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (s_counter(2) & (\Add1~4\ $ (GND))) # (!s_counter(2) & ((GND) # (!\Add1~4\)))
-- \Add1~7\ = CARRY((!\Add1~4\) # (!s_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(2),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X113_Y62_N4
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (!\reset~input_o\ & ((\newTime~input_o\ & (!\Add0~4_combout\)) # (!\newTime~input_o\ & ((!\Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \newTime~input_o\,
	datac => \Add0~4_combout\,
	datad => \Add1~6_combout\,
	combout => \Add1~8_combout\);

-- Location: FF_X113_Y62_N5
\s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	ena => \ALT_INV_s_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(2));

-- Location: LCCOMB_X113_Y62_N20
\Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (s_counter(3) & (!\Add1~7\)) # (!s_counter(3) & (\Add1~7\ & VCC))
-- \Add1~10\ = CARRY((s_counter(3) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(3),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X113_Y62_N6
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (!\reset~input_o\ & ((\newTime~input_o\ & (!\Add0~6_combout\)) # (!\newTime~input_o\ & ((!\Add1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \newTime~input_o\,
	datac => \Add0~6_combout\,
	datad => \Add1~9_combout\,
	combout => \Add1~11_combout\);

-- Location: FF_X113_Y62_N7
\s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~11_combout\,
	ena => \ALT_INV_s_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(3));

-- Location: LCCOMB_X113_Y62_N22
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (s_counter(4) & (\Add1~10\ $ (GND))) # (!s_counter(4) & ((GND) # (!\Add1~10\)))
-- \Add1~13\ = CARRY((!\Add1~10\) # (!s_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(4),
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X113_Y62_N0
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (!\reset~input_o\ & ((\newTime~input_o\ & (!\Add0~8_combout\)) # (!\newTime~input_o\ & ((!\Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add0~8_combout\,
	datac => \Add1~12_combout\,
	datad => \newTime~input_o\,
	combout => \Add1~14_combout\);

-- Location: FF_X113_Y62_N1
\s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	ena => \ALT_INV_s_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(4));

-- Location: LCCOMB_X113_Y62_N24
\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = s_counter(5) $ (\Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(5),
	cin => \Add1~13\,
	combout => \Add1~15_combout\);

-- Location: LCCOMB_X113_Y62_N26
\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (!\reset~input_o\ & ((\newTime~input_o\ & (!\Add0~10_combout\)) # (!\newTime~input_o\ & ((!\Add1~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \newTime~input_o\,
	datac => \reset~input_o\,
	datad => \Add1~15_combout\,
	combout => \Add1~17_combout\);

-- Location: FF_X113_Y62_N27
\s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~17_combout\,
	ena => \ALT_INV_s_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(5));

-- Location: LCCOMB_X113_Y62_N30
\s_counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[0]~1_combout\ = (!\reset~input_o\ & (!\newTime~input_o\ & (s_counter(5) & s_counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \newTime~input_o\,
	datac => s_counter(5),
	datad => s_counter(4),
	combout => \s_counter[0]~1_combout\);

-- Location: LCCOMB_X113_Y62_N28
\s_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[0]~0_combout\ = (s_counter(0) & (s_counter(1) & (s_counter(2) & s_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(0),
	datab => s_counter(1),
	datac => s_counter(2),
	datad => s_counter(3),
	combout => \s_counter[0]~0_combout\);

-- Location: LCCOMB_X113_Y62_N8
\s_counter[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[0]~2_combout\ = (\s_counter[0]~1_combout\ & \s_counter[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_counter[0]~1_combout\,
	datad => \s_counter[0]~0_combout\,
	combout => \s_counter[0]~2_combout\);

-- Location: FF_X113_Y62_N13
\s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	ena => \ALT_INV_s_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(0));

-- Location: FF_X113_Y62_N17
s_timeExp : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_counter[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_timeExp~q\);

ww_currentValue(0) <= \currentValue[0]~output_o\;

ww_currentValue(1) <= \currentValue[1]~output_o\;

ww_currentValue(2) <= \currentValue[2]~output_o\;

ww_currentValue(3) <= \currentValue[3]~output_o\;

ww_currentValue(4) <= \currentValue[4]~output_o\;

ww_currentValue(5) <= \currentValue[5]~output_o\;

ww_timeExp <= \timeExp~output_o\;
END structure;


