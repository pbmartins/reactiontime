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

-- DATE "05/29/2015 14:59:27"

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

ENTITY 	LEDCounterFSM_DEMO IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0)
	);
END LEDCounterFSM_DEMO;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LEDCounterFSM_DEMO IS
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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkdivider_1hz|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~0_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~1\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~2_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~3\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~4_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~5\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~6_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~7\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~8_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~9\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~10_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~11\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~12_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~13\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~14_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~7_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~15\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~16_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~17\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~18_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~19\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~20_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~21\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~22_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~23\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~24_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~6_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~25\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~26_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~5_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~27\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~28_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~4_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~29\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~30_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~11_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~31\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~32_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~33\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~34_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~10_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal1~1_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~35\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~36_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~37\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~38_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~3_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~39\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~40_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~2_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~41\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~42_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~1_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~43\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~44_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~0_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~45\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~47\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~48_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~49\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~50_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~8_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal1~0_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~5_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~51\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~52_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~53\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~54_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~55\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~56_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~57\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~58_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~59\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~60_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~0_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~1_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~2_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~3_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~4_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~6_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal1~2_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~46_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~9_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~7_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~8_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~9_combout\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~0_combout\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~feeder_combout\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~q\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \uut|s_currentState.A~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \uut|s_currentState.A~q\ : std_logic;
SIGNAL \uut|s_nextState.B~0_combout\ : std_logic;
SIGNAL \uut|s_currentState.B~q\ : std_logic;
SIGNAL \uut|s_currentState.C~q\ : std_logic;
SIGNAL \uut|s_currentState.D~feeder_combout\ : std_logic;
SIGNAL \uut|s_currentState.D~q\ : std_logic;
SIGNAL \uut|s_currentState.E~0_combout\ : std_logic;
SIGNAL \uut|s_currentState.E~q\ : std_logic;
SIGNAL \uut|ledRed0~2_combout\ : std_logic;
SIGNAL \uut|ledRed1~combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \uut|ALT_INV_ledRed0~2_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clkdivider_1hz|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkdivider_1hz|clkOut~q\);
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\uut|ALT_INV_ledRed0~2_combout\ <= NOT \uut|ledRed0~2_combout\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|ALT_INV_ledRed0~2_combout\,
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
	i => \uut|ledRed1~combout\,
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
	i => \uut|s_currentState.B~q\,
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
	i => \uut|s_currentState.E~q\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

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

-- Location: LCCOMB_X66_Y42_N2
\clkdivider_1hz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~0_combout\ = \clkdivider_1hz|s_counter\(0) $ (VCC)
-- \clkdivider_1hz|Add0~1\ = CARRY(\clkdivider_1hz|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(0),
	datad => VCC,
	combout => \clkdivider_1hz|Add0~0_combout\,
	cout => \clkdivider_1hz|Add0~1\);

-- Location: FF_X66_Y42_N3
\clkdivider_1hz|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(0));

-- Location: LCCOMB_X66_Y42_N4
\clkdivider_1hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~2_combout\ = (\clkdivider_1hz|s_counter\(1) & (!\clkdivider_1hz|Add0~1\)) # (!\clkdivider_1hz|s_counter\(1) & ((\clkdivider_1hz|Add0~1\) # (GND)))
-- \clkdivider_1hz|Add0~3\ = CARRY((!\clkdivider_1hz|Add0~1\) # (!\clkdivider_1hz|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(1),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~1\,
	combout => \clkdivider_1hz|Add0~2_combout\,
	cout => \clkdivider_1hz|Add0~3\);

-- Location: FF_X66_Y42_N5
\clkdivider_1hz|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(1));

-- Location: LCCOMB_X66_Y42_N6
\clkdivider_1hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~4_combout\ = (\clkdivider_1hz|s_counter\(2) & (\clkdivider_1hz|Add0~3\ $ (GND))) # (!\clkdivider_1hz|s_counter\(2) & (!\clkdivider_1hz|Add0~3\ & VCC))
-- \clkdivider_1hz|Add0~5\ = CARRY((\clkdivider_1hz|s_counter\(2) & !\clkdivider_1hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(2),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~3\,
	combout => \clkdivider_1hz|Add0~4_combout\,
	cout => \clkdivider_1hz|Add0~5\);

-- Location: FF_X66_Y42_N7
\clkdivider_1hz|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(2));

-- Location: LCCOMB_X66_Y42_N8
\clkdivider_1hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~6_combout\ = (\clkdivider_1hz|s_counter\(3) & (!\clkdivider_1hz|Add0~5\)) # (!\clkdivider_1hz|s_counter\(3) & ((\clkdivider_1hz|Add0~5\) # (GND)))
-- \clkdivider_1hz|Add0~7\ = CARRY((!\clkdivider_1hz|Add0~5\) # (!\clkdivider_1hz|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(3),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~5\,
	combout => \clkdivider_1hz|Add0~6_combout\,
	cout => \clkdivider_1hz|Add0~7\);

