-- Copyright (C) 1991-2014 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.4 Build 182 03/12/2014 SJ Web Edition"

-- DATE "05/26/2015 11:55:52"

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

ENTITY 	ReactionTime IS
    PORT (
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(0 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END ReactionTime;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ReactionTime IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~0_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~1\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~2_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~3\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~4_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~5\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~6_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~7\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~8_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~9\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~10_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~11\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~12_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter~7_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~13\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~14_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~15\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~16_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~17\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~18_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~19\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~20_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~21\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~22_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter~6_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~23\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~24_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter~5_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~25\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~26_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter~4_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~27\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~28_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter~11_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~29\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~30_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter[15]~feeder_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~31\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~32_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter~10_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~33\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~34_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter[17]~feeder_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~35\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~36_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter~3_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~37\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~38_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter~2_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~39\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~40_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter~1_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~41\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~42_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter~0_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~43\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~44_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter~9_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~45\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~46_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter[23]~feeder_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~47\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~48_combout\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter~8_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Equal0~7_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Equal0~8_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~49\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~50_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~51\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~52_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~53\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~54_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~55\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~56_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~57\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~58_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~59\ : std_logic;
SIGNAL \clkdivider_2hz|Add0~60_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Equal0~5_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Equal0~0_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Equal0~1_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Equal0~2_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Equal0~3_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Equal0~4_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Equal0~6_combout\ : std_logic;
SIGNAL \clkdivider_2hz|Equal0~9_combout\ : std_logic;
SIGNAL \clkdivider_2hz|clkOut~_Duplicate_1_q\ : std_logic;
SIGNAL \clkdivider_2hz|clkOut~0_combout\ : std_logic;
SIGNAL \clkdivider_2hz|clkOut~1_combout\ : std_logic;
SIGNAL \clkdivider_2hz|clkOut~2_combout\ : std_logic;
SIGNAL \clkdivider_2hz|clkOut~3_combout\ : std_logic;
SIGNAL \clkdivider_2hz|clkOut~q\ : std_logic;
SIGNAL \clkdivider_2hz|s_counter\ : std_logic_vector(30 DOWNTO 0);

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \clkdivider_2hz|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

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

-- Location: LCCOMB_X35_Y62_N2
\clkdivider_2hz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~0_combout\ = \clkdivider_2hz|s_counter\(0) $ (VCC)
-- \clkdivider_2hz|Add0~1\ = CARRY(\clkdivider_2hz|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(0),
	datad => VCC,
	combout => \clkdivider_2hz|Add0~0_combout\,
	cout => \clkdivider_2hz|Add0~1\);

-- Location: FF_X35_Y62_N3
\clkdivider_2hz|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(0));

-- Location: LCCOMB_X35_Y62_N4
\clkdivider_2hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~2_combout\ = (\clkdivider_2hz|s_counter\(1) & (!\clkdivider_2hz|Add0~1\)) # (!\clkdivider_2hz|s_counter\(1) & ((\clkdivider_2hz|Add0~1\) # (GND)))
-- \clkdivider_2hz|Add0~3\ = CARRY((!\clkdivider_2hz|Add0~1\) # (!\clkdivider_2hz|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(1),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~1\,
	combout => \clkdivider_2hz|Add0~2_combout\,
	cout => \clkdivider_2hz|Add0~3\);

-- Location: FF_X35_Y62_N5
\clkdivider_2hz|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(1));

-- Location: LCCOMB_X35_Y62_N6
\clkdivider_2hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~4_combout\ = (\clkdivider_2hz|s_counter\(2) & (\clkdivider_2hz|Add0~3\ $ (GND))) # (!\clkdivider_2hz|s_counter\(2) & (!\clkdivider_2hz|Add0~3\ & VCC))
-- \clkdivider_2hz|Add0~5\ = CARRY((\clkdivider_2hz|s_counter\(2) & !\clkdivider_2hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(2),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~3\,
	combout => \clkdivider_2hz|Add0~4_combout\,
	cout => \clkdivider_2hz|Add0~5\);

-- Location: FF_X35_Y62_N7
\clkdivider_2hz|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(2));

-- Location: LCCOMB_X35_Y62_N8
\clkdivider_2hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~6_combout\ = (\clkdivider_2hz|s_counter\(3) & (!\clkdivider_2hz|Add0~5\)) # (!\clkdivider_2hz|s_counter\(3) & ((\clkdivider_2hz|Add0~5\) # (GND)))
-- \clkdivider_2hz|Add0~7\ = CARRY((!\clkdivider_2hz|Add0~5\) # (!\clkdivider_2hz|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(3),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~5\,
	combout => \clkdivider_2hz|Add0~6_combout\,
	cout => \clkdivider_2hz|Add0~7\);

