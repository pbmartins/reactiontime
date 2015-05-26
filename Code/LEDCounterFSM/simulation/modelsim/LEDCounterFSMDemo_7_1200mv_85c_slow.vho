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

-- DATE "05/26/2015 23:11:58"

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

ENTITY 	LEDCounterFSM IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	enable : IN std_logic;
	final : OUT std_logic;
	ledRed0 : OUT std_logic;
	ledRed1 : OUT std_logic;
	ledRed2 : OUT std_logic
	);
END LEDCounterFSM;

-- Design Ports Information
-- final	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledRed0	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledRed1	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledRed2	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LEDCounterFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_final : std_logic;
SIGNAL ww_ledRed0 : std_logic;
SIGNAL ww_ledRed1 : std_logic;
SIGNAL ww_ledRed2 : std_logic;
SIGNAL \s_currentState.E~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \final~output_o\ : std_logic;
SIGNAL \ledRed0~output_o\ : std_logic;
SIGNAL \ledRed1~output_o\ : std_logic;
SIGNAL \ledRed2~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \s_currentState.E~clkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \s_nextState.A_113~combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_currentState~8_combout\ : std_logic;
SIGNAL \s_currentState.A~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \s_nextState.B_105~combout\ : std_logic;
SIGNAL \s_currentState~9_combout\ : std_logic;
SIGNAL \s_currentState.B~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \s_nextState.C_97~combout\ : std_logic;
SIGNAL \s_currentState~10_combout\ : std_logic;
SIGNAL \s_currentState.C~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \s_nextState.D_89~combout\ : std_logic;
SIGNAL \s_currentState~11_combout\ : std_logic;
SIGNAL \s_currentState.D~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \s_nextState.E_81~combout\ : std_logic;
SIGNAL \s_currentState~7_combout\ : std_logic;
SIGNAL \s_currentState.E~q\ : std_logic;
SIGNAL \ledRed0~2_combout\ : std_logic;
SIGNAL \ledRed1~0_combout\ : std_logic;
SIGNAL \ALT_INV_ledRed0~2_combout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_enable <= enable;
final <= ww_final;
ledRed0 <= ww_ledRed0;
ledRed1 <= ww_ledRed1;
ledRed2 <= ww_ledRed2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\s_currentState.E~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \s_currentState.E~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_ledRed0~2_combout\ <= NOT \ledRed0~2_combout\;

-- Location: IOOBUF_X54_Y0_N2
\final~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_currentState.E~q\,
	devoe => ww_devoe,
	o => \final~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\ledRed0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ledRed0~2_combout\,
	devoe => ww_devoe,
	o => \ledRed0~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\ledRed1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledRed1~0_combout\,
	devoe => ww_devoe,
	o => \ledRed1~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\ledRed2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_currentState.B~q\,
	devoe => ww_devoe,
	o => \ledRed2~output_o\);

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

-- Location: CLKCTRL_G16
\s_currentState.E~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \s_currentState.E~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \s_currentState.E~clkctrl_outclk\);

-- Location: IOIBUF_X56_Y0_N15
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X57_Y1_N4
\s_nextState.A_113\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.A_113~combout\ = (GLOBAL(\s_currentState.E~clkctrl_outclk\) & ((\s_nextState.A_113~combout\))) # (!GLOBAL(\s_currentState.E~clkctrl_outclk\) & (!\enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \s_nextState.A_113~combout\,
	datac => \s_currentState.E~clkctrl_outclk\,
	combout => \s_nextState.A_113~combout\);

-- Location: IOIBUF_X56_Y0_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X57_Y1_N12
\s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~8_combout\ = (!\s_nextState.A_113~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_nextState.A_113~combout\,
	datad => \reset~input_o\,
	combout => \s_currentState~8_combout\);

-- Location: FF_X57_Y1_N13
\s_currentState.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_currentState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.A~q\);

-- Location: LCCOMB_X57_Y1_N18
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\enable~input_o\ & !\s_currentState.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \s_currentState.A~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X57_Y1_N8
\s_nextState.B_105\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.B_105~combout\ = (GLOBAL(\s_currentState.E~clkctrl_outclk\) & (\s_nextState.B_105~combout\)) # (!GLOBAL(\s_currentState.E~clkctrl_outclk\) & ((\Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_nextState.B_105~combout\,
	datac => \s_currentState.E~clkctrl_outclk\,
	datad => \Selector6~0_combout\,
	combout => \s_nextState.B_105~combout\);

