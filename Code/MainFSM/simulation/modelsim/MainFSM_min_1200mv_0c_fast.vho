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

-- DATE "05/28/2015 19:17:15"

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

ENTITY 	MainFSM_Demo IS
    PORT (
	KEY : IN std_logic_vector(4 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END MainFSM_Demo;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[4]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MainFSM_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[4]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \uut|PS~19_combout\ : std_logic;
SIGNAL \uut|PS.A~q\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \uut|PS~21_combout\ : std_logic;
SIGNAL \uut|PS~23_combout\ : std_logic;
SIGNAL \uut|PS.D~q\ : std_logic;
SIGNAL \uut|PS~20_combout\ : std_logic;
SIGNAL \uut|PS~22_combout\ : std_logic;
SIGNAL \uut|PS.E~q\ : std_logic;
SIGNAL \uut|PS~17_combout\ : std_logic;
SIGNAL \uut|PS~18_combout\ : std_logic;
SIGNAL \uut|PS.H~q\ : std_logic;
SIGNAL \uut|PS~14_combout\ : std_logic;
SIGNAL \uut|PS~13_combout\ : std_logic;
SIGNAL \uut|PS~15_combout\ : std_logic;
SIGNAL \uut|PS.F~q\ : std_logic;
SIGNAL \uut|PS~16_combout\ : std_logic;
SIGNAL \uut|PS.G~q\ : std_logic;
SIGNAL \uut|PS~11_combout\ : std_logic;
SIGNAL \uut|PS~12_combout\ : std_logic;
SIGNAL \uut|PS.B~q\ : std_logic;
SIGNAL \uut|PS~10_combout\ : std_logic;
SIGNAL \uut|PS.C~q\ : std_logic;
SIGNAL \uut|hex_En~combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \uut|PS.C~q\,
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
	i => \uut|PS.B~q\,
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
	i => \uut|PS.F~q\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|hex_En~combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|PS.H~q\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|PS.F~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

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

-- Location: IOIBUF_X107_Y73_N22
\KEY[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(4),
	o => \KEY[4]~input_o\);

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

-- Location: LCCOMB_X107_Y69_N22
\uut|PS~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|PS~19_combout\ = (!\SW[0]~input_o\ & ((\KEY[0]~input_o\) # (\uut|PS.A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \uut|PS.A~q\,
	combout => \uut|PS~19_combout\);

-- Location: FF_X107_Y69_N23
\uut|PS.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uut|PS~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|PS.A~q\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X107_Y69_N12
\uut|PS~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|PS~21_combout\ = (\uut|PS.G~q\) # ((\uut|PS.H~q\) # ((!\KEY[0]~input_o\ & !\KEY[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \KEY[3]~input_o\,
	datac => \uut|PS.G~q\,
	datad => \uut|PS.H~q\,
	combout => \uut|PS~21_combout\);

-- Location: LCCOMB_X107_Y69_N18
\uut|PS~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|PS~23_combout\ = (!\SW[0]~input_o\ & \uut|PS.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \uut|PS.C~q\,
	combout => \uut|PS~23_combout\);

-- Location: FF_X107_Y69_N19
\uut|PS.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uut|PS~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|PS.D~q\);

-- Location: LCCOMB_X107_Y69_N6
\uut|PS~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|PS~20_combout\ = (!\KEY[0]~input_o\ & (!\SW[0]~input_o\ & \uut|PS.D~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \uut|PS.D~q\,
	combout => \uut|PS~20_combout\);

-- Location: LCCOMB_X107_Y69_N4
\uut|PS~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|PS~22_combout\ = (\uut|PS~20_combout\) # ((\uut|PS~21_combout\ & (!\SW[0]~input_o\ & \uut|PS.E~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|PS~21_combout\,
	datab => \SW[0]~input_o\,
	datac => \uut|PS.E~q\,
	datad => \uut|PS~20_combout\,
	combout => \uut|PS~22_combout\);

-- Location: FF_X107_Y69_N5
\uut|PS.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uut|PS~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|PS.E~q\);