-- Location: FF_X35_Y62_N9
\clkdivider_2hz|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(3));

-- Location: LCCOMB_X35_Y62_N10
\clkdivider_2hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~8_combout\ = (\clkdivider_2hz|s_counter\(4) & (\clkdivider_2hz|Add0~7\ $ (GND))) # (!\clkdivider_2hz|s_counter\(4) & (!\clkdivider_2hz|Add0~7\ & VCC))
-- \clkdivider_2hz|Add0~9\ = CARRY((\clkdivider_2hz|s_counter\(4) & !\clkdivider_2hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(4),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~7\,
	combout => \clkdivider_2hz|Add0~8_combout\,
	cout => \clkdivider_2hz|Add0~9\);

-- Location: FF_X35_Y62_N11
\clkdivider_2hz|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(4));

-- Location: LCCOMB_X35_Y62_N12
\clkdivider_2hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~10_combout\ = (\clkdivider_2hz|s_counter\(5) & (!\clkdivider_2hz|Add0~9\)) # (!\clkdivider_2hz|s_counter\(5) & ((\clkdivider_2hz|Add0~9\) # (GND)))
-- \clkdivider_2hz|Add0~11\ = CARRY((!\clkdivider_2hz|Add0~9\) # (!\clkdivider_2hz|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(5),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~9\,
	combout => \clkdivider_2hz|Add0~10_combout\,
	cout => \clkdivider_2hz|Add0~11\);

-- Location: FF_X35_Y62_N13
\clkdivider_2hz|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(5));

-- Location: LCCOMB_X35_Y62_N14
\clkdivider_2hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~12_combout\ = (\clkdivider_2hz|s_counter\(6) & (\clkdivider_2hz|Add0~11\ $ (GND))) # (!\clkdivider_2hz|s_counter\(6) & (!\clkdivider_2hz|Add0~11\ & VCC))
-- \clkdivider_2hz|Add0~13\ = CARRY((\clkdivider_2hz|s_counter\(6) & !\clkdivider_2hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(6),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~11\,
	combout => \clkdivider_2hz|Add0~12_combout\,
	cout => \clkdivider_2hz|Add0~13\);

-- Location: LCCOMB_X34_Y62_N18
\clkdivider_2hz|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter~7_combout\ = (\clkdivider_2hz|Add0~12_combout\ & !\clkdivider_2hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_2hz|Add0~12_combout\,
	datad => \clkdivider_2hz|Equal0~9_combout\,
	combout => \clkdivider_2hz|s_counter~7_combout\);

-- Location: FF_X36_Y62_N3
\clkdivider_2hz|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkdivider_2hz|s_counter~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(6));

-- Location: LCCOMB_X35_Y62_N16
\clkdivider_2hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~14_combout\ = (\clkdivider_2hz|s_counter\(7) & (!\clkdivider_2hz|Add0~13\)) # (!\clkdivider_2hz|s_counter\(7) & ((\clkdivider_2hz|Add0~13\) # (GND)))
-- \clkdivider_2hz|Add0~15\ = CARRY((!\clkdivider_2hz|Add0~13\) # (!\clkdivider_2hz|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(7),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~13\,
	combout => \clkdivider_2hz|Add0~14_combout\,
	cout => \clkdivider_2hz|Add0~15\);

-- Location: FF_X35_Y62_N17
\clkdivider_2hz|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(7));

-- Location: LCCOMB_X35_Y62_N18
\clkdivider_2hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~16_combout\ = (\clkdivider_2hz|s_counter\(8) & (\clkdivider_2hz|Add0~15\ $ (GND))) # (!\clkdivider_2hz|s_counter\(8) & (!\clkdivider_2hz|Add0~15\ & VCC))
-- \clkdivider_2hz|Add0~17\ = CARRY((\clkdivider_2hz|s_counter\(8) & !\clkdivider_2hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(8),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~15\,
	combout => \clkdivider_2hz|Add0~16_combout\,
	cout => \clkdivider_2hz|Add0~17\);

-- Location: FF_X35_Y62_N19
\clkdivider_2hz|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(8));

-- Location: LCCOMB_X35_Y62_N20
\clkdivider_2hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~18_combout\ = (\clkdivider_2hz|s_counter\(9) & (!\clkdivider_2hz|Add0~17\)) # (!\clkdivider_2hz|s_counter\(9) & ((\clkdivider_2hz|Add0~17\) # (GND)))
-- \clkdivider_2hz|Add0~19\ = CARRY((!\clkdivider_2hz|Add0~17\) # (!\clkdivider_2hz|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(9),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~17\,
	combout => \clkdivider_2hz|Add0~18_combout\,
	cout => \clkdivider_2hz|Add0~19\);

