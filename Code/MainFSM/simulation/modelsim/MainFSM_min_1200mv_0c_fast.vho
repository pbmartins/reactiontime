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

-- DATE "05/10/2015 16:22:37"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MainFSM IS
    PORT (
	input : IN std_logic;
	reset : IN std_logic;
	valid : IN std_logic;
	timeExp : IN std_logic;
	clk : IN std_logic;
	final : IN std_logic;
	newTime : BUFFER std_logic;
	ledCounter_En : BUFFER std_logic;
	counter_En : BUFFER std_logic;
	hex_En : BUFFER std_logic;
	hex_Error : BUFFER std_logic;
	stOut : BUFFER std_logic_vector(2 DOWNTO 0);
	ledGreen_En : BUFFER std_logic
	);
END MainFSM;

-- Design Ports Information
-- input	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeExp	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- final	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newTime	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledCounter_En	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- counter_En	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_En	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_Error	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stOut[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stOut[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stOut[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledGreen_En	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MainFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_valid : std_logic;
SIGNAL ww_timeExp : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_final : std_logic;
SIGNAL ww_newTime : std_logic;
SIGNAL ww_ledCounter_En : std_logic;
SIGNAL ww_counter_En : std_logic;
SIGNAL ww_hex_En : std_logic;
SIGNAL ww_hex_Error : std_logic;
SIGNAL ww_stOut : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ledGreen_En : std_logic;
SIGNAL \input~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \valid~input_o\ : std_logic;
SIGNAL \timeExp~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \final~input_o\ : std_logic;
SIGNAL \newTime~output_o\ : std_logic;
SIGNAL \ledCounter_En~output_o\ : std_logic;
SIGNAL \counter_En~output_o\ : std_logic;
SIGNAL \hex_En~output_o\ : std_logic;
SIGNAL \hex_Error~output_o\ : std_logic;
SIGNAL \stOut[0]~output_o\ : std_logic;
SIGNAL \stOut[1]~output_o\ : std_logic;
SIGNAL \stOut[2]~output_o\ : std_logic;
SIGNAL \ledGreen_En~output_o\ : std_logic;

BEGIN

ww_input <= input;
ww_reset <= reset;
ww_valid <= valid;
ww_timeExp <= timeExp;
ww_clk <= clk;
ww_final <= final;
newTime <= ww_newTime;
ledCounter_En <= ww_ledCounter_En;
counter_En <= ww_counter_En;
hex_En <= ww_hex_En;
hex_Error <= ww_hex_Error;
stOut <= ww_stOut;
ledGreen_En <= ww_ledGreen_En;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y69_N9
\newTime~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \newTime~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\ledCounter_En~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledCounter_En~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\counter_En~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \counter_En~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\hex_En~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex_En~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\hex_Error~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex_Error~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\stOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \stOut[0]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\stOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \stOut[1]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\stOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \stOut[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\ledGreen_En~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledGreen_En~output_o\);

-- Location: IOIBUF_X0_Y67_N15
\input~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input,
	o => \input~input_o\);

-- Location: IOIBUF_X0_Y67_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\valid~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valid,
	o => \valid~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\timeExp~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeExp,
	o => \timeExp~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\final~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_final,
	o => \final~input_o\);

ww_newTime <= \newTime~output_o\;

ww_ledCounter_En <= \ledCounter_En~output_o\;

ww_counter_En <= \counter_En~output_o\;

ww_hex_En <= \hex_En~output_o\;

ww_hex_Error <= \hex_Error~output_o\;

ww_stOut(0) <= \stOut[0]~output_o\;

ww_stOut(1) <= \stOut[1]~output_o\;

ww_stOut(2) <= \stOut[2]~output_o\;

ww_ledGreen_En <= \ledGreen_En~output_o\;
END structure;


