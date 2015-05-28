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

-- DATE "05/28/2015 16:27:26"

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

ENTITY 	RandomGeneratorFSM IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	dataIn : IN std_logic_vector(5 DOWNTO 0);
	input : IN std_logic;
	validOut : OUT std_logic;
	dataOut : OUT std_logic_vector(5 DOWNTO 0)
	);
END RandomGeneratorFSM;

-- Design Ports Information
-- validOut	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[3]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[4]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataOut[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[0]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[1]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[3]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[4]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn[5]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RandomGeneratorFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_dataIn : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_input : std_logic;
SIGNAL ww_validOut : std_logic;
SIGNAL ww_dataOut : std_logic_vector(5 DOWNTO 0);
SIGNAL \PS.B~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \validOut~output_o\ : std_logic;
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \input~input_o\ : std_logic;
SIGNAL \PS~8_combout\ : std_logic;
SIGNAL \PS.A~q\ : std_logic;
SIGNAL \PS~6_combout\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \PS.B~clkctrl_outclk\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \main_proc~0_combout\ : std_logic;
SIGNAL \main_proc~1_combout\ : std_logic;
SIGNAL \PS~7_combout\ : std_logic;
SIGNAL \PS.B~q\ : std_logic;
SIGNAL \PS~5_combout\ : std_logic;
SIGNAL \PS.C~q\ : std_logic;
SIGNAL \dataOut~1_combout\ : std_logic;
SIGNAL \dataOut~2_combout\ : std_logic;
SIGNAL \dataOut~3_combout\ : std_logic;
SIGNAL \dataOut~4_combout\ : std_logic;
SIGNAL \dataOut~5_combout\ : std_logic;
SIGNAL \dataOut~6_combout\ : std_logic;
SIGNAL s_dataIn : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_dataIn <= dataIn;
ww_input <= input;
validOut <= ww_validOut;
dataOut <= ww_dataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PS.B~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PS.B~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X52_Y0_N16
\validOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PS.C~q\,
	devoe => ww_devoe,
	o => \validOut~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~1_combout\,
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~2_combout\,
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~3_combout\,
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~4_combout\,
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~5_combout\,
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~6_combout\,
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

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

-- Location: IOIBUF_X56_Y0_N15
\input~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input,
	o => \input~input_o\);

-- Location: LCCOMB_X57_Y1_N12
\PS~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~8_combout\ = (!\reset~input_o\ & ((\PS.A~q\) # (\input~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \PS.A~q\,
	datad => \input~input_o\,
	combout => \PS~8_combout\);

-- Location: FF_X57_Y1_N13
\PS.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PS~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.A~q\);

-- Location: LCCOMB_X57_Y1_N14
\PS~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~6_combout\ = (\input~input_o\ & (!\reset~input_o\ & !\PS.A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~input_o\,
	datac => \reset~input_o\,
	datad => \PS.A~q\,
	combout => \PS~6_combout\);

-- Location: IOIBUF_X54_Y0_N1
\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

-- Location: CLKCTRL_G19
\PS.B~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PS.B~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PS.B~clkctrl_outclk\);

-- Location: LCCOMB_X57_Y1_N2
\s_dataIn[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- s_dataIn(4) = (GLOBAL(\PS.B~clkctrl_outclk\) & (\dataIn[4]~input_o\)) # (!GLOBAL(\PS.B~clkctrl_outclk\) & ((s_dataIn(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataIn[4]~input_o\,
	datac => s_dataIn(4),
	datad => \PS.B~clkctrl_outclk\,
	combout => s_dataIn(4));

-- Location: IOIBUF_X54_Y0_N8
\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

-- Location: LCCOMB_X57_Y1_N8
\s_dataIn[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- s_dataIn(3) = (GLOBAL(\PS.B~clkctrl_outclk\) & (\dataIn[3]~input_o\)) # (!GLOBAL(\PS.B~clkctrl_outclk\) & ((s_dataIn(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[3]~input_o\,
	datac => s_dataIn(3),
	datad => \PS.B~clkctrl_outclk\,
	combout => s_dataIn(3));

-- Location: IOIBUF_X54_Y0_N15
\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

-- Location: LCCOMB_X57_Y1_N22
\s_dataIn[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- s_dataIn(5) = (GLOBAL(\PS.B~clkctrl_outclk\) & (\dataIn[5]~input_o\)) # (!GLOBAL(\PS.B~clkctrl_outclk\) & ((s_dataIn(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[5]~input_o\,
	datac => s_dataIn(5),
	datad => \PS.B~clkctrl_outclk\,
	combout => s_dataIn(5));

-- Location: IOIBUF_X54_Y0_N22
\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