-- Location: FF_X35_Y62_N21
\clkdivider_2hz|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(9));

-- Location: LCCOMB_X35_Y62_N22
\clkdivider_2hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~20_combout\ = (\clkdivider_2hz|s_counter\(10) & (\clkdivider_2hz|Add0~19\ $ (GND))) # (!\clkdivider_2hz|s_counter\(10) & (!\clkdivider_2hz|Add0~19\ & VCC))
-- \clkdivider_2hz|Add0~21\ = CARRY((\clkdivider_2hz|s_counter\(10) & !\clkdivider_2hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(10),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~19\,
	combout => \clkdivider_2hz|Add0~20_combout\,
	cout => \clkdivider_2hz|Add0~21\);

-- Location: FF_X35_Y62_N23
\clkdivider_2hz|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(10));

-- Location: LCCOMB_X35_Y62_N24
\clkdivider_2hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~22_combout\ = (\clkdivider_2hz|s_counter\(11) & (!\clkdivider_2hz|Add0~21\)) # (!\clkdivider_2hz|s_counter\(11) & ((\clkdivider_2hz|Add0~21\) # (GND)))
-- \clkdivider_2hz|Add0~23\ = CARRY((!\clkdivider_2hz|Add0~21\) # (!\clkdivider_2hz|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(11),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~21\,
	combout => \clkdivider_2hz|Add0~22_combout\,
	cout => \clkdivider_2hz|Add0~23\);

-- Location: LCCOMB_X36_Y62_N22
\clkdivider_2hz|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter~6_combout\ = (!\clkdivider_2hz|Equal0~9_combout\ & \clkdivider_2hz|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_2hz|Equal0~9_combout\,
	datad => \clkdivider_2hz|Add0~22_combout\,
	combout => \clkdivider_2hz|s_counter~6_combout\);

-- Location: FF_X36_Y62_N23
\clkdivider_2hz|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(11));

-- Location: LCCOMB_X35_Y62_N26
\clkdivider_2hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~24_combout\ = (\clkdivider_2hz|s_counter\(12) & (\clkdivider_2hz|Add0~23\ $ (GND))) # (!\clkdivider_2hz|s_counter\(12) & (!\clkdivider_2hz|Add0~23\ & VCC))
-- \clkdivider_2hz|Add0~25\ = CARRY((\clkdivider_2hz|s_counter\(12) & !\clkdivider_2hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(12),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~23\,
	combout => \clkdivider_2hz|Add0~24_combout\,
	cout => \clkdivider_2hz|Add0~25\);

-- Location: LCCOMB_X36_Y62_N14
\clkdivider_2hz|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter~5_combout\ = (!\clkdivider_2hz|Equal0~9_combout\ & \clkdivider_2hz|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|Equal0~9_combout\,
	datac => \clkdivider_2hz|Add0~24_combout\,
	combout => \clkdivider_2hz|s_counter~5_combout\);

-- Location: FF_X36_Y62_N15
\clkdivider_2hz|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(12));

-- Location: LCCOMB_X35_Y62_N28
\clkdivider_2hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~26_combout\ = (\clkdivider_2hz|s_counter\(13) & (!\clkdivider_2hz|Add0~25\)) # (!\clkdivider_2hz|s_counter\(13) & ((\clkdivider_2hz|Add0~25\) # (GND)))
-- \clkdivider_2hz|Add0~27\ = CARRY((!\clkdivider_2hz|Add0~25\) # (!\clkdivider_2hz|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(13),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~25\,
	combout => \clkdivider_2hz|Add0~26_combout\,
	cout => \clkdivider_2hz|Add0~27\);

-- Location: LCCOMB_X36_Y62_N28
\clkdivider_2hz|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter~4_combout\ = (!\clkdivider_2hz|Equal0~9_combout\ & \clkdivider_2hz|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_2hz|Equal0~9_combout\,
	datad => \clkdivider_2hz|Add0~26_combout\,
	combout => \clkdivider_2hz|s_counter~4_combout\);

-- Location: FF_X36_Y62_N29
\clkdivider_2hz|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(13));

-- Location: LCCOMB_X35_Y62_N30
\clkdivider_2hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~28_combout\ = (\clkdivider_2hz|s_counter\(14) & (\clkdivider_2hz|Add0~27\ $ (GND))) # (!\clkdivider_2hz|s_counter\(14) & (!\clkdivider_2hz|Add0~27\ & VCC))
-- \clkdivider_2hz|Add0~29\ = CARRY((\clkdivider_2hz|s_counter\(14) & !\clkdivider_2hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(14),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~27\,
	combout => \clkdivider_2hz|Add0~28_combout\,
	cout => \clkdivider_2hz|Add0~29\);

-- Location: LCCOMB_X34_Y62_N16
\clkdivider_2hz|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter~11_combout\ = (\clkdivider_2hz|Add0~28_combout\ & !\clkdivider_2hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_2hz|Add0~28_combout\,
	datad => \clkdivider_2hz|Equal0~9_combout\,
	combout => \clkdivider_2hz|s_counter~11_combout\);

-- Location: FF_X34_Y62_N17
\clkdivider_2hz|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(14));