-- Location: LCCOMB_X107_Y69_N0
\uut|PS~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|PS~17_combout\ = (\KEY[0]~input_o\ & (!\SW[0]~input_o\ & ((\uut|PS.E~q\) # (\uut|PS.D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \uut|PS.E~q\,
	datad => \uut|PS.D~q\,
	combout => \uut|PS~17_combout\);

-- Location: LCCOMB_X107_Y69_N24
\uut|PS~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|PS~18_combout\ = (\uut|PS~17_combout\) # ((!\SW[0]~input_o\ & \uut|PS.H~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \uut|PS.H~q\,
	datad => \uut|PS~17_combout\,
	combout => \uut|PS~18_combout\);

-- Location: FF_X107_Y69_N25
\uut|PS.H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uut|PS~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|PS.H~q\);

-- Location: LCCOMB_X107_Y69_N16
\uut|PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|PS~14_combout\ = (!\SW[0]~input_o\ & (((\uut|PS.G~q\) # (\uut|PS.H~q\)) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \uut|PS.G~q\,
	datad => \uut|PS.H~q\,
	combout => \uut|PS~14_combout\);

-- Location: LCCOMB_X107_Y69_N10
\uut|PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|PS~13_combout\ = (\KEY[3]~input_o\ & (!\SW[0]~input_o\ & (\uut|PS.E~q\ & !\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \uut|PS.E~q\,
	datad => \KEY[0]~input_o\,
	combout => \uut|PS~13_combout\);

-- Location: LCCOMB_X107_Y69_N28
\uut|PS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|PS~15_combout\ = (\uut|PS~13_combout\) # ((\uut|PS~14_combout\ & \uut|PS.F~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|PS~14_combout\,
	datac => \uut|PS.F~q\,
	datad => \uut|PS~13_combout\,
	combout => \uut|PS~15_combout\);

-- Location: FF_X107_Y69_N29
\uut|PS.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uut|PS~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|PS.F~q\);

-- Location: LCCOMB_X107_Y69_N26
\uut|PS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|PS~16_combout\ = (!\SW[0]~input_o\ & ((\uut|PS.G~q\) # ((\KEY[0]~input_o\ & \uut|PS.F~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \uut|PS.G~q\,
	datad => \uut|PS.F~q\,
	combout => \uut|PS~16_combout\);

-- Location: FF_X107_Y69_N27
\uut|PS.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uut|PS~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|PS.G~q\);

-- Location: LCCOMB_X107_Y69_N20
\uut|PS~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|PS~11_combout\ = (\uut|PS.B~q\ & ((\uut|PS.G~q\) # ((\uut|PS.H~q\) # (!\KEY[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|PS.G~q\,
	datab => \KEY[4]~input_o\,
	datac => \uut|PS.B~q\,
	datad => \uut|PS.H~q\,
	combout => \uut|PS~11_combout\);

-- Location: LCCOMB_X107_Y69_N30
\uut|PS~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|PS~12_combout\ = (!\SW[0]~input_o\ & ((\uut|PS~11_combout\) # ((\KEY[0]~input_o\ & !\uut|PS.A~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \uut|PS.A~q\,
	datad => \uut|PS~11_combout\,
	combout => \uut|PS~12_combout\);

-- Location: FF_X107_Y69_N31
\uut|PS.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uut|PS~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|PS.B~q\);

-- Location: LCCOMB_X107_Y69_N8
\uut|PS~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|PS~10_combout\ = (!\SW[0]~input_o\ & (\KEY[4]~input_o\ & \uut|PS.B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \KEY[4]~input_o\,
	datad => \uut|PS.B~q\,
	combout => \uut|PS~10_combout\);

-- Location: FF_X107_Y69_N9
\uut|PS.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \uut|PS~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|PS.C~q\);

-- Location: LCCOMB_X107_Y69_N14
\uut|hex_En\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|hex_En~combout\ = (\uut|PS.G~q\) # (\uut|PS.H~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|PS.G~q\,
	datac => \uut|PS.H~q\,
	combout => \uut|hex_En~combout\);

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

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