-- Location: FF_X66_Y42_N9
\clkdivider_1hz|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(3));

-- Location: LCCOMB_X66_Y42_N10
\clkdivider_1hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~8_combout\ = (\clkdivider_1hz|s_counter\(4) & (\clkdivider_1hz|Add0~7\ $ (GND))) # (!\clkdivider_1hz|s_counter\(4) & (!\clkdivider_1hz|Add0~7\ & VCC))
-- \clkdivider_1hz|Add0~9\ = CARRY((\clkdivider_1hz|s_counter\(4) & !\clkdivider_1hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(4),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~7\,
	combout => \clkdivider_1hz|Add0~8_combout\,
	cout => \clkdivider_1hz|Add0~9\);

-- Location: FF_X66_Y42_N11
\clkdivider_1hz|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(4));

-- Location: LCCOMB_X66_Y42_N12
\clkdivider_1hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~10_combout\ = (\clkdivider_1hz|s_counter\(5) & (!\clkdivider_1hz|Add0~9\)) # (!\clkdivider_1hz|s_counter\(5) & ((\clkdivider_1hz|Add0~9\) # (GND)))
-- \clkdivider_1hz|Add0~11\ = CARRY((!\clkdivider_1hz|Add0~9\) # (!\clkdivider_1hz|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(5),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~9\,
	combout => \clkdivider_1hz|Add0~10_combout\,
	cout => \clkdivider_1hz|Add0~11\);

-- Location: FF_X66_Y42_N13
\clkdivider_1hz|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(5));

-- Location: LCCOMB_X66_Y42_N14
\clkdivider_1hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~12_combout\ = (\clkdivider_1hz|s_counter\(6) & (\clkdivider_1hz|Add0~11\ $ (GND))) # (!\clkdivider_1hz|s_counter\(6) & (!\clkdivider_1hz|Add0~11\ & VCC))
-- \clkdivider_1hz|Add0~13\ = CARRY((\clkdivider_1hz|s_counter\(6) & !\clkdivider_1hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(6),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~11\,
	combout => \clkdivider_1hz|Add0~12_combout\,
	cout => \clkdivider_1hz|Add0~13\);

-- Location: FF_X66_Y42_N15
\clkdivider_1hz|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(6));

-- Location: LCCOMB_X66_Y42_N16
\clkdivider_1hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~14_combout\ = (\clkdivider_1hz|s_counter\(7) & (!\clkdivider_1hz|Add0~13\)) # (!\clkdivider_1hz|s_counter\(7) & ((\clkdivider_1hz|Add0~13\) # (GND)))
-- \clkdivider_1hz|Add0~15\ = CARRY((!\clkdivider_1hz|Add0~13\) # (!\clkdivider_1hz|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(7),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~13\,
	combout => \clkdivider_1hz|Add0~14_combout\,
	cout => \clkdivider_1hz|Add0~15\);

-- Location: LCCOMB_X67_Y41_N10
\clkdivider_1hz|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~7_combout\ = (\clkdivider_1hz|Add0~14_combout\ & !\clkdivider_1hz|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|Add0~14_combout\,
	datad => \clkdivider_1hz|Equal1~2_combout\,
	combout => \clkdivider_1hz|s_counter~7_combout\);

-- Location: FF_X67_Y41_N11
\clkdivider_1hz|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(7));

-- Location: LCCOMB_X66_Y42_N18
\clkdivider_1hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~16_combout\ = (\clkdivider_1hz|s_counter\(8) & (\clkdivider_1hz|Add0~15\ $ (GND))) # (!\clkdivider_1hz|s_counter\(8) & (!\clkdivider_1hz|Add0~15\ & VCC))
-- \clkdivider_1hz|Add0~17\ = CARRY((\clkdivider_1hz|s_counter\(8) & !\clkdivider_1hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(8),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~15\,
	combout => \clkdivider_1hz|Add0~16_combout\,
	cout => \clkdivider_1hz|Add0~17\);

-- Location: FF_X66_Y42_N19
\clkdivider_1hz|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(8));

-- Location: LCCOMB_X66_Y42_N20
\clkdivider_1hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~18_combout\ = (\clkdivider_1hz|s_counter\(9) & (!\clkdivider_1hz|Add0~17\)) # (!\clkdivider_1hz|s_counter\(9) & ((\clkdivider_1hz|Add0~17\) # (GND)))
-- \clkdivider_1hz|Add0~19\ = CARRY((!\clkdivider_1hz|Add0~17\) # (!\clkdivider_1hz|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(9),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~17\,
	combout => \clkdivider_1hz|Add0~18_combout\,
	cout => \clkdivider_1hz|Add0~19\);

-- Location: FF_X66_Y42_N21
\clkdivider_1hz|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(9));