-- Location: LCCOMB_X35_Y61_N0
\clkdivider_2hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~30_combout\ = (\clkdivider_2hz|s_counter\(15) & (!\clkdivider_2hz|Add0~29\)) # (!\clkdivider_2hz|s_counter\(15) & ((\clkdivider_2hz|Add0~29\) # (GND)))
-- \clkdivider_2hz|Add0~31\ = CARRY((!\clkdivider_2hz|Add0~29\) # (!\clkdivider_2hz|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(15),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~29\,
	combout => \clkdivider_2hz|Add0~30_combout\,
	cout => \clkdivider_2hz|Add0~31\);

-- Location: LCCOMB_X34_Y62_N8
\clkdivider_2hz|s_counter[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter[15]~feeder_combout\ = \clkdivider_2hz|Add0~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clkdivider_2hz|Add0~30_combout\,
	combout => \clkdivider_2hz|s_counter[15]~feeder_combout\);

-- Location: FF_X34_Y62_N9
\clkdivider_2hz|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|s_counter[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(15));

-- Location: LCCOMB_X35_Y61_N2
\clkdivider_2hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~32_combout\ = (\clkdivider_2hz|s_counter\(16) & (\clkdivider_2hz|Add0~31\ $ (GND))) # (!\clkdivider_2hz|s_counter\(16) & (!\clkdivider_2hz|Add0~31\ & VCC))
-- \clkdivider_2hz|Add0~33\ = CARRY((\clkdivider_2hz|s_counter\(16) & !\clkdivider_2hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(16),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~31\,
	combout => \clkdivider_2hz|Add0~32_combout\,
	cout => \clkdivider_2hz|Add0~33\);

-- Location: LCCOMB_X34_Y62_N22
\clkdivider_2hz|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter~10_combout\ = (!\clkdivider_2hz|Equal0~9_combout\ & \clkdivider_2hz|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|Equal0~9_combout\,
	datad => \clkdivider_2hz|Add0~32_combout\,
	combout => \clkdivider_2hz|s_counter~10_combout\);

-- Location: FF_X34_Y62_N23
\clkdivider_2hz|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(16));

-- Location: LCCOMB_X35_Y61_N4
\clkdivider_2hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~34_combout\ = (\clkdivider_2hz|s_counter\(17) & (!\clkdivider_2hz|Add0~33\)) # (!\clkdivider_2hz|s_counter\(17) & ((\clkdivider_2hz|Add0~33\) # (GND)))
-- \clkdivider_2hz|Add0~35\ = CARRY((!\clkdivider_2hz|Add0~33\) # (!\clkdivider_2hz|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(17),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~33\,
	combout => \clkdivider_2hz|Add0~34_combout\,
	cout => \clkdivider_2hz|Add0~35\);

-- Location: LCCOMB_X36_Y61_N26
\clkdivider_2hz|s_counter[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter[17]~feeder_combout\ = \clkdivider_2hz|Add0~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_2hz|Add0~34_combout\,
	combout => \clkdivider_2hz|s_counter[17]~feeder_combout\);

-- Location: FF_X36_Y61_N27
\clkdivider_2hz|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|s_counter[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(17));

-- Location: LCCOMB_X35_Y61_N6
\clkdivider_2hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~36_combout\ = (\clkdivider_2hz|s_counter\(18) & (\clkdivider_2hz|Add0~35\ $ (GND))) # (!\clkdivider_2hz|s_counter\(18) & (!\clkdivider_2hz|Add0~35\ & VCC))
-- \clkdivider_2hz|Add0~37\ = CARRY((\clkdivider_2hz|s_counter\(18) & !\clkdivider_2hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(18),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~35\,
	combout => \clkdivider_2hz|Add0~36_combout\,
	cout => \clkdivider_2hz|Add0~37\);

-- Location: LCCOMB_X36_Y62_N26
\clkdivider_2hz|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter~3_combout\ = (!\clkdivider_2hz|Equal0~9_combout\ & \clkdivider_2hz|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|Equal0~9_combout\,
	datac => \clkdivider_2hz|Add0~36_combout\,
	combout => \clkdivider_2hz|s_counter~3_combout\);

-- Location: FF_X36_Y62_N27
\clkdivider_2hz|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(18));