-- Location: LCCOMB_X57_Y1_N4
\s_dataIn[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- s_dataIn(2) = (GLOBAL(\PS.B~clkctrl_outclk\) & (\dataIn[2]~input_o\)) # (!GLOBAL(\PS.B~clkctrl_outclk\) & ((s_dataIn(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datac => s_dataIn(2),
	datad => \PS.B~clkctrl_outclk\,
	combout => s_dataIn(2));

-- Location: IOIBUF_X52_Y0_N22
\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

-- Location: LCCOMB_X57_Y1_N26
\s_dataIn[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- s_dataIn(1) = (GLOBAL(\PS.B~clkctrl_outclk\) & (\dataIn[1]~input_o\)) # (!GLOBAL(\PS.B~clkctrl_outclk\) & ((s_dataIn(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataIn[1]~input_o\,
	datac => \PS.B~clkctrl_outclk\,
	datad => s_dataIn(1),
	combout => s_dataIn(1));

-- Location: IOIBUF_X60_Y0_N1
\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

-- Location: LCCOMB_X57_Y1_N18
\s_dataIn[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- s_dataIn(0) = (GLOBAL(\PS.B~clkctrl_outclk\) & (\dataIn[0]~input_o\)) # (!GLOBAL(\PS.B~clkctrl_outclk\) & ((s_dataIn(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataIn[0]~input_o\,
	datac => \PS.B~clkctrl_outclk\,
	datad => s_dataIn(0),
	combout => s_dataIn(0));

-- Location: LCCOMB_X57_Y1_N0
\main_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_proc~0_combout\ = (s_dataIn(2) & ((s_dataIn(1)) # (s_dataIn(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_dataIn(2),
	datac => s_dataIn(1),
	datad => s_dataIn(0),
	combout => \main_proc~0_combout\);

-- Location: LCCOMB_X57_Y1_N6
\main_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_proc~1_combout\ = (s_dataIn(4) & (s_dataIn(3) & (s_dataIn(5) & \main_proc~0_combout\))) # (!s_dataIn(4) & (!s_dataIn(3) & (!s_dataIn(5) & !\main_proc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_dataIn(4),
	datab => s_dataIn(3),
	datac => s_dataIn(5),
	datad => \main_proc~0_combout\,
	combout => \main_proc~1_combout\);

-- Location: LCCOMB_X57_Y1_N20
\PS~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~7_combout\ = (\PS~6_combout\) # ((!\reset~input_o\ & (\PS.B~q\ & \main_proc~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \PS.B~q\,
	datac => \PS~6_combout\,
	datad => \main_proc~1_combout\,
	combout => \PS~7_combout\);

-- Location: FF_X57_Y1_N17
\PS.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PS~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.B~q\);

-- Location: LCCOMB_X57_Y1_N24
\PS~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~5_combout\ = (!\reset~input_o\ & ((\PS.C~q\) # ((\PS.B~q\ & !\main_proc~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \PS.B~q\,
	datac => \PS.C~q\,
	datad => \main_proc~1_combout\,
	combout => \PS~5_combout\);

-- Location: FF_X57_Y1_N25
\PS.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PS~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.C~q\);

-- Location: LCCOMB_X57_Y1_N16
\dataOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~1_combout\ = (\dataIn[0]~input_o\ & \PS.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataIn[0]~input_o\,
	datad => \PS.C~q\,
	combout => \dataOut~1_combout\);

-- Location: LCCOMB_X53_Y1_N28
\dataOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~2_combout\ = (\dataIn[1]~input_o\ & \PS.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataIn[1]~input_o\,
	datad => \PS.C~q\,
	combout => \dataOut~2_combout\);

-- Location: LCCOMB_X57_Y1_N30
\dataOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~3_combout\ = (\PS.C~q\ & \dataIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.C~q\,
	datac => \dataIn[2]~input_o\,
	combout => \dataOut~3_combout\);

-- Location: LCCOMB_X57_Y1_N10
\dataOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~4_combout\ = (\PS.C~q\ & \dataIn[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.C~q\,
	datad => \dataIn[3]~input_o\,
	combout => \dataOut~4_combout\);

-- Location: LCCOMB_X57_Y1_N28
\dataOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~5_combout\ = (\PS.C~q\ & \dataIn[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.C~q\,
	datac => \dataIn[4]~input_o\,
	combout => \dataOut~5_combout\);

-- Location: LCCOMB_X53_Y1_N30
\dataOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~6_combout\ = (\dataIn[5]~input_o\ & \PS.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataIn[5]~input_o\,
	datad => \PS.C~q\,
	combout => \dataOut~6_combout\);

ww_validOut <= \validOut~output_o\;

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;
END structure;