-- Location: LCCOMB_X66_Y42_N22
\clkdivider_1hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~20_combout\ = (\clkdivider_1hz|s_counter\(10) & (\clkdivider_1hz|Add0~19\ $ (GND))) # (!\clkdivider_1hz|s_counter\(10) & (!\clkdivider_1hz|Add0~19\ & VCC))
-- \clkdivider_1hz|Add0~21\ = CARRY((\clkdivider_1hz|s_counter\(10) & !\clkdivider_1hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(10),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~19\,
	combout => \clkdivider_1hz|Add0~20_combout\,
	cout => \clkdivider_1hz|Add0~21\);

-- Location: FF_X66_Y42_N23
\clkdivider_1hz|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(10));

-- Location: LCCOMB_X66_Y42_N24
\clkdivider_1hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~22_combout\ = (\clkdivider_1hz|s_counter\(11) & (!\clkdivider_1hz|Add0~21\)) # (!\clkdivider_1hz|s_counter\(11) & ((\clkdivider_1hz|Add0~21\) # (GND)))
-- \clkdivider_1hz|Add0~23\ = CARRY((!\clkdivider_1hz|Add0~21\) # (!\clkdivider_1hz|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(11),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~21\,
	combout => \clkdivider_1hz|Add0~22_combout\,
	cout => \clkdivider_1hz|Add0~23\);

-- Location: FF_X66_Y42_N25
\clkdivider_1hz|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(11));

-- Location: LCCOMB_X66_Y42_N26
\clkdivider_1hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~24_combout\ = (\clkdivider_1hz|s_counter\(12) & (\clkdivider_1hz|Add0~23\ $ (GND))) # (!\clkdivider_1hz|s_counter\(12) & (!\clkdivider_1hz|Add0~23\ & VCC))
-- \clkdivider_1hz|Add0~25\ = CARRY((\clkdivider_1hz|s_counter\(12) & !\clkdivider_1hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(12),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~23\,
	combout => \clkdivider_1hz|Add0~24_combout\,
	cout => \clkdivider_1hz|Add0~25\);

-- Location: LCCOMB_X67_Y41_N18
\clkdivider_1hz|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~6_combout\ = (!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Equal1~2_combout\,
	datad => \clkdivider_1hz|Add0~24_combout\,
	combout => \clkdivider_1hz|s_counter~6_combout\);

-- Location: FF_X67_Y41_N19
\clkdivider_1hz|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(12));

-- Location: LCCOMB_X66_Y42_N28
\clkdivider_1hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~26_combout\ = (\clkdivider_1hz|s_counter\(13) & (!\clkdivider_1hz|Add0~25\)) # (!\clkdivider_1hz|s_counter\(13) & ((\clkdivider_1hz|Add0~25\) # (GND)))
-- \clkdivider_1hz|Add0~27\ = CARRY((!\clkdivider_1hz|Add0~25\) # (!\clkdivider_1hz|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(13),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~25\,
	combout => \clkdivider_1hz|Add0~26_combout\,
	cout => \clkdivider_1hz|Add0~27\);

-- Location: LCCOMB_X67_Y41_N24
\clkdivider_1hz|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~5_combout\ = (\clkdivider_1hz|Add0~26_combout\ & !\clkdivider_1hz|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Add0~26_combout\,
	datad => \clkdivider_1hz|Equal1~2_combout\,
	combout => \clkdivider_1hz|s_counter~5_combout\);

-- Location: FF_X67_Y41_N25
\clkdivider_1hz|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(13));

-- Location: LCCOMB_X66_Y42_N30
\clkdivider_1hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~28_combout\ = (\clkdivider_1hz|s_counter\(14) & (\clkdivider_1hz|Add0~27\ $ (GND))) # (!\clkdivider_1hz|s_counter\(14) & (!\clkdivider_1hz|Add0~27\ & VCC))
-- \clkdivider_1hz|Add0~29\ = CARRY((\clkdivider_1hz|s_counter\(14) & !\clkdivider_1hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(14),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~27\,
	combout => \clkdivider_1hz|Add0~28_combout\,
	cout => \clkdivider_1hz|Add0~29\);

-- Location: LCCOMB_X66_Y42_N0
\clkdivider_1hz|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~4_combout\ = (\clkdivider_1hz|Add0~28_combout\ & !\clkdivider_1hz|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Add0~28_combout\,
	datad => \clkdivider_1hz|Equal1~2_combout\,
	combout => \clkdivider_1hz|s_counter~4_combout\);

-- Location: FF_X66_Y42_N1
\clkdivider_1hz|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(14));