-- Location: LCCOMB_X35_Y61_N8
\clkdivider_2hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~38_combout\ = (\clkdivider_2hz|s_counter\(19) & (!\clkdivider_2hz|Add0~37\)) # (!\clkdivider_2hz|s_counter\(19) & ((\clkdivider_2hz|Add0~37\) # (GND)))
-- \clkdivider_2hz|Add0~39\ = CARRY((!\clkdivider_2hz|Add0~37\) # (!\clkdivider_2hz|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(19),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~37\,
	combout => \clkdivider_2hz|Add0~38_combout\,
	cout => \clkdivider_2hz|Add0~39\);

-- Location: LCCOMB_X36_Y62_N20
\clkdivider_2hz|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter~2_combout\ = (!\clkdivider_2hz|Equal0~9_combout\ & \clkdivider_2hz|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|Equal0~9_combout\,
	datad => \clkdivider_2hz|Add0~38_combout\,
	combout => \clkdivider_2hz|s_counter~2_combout\);

-- Location: FF_X36_Y62_N21
\clkdivider_2hz|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(19));

-- Location: LCCOMB_X35_Y61_N10
\clkdivider_2hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~40_combout\ = (\clkdivider_2hz|s_counter\(20) & (\clkdivider_2hz|Add0~39\ $ (GND))) # (!\clkdivider_2hz|s_counter\(20) & (!\clkdivider_2hz|Add0~39\ & VCC))
-- \clkdivider_2hz|Add0~41\ = CARRY((\clkdivider_2hz|s_counter\(20) & !\clkdivider_2hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(20),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~39\,
	combout => \clkdivider_2hz|Add0~40_combout\,
	cout => \clkdivider_2hz|Add0~41\);

-- Location: LCCOMB_X36_Y62_N8
\clkdivider_2hz|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter~1_combout\ = (!\clkdivider_2hz|Equal0~9_combout\ & \clkdivider_2hz|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_2hz|Equal0~9_combout\,
	datad => \clkdivider_2hz|Add0~40_combout\,
	combout => \clkdivider_2hz|s_counter~1_combout\);

-- Location: FF_X36_Y62_N9
\clkdivider_2hz|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(20));

-- Location: LCCOMB_X35_Y61_N12
\clkdivider_2hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~42_combout\ = (\clkdivider_2hz|s_counter\(21) & (!\clkdivider_2hz|Add0~41\)) # (!\clkdivider_2hz|s_counter\(21) & ((\clkdivider_2hz|Add0~41\) # (GND)))
-- \clkdivider_2hz|Add0~43\ = CARRY((!\clkdivider_2hz|Add0~41\) # (!\clkdivider_2hz|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(21),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~41\,
	combout => \clkdivider_2hz|Add0~42_combout\,
	cout => \clkdivider_2hz|Add0~43\);

-- Location: LCCOMB_X36_Y62_N6
\clkdivider_2hz|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter~0_combout\ = (!\clkdivider_2hz|Equal0~9_combout\ & \clkdivider_2hz|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_2hz|Equal0~9_combout\,
	datad => \clkdivider_2hz|Add0~42_combout\,
	combout => \clkdivider_2hz|s_counter~0_combout\);

-- Location: FF_X36_Y62_N7
\clkdivider_2hz|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(21));

-- Location: LCCOMB_X35_Y61_N14
\clkdivider_2hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~44_combout\ = (\clkdivider_2hz|s_counter\(22) & (\clkdivider_2hz|Add0~43\ $ (GND))) # (!\clkdivider_2hz|s_counter\(22) & (!\clkdivider_2hz|Add0~43\ & VCC))
-- \clkdivider_2hz|Add0~45\ = CARRY((\clkdivider_2hz|s_counter\(22) & !\clkdivider_2hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(22),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~43\,
	combout => \clkdivider_2hz|Add0~44_combout\,
	cout => \clkdivider_2hz|Add0~45\);

-- Location: LCCOMB_X36_Y61_N6
\clkdivider_2hz|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter~9_combout\ = (!\clkdivider_2hz|Equal0~9_combout\ & \clkdivider_2hz|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|Equal0~9_combout\,
	datad => \clkdivider_2hz|Add0~44_combout\,
	combout => \clkdivider_2hz|s_counter~9_combout\);

-- Location: FF_X36_Y61_N7
\clkdivider_2hz|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(22));

-- Location: LCCOMB_X35_Y61_N16
\clkdivider_2hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~46_combout\ = (\clkdivider_2hz|s_counter\(23) & (!\clkdivider_2hz|Add0~45\)) # (!\clkdivider_2hz|s_counter\(23) & ((\clkdivider_2hz|Add0~45\) # (GND)))
-- \clkdivider_2hz|Add0~47\ = CARRY((!\clkdivider_2hz|Add0~45\) # (!\clkdivider_2hz|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(23),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~45\,
	combout => \clkdivider_2hz|Add0~46_combout\,
	cout => \clkdivider_2hz|Add0~47\);