-- Location: LCCOMB_X57_Y1_N6
\s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~9_combout\ = (\s_nextState.B_105~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.B_105~combout\,
	datad => \reset~input_o\,
	combout => \s_currentState~9_combout\);

-- Location: FF_X57_Y1_N7
\s_currentState.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_currentState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.B~q\);

-- Location: LCCOMB_X57_Y1_N24
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\enable~input_o\ & \s_currentState.B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \s_currentState.B~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X57_Y1_N14
\s_nextState.C_97\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.C_97~combout\ = (GLOBAL(\s_currentState.E~clkctrl_outclk\) & (\s_nextState.C_97~combout\)) # (!GLOBAL(\s_currentState.E~clkctrl_outclk\) & ((\Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_nextState.C_97~combout\,
	datac => \s_currentState.E~clkctrl_outclk\,
	datad => \Selector4~0_combout\,
	combout => \s_nextState.C_97~combout\);

-- Location: LCCOMB_X57_Y1_N20
\s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~10_combout\ = (\s_nextState.C_97~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.C_97~combout\,
	datad => \reset~input_o\,
	combout => \s_currentState~10_combout\);

-- Location: FF_X57_Y1_N21
\s_currentState.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_currentState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.C~q\);

-- Location: LCCOMB_X57_Y1_N16
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\enable~input_o\ & \s_currentState.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \s_currentState.C~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X57_Y1_N10
\s_nextState.D_89\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.D_89~combout\ = (GLOBAL(\s_currentState.E~clkctrl_outclk\) & (\s_nextState.D_89~combout\)) # (!GLOBAL(\s_currentState.E~clkctrl_outclk\) & ((\Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.D_89~combout\,
	datac => \s_currentState.E~clkctrl_outclk\,
	datad => \Selector0~0_combout\,
	combout => \s_nextState.D_89~combout\);

-- Location: LCCOMB_X57_Y1_N0
\s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~11_combout\ = (\s_nextState.D_89~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_nextState.D_89~combout\,
	datad => \reset~input_o\,
	combout => \s_currentState~11_combout\);

-- Location: FF_X57_Y1_N1
\s_currentState.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_currentState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.D~q\);

-- Location: LCCOMB_X57_Y1_N2
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\enable~input_o\ & \s_currentState.D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \s_currentState.D~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X57_Y1_N28
\s_nextState.E_81\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.E_81~combout\ = (GLOBAL(\s_currentState.E~clkctrl_outclk\) & (\s_nextState.E_81~combout\)) # (!GLOBAL(\s_currentState.E~clkctrl_outclk\) & ((\Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_nextState.E_81~combout\,
	datac => \s_currentState.E~clkctrl_outclk\,
	datad => \Selector2~0_combout\,
	combout => \s_nextState.E_81~combout\);

-- Location: LCCOMB_X57_Y1_N30
\s_currentState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~7_combout\ = (\s_nextState.E_81~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.E_81~combout\,
	datad => \reset~input_o\,
	combout => \s_currentState~7_combout\);

-- Location: FF_X57_Y1_N31
\s_currentState.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_currentState~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.E~q\);

-- Location: LCCOMB_X57_Y1_N26
\ledRed0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledRed0~2_combout\ = (\s_currentState.E~q\) # (!\s_currentState.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_currentState.A~q\,
	datad => \s_currentState.E~q\,
	combout => \ledRed0~2_combout\);

-- Location: LCCOMB_X57_Y1_N22
\ledRed1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledRed1~0_combout\ = (\s_currentState.B~q\) # (\s_currentState.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_currentState.B~q\,
	datad => \s_currentState.C~q\,
	combout => \ledRed1~0_combout\);

ww_final <= \final~output_o\;

ww_ledRed0 <= \ledRed0~output_o\;

ww_ledRed1 <= \ledRed1~output_o\;

ww_ledRed2 <= \ledRed2~output_o\;
END structure;