-- Location: LCCOMB_X66_Y41_N0
\clkdivider_1hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~30_combout\ = (\clkdivider_1hz|s_counter\(15) & (!\clkdivider_1hz|Add0~29\)) # (!\clkdivider_1hz|s_counter\(15) & ((\clkdivider_1hz|Add0~29\) # (GND)))
-- \clkdivider_1hz|Add0~31\ = CARRY((!\clkdivider_1hz|Add0~29\) # (!\clkdivider_1hz|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(15),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~29\,
	combout => \clkdivider_1hz|Add0~30_combout\,
	cout => \clkdivider_1hz|Add0~31\);

-- Location: LCCOMB_X65_Y41_N28
\clkdivider_1hz|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~11_combout\ = (\clkdivider_1hz|Add0~30_combout\ & !\clkdivider_1hz|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Add0~30_combout\,
	datad => \clkdivider_1hz|Equal1~2_combout\,
	combout => \clkdivider_1hz|s_counter~11_combout\);

-- Location: FF_X65_Y41_N29
\clkdivider_1hz|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(15));

-- Location: LCCOMB_X66_Y41_N2
\clkdivider_1hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~32_combout\ = (\clkdivider_1hz|s_counter\(16) & (\clkdivider_1hz|Add0~31\ $ (GND))) # (!\clkdivider_1hz|s_counter\(16) & (!\clkdivider_1hz|Add0~31\ & VCC))
-- \clkdivider_1hz|Add0~33\ = CARRY((\clkdivider_1hz|s_counter\(16) & !\clkdivider_1hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(16),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~31\,
	combout => \clkdivider_1hz|Add0~32_combout\,
	cout => \clkdivider_1hz|Add0~33\);

-- Location: FF_X66_Y41_N3
\clkdivider_1hz|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(16));

-- Location: LCCOMB_X66_Y41_N4
\clkdivider_1hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~34_combout\ = (\clkdivider_1hz|s_counter\(17) & (!\clkdivider_1hz|Add0~33\)) # (!\clkdivider_1hz|s_counter\(17) & ((\clkdivider_1hz|Add0~33\) # (GND)))
-- \clkdivider_1hz|Add0~35\ = CARRY((!\clkdivider_1hz|Add0~33\) # (!\clkdivider_1hz|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(17),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~33\,
	combout => \clkdivider_1hz|Add0~34_combout\,
	cout => \clkdivider_1hz|Add0~35\);

-- Location: LCCOMB_X65_Y41_N14
\clkdivider_1hz|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~10_combout\ = (!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|Equal1~2_combout\,
	datad => \clkdivider_1hz|Add0~34_combout\,
	combout => \clkdivider_1hz|s_counter~10_combout\);

-- Location: FF_X65_Y41_N15
\clkdivider_1hz|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(17));

-- Location: LCCOMB_X65_Y41_N6
\clkdivider_1hz|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal1~1_combout\ = (!\clkdivider_1hz|s_counter\(16) & (\clkdivider_1hz|s_counter\(15) & (\clkdivider_1hz|s_counter\(17) & !\clkdivider_1hz|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(16),
	datab => \clkdivider_1hz|s_counter\(15),
	datac => \clkdivider_1hz|s_counter\(17),
	datad => \clkdivider_1hz|s_counter\(11),
	combout => \clkdivider_1hz|Equal1~1_combout\);

-- Location: LCCOMB_X66_Y41_N6
\clkdivider_1hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~36_combout\ = (\clkdivider_1hz|s_counter\(18) & (\clkdivider_1hz|Add0~35\ $ (GND))) # (!\clkdivider_1hz|s_counter\(18) & (!\clkdivider_1hz|Add0~35\ & VCC))
-- \clkdivider_1hz|Add0~37\ = CARRY((\clkdivider_1hz|s_counter\(18) & !\clkdivider_1hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(18),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~35\,
	combout => \clkdivider_1hz|Add0~36_combout\,
	cout => \clkdivider_1hz|Add0~37\);

-- Location: FF_X66_Y41_N7
\clkdivider_1hz|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(18));

-- Location: LCCOMB_X66_Y41_N8
\clkdivider_1hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~38_combout\ = (\clkdivider_1hz|s_counter\(19) & (!\clkdivider_1hz|Add0~37\)) # (!\clkdivider_1hz|s_counter\(19) & ((\clkdivider_1hz|Add0~37\) # (GND)))
-- \clkdivider_1hz|Add0~39\ = CARRY((!\clkdivider_1hz|Add0~37\) # (!\clkdivider_1hz|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(19),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~37\,
	combout => \clkdivider_1hz|Add0~38_combout\,
	cout => \clkdivider_1hz|Add0~39\);

-- Location: LCCOMB_X67_Y41_N26
\clkdivider_1hz|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~3_combout\ = (!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Equal1~2_combout\,
	datad => \clkdivider_1hz|Add0~38_combout\,
	combout => \clkdivider_1hz|s_counter~3_combout\);

-- Location: FF_X67_Y41_N27
\clkdivider_1hz|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(19));

-- Location: LCCOMB_X66_Y41_N10
\clkdivider_1hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~40_combout\ = (\clkdivider_1hz|s_counter\(20) & (\clkdivider_1hz|Add0~39\ $ (GND))) # (!\clkdivider_1hz|s_counter\(20) & (!\clkdivider_1hz|Add0~39\ & VCC))
-- \clkdivider_1hz|Add0~41\ = CARRY((\clkdivider_1hz|s_counter\(20) & !\clkdivider_1hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(20),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~39\,
	combout => \clkdivider_1hz|Add0~40_combout\,
	cout => \clkdivider_1hz|Add0~41\);

-- Location: LCCOMB_X67_Y41_N22
\clkdivider_1hz|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~2_combout\ = (!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Equal1~2_combout\,
	datad => \clkdivider_1hz|Add0~40_combout\,
	combout => \clkdivider_1hz|s_counter~2_combout\);

-- Location: FF_X67_Y41_N23
\clkdivider_1hz|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(20));

-- Location: LCCOMB_X66_Y41_N12
\clkdivider_1hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~42_combout\ = (\clkdivider_1hz|s_counter\(21) & (!\clkdivider_1hz|Add0~41\)) # (!\clkdivider_1hz|s_counter\(21) & ((\clkdivider_1hz|Add0~41\) # (GND)))
-- \clkdivider_1hz|Add0~43\ = CARRY((!\clkdivider_1hz|Add0~41\) # (!\clkdivider_1hz|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(21),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~41\,
	combout => \clkdivider_1hz|Add0~42_combout\,
	cout => \clkdivider_1hz|Add0~43\);

-- Location: LCCOMB_X67_Y41_N20
\clkdivider_1hz|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~1_combout\ = (!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Equal1~2_combout\,
	datad => \clkdivider_1hz|Add0~42_combout\,
	combout => \clkdivider_1hz|s_counter~1_combout\);

-- Location: FF_X67_Y41_N21
\clkdivider_1hz|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(21));