-- Location: LCCOMB_X36_Y61_N8
\clkdivider_2hz|s_counter[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter[23]~feeder_combout\ = \clkdivider_2hz|Add0~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_2hz|Add0~46_combout\,
	combout => \clkdivider_2hz|s_counter[23]~feeder_combout\);

-- Location: FF_X36_Y61_N9
\clkdivider_2hz|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|s_counter[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(23));

-- Location: LCCOMB_X35_Y61_N18
\clkdivider_2hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~48_combout\ = (\clkdivider_2hz|s_counter\(24) & (\clkdivider_2hz|Add0~47\ $ (GND))) # (!\clkdivider_2hz|s_counter\(24) & (!\clkdivider_2hz|Add0~47\ & VCC))
-- \clkdivider_2hz|Add0~49\ = CARRY((\clkdivider_2hz|s_counter\(24) & !\clkdivider_2hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(24),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~47\,
	combout => \clkdivider_2hz|Add0~48_combout\,
	cout => \clkdivider_2hz|Add0~49\);

-- Location: LCCOMB_X36_Y61_N12
\clkdivider_2hz|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|s_counter~8_combout\ = (!\clkdivider_2hz|Equal0~9_combout\ & \clkdivider_2hz|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|Equal0~9_combout\,
	datad => \clkdivider_2hz|Add0~48_combout\,
	combout => \clkdivider_2hz|s_counter~8_combout\);

-- Location: FF_X36_Y61_N13
\clkdivider_2hz|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(24));

-- Location: LCCOMB_X36_Y61_N2
\clkdivider_2hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Equal0~7_combout\ = (\clkdivider_2hz|s_counter\(24) & (!\clkdivider_2hz|s_counter\(23) & (!\clkdivider_2hz|s_counter\(17) & \clkdivider_2hz|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(24),
	datab => \clkdivider_2hz|s_counter\(23),
	datac => \clkdivider_2hz|s_counter\(17),
	datad => \clkdivider_2hz|s_counter\(22),
	combout => \clkdivider_2hz|Equal0~7_combout\);

-- Location: LCCOMB_X34_Y62_N28
\clkdivider_2hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Equal0~8_combout\ = (\clkdivider_2hz|s_counter\(16) & (\clkdivider_2hz|s_counter\(14) & (!\clkdivider_2hz|s_counter\(15) & !\clkdivider_2hz|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(16),
	datab => \clkdivider_2hz|s_counter\(14),
	datac => \clkdivider_2hz|s_counter\(15),
	datad => \clkdivider_2hz|s_counter\(10),
	combout => \clkdivider_2hz|Equal0~8_combout\);

-- Location: LCCOMB_X35_Y61_N20
\clkdivider_2hz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~50_combout\ = (\clkdivider_2hz|s_counter\(25) & (!\clkdivider_2hz|Add0~49\)) # (!\clkdivider_2hz|s_counter\(25) & ((\clkdivider_2hz|Add0~49\) # (GND)))
-- \clkdivider_2hz|Add0~51\ = CARRY((!\clkdivider_2hz|Add0~49\) # (!\clkdivider_2hz|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(25),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~49\,
	combout => \clkdivider_2hz|Add0~50_combout\,
	cout => \clkdivider_2hz|Add0~51\);

-- Location: FF_X36_Y62_N31
\clkdivider_2hz|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkdivider_2hz|Add0~50_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(25));

-- Location: LCCOMB_X35_Y61_N22
\clkdivider_2hz|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~52_combout\ = (\clkdivider_2hz|s_counter\(26) & (\clkdivider_2hz|Add0~51\ $ (GND))) # (!\clkdivider_2hz|s_counter\(26) & (!\clkdivider_2hz|Add0~51\ & VCC))
-- \clkdivider_2hz|Add0~53\ = CARRY((\clkdivider_2hz|s_counter\(26) & !\clkdivider_2hz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(26),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~51\,
	combout => \clkdivider_2hz|Add0~52_combout\,
	cout => \clkdivider_2hz|Add0~53\);

-- Location: FF_X35_Y62_N15
\clkdivider_2hz|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkdivider_2hz|Add0~52_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(26));

-- Location: LCCOMB_X35_Y61_N24
\clkdivider_2hz|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~54_combout\ = (\clkdivider_2hz|s_counter\(27) & (!\clkdivider_2hz|Add0~53\)) # (!\clkdivider_2hz|s_counter\(27) & ((\clkdivider_2hz|Add0~53\) # (GND)))
-- \clkdivider_2hz|Add0~55\ = CARRY((!\clkdivider_2hz|Add0~53\) # (!\clkdivider_2hz|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(27),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~53\,
	combout => \clkdivider_2hz|Add0~54_combout\,
	cout => \clkdivider_2hz|Add0~55\);

-- Location: FF_X35_Y62_N29
\clkdivider_2hz|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkdivider_2hz|Add0~54_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(27));

-- Location: LCCOMB_X35_Y61_N26
\clkdivider_2hz|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~56_combout\ = (\clkdivider_2hz|s_counter\(28) & (\clkdivider_2hz|Add0~55\ $ (GND))) # (!\clkdivider_2hz|s_counter\(28) & (!\clkdivider_2hz|Add0~55\ & VCC))
-- \clkdivider_2hz|Add0~57\ = CARRY((\clkdivider_2hz|s_counter\(28) & !\clkdivider_2hz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(28),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~55\,
	combout => \clkdivider_2hz|Add0~56_combout\,
	cout => \clkdivider_2hz|Add0~57\);

-- Location: FF_X35_Y62_N1
\clkdivider_2hz|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkdivider_2hz|Add0~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(28));

-- Location: LCCOMB_X35_Y61_N28
\clkdivider_2hz|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~58_combout\ = (\clkdivider_2hz|s_counter\(29) & (!\clkdivider_2hz|Add0~57\)) # (!\clkdivider_2hz|s_counter\(29) & ((\clkdivider_2hz|Add0~57\) # (GND)))
-- \clkdivider_2hz|Add0~59\ = CARRY((!\clkdivider_2hz|Add0~57\) # (!\clkdivider_2hz|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|s_counter\(29),
	datad => VCC,
	cin => \clkdivider_2hz|Add0~57\,
	combout => \clkdivider_2hz|Add0~58_combout\,
	cout => \clkdivider_2hz|Add0~59\);

-- Location: FF_X35_Y61_N29
\clkdivider_2hz|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(29));

-- Location: LCCOMB_X35_Y61_N30
\clkdivider_2hz|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Add0~60_combout\ = \clkdivider_2hz|s_counter\(30) $ (!\clkdivider_2hz|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(30),
	cin => \clkdivider_2hz|Add0~59\,
	combout => \clkdivider_2hz|Add0~60_combout\);

-- Location: FF_X35_Y61_N31
\clkdivider_2hz|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|s_counter\(30));

-- Location: LCCOMB_X35_Y62_N0
\clkdivider_2hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Equal0~5_combout\ = (\clkdivider_2hz|s_counter\(1) & (\clkdivider_2hz|s_counter\(0) & (!\clkdivider_2hz|s_counter\(28) & !\clkdivider_2hz|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(1),
	datab => \clkdivider_2hz|s_counter\(0),
	datac => \clkdivider_2hz|s_counter\(28),
	datad => \clkdivider_2hz|s_counter\(27),
	combout => \clkdivider_2hz|Equal0~5_combout\);

-- Location: LCCOMB_X36_Y62_N30
\clkdivider_2hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Equal0~0_combout\ = (\clkdivider_2hz|s_counter\(21) & (\clkdivider_2hz|s_counter\(20) & (!\clkdivider_2hz|s_counter\(25) & !\clkdivider_2hz|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(21),
	datab => \clkdivider_2hz|s_counter\(20),
	datac => \clkdivider_2hz|s_counter\(25),
	datad => \clkdivider_2hz|s_counter\(26),
	combout => \clkdivider_2hz|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y62_N24
\clkdivider_2hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Equal0~1_combout\ = (\clkdivider_2hz|s_counter\(18) & (\clkdivider_2hz|s_counter\(19) & (\clkdivider_2hz|s_counter\(12) & \clkdivider_2hz|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(18),
	datab => \clkdivider_2hz|s_counter\(19),
	datac => \clkdivider_2hz|s_counter\(12),
	datad => \clkdivider_2hz|s_counter\(13),
	combout => \clkdivider_2hz|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y62_N4
\clkdivider_2hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Equal0~2_combout\ = (\clkdivider_2hz|s_counter\(11) & (!\clkdivider_2hz|s_counter\(8) & (!\clkdivider_2hz|s_counter\(7) & !\clkdivider_2hz|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(11),
	datab => \clkdivider_2hz|s_counter\(8),
	datac => \clkdivider_2hz|s_counter\(7),
	datad => \clkdivider_2hz|s_counter\(9),
	combout => \clkdivider_2hz|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y62_N2
\clkdivider_2hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Equal0~3_combout\ = (\clkdivider_2hz|s_counter\(3) & (\clkdivider_2hz|s_counter\(2) & (!\clkdivider_2hz|s_counter\(6) & \clkdivider_2hz|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(3),
	datab => \clkdivider_2hz|s_counter\(2),
	datac => \clkdivider_2hz|s_counter\(6),
	datad => \clkdivider_2hz|s_counter\(4),
	combout => \clkdivider_2hz|Equal0~3_combout\);

-- Location: LCCOMB_X36_Y62_N12
\clkdivider_2hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Equal0~4_combout\ = (\clkdivider_2hz|Equal0~0_combout\ & (\clkdivider_2hz|Equal0~1_combout\ & (\clkdivider_2hz|Equal0~2_combout\ & \clkdivider_2hz|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|Equal0~0_combout\,
	datab => \clkdivider_2hz|Equal0~1_combout\,
	datac => \clkdivider_2hz|Equal0~2_combout\,
	datad => \clkdivider_2hz|Equal0~3_combout\,
	combout => \clkdivider_2hz|Equal0~4_combout\);

-- Location: LCCOMB_X36_Y62_N10
\clkdivider_2hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Equal0~6_combout\ = (!\clkdivider_2hz|s_counter\(30) & (!\clkdivider_2hz|s_counter\(29) & (\clkdivider_2hz|Equal0~5_combout\ & \clkdivider_2hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(30),
	datab => \clkdivider_2hz|s_counter\(29),
	datac => \clkdivider_2hz|Equal0~5_combout\,
	datad => \clkdivider_2hz|Equal0~4_combout\,
	combout => \clkdivider_2hz|Equal0~6_combout\);

-- Location: LCCOMB_X36_Y62_N18
\clkdivider_2hz|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|Equal0~9_combout\ = (\clkdivider_2hz|s_counter\(5) & (\clkdivider_2hz|Equal0~7_combout\ & (\clkdivider_2hz|Equal0~8_combout\ & \clkdivider_2hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(5),
	datab => \clkdivider_2hz|Equal0~7_combout\,
	datac => \clkdivider_2hz|Equal0~8_combout\,
	datad => \clkdivider_2hz|Equal0~6_combout\,
	combout => \clkdivider_2hz|Equal0~9_combout\);

-- Location: FF_X36_Y62_N17
\clkdivider_2hz|clkOut~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|clkOut~_Duplicate_1_q\);

-- Location: LCCOMB_X36_Y61_N0
\clkdivider_2hz|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|clkOut~0_combout\ = (!\clkdivider_2hz|s_counter\(24) & (\clkdivider_2hz|s_counter\(23) & (\clkdivider_2hz|s_counter\(17) & !\clkdivider_2hz|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(24),
	datab => \clkdivider_2hz|s_counter\(23),
	datac => \clkdivider_2hz|s_counter\(17),
	datad => \clkdivider_2hz|s_counter\(22),
	combout => \clkdivider_2hz|clkOut~0_combout\);

-- Location: LCCOMB_X34_Y62_N26
\clkdivider_2hz|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|clkOut~1_combout\ = (!\clkdivider_2hz|s_counter\(16) & (!\clkdivider_2hz|s_counter\(14) & (\clkdivider_2hz|s_counter\(15) & \clkdivider_2hz|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(16),
	datab => \clkdivider_2hz|s_counter\(14),
	datac => \clkdivider_2hz|s_counter\(15),
	datad => \clkdivider_2hz|s_counter\(10),
	combout => \clkdivider_2hz|clkOut~1_combout\);

-- Location: LCCOMB_X36_Y62_N0
\clkdivider_2hz|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|clkOut~2_combout\ = (!\clkdivider_2hz|s_counter\(5) & (\clkdivider_2hz|clkOut~0_combout\ & (\clkdivider_2hz|clkOut~1_combout\ & \clkdivider_2hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_2hz|s_counter\(5),
	datab => \clkdivider_2hz|clkOut~0_combout\,
	datac => \clkdivider_2hz|clkOut~1_combout\,
	datad => \clkdivider_2hz|Equal0~6_combout\,
	combout => \clkdivider_2hz|clkOut~2_combout\);

-- Location: LCCOMB_X36_Y62_N16
\clkdivider_2hz|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_2hz|clkOut~3_combout\ = (!\clkdivider_2hz|Equal0~9_combout\ & ((\clkdivider_2hz|clkOut~_Duplicate_1_q\) # (\clkdivider_2hz|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_2hz|Equal0~9_combout\,
	datac => \clkdivider_2hz|clkOut~_Duplicate_1_q\,
	datad => \clkdivider_2hz|clkOut~2_combout\,
	combout => \clkdivider_2hz|clkOut~3_combout\);

-- Location: DDIOOUTCELL_X72_Y73_N11
\clkdivider_2hz|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_2hz|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_2hz|clkOut~q\);

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

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