-- Location: LCCOMB_X66_Y41_N14
\clkdivider_1hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~44_combout\ = (\clkdivider_1hz|s_counter\(22) & (\clkdivider_1hz|Add0~43\ $ (GND))) # (!\clkdivider_1hz|s_counter\(22) & (!\clkdivider_1hz|Add0~43\ & VCC))
-- \clkdivider_1hz|Add0~45\ = CARRY((\clkdivider_1hz|s_counter\(22) & !\clkdivider_1hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(22),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~43\,
	combout => \clkdivider_1hz|Add0~44_combout\,
	cout => \clkdivider_1hz|Add0~45\);

-- Location: LCCOMB_X67_Y41_N6
\clkdivider_1hz|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~0_combout\ = (!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Equal1~2_combout\,
	datad => \clkdivider_1hz|Add0~44_combout\,
	combout => \clkdivider_1hz|s_counter~0_combout\);

-- Location: FF_X67_Y41_N7
\clkdivider_1hz|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(22));

-- Location: LCCOMB_X66_Y41_N16
\clkdivider_1hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~46_combout\ = (\clkdivider_1hz|s_counter\(23) & (!\clkdivider_1hz|Add0~45\)) # (!\clkdivider_1hz|s_counter\(23) & ((\clkdivider_1hz|Add0~45\) # (GND)))
-- \clkdivider_1hz|Add0~47\ = CARRY((!\clkdivider_1hz|Add0~45\) # (!\clkdivider_1hz|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(23),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~45\,
	combout => \clkdivider_1hz|Add0~46_combout\,
	cout => \clkdivider_1hz|Add0~47\);

-- Location: LCCOMB_X66_Y41_N18
\clkdivider_1hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~48_combout\ = (\clkdivider_1hz|s_counter\(24) & (\clkdivider_1hz|Add0~47\ $ (GND))) # (!\clkdivider_1hz|s_counter\(24) & (!\clkdivider_1hz|Add0~47\ & VCC))
-- \clkdivider_1hz|Add0~49\ = CARRY((\clkdivider_1hz|s_counter\(24) & !\clkdivider_1hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(24),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~47\,
	combout => \clkdivider_1hz|Add0~48_combout\,
	cout => \clkdivider_1hz|Add0~49\);

-- Location: FF_X66_Y41_N19
\clkdivider_1hz|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(24));

-- Location: LCCOMB_X66_Y41_N20
\clkdivider_1hz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~50_combout\ = (\clkdivider_1hz|s_counter\(25) & (!\clkdivider_1hz|Add0~49\)) # (!\clkdivider_1hz|s_counter\(25) & ((\clkdivider_1hz|Add0~49\) # (GND)))
-- \clkdivider_1hz|Add0~51\ = CARRY((!\clkdivider_1hz|Add0~49\) # (!\clkdivider_1hz|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(25),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~49\,
	combout => \clkdivider_1hz|Add0~50_combout\,
	cout => \clkdivider_1hz|Add0~51\);

-- Location: LCCOMB_X65_Y41_N16
\clkdivider_1hz|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~8_combout\ = (\clkdivider_1hz|Add0~50_combout\ & !\clkdivider_1hz|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Add0~50_combout\,
	datad => \clkdivider_1hz|Equal1~2_combout\,
	combout => \clkdivider_1hz|s_counter~8_combout\);

-- Location: FF_X65_Y41_N17
\clkdivider_1hz|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(25));

-- Location: LCCOMB_X65_Y41_N8
\clkdivider_1hz|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal1~0_combout\ = (\clkdivider_1hz|s_counter\(23) & (!\clkdivider_1hz|s_counter\(24) & (\clkdivider_1hz|s_counter\(25) & !\clkdivider_1hz|s_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(23),
	datab => \clkdivider_1hz|s_counter\(24),
	datac => \clkdivider_1hz|s_counter\(25),
	datad => \clkdivider_1hz|s_counter\(18),
	combout => \clkdivider_1hz|Equal1~0_combout\);

-- Location: LCCOMB_X65_Y42_N20
\clkdivider_1hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~5_combout\ = (\clkdivider_1hz|s_counter\(2) & (\clkdivider_1hz|s_counter\(5) & (\clkdivider_1hz|s_counter\(3) & \clkdivider_1hz|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(2),
	datab => \clkdivider_1hz|s_counter\(5),
	datac => \clkdivider_1hz|s_counter\(3),
	datad => \clkdivider_1hz|s_counter\(4),
	combout => \clkdivider_1hz|Equal0~5_combout\);

-- Location: LCCOMB_X66_Y41_N22
\clkdivider_1hz|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~52_combout\ = (\clkdivider_1hz|s_counter\(26) & (\clkdivider_1hz|Add0~51\ $ (GND))) # (!\clkdivider_1hz|s_counter\(26) & (!\clkdivider_1hz|Add0~51\ & VCC))
-- \clkdivider_1hz|Add0~53\ = CARRY((\clkdivider_1hz|s_counter\(26) & !\clkdivider_1hz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(26),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~51\,
	combout => \clkdivider_1hz|Add0~52_combout\,
	cout => \clkdivider_1hz|Add0~53\);

-- Location: FF_X66_Y41_N23
\clkdivider_1hz|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(26));

-- Location: LCCOMB_X66_Y41_N24
\clkdivider_1hz|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~54_combout\ = (\clkdivider_1hz|s_counter\(27) & (!\clkdivider_1hz|Add0~53\)) # (!\clkdivider_1hz|s_counter\(27) & ((\clkdivider_1hz|Add0~53\) # (GND)))
-- \clkdivider_1hz|Add0~55\ = CARRY((!\clkdivider_1hz|Add0~53\) # (!\clkdivider_1hz|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(27),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~53\,
	combout => \clkdivider_1hz|Add0~54_combout\,
	cout => \clkdivider_1hz|Add0~55\);

-- Location: FF_X66_Y41_N25
\clkdivider_1hz|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(27));

-- Location: LCCOMB_X66_Y41_N26
\clkdivider_1hz|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~56_combout\ = (\clkdivider_1hz|s_counter\(28) & (\clkdivider_1hz|Add0~55\ $ (GND))) # (!\clkdivider_1hz|s_counter\(28) & (!\clkdivider_1hz|Add0~55\ & VCC))
-- \clkdivider_1hz|Add0~57\ = CARRY((\clkdivider_1hz|s_counter\(28) & !\clkdivider_1hz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(28),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~55\,
	combout => \clkdivider_1hz|Add0~56_combout\,
	cout => \clkdivider_1hz|Add0~57\);

-- Location: FF_X66_Y41_N27
\clkdivider_1hz|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(28));

-- Location: LCCOMB_X66_Y41_N28
\clkdivider_1hz|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~58_combout\ = (\clkdivider_1hz|s_counter\(29) & (!\clkdivider_1hz|Add0~57\)) # (!\clkdivider_1hz|s_counter\(29) & ((\clkdivider_1hz|Add0~57\) # (GND)))
-- \clkdivider_1hz|Add0~59\ = CARRY((!\clkdivider_1hz|Add0~57\) # (!\clkdivider_1hz|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(29),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~57\,
	combout => \clkdivider_1hz|Add0~58_combout\,
	cout => \clkdivider_1hz|Add0~59\);

-- Location: FF_X66_Y41_N29
\clkdivider_1hz|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(29));

-- Location: LCCOMB_X66_Y41_N30
\clkdivider_1hz|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~60_combout\ = \clkdivider_1hz|s_counter\(30) $ (!\clkdivider_1hz|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(30),
	cin => \clkdivider_1hz|Add0~59\,
	combout => \clkdivider_1hz|Add0~60_combout\);

-- Location: FF_X66_Y41_N31
\clkdivider_1hz|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(30));

-- Location: LCCOMB_X67_Y41_N12
\clkdivider_1hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~0_combout\ = (!\clkdivider_1hz|s_counter\(28) & (!\clkdivider_1hz|s_counter\(29) & (!\clkdivider_1hz|s_counter\(30) & !\clkdivider_1hz|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(28),
	datab => \clkdivider_1hz|s_counter\(29),
	datac => \clkdivider_1hz|s_counter\(30),
	datad => \clkdivider_1hz|s_counter\(27),
	combout => \clkdivider_1hz|Equal0~0_combout\);

-- Location: LCCOMB_X67_Y41_N8
\clkdivider_1hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~1_combout\ = (\clkdivider_1hz|s_counter\(22) & (\clkdivider_1hz|s_counter\(21) & (\clkdivider_1hz|s_counter\(20) & !\clkdivider_1hz|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(22),
	datab => \clkdivider_1hz|s_counter\(21),
	datac => \clkdivider_1hz|s_counter\(20),
	datad => \clkdivider_1hz|s_counter\(26),
	combout => \clkdivider_1hz|Equal0~1_combout\);

-- Location: LCCOMB_X67_Y41_N4
\clkdivider_1hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~2_combout\ = (\clkdivider_1hz|s_counter\(19) & (\clkdivider_1hz|s_counter\(12) & (\clkdivider_1hz|s_counter\(13) & \clkdivider_1hz|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(19),
	datab => \clkdivider_1hz|s_counter\(12),
	datac => \clkdivider_1hz|s_counter\(13),
	datad => \clkdivider_1hz|s_counter\(14),
	combout => \clkdivider_1hz|Equal0~2_combout\);

-- Location: LCCOMB_X67_Y41_N28
\clkdivider_1hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~3_combout\ = (!\clkdivider_1hz|s_counter\(8) & (!\clkdivider_1hz|s_counter\(7) & (!\clkdivider_1hz|s_counter\(9) & !\clkdivider_1hz|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(8),
	datab => \clkdivider_1hz|s_counter\(7),
	datac => \clkdivider_1hz|s_counter\(9),
	datad => \clkdivider_1hz|s_counter\(10),
	combout => \clkdivider_1hz|Equal0~3_combout\);

-- Location: LCCOMB_X67_Y41_N14
\clkdivider_1hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~4_combout\ = (\clkdivider_1hz|Equal0~0_combout\ & (\clkdivider_1hz|Equal0~1_combout\ & (\clkdivider_1hz|Equal0~2_combout\ & \clkdivider_1hz|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|Equal0~0_combout\,
	datab => \clkdivider_1hz|Equal0~1_combout\,
	datac => \clkdivider_1hz|Equal0~2_combout\,
	datad => \clkdivider_1hz|Equal0~3_combout\,
	combout => \clkdivider_1hz|Equal0~4_combout\);

-- Location: LCCOMB_X65_Y41_N18
\clkdivider_1hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~6_combout\ = (\clkdivider_1hz|s_counter\(1) & (\clkdivider_1hz|s_counter\(0) & (\clkdivider_1hz|Equal0~5_combout\ & \clkdivider_1hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(1),
	datab => \clkdivider_1hz|s_counter\(0),
	datac => \clkdivider_1hz|Equal0~5_combout\,
	datad => \clkdivider_1hz|Equal0~4_combout\,
	combout => \clkdivider_1hz|Equal0~6_combout\);

-- Location: LCCOMB_X65_Y41_N24
\clkdivider_1hz|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal1~2_combout\ = (\clkdivider_1hz|Equal1~1_combout\ & (\clkdivider_1hz|s_counter\(6) & (\clkdivider_1hz|Equal1~0_combout\ & \clkdivider_1hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|Equal1~1_combout\,
	datab => \clkdivider_1hz|s_counter\(6),
	datac => \clkdivider_1hz|Equal1~0_combout\,
	datad => \clkdivider_1hz|Equal0~6_combout\,
	combout => \clkdivider_1hz|Equal1~2_combout\);

-- Location: LCCOMB_X65_Y41_N26
\clkdivider_1hz|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~9_combout\ = (!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|Equal1~2_combout\,
	datad => \clkdivider_1hz|Add0~46_combout\,
	combout => \clkdivider_1hz|s_counter~9_combout\);

-- Location: FF_X65_Y41_N27
\clkdivider_1hz|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(23));

-- Location: LCCOMB_X65_Y41_N10
\clkdivider_1hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~7_combout\ = (!\clkdivider_1hz|s_counter\(23) & (\clkdivider_1hz|s_counter\(24) & (!\clkdivider_1hz|s_counter\(25) & \clkdivider_1hz|s_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(23),
	datab => \clkdivider_1hz|s_counter\(24),
	datac => \clkdivider_1hz|s_counter\(25),
	datad => \clkdivider_1hz|s_counter\(18),
	combout => \clkdivider_1hz|Equal0~7_combout\);

-- Location: LCCOMB_X65_Y41_N20
\clkdivider_1hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~8_combout\ = (\clkdivider_1hz|s_counter\(16) & (!\clkdivider_1hz|s_counter\(15) & (!\clkdivider_1hz|s_counter\(17) & \clkdivider_1hz|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(16),
	datab => \clkdivider_1hz|s_counter\(15),
	datac => \clkdivider_1hz|s_counter\(17),
	datad => \clkdivider_1hz|s_counter\(11),
	combout => \clkdivider_1hz|Equal0~8_combout\);

-- Location: LCCOMB_X65_Y41_N12
\clkdivider_1hz|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~9_combout\ = (\clkdivider_1hz|Equal0~7_combout\ & (!\clkdivider_1hz|s_counter\(6) & \clkdivider_1hz|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|Equal0~7_combout\,
	datac => \clkdivider_1hz|s_counter\(6),
	datad => \clkdivider_1hz|Equal0~8_combout\,
	combout => \clkdivider_1hz|Equal0~9_combout\);

-- Location: LCCOMB_X65_Y41_N30
\clkdivider_1hz|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|clkOut~0_combout\ = (\clkdivider_1hz|Equal0~9_combout\ & ((\clkdivider_1hz|Equal0~6_combout\) # ((\clkdivider_1hz|clkOut~q\ & !\clkdivider_1hz|Equal1~2_combout\)))) # (!\clkdivider_1hz|Equal0~9_combout\ & (((\clkdivider_1hz|clkOut~q\ & 
-- !\clkdivider_1hz|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|Equal0~9_combout\,
	datab => \clkdivider_1hz|Equal0~6_combout\,
	datac => \clkdivider_1hz|clkOut~q\,
	datad => \clkdivider_1hz|Equal1~2_combout\,
	combout => \clkdivider_1hz|clkOut~0_combout\);

-- Location: LCCOMB_X65_Y41_N22
\clkdivider_1hz|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|clkOut~feeder_combout\ = \clkdivider_1hz|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|clkOut~0_combout\,
	combout => \clkdivider_1hz|clkOut~feeder_combout\);

-- Location: FF_X65_Y41_N23
\clkdivider_1hz|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|clkOut~q\);

-- Location: CLKCTRL_G11
\clkdivider_1hz|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkdivider_1hz|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkdivider_1hz|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X103_Y72_N2
\uut|s_currentState.A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|s_currentState.A~0_combout\ = (\uut|s_currentState.A~q\) # (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|s_currentState.A~q\,
	datad => \SW[0]~input_o\,
	combout => \uut|s_currentState.A~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X103_Y72_N3
\uut|s_currentState.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \uut|s_currentState.A~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|s_currentState.A~q\);

-- Location: LCCOMB_X103_Y72_N22
\uut|s_nextState.B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|s_nextState.B~0_combout\ = (\SW[0]~input_o\ & !\uut|s_currentState.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => \uut|s_currentState.A~q\,
	combout => \uut|s_nextState.B~0_combout\);

-- Location: FF_X103_Y72_N23
\uut|s_currentState.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \uut|s_nextState.B~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|s_currentState.B~q\);

-- Location: FF_X103_Y72_N29
\uut|s_currentState.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	asdata => \uut|s_currentState.B~q\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|s_currentState.C~q\);

-- Location: LCCOMB_X103_Y72_N18
\uut|s_currentState.D~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|s_currentState.D~feeder_combout\ = \uut|s_currentState.C~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|s_currentState.C~q\,
	combout => \uut|s_currentState.D~feeder_combout\);

-- Location: FF_X103_Y72_N19
\uut|s_currentState.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \uut|s_currentState.D~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|s_currentState.D~q\);

-- Location: LCCOMB_X103_Y72_N0
\uut|s_currentState.E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|s_currentState.E~0_combout\ = (\uut|s_currentState.E~q\) # (\uut|s_currentState.D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|s_currentState.E~q\,
	datad => \uut|s_currentState.D~q\,
	combout => \uut|s_currentState.E~0_combout\);

-- Location: FF_X103_Y72_N1
\uut|s_currentState.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \uut|s_currentState.E~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|s_currentState.E~q\);

-- Location: LCCOMB_X103_Y72_N24
\uut|ledRed0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|ledRed0~2_combout\ = (\uut|s_currentState.E~q\) # (!\uut|s_currentState.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|s_currentState.A~q\,
	datad => \uut|s_currentState.E~q\,
	combout => \uut|ledRed0~2_combout\);

-- Location: LCCOMB_X103_Y72_N28
\uut|ledRed1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|ledRed1~combout\ = (\uut|s_currentState.B~q\) # (\uut|s_currentState.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|s_currentState.B~q\,
	datac => \uut|s_currentState.C~q\,
	combout => \uut|ledRed1~combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;
END structure;


