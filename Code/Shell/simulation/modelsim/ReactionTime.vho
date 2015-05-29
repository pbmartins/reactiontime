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

-- DATE "05/29/2015 15:11:48"

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
	SW : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(0 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END ReactionTime;

-- Design Ports Information
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
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkdivider_10000hz|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timeraux_fsm|s_active~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkdivider_1hz|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
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
SIGNAL \clkdivider_1hz|Add0~31\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~32_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~33\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~34_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~10_combout\ : std_logic;
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
SIGNAL \clkdivider_1hz|Add0~46_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~9_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~47\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~48_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~49\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~50_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~8_combout\ : std_logic;
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
SIGNAL \clkdivider_1hz|Equal0~7_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~5_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~8_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~9_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~1_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~0_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~2_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~3_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~4_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~10_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~30_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~11_combout\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~1_combout\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~0_combout\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~2_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~6_combout\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~3_combout\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~feeder_combout\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~q\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \key0_debounce|s_dirtyIn~q\ : std_logic;
SIGNAL \key0_debounce|s_pulsedOut~feeder_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \key1_debounce|s_dirtyIn~q\ : std_logic;
SIGNAL \key1_debounce|s_pulsedOut~feeder_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[0]~31_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[0]~32\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[1]~33_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[1]~34\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[2]~35_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[2]~36\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[3]~37_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[3]~38\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[4]~39_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[4]~40\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[5]~41_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[5]~42\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[6]~43_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[6]~44\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[7]~45_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[7]~46\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[8]~47_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[8]~48\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[9]~49_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[9]~50\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[10]~51_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[10]~52\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[11]~53_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[11]~54\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[12]~55_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[12]~56\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[13]~57_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[13]~58\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[14]~59_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[14]~60\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[15]~61_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[15]~feeder_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[15]~62\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[16]~63_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[16]~64\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[17]~65_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[17]~66\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[18]~67_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[18]~68\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[19]~69_combout\ : std_logic;
SIGNAL \key1_debounce|Equal0~5_combout\ : std_logic;
SIGNAL \key1_debounce|Equal0~2_combout\ : std_logic;
SIGNAL \key1_debounce|Equal0~1_combout\ : std_logic;
SIGNAL \key1_debounce|Equal0~0_combout\ : std_logic;
SIGNAL \key1_debounce|Equal0~3_combout\ : std_logic;
SIGNAL \key1_debounce|Equal0~4_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[19]~70\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[20]~71_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[20]~72\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[21]~73_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[21]~74\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[22]~75_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[22]~76\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[23]~77_combout\ : std_logic;
SIGNAL \key1_debounce|Equal0~6_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[23]~78\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[24]~79_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[24]~80\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[25]~81_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[25]~82\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[26]~83_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[26]~84\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[27]~85_combout\ : std_logic;
SIGNAL \key1_debounce|Equal0~7_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[27]~86\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[28]~87_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[28]~88\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[29]~89_combout\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[29]~90\ : std_logic;
SIGNAL \key1_debounce|s_debounceCnt[30]~91_combout\ : std_logic;
SIGNAL \key1_debounce|Equal0~8_combout\ : std_logic;
SIGNAL \key1_debounce|Equal0~9_combout\ : std_logic;
SIGNAL \key1_debounce|s_resetPulse~0_combout\ : std_logic;
SIGNAL \key1_debounce|s_resetPulse~q\ : std_logic;
SIGNAL \key1_debounce|out_proc~0_combout\ : std_logic;
SIGNAL \key1_debounce|s_pulsedOut~q\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[0]~31_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[0]~32\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[1]~33_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[1]~34\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[2]~35_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[2]~36\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[3]~37_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[3]~38\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[4]~39_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[4]~40\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[5]~41_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[5]~42\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[6]~43_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[6]~44\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[7]~45_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[7]~46\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[8]~47_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[8]~48\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[9]~49_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[9]~50\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[10]~51_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[10]~52\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[11]~53_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[11]~54\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[12]~55_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[12]~56\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[13]~57_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[13]~58\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[14]~59_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[14]~60\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[15]~61_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[15]~feeder_combout\ : std_logic;
SIGNAL \key0_debounce|Equal0~3_combout\ : std_logic;
SIGNAL \key0_debounce|Equal0~0_combout\ : std_logic;
SIGNAL \key0_debounce|Equal0~2_combout\ : std_logic;
SIGNAL \key0_debounce|Equal0~1_combout\ : std_logic;
SIGNAL \key0_debounce|Equal0~4_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[15]~62\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[16]~63_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[16]~64\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[17]~65_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[17]~66\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[18]~67_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[18]~68\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[19]~69_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[19]~70\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[20]~71_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[20]~72\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[21]~73_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[21]~74\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[22]~75_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[22]~76\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[23]~77_combout\ : std_logic;
SIGNAL \key0_debounce|Equal0~6_combout\ : std_logic;
SIGNAL \key0_debounce|Equal0~5_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[23]~78\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[24]~79_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[24]~80\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[25]~81_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[25]~82\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[26]~83_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[26]~84\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[27]~85_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[27]~86\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[28]~87_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[28]~88\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[29]~89_combout\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[29]~90\ : std_logic;
SIGNAL \key0_debounce|s_debounceCnt[30]~91_combout\ : std_logic;
SIGNAL \key0_debounce|Equal0~7_combout\ : std_logic;
SIGNAL \key0_debounce|Equal0~8_combout\ : std_logic;
SIGNAL \key0_debounce|Equal0~9_combout\ : std_logic;
SIGNAL \key0_debounce|s_resetPulse~0_combout\ : std_logic;
SIGNAL \key0_debounce|s_resetPulse~q\ : std_logic;
SIGNAL \key0_debounce|out_proc~0_combout\ : std_logic;
SIGNAL \key0_debounce|s_pulsedOut~q\ : std_logic;
SIGNAL \main_fsm|PS.A~0_combout\ : std_logic;
SIGNAL \main_fsm|PS.A~q\ : std_logic;
SIGNAL \ledcounter_fsm|s_nextState.B~0_combout\ : std_logic;
SIGNAL \ledcounter_fsm|s_currentState.B~_Duplicate_1_q\ : std_logic;
SIGNAL \ledcounter_fsm|s_currentState.C~q\ : std_logic;
SIGNAL \ledcounter_fsm|s_currentState.D~feeder_combout\ : std_logic;
SIGNAL \ledcounter_fsm|s_currentState.D~q\ : std_logic;
SIGNAL \ledcounter_fsm|s_currentState.E~0_combout\ : std_logic;
SIGNAL \ledcounter_fsm|s_currentState.E~q\ : std_logic;
SIGNAL \main_fsm|Selector0~0_combout\ : std_logic;
SIGNAL \main_fsm|PS.B~feeder_combout\ : std_logic;
SIGNAL \main_fsm|PS.B~q\ : std_logic;
SIGNAL \ledcounter_fsm|s_currentState.A~0_combout\ : std_logic;
SIGNAL \ledcounter_fsm|s_currentState.A~q\ : std_logic;
SIGNAL \ledcounter_fsm|ledRed0~2_combout\ : std_logic;
SIGNAL \ledcounter_fsm|ledRed1~combout\ : std_logic;
SIGNAL \ledcounter_fsm|s_currentState.B~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \rnd_gen|next_state[39]~94_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[56]~23_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[49]~111_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[1]~11_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[15]~10_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[61]~131_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[47]~107_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[25]~68_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[5]~20_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[51]~113_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[25]~67_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[25]~69_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[33]~81_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[54]~120_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[47]~106_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[47]~108_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[30]~79_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[22]~60_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[22]~61_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[22]~62_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[17]~45_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[17]~46_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[17]~47_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[44]~103_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[33]~82_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[7]~27_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[52]~119_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[45]~104_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[45]~105_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[41]~100_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[21]~57_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[21]~59_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[10]~30_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[10]~31_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[63]~117_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[34]~83_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[34]~84_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[34]~85_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[55]~118_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[59]~51_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[59]~123_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[40]~98_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[40]~87_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[40]~99_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[15]~37_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[58]~126_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[58]~127_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[29]~78_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[60]~128_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[60]~129_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[60]~130_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[58]~70_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[26]~71_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[26]~72_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[63]~134_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[35]~86_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[38]~91_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[38]~90_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[38]~92_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[13]~41_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[13]~40_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[13]~42_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[56]~121_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[56]~32_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[56]~122_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[23]~54_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[23]~55_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[23]~56_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[39]~43_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[53]~115_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[53]~114_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[53]~116_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[31]~73_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[36]~93_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[50]~50_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[55]~95_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[42]~96_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[42]~97_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[0]~9_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[0]~8_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~12_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~13_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~11_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~10_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~14_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~18_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~16_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~17_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~15_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~19_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~6_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~8_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~5_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~7_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~9_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~1_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~2_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~3_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~0_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~4_combout\ : std_logic;
SIGNAL \rnd_gen|Equal0~20_combout\ : std_logic;
SIGNAL \rnd_gen|state~0_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[62]~132_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[62]~133_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[48]~110_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[48]~109_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[6]~25_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[6]~26_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[2]~12_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[2]~13_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[2]~14_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[37]~88_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[37]~89_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[12]~39_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[45]~64_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[24]~65_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[12]~16_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[3]~15_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[3]~17_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[4]~22_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[59]~74_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[28]~75_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[28]~76_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[33]~28_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[57]~58_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[57]~124_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[57]~125_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[10]~29_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[9]~34_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[9]~36_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[27]~66_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[50]~24_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[50]~112_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[50]~135_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[18]~52_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[18]~53_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[43]~35_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[43]~101_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[11]~33_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[63]~77_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[32]~80_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[46]~102_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[19]~48_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[19]~49_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[22]~44_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[20]~63_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[14]~38_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[57]~18_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[5]~19_combout\ : std_logic;
SIGNAL \rnd_gen|next_state[5]~21_combout\ : std_logic;
SIGNAL \timeraux_fsm|process_0~0_combout\ : std_logic;
SIGNAL \timeraux_fsm|process_0~1_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~0_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_active~7_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_active~7clkctrl_outclk\ : std_logic;
SIGNAL \timeraux_fsm|s_active~1_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~1_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~18_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[0]~26_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[0]~29_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_timeExp~0_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[0]~_emulated_q\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[0]~28_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[0]~27_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~2\ : std_logic;
SIGNAL \timeraux_fsm|Add0~3_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~17_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[1]~21_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add1~1_cout\ : std_logic;
SIGNAL \timeraux_fsm|Add1~2_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[1]~24_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[1]~_emulated_q\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[1]~23_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[1]~22_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~4\ : std_logic;
SIGNAL \timeraux_fsm|Add0~6\ : std_logic;
SIGNAL \timeraux_fsm|Add0~7_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~15_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[3]~11_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~5_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~16_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[2]~16_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add1~3\ : std_logic;
SIGNAL \timeraux_fsm|Add1~4_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[2]~19_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[2]~_emulated_q\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[2]~18_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[2]~17_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add1~5\ : std_logic;
SIGNAL \timeraux_fsm|Add1~6_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[3]~14_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[3]~_emulated_q\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[3]~13_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[3]~12_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~8\ : std_logic;
SIGNAL \timeraux_fsm|Add0~10\ : std_logic;
SIGNAL \timeraux_fsm|Add0~11_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~13_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[5]~1_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~9_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add0~14_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[4]~6_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add1~7\ : std_logic;
SIGNAL \timeraux_fsm|Add1~8_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[4]~9_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[4]~_emulated_q\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[4]~8_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[4]~7_combout\ : std_logic;
SIGNAL \timeraux_fsm|Add1~9\ : std_logic;
SIGNAL \timeraux_fsm|Add1~10_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[5]~4_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[5]~_emulated_q\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[5]~3_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_counter[5]~2_combout\ : std_logic;
SIGNAL \timeraux_fsm|Equal0~0_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_active~8_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_active~4_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_active~_emulated_q\ : std_logic;
SIGNAL \timeraux_fsm|s_active~3_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_active~2_combout\ : std_logic;
SIGNAL \main_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \main_fsm|PS.C~q\ : std_logic;
SIGNAL \timeraux_fsm|s_timeExp~8_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_timeExp~1_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_timeExp~4_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_timeExp~_emulated_q\ : std_logic;
SIGNAL \timeraux_fsm|s_timeExp~3_combout\ : std_logic;
SIGNAL \timeraux_fsm|s_timeExp~2_combout\ : std_logic;
SIGNAL \main_fsm|Selector2~0_combout\ : std_logic;
SIGNAL \main_fsm|Selector2~1_combout\ : std_logic;
SIGNAL \main_fsm|PS.D~q\ : std_logic;
SIGNAL \main_fsm|PS.E~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \main_fsm|PS.E~_Duplicate_1_q\ : std_logic;
SIGNAL \main_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \main_fsm|PS.E~q\ : std_logic;
SIGNAL \main_fsm|PS.G~0_combout\ : std_logic;
SIGNAL \main_fsm|PS.G~feeder_combout\ : std_logic;
SIGNAL \main_fsm|PS.G~q\ : std_logic;
SIGNAL \main_fsm|PS.F~0_combout\ : std_logic;
SIGNAL \main_fsm|PS.F~q\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~1_cout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~2_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~3\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~4_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|s_counter~2_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~5\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~6_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~7\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~8_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~9\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~10_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~11\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~12_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|s_counter~0_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~13\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~14_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|s_counter~1_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~15\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~16_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|s_counter~3_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~17\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~18_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~19\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~20_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~21\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~22_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|s_counter~4_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~23\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~24_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~25\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~26_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~27\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~28_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~29\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~30_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~31\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~32_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~33\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~34_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~35\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~36_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~37\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~38_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Equal0~3_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Equal0~1_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Equal0~2_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Equal0~0_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Equal0~4_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Equal0~8_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~39\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~40_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~41\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~42_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~43\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~44_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~45\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~46_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~47\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~48_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~49\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~50_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~51\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~52_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~53\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~54_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~55\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~56_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~57\ : std_logic;
SIGNAL \clkdivider_10000hz|Add0~58_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Equal0~5_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Equal0~6_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Equal0~7_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|Equal0~9_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|clkOut~0_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|clkOut~1_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|clkOut~2_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|clkOut~feeder_combout\ : std_logic;
SIGNAL \clkdivider_10000hz|clkOut~q\ : std_logic;
SIGNAL \clkdivider_10000hz|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \counter|s_count[0]~34_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[0]~0_combout\ : std_logic;
SIGNAL \counter|s_count~2_combout\ : std_logic;
SIGNAL \counter|s_count~0_combout\ : std_logic;
SIGNAL \counter|s_count[2]~1_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[2]~2_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[1]~1_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[3]~3_combout\ : std_logic;
SIGNAL \hexdisplay|disp_0_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_0_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_0_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_0_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_0_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_0_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_0_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \counter|s_count[4]~35_combout\ : std_logic;
SIGNAL \counter|Equal0~0_combout\ : std_logic;
SIGNAL \counter|s_count[7]~3_combout\ : std_logic;
SIGNAL \counter|s_count[6]~5_combout\ : std_logic;
SIGNAL \counter|s_count~6_combout\ : std_logic;
SIGNAL \counter|s_count~4_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[5]~5_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[4]~4_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[7]~7_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[6]~6_combout\ : std_logic;
SIGNAL \hexdisplay|disp_1_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_1_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_1_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_1_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_1_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_1_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_1_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \counter|Equal1~0_combout\ : std_logic;
SIGNAL \counter|s_count[11]~7_combout\ : std_logic;
SIGNAL \counter|s_count[8]~36_combout\ : std_logic;
SIGNAL \counter|s_count~10_combout\ : std_logic;
SIGNAL \counter|s_count~8_combout\ : std_logic;
SIGNAL \counter|s_count[10]~9_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[10]~10_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[9]~9_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[11]~11_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[8]~8_combout\ : std_logic;
SIGNAL \hexdisplay|disp_2_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_2_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_2_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_2_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_2_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_2_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_2_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \counter|Equal2~0_combout\ : std_logic;
SIGNAL \counter|s_count[15]~11_combout\ : std_logic;
SIGNAL \counter|s_count[12]~37_combout\ : std_logic;
SIGNAL \counter|s_count~14_combout\ : std_logic;
SIGNAL \counter|s_count~12_combout\ : std_logic;
SIGNAL \counter|s_count[14]~13_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[14]~14_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[13]~13_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[15]~15_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[12]~12_combout\ : std_logic;
SIGNAL \hexdisplay|disp_3_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_3_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_3_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_3_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_3_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_3_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_3_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \counter|s_count[16]~38_combout\ : std_logic;
SIGNAL \counter|Equal3~0_combout\ : std_logic;
SIGNAL \counter|s_count[19]~15_combout\ : std_logic;
SIGNAL \counter|s_count[19]~16_combout\ : std_logic;
SIGNAL \counter|s_count[18]~18_combout\ : std_logic;
SIGNAL \counter|s_count~17_combout\ : std_logic;
SIGNAL \counter|s_count~19_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[19]~19_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[18]~18_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[17]~17_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[16]~16_combout\ : std_logic;
SIGNAL \hexdisplay|disp_4_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_4_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_4_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_4_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_4_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_4_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_4_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \counter|s_count[20]~39_combout\ : std_logic;
SIGNAL \counter|Equal4~0_combout\ : std_logic;
SIGNAL \counter|s_count[23]~20_combout\ : std_logic;
SIGNAL \counter|s_count[22]~22_combout\ : std_logic;
SIGNAL \counter|s_count~21_combout\ : std_logic;
SIGNAL \counter|s_count~23_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[23]~23_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[20]~20_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[21]~21_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[22]~22_combout\ : std_logic;
SIGNAL \hexdisplay|disp_5_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_5_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_5_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_5_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_5_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_5_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_5_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \counter|Equal5~0_combout\ : std_logic;
SIGNAL \counter|s_count[27]~24_combout\ : std_logic;
SIGNAL \counter|s_count[24]~40_combout\ : std_logic;
SIGNAL \counter|s_count~25_combout\ : std_logic;
SIGNAL \counter|s_count[26]~26_combout\ : std_logic;
SIGNAL \counter|s_count~27_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[27]~27_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[26]~26_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[25]~25_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[24]~24_combout\ : std_logic;
SIGNAL \hexdisplay|disp_6_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_6_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_6_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_6_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_6_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_6_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_6_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \counter|s_count[28]~41_combout\ : std_logic;
SIGNAL \counter|Equal6~0_combout\ : std_logic;
SIGNAL \counter|s_count[31]~28_combout\ : std_logic;
SIGNAL \counter|s_count[31]~29_combout\ : std_logic;
SIGNAL \counter|s_count[31]~32_combout\ : std_logic;
SIGNAL \counter|s_count[31]~33_combout\ : std_logic;
SIGNAL \counter|s_count~30_combout\ : std_logic;
SIGNAL \counter|s_count~31_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[30]~30_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[29]~29_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[31]~31_combout\ : std_logic;
SIGNAL \hexdisplay|s_registerOut[28]~28_combout\ : std_logic;
SIGNAL \hexdisplay|disp_7_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_7_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_7_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_7_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_7_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_7_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_7_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \rnd_gen|next_state\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \clkdivider_10000hz|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \clkdivider_1hz|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \key0_debounce|s_debounceCnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \rnd_gen|state\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \counter|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \key1_debounce|s_debounceCnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \key0_debounce|ALT_INV_out_proc~0_combout\ : std_logic;
SIGNAL \key0_debounce|ALT_INV_s_dirtyIn~q\ : std_logic;
SIGNAL \key1_debounce|ALT_INV_out_proc~0_combout\ : std_logic;
SIGNAL \key1_debounce|ALT_INV_s_dirtyIn~q\ : std_logic;
SIGNAL \key1_debounce|ALT_INV_s_pulsedOut~q\ : std_logic;
SIGNAL \hexdisplay|disp_7_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_6_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_5_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_4_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_3_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_2_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_1_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hexdisplay|disp_0_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ledcounter_fsm|ALT_INV_ledRed0~2_combout\ : std_logic;
SIGNAL \timeraux_fsm|ALT_INV_s_timeExp~0_combout\ : std_logic;

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
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clkdivider_10000hz|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkdivider_10000hz|clkOut~q\);

\timeraux_fsm|s_active~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \timeraux_fsm|s_active~7_combout\);

\clkdivider_1hz|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkdivider_1hz|clkOut~q\);
\key0_debounce|ALT_INV_out_proc~0_combout\ <= NOT \key0_debounce|out_proc~0_combout\;
\key0_debounce|ALT_INV_s_dirtyIn~q\ <= NOT \key0_debounce|s_dirtyIn~q\;
\key1_debounce|ALT_INV_out_proc~0_combout\ <= NOT \key1_debounce|out_proc~0_combout\;
\key1_debounce|ALT_INV_s_dirtyIn~q\ <= NOT \key1_debounce|s_dirtyIn~q\;
\key1_debounce|ALT_INV_s_pulsedOut~q\ <= NOT \key1_debounce|s_pulsedOut~q\;
\hexdisplay|disp_7_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hexdisplay|disp_7_decoder|Mux0~0_combout\;
\hexdisplay|disp_6_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hexdisplay|disp_6_decoder|Mux0~0_combout\;
\hexdisplay|disp_5_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hexdisplay|disp_5_decoder|Mux0~0_combout\;
\hexdisplay|disp_4_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hexdisplay|disp_4_decoder|Mux0~0_combout\;
\hexdisplay|disp_3_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hexdisplay|disp_3_decoder|Mux0~0_combout\;
\hexdisplay|disp_2_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hexdisplay|disp_2_decoder|Mux0~0_combout\;
\hexdisplay|disp_1_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hexdisplay|disp_1_decoder|Mux0~0_combout\;
\hexdisplay|disp_0_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hexdisplay|disp_0_decoder|Mux0~0_combout\;
\ledcounter_fsm|ALT_INV_ledRed0~2_combout\ <= NOT \ledcounter_fsm|ledRed0~2_combout\;
\timeraux_fsm|ALT_INV_s_timeExp~0_combout\ <= NOT \timeraux_fsm|s_timeExp~0_combout\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ledcounter_fsm|ALT_INV_ledRed0~2_combout\,
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
	i => \ledcounter_fsm|ledRed1~combout\,
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
	i => \ledcounter_fsm|s_currentState.B~q\,
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
	i => GND,
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
	i => \main_fsm|PS.E~q\,
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
	i => \hexdisplay|disp_0_decoder|Mux6~0_combout\,
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
	i => \hexdisplay|disp_0_decoder|Mux5~0_combout\,
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
	i => \hexdisplay|disp_0_decoder|Mux4~0_combout\,
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
	i => \hexdisplay|disp_0_decoder|Mux3~0_combout\,
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
	i => \hexdisplay|disp_0_decoder|Mux2~0_combout\,
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
	i => \hexdisplay|disp_0_decoder|Mux1~0_combout\,
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
	i => \hexdisplay|disp_0_decoder|ALT_INV_Mux0~0_combout\,
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
	i => \hexdisplay|disp_1_decoder|Mux6~0_combout\,
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
	i => \hexdisplay|disp_1_decoder|Mux5~0_combout\,
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
	i => \hexdisplay|disp_1_decoder|Mux4~0_combout\,
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
	i => \hexdisplay|disp_1_decoder|Mux3~0_combout\,
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
	i => \hexdisplay|disp_1_decoder|Mux2~0_combout\,
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
	i => \hexdisplay|disp_1_decoder|Mux1~0_combout\,
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
	i => \hexdisplay|disp_1_decoder|ALT_INV_Mux0~0_combout\,
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
	i => \hexdisplay|disp_2_decoder|Mux6~0_combout\,
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
	i => \hexdisplay|disp_2_decoder|Mux5~0_combout\,
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
	i => \hexdisplay|disp_2_decoder|Mux4~0_combout\,
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
	i => \hexdisplay|disp_2_decoder|Mux3~0_combout\,
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
	i => \hexdisplay|disp_2_decoder|Mux2~0_combout\,
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
	i => \hexdisplay|disp_2_decoder|Mux1~0_combout\,
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
	i => \hexdisplay|disp_2_decoder|ALT_INV_Mux0~0_combout\,
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
	i => \hexdisplay|disp_3_decoder|Mux6~0_combout\,
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
	i => \hexdisplay|disp_3_decoder|Mux5~0_combout\,
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
	i => \hexdisplay|disp_3_decoder|Mux4~0_combout\,
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
	i => \hexdisplay|disp_3_decoder|Mux3~0_combout\,
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
	i => \hexdisplay|disp_3_decoder|Mux2~0_combout\,
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
	i => \hexdisplay|disp_3_decoder|Mux1~0_combout\,
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
	i => \hexdisplay|disp_3_decoder|ALT_INV_Mux0~0_combout\,
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
	i => \hexdisplay|disp_4_decoder|Mux6~0_combout\,
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
	i => \hexdisplay|disp_4_decoder|Mux5~0_combout\,
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
	i => \hexdisplay|disp_4_decoder|Mux4~0_combout\,
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
	i => \hexdisplay|disp_4_decoder|Mux3~0_combout\,
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
	i => \hexdisplay|disp_4_decoder|Mux2~0_combout\,
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
	i => \hexdisplay|disp_4_decoder|Mux1~0_combout\,
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
	i => \hexdisplay|disp_4_decoder|ALT_INV_Mux0~0_combout\,
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
	i => \hexdisplay|disp_5_decoder|Mux6~0_combout\,
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
	i => \hexdisplay|disp_5_decoder|Mux5~0_combout\,
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
	i => \hexdisplay|disp_5_decoder|Mux4~0_combout\,
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
	i => \hexdisplay|disp_5_decoder|Mux3~0_combout\,
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
	i => \hexdisplay|disp_5_decoder|Mux2~0_combout\,
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
	i => \hexdisplay|disp_5_decoder|Mux1~0_combout\,
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
	i => \hexdisplay|disp_5_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay|disp_6_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay|disp_6_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay|disp_6_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay|disp_6_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay|disp_6_decoder|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay|disp_6_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay|disp_6_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay|disp_7_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay|disp_7_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay|disp_7_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay|disp_7_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay|disp_7_decoder|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay|disp_7_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay|disp_7_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

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

-- Location: LCCOMB_X35_Y54_N2
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

-- Location: FF_X35_Y54_N3
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

-- Location: LCCOMB_X35_Y54_N4
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

-- Location: FF_X35_Y54_N5
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

-- Location: LCCOMB_X35_Y54_N6
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

-- Location: FF_X35_Y54_N7
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

-- Location: LCCOMB_X35_Y54_N8
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

-- Location: FF_X35_Y54_N9
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

-- Location: LCCOMB_X35_Y54_N10
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

-- Location: FF_X35_Y54_N11
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

-- Location: LCCOMB_X35_Y54_N12
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

-- Location: FF_X35_Y54_N13
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

-- Location: LCCOMB_X35_Y54_N14
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

-- Location: FF_X35_Y54_N15
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

-- Location: LCCOMB_X35_Y54_N16
\clkdivider_1hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~14_combout\ = (\clkdivider_1hz|s_counter\(7) & (!\clkdivider_1hz|Add0~13\)) # (!\clkdivider_1hz|s_counter\(7) & ((\clkdivider_1hz|Add0~13\) # (GND)))
-- \clkdivider_1hz|Add0~15\ = CARRY((!\clkdivider_1hz|Add0~13\) # (!\clkdivider_1hz|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(7),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~13\,
	combout => \clkdivider_1hz|Add0~14_combout\,
	cout => \clkdivider_1hz|Add0~15\);

-- Location: LCCOMB_X36_Y53_N18
\clkdivider_1hz|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~7_combout\ = (!\clkdivider_1hz|Equal0~10_combout\ & \clkdivider_1hz|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Equal0~10_combout\,
	datad => \clkdivider_1hz|Add0~14_combout\,
	combout => \clkdivider_1hz|s_counter~7_combout\);

-- Location: FF_X36_Y53_N19
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

-- Location: LCCOMB_X35_Y54_N18
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

-- Location: FF_X35_Y54_N19
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

-- Location: LCCOMB_X35_Y54_N20
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

-- Location: FF_X35_Y54_N21
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

-- Location: LCCOMB_X35_Y54_N22
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

-- Location: FF_X35_Y54_N23
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

-- Location: LCCOMB_X35_Y54_N24
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

-- Location: FF_X35_Y54_N25
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

-- Location: LCCOMB_X35_Y54_N26
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

-- Location: LCCOMB_X35_Y54_N0
\clkdivider_1hz|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~6_combout\ = (\clkdivider_1hz|Add0~24_combout\ & !\clkdivider_1hz|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Add0~24_combout\,
	datad => \clkdivider_1hz|Equal0~10_combout\,
	combout => \clkdivider_1hz|s_counter~6_combout\);

-- Location: FF_X35_Y54_N1
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

-- Location: LCCOMB_X35_Y54_N28
\clkdivider_1hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~26_combout\ = (\clkdivider_1hz|s_counter\(13) & (!\clkdivider_1hz|Add0~25\)) # (!\clkdivider_1hz|s_counter\(13) & ((\clkdivider_1hz|Add0~25\) # (GND)))
-- \clkdivider_1hz|Add0~27\ = CARRY((!\clkdivider_1hz|Add0~25\) # (!\clkdivider_1hz|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(13),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~25\,
	combout => \clkdivider_1hz|Add0~26_combout\,
	cout => \clkdivider_1hz|Add0~27\);

-- Location: LCCOMB_X36_Y53_N10
\clkdivider_1hz|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~5_combout\ = (!\clkdivider_1hz|Equal0~10_combout\ & \clkdivider_1hz|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|Equal0~10_combout\,
	datac => \clkdivider_1hz|Add0~26_combout\,
	combout => \clkdivider_1hz|s_counter~5_combout\);

-- Location: FF_X36_Y53_N11
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

-- Location: LCCOMB_X35_Y54_N30
\clkdivider_1hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~28_combout\ = (\clkdivider_1hz|s_counter\(14) & (\clkdivider_1hz|Add0~27\ $ (GND))) # (!\clkdivider_1hz|s_counter\(14) & (!\clkdivider_1hz|Add0~27\ & VCC))
-- \clkdivider_1hz|Add0~29\ = CARRY((\clkdivider_1hz|s_counter\(14) & !\clkdivider_1hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(14),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~27\,
	combout => \clkdivider_1hz|Add0~28_combout\,
	cout => \clkdivider_1hz|Add0~29\);

-- Location: LCCOMB_X36_Y53_N0
\clkdivider_1hz|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~4_combout\ = (!\clkdivider_1hz|Equal0~10_combout\ & \clkdivider_1hz|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|Equal0~10_combout\,
	datac => \clkdivider_1hz|Add0~28_combout\,
	combout => \clkdivider_1hz|s_counter~4_combout\);

-- Location: FF_X36_Y53_N1
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

-- Location: LCCOMB_X35_Y53_N0
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

-- Location: LCCOMB_X35_Y53_N2
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

-- Location: FF_X35_Y53_N3
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

-- Location: LCCOMB_X35_Y53_N4
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

-- Location: LCCOMB_X34_Y53_N14
\clkdivider_1hz|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~10_combout\ = (!\clkdivider_1hz|Equal0~10_combout\ & \clkdivider_1hz|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Equal0~10_combout\,
	datad => \clkdivider_1hz|Add0~34_combout\,
	combout => \clkdivider_1hz|s_counter~10_combout\);

-- Location: FF_X34_Y53_N15
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

-- Location: LCCOMB_X35_Y53_N6
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

-- Location: FF_X35_Y53_N7
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

-- Location: LCCOMB_X35_Y53_N8
\clkdivider_1hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~38_combout\ = (\clkdivider_1hz|s_counter\(19) & (!\clkdivider_1hz|Add0~37\)) # (!\clkdivider_1hz|s_counter\(19) & ((\clkdivider_1hz|Add0~37\) # (GND)))
-- \clkdivider_1hz|Add0~39\ = CARRY((!\clkdivider_1hz|Add0~37\) # (!\clkdivider_1hz|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(19),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~37\,
	combout => \clkdivider_1hz|Add0~38_combout\,
	cout => \clkdivider_1hz|Add0~39\);

-- Location: LCCOMB_X36_Y53_N30
\clkdivider_1hz|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~3_combout\ = (!\clkdivider_1hz|Equal0~10_combout\ & \clkdivider_1hz|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Equal0~10_combout\,
	datad => \clkdivider_1hz|Add0~38_combout\,
	combout => \clkdivider_1hz|s_counter~3_combout\);

-- Location: FF_X36_Y53_N31
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

-- Location: LCCOMB_X35_Y53_N10
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

-- Location: LCCOMB_X36_Y53_N26
\clkdivider_1hz|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~2_combout\ = (!\clkdivider_1hz|Equal0~10_combout\ & \clkdivider_1hz|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Equal0~10_combout\,
	datad => \clkdivider_1hz|Add0~40_combout\,
	combout => \clkdivider_1hz|s_counter~2_combout\);

-- Location: FF_X36_Y53_N27
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

-- Location: LCCOMB_X35_Y53_N12
\clkdivider_1hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~42_combout\ = (\clkdivider_1hz|s_counter\(21) & (!\clkdivider_1hz|Add0~41\)) # (!\clkdivider_1hz|s_counter\(21) & ((\clkdivider_1hz|Add0~41\) # (GND)))
-- \clkdivider_1hz|Add0~43\ = CARRY((!\clkdivider_1hz|Add0~41\) # (!\clkdivider_1hz|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(21),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~41\,
	combout => \clkdivider_1hz|Add0~42_combout\,
	cout => \clkdivider_1hz|Add0~43\);

-- Location: LCCOMB_X36_Y53_N28
\clkdivider_1hz|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~1_combout\ = (!\clkdivider_1hz|Equal0~10_combout\ & \clkdivider_1hz|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Equal0~10_combout\,
	datad => \clkdivider_1hz|Add0~42_combout\,
	combout => \clkdivider_1hz|s_counter~1_combout\);

-- Location: FF_X36_Y53_N29
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

-- Location: LCCOMB_X35_Y53_N14
\clkdivider_1hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~44_combout\ = (\clkdivider_1hz|s_counter\(22) & (\clkdivider_1hz|Add0~43\ $ (GND))) # (!\clkdivider_1hz|s_counter\(22) & (!\clkdivider_1hz|Add0~43\ & VCC))
-- \clkdivider_1hz|Add0~45\ = CARRY((\clkdivider_1hz|s_counter\(22) & !\clkdivider_1hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(22),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~43\,
	combout => \clkdivider_1hz|Add0~44_combout\,
	cout => \clkdivider_1hz|Add0~45\);

-- Location: LCCOMB_X36_Y53_N22
\clkdivider_1hz|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~0_combout\ = (!\clkdivider_1hz|Equal0~10_combout\ & \clkdivider_1hz|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Equal0~10_combout\,
	datad => \clkdivider_1hz|Add0~44_combout\,
	combout => \clkdivider_1hz|s_counter~0_combout\);

-- Location: FF_X36_Y53_N23
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

-- Location: LCCOMB_X35_Y53_N16
\clkdivider_1hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~46_combout\ = (\clkdivider_1hz|s_counter\(23) & (!\clkdivider_1hz|Add0~45\)) # (!\clkdivider_1hz|s_counter\(23) & ((\clkdivider_1hz|Add0~45\) # (GND)))
-- \clkdivider_1hz|Add0~47\ = CARRY((!\clkdivider_1hz|Add0~45\) # (!\clkdivider_1hz|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(23),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~45\,
	combout => \clkdivider_1hz|Add0~46_combout\,
	cout => \clkdivider_1hz|Add0~47\);

-- Location: LCCOMB_X34_Y53_N6
\clkdivider_1hz|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~9_combout\ = (!\clkdivider_1hz|Equal0~10_combout\ & \clkdivider_1hz|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Equal0~10_combout\,
	datad => \clkdivider_1hz|Add0~46_combout\,
	combout => \clkdivider_1hz|s_counter~9_combout\);

-- Location: FF_X34_Y53_N7
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

-- Location: LCCOMB_X35_Y53_N18
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

-- Location: FF_X35_Y53_N19
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

-- Location: LCCOMB_X35_Y53_N20
\clkdivider_1hz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~50_combout\ = (\clkdivider_1hz|s_counter\(25) & (!\clkdivider_1hz|Add0~49\)) # (!\clkdivider_1hz|s_counter\(25) & ((\clkdivider_1hz|Add0~49\) # (GND)))
-- \clkdivider_1hz|Add0~51\ = CARRY((!\clkdivider_1hz|Add0~49\) # (!\clkdivider_1hz|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(25),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~49\,
	combout => \clkdivider_1hz|Add0~50_combout\,
	cout => \clkdivider_1hz|Add0~51\);

-- Location: LCCOMB_X34_Y53_N30
\clkdivider_1hz|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~8_combout\ = (!\clkdivider_1hz|Equal0~10_combout\ & \clkdivider_1hz|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|Equal0~10_combout\,
	datac => \clkdivider_1hz|Add0~50_combout\,
	combout => \clkdivider_1hz|s_counter~8_combout\);

-- Location: FF_X34_Y53_N31
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

-- Location: LCCOMB_X35_Y53_N22
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

-- Location: FF_X35_Y53_N23
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

-- Location: LCCOMB_X35_Y53_N24
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

-- Location: FF_X35_Y53_N25
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

-- Location: LCCOMB_X35_Y53_N26
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

-- Location: FF_X35_Y53_N27
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

-- Location: LCCOMB_X35_Y53_N28
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

-- Location: FF_X35_Y53_N29
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

-- Location: LCCOMB_X35_Y53_N30
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

-- Location: FF_X35_Y53_N31
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

-- Location: LCCOMB_X34_Y53_N26
\clkdivider_1hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~7_combout\ = (\clkdivider_1hz|s_counter\(23) & (!\clkdivider_1hz|s_counter\(24) & (\clkdivider_1hz|s_counter\(25) & !\clkdivider_1hz|s_counter\(18))))

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
	combout => \clkdivider_1hz|Equal0~7_combout\);

-- Location: LCCOMB_X34_Y54_N8
\clkdivider_1hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~5_combout\ = (\clkdivider_1hz|s_counter\(3) & (\clkdivider_1hz|s_counter\(5) & (\clkdivider_1hz|s_counter\(4) & \clkdivider_1hz|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(3),
	datab => \clkdivider_1hz|s_counter\(5),
	datac => \clkdivider_1hz|s_counter\(4),
	datad => \clkdivider_1hz|s_counter\(2),
	combout => \clkdivider_1hz|Equal0~5_combout\);

-- Location: LCCOMB_X34_Y53_N28
\clkdivider_1hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~8_combout\ = (\clkdivider_1hz|s_counter\(15) & (!\clkdivider_1hz|s_counter\(11) & (\clkdivider_1hz|s_counter\(17) & !\clkdivider_1hz|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(15),
	datab => \clkdivider_1hz|s_counter\(11),
	datac => \clkdivider_1hz|s_counter\(17),
	datad => \clkdivider_1hz|s_counter\(16),
	combout => \clkdivider_1hz|Equal0~8_combout\);

-- Location: LCCOMB_X34_Y53_N8
\clkdivider_1hz|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~9_combout\ = (\clkdivider_1hz|Equal0~7_combout\ & (!\clkdivider_1hz|s_counter\(29) & (\clkdivider_1hz|Equal0~5_combout\ & \clkdivider_1hz|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|Equal0~7_combout\,
	datab => \clkdivider_1hz|s_counter\(29),
	datac => \clkdivider_1hz|Equal0~5_combout\,
	datad => \clkdivider_1hz|Equal0~8_combout\,
	combout => \clkdivider_1hz|Equal0~9_combout\);

-- Location: LCCOMB_X36_Y53_N12
\clkdivider_1hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~1_combout\ = (\clkdivider_1hz|s_counter\(20) & (\clkdivider_1hz|s_counter\(21) & (\clkdivider_1hz|s_counter\(22) & !\clkdivider_1hz|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(20),
	datab => \clkdivider_1hz|s_counter\(21),
	datac => \clkdivider_1hz|s_counter\(22),
	datad => \clkdivider_1hz|s_counter\(26),
	combout => \clkdivider_1hz|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y53_N4
\clkdivider_1hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~0_combout\ = (!\clkdivider_1hz|s_counter\(28) & (!\clkdivider_1hz|s_counter\(27) & (\clkdivider_1hz|s_counter\(0) & \clkdivider_1hz|s_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(28),
	datab => \clkdivider_1hz|s_counter\(27),
	datac => \clkdivider_1hz|s_counter\(0),
	datad => \clkdivider_1hz|s_counter\(1),
	combout => \clkdivider_1hz|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y53_N8
\clkdivider_1hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~2_combout\ = (\clkdivider_1hz|s_counter\(13) & (\clkdivider_1hz|s_counter\(14) & (\clkdivider_1hz|s_counter\(19) & \clkdivider_1hz|s_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(13),
	datab => \clkdivider_1hz|s_counter\(14),
	datac => \clkdivider_1hz|s_counter\(19),
	datad => \clkdivider_1hz|s_counter\(12),
	combout => \clkdivider_1hz|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y53_N16
\clkdivider_1hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~3_combout\ = (!\clkdivider_1hz|s_counter\(8) & (!\clkdivider_1hz|s_counter\(10) & (!\clkdivider_1hz|s_counter\(9) & !\clkdivider_1hz|s_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(8),
	datab => \clkdivider_1hz|s_counter\(10),
	datac => \clkdivider_1hz|s_counter\(9),
	datad => \clkdivider_1hz|s_counter\(7),
	combout => \clkdivider_1hz|Equal0~3_combout\);

-- Location: LCCOMB_X36_Y53_N14
\clkdivider_1hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~4_combout\ = (\clkdivider_1hz|Equal0~1_combout\ & (\clkdivider_1hz|Equal0~0_combout\ & (\clkdivider_1hz|Equal0~2_combout\ & \clkdivider_1hz|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|Equal0~1_combout\,
	datab => \clkdivider_1hz|Equal0~0_combout\,
	datac => \clkdivider_1hz|Equal0~2_combout\,
	datad => \clkdivider_1hz|Equal0~3_combout\,
	combout => \clkdivider_1hz|Equal0~4_combout\);

-- Location: LCCOMB_X34_Y53_N4
\clkdivider_1hz|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~10_combout\ = (!\clkdivider_1hz|s_counter\(30) & (\clkdivider_1hz|s_counter\(6) & (\clkdivider_1hz|Equal0~9_combout\ & \clkdivider_1hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(30),
	datab => \clkdivider_1hz|s_counter\(6),
	datac => \clkdivider_1hz|Equal0~9_combout\,
	datad => \clkdivider_1hz|Equal0~4_combout\,
	combout => \clkdivider_1hz|Equal0~10_combout\);

-- Location: LCCOMB_X34_Y53_N22
\clkdivider_1hz|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~11_combout\ = (!\clkdivider_1hz|Equal0~10_combout\ & \clkdivider_1hz|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|Equal0~10_combout\,
	datac => \clkdivider_1hz|Add0~30_combout\,
	combout => \clkdivider_1hz|s_counter~11_combout\);

-- Location: FF_X34_Y53_N23
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

-- Location: LCCOMB_X34_Y53_N10
\clkdivider_1hz|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|clkOut~1_combout\ = (!\clkdivider_1hz|s_counter\(15) & (!\clkdivider_1hz|s_counter\(17) & (\clkdivider_1hz|s_counter\(11) & \clkdivider_1hz|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(15),
	datab => \clkdivider_1hz|s_counter\(17),
	datac => \clkdivider_1hz|s_counter\(11),
	datad => \clkdivider_1hz|s_counter\(16),
	combout => \clkdivider_1hz|clkOut~1_combout\);

-- Location: LCCOMB_X34_Y53_N20
\clkdivider_1hz|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|clkOut~0_combout\ = (!\clkdivider_1hz|s_counter\(23) & (\clkdivider_1hz|s_counter\(24) & (!\clkdivider_1hz|s_counter\(25) & \clkdivider_1hz|s_counter\(18))))

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
	combout => \clkdivider_1hz|clkOut~0_combout\);

-- Location: LCCOMB_X34_Y53_N12
\clkdivider_1hz|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|clkOut~2_combout\ = (\clkdivider_1hz|clkOut~1_combout\ & (!\clkdivider_1hz|s_counter\(6) & \clkdivider_1hz|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|clkOut~1_combout\,
	datac => \clkdivider_1hz|s_counter\(6),
	datad => \clkdivider_1hz|clkOut~0_combout\,
	combout => \clkdivider_1hz|clkOut~2_combout\);

-- Location: LCCOMB_X34_Y53_N18
\clkdivider_1hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~6_combout\ = (!\clkdivider_1hz|s_counter\(30) & (!\clkdivider_1hz|s_counter\(29) & (\clkdivider_1hz|Equal0~5_combout\ & \clkdivider_1hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(30),
	datab => \clkdivider_1hz|s_counter\(29),
	datac => \clkdivider_1hz|Equal0~5_combout\,
	datad => \clkdivider_1hz|Equal0~4_combout\,
	combout => \clkdivider_1hz|Equal0~6_combout\);

-- Location: LCCOMB_X34_Y53_N24
\clkdivider_1hz|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|clkOut~3_combout\ = (!\clkdivider_1hz|Equal0~10_combout\ & ((\clkdivider_1hz|clkOut~q\) # ((\clkdivider_1hz|clkOut~2_combout\ & \clkdivider_1hz|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|clkOut~2_combout\,
	datab => \clkdivider_1hz|Equal0~6_combout\,
	datac => \clkdivider_1hz|Equal0~10_combout\,
	datad => \clkdivider_1hz|clkOut~q\,
	combout => \clkdivider_1hz|clkOut~3_combout\);

-- Location: LCCOMB_X34_Y53_N2
\clkdivider_1hz|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|clkOut~feeder_combout\ = \clkdivider_1hz|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|clkOut~3_combout\,
	combout => \clkdivider_1hz|clkOut~feeder_combout\);

-- Location: FF_X34_Y53_N3
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

-- Location: CLKCTRL_G14
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

-- Location: FF_X115_Y40_N10
\key0_debounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_dirtyIn~q\);

-- Location: LCCOMB_X97_Y44_N10
\key0_debounce|s_pulsedOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_pulsedOut~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \key0_debounce|s_pulsedOut~feeder_combout\);

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

-- Location: FF_X115_Y53_N17
\key1_debounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_dirtyIn~q\);

-- Location: LCCOMB_X99_Y44_N26
\key1_debounce|s_pulsedOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_pulsedOut~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \key1_debounce|s_pulsedOut~feeder_combout\);

-- Location: LCCOMB_X98_Y44_N2
\key1_debounce|s_debounceCnt[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[0]~31_combout\ = \key1_debounce|s_debounceCnt\(0) $ (VCC)
-- \key1_debounce|s_debounceCnt[0]~32\ = CARRY(\key1_debounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \key1_debounce|s_debounceCnt[0]~31_combout\,
	cout => \key1_debounce|s_debounceCnt[0]~32\);

-- Location: LCCOMB_X98_Y50_N16
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X98_Y44_N3
\key1_debounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[0]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(0));

-- Location: LCCOMB_X98_Y44_N4
\key1_debounce|s_debounceCnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[1]~33_combout\ = (\key1_debounce|s_debounceCnt\(1) & (\key1_debounce|s_debounceCnt[0]~32\ & VCC)) # (!\key1_debounce|s_debounceCnt\(1) & (!\key1_debounce|s_debounceCnt[0]~32\))
-- \key1_debounce|s_debounceCnt[1]~34\ = CARRY((!\key1_debounce|s_debounceCnt\(1) & !\key1_debounce|s_debounceCnt[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[0]~32\,
	combout => \key1_debounce|s_debounceCnt[1]~33_combout\,
	cout => \key1_debounce|s_debounceCnt[1]~34\);

-- Location: FF_X98_Y44_N5
\key1_debounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[1]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(1));

-- Location: LCCOMB_X98_Y44_N6
\key1_debounce|s_debounceCnt[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[2]~35_combout\ = (\key1_debounce|s_debounceCnt\(2) & ((GND) # (!\key1_debounce|s_debounceCnt[1]~34\))) # (!\key1_debounce|s_debounceCnt\(2) & (\key1_debounce|s_debounceCnt[1]~34\ $ (GND)))
-- \key1_debounce|s_debounceCnt[2]~36\ = CARRY((\key1_debounce|s_debounceCnt\(2)) # (!\key1_debounce|s_debounceCnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[1]~34\,
	combout => \key1_debounce|s_debounceCnt[2]~35_combout\,
	cout => \key1_debounce|s_debounceCnt[2]~36\);

-- Location: FF_X98_Y44_N7
\key1_debounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[2]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(2));

-- Location: LCCOMB_X98_Y44_N8
\key1_debounce|s_debounceCnt[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[3]~37_combout\ = (\key1_debounce|s_debounceCnt\(3) & (\key1_debounce|s_debounceCnt[2]~36\ & VCC)) # (!\key1_debounce|s_debounceCnt\(3) & (!\key1_debounce|s_debounceCnt[2]~36\))
-- \key1_debounce|s_debounceCnt[3]~38\ = CARRY((!\key1_debounce|s_debounceCnt\(3) & !\key1_debounce|s_debounceCnt[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[2]~36\,
	combout => \key1_debounce|s_debounceCnt[3]~37_combout\,
	cout => \key1_debounce|s_debounceCnt[3]~38\);

-- Location: FF_X98_Y44_N9
\key1_debounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[3]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(3));

-- Location: LCCOMB_X98_Y44_N10
\key1_debounce|s_debounceCnt[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[4]~39_combout\ = (\key1_debounce|s_debounceCnt\(4) & ((GND) # (!\key1_debounce|s_debounceCnt[3]~38\))) # (!\key1_debounce|s_debounceCnt\(4) & (\key1_debounce|s_debounceCnt[3]~38\ $ (GND)))
-- \key1_debounce|s_debounceCnt[4]~40\ = CARRY((\key1_debounce|s_debounceCnt\(4)) # (!\key1_debounce|s_debounceCnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[3]~38\,
	combout => \key1_debounce|s_debounceCnt[4]~39_combout\,
	cout => \key1_debounce|s_debounceCnt[4]~40\);

-- Location: FF_X98_Y44_N11
\key1_debounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[4]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(4));

-- Location: LCCOMB_X98_Y44_N12
\key1_debounce|s_debounceCnt[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[5]~41_combout\ = (\key1_debounce|s_debounceCnt\(5) & (\key1_debounce|s_debounceCnt[4]~40\ & VCC)) # (!\key1_debounce|s_debounceCnt\(5) & (!\key1_debounce|s_debounceCnt[4]~40\))
-- \key1_debounce|s_debounceCnt[5]~42\ = CARRY((!\key1_debounce|s_debounceCnt\(5) & !\key1_debounce|s_debounceCnt[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[4]~40\,
	combout => \key1_debounce|s_debounceCnt[5]~41_combout\,
	cout => \key1_debounce|s_debounceCnt[5]~42\);

-- Location: FF_X98_Y44_N13
\key1_debounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[5]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(5));

-- Location: LCCOMB_X98_Y44_N14
\key1_debounce|s_debounceCnt[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[6]~43_combout\ = (\key1_debounce|s_debounceCnt\(6) & ((GND) # (!\key1_debounce|s_debounceCnt[5]~42\))) # (!\key1_debounce|s_debounceCnt\(6) & (\key1_debounce|s_debounceCnt[5]~42\ $ (GND)))
-- \key1_debounce|s_debounceCnt[6]~44\ = CARRY((\key1_debounce|s_debounceCnt\(6)) # (!\key1_debounce|s_debounceCnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[5]~42\,
	combout => \key1_debounce|s_debounceCnt[6]~43_combout\,
	cout => \key1_debounce|s_debounceCnt[6]~44\);

-- Location: FF_X98_Y44_N15
\key1_debounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[6]~43_combout\,
	asdata => \key1_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(6));

-- Location: LCCOMB_X98_Y44_N16
\key1_debounce|s_debounceCnt[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[7]~45_combout\ = (\key1_debounce|s_debounceCnt\(7) & (\key1_debounce|s_debounceCnt[6]~44\ & VCC)) # (!\key1_debounce|s_debounceCnt\(7) & (!\key1_debounce|s_debounceCnt[6]~44\))
-- \key1_debounce|s_debounceCnt[7]~46\ = CARRY((!\key1_debounce|s_debounceCnt\(7) & !\key1_debounce|s_debounceCnt[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[6]~44\,
	combout => \key1_debounce|s_debounceCnt[7]~45_combout\,
	cout => \key1_debounce|s_debounceCnt[7]~46\);

-- Location: FF_X98_Y44_N17
\key1_debounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[7]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(7));

-- Location: LCCOMB_X98_Y44_N18
\key1_debounce|s_debounceCnt[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[8]~47_combout\ = (\key1_debounce|s_debounceCnt\(8) & ((GND) # (!\key1_debounce|s_debounceCnt[7]~46\))) # (!\key1_debounce|s_debounceCnt\(8) & (\key1_debounce|s_debounceCnt[7]~46\ $ (GND)))
-- \key1_debounce|s_debounceCnt[8]~48\ = CARRY((\key1_debounce|s_debounceCnt\(8)) # (!\key1_debounce|s_debounceCnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[7]~46\,
	combout => \key1_debounce|s_debounceCnt[8]~47_combout\,
	cout => \key1_debounce|s_debounceCnt[8]~48\);

-- Location: FF_X98_Y44_N19
\key1_debounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[8]~47_combout\,
	asdata => \key1_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(8));

-- Location: LCCOMB_X98_Y44_N20
\key1_debounce|s_debounceCnt[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[9]~49_combout\ = (\key1_debounce|s_debounceCnt\(9) & (\key1_debounce|s_debounceCnt[8]~48\ & VCC)) # (!\key1_debounce|s_debounceCnt\(9) & (!\key1_debounce|s_debounceCnt[8]~48\))
-- \key1_debounce|s_debounceCnt[9]~50\ = CARRY((!\key1_debounce|s_debounceCnt\(9) & !\key1_debounce|s_debounceCnt[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[8]~48\,
	combout => \key1_debounce|s_debounceCnt[9]~49_combout\,
	cout => \key1_debounce|s_debounceCnt[9]~50\);

-- Location: FF_X98_Y44_N21
\key1_debounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[9]~49_combout\,
	asdata => \key1_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(9));

-- Location: LCCOMB_X98_Y44_N22
\key1_debounce|s_debounceCnt[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[10]~51_combout\ = (\key1_debounce|s_debounceCnt\(10) & ((GND) # (!\key1_debounce|s_debounceCnt[9]~50\))) # (!\key1_debounce|s_debounceCnt\(10) & (\key1_debounce|s_debounceCnt[9]~50\ $ (GND)))
-- \key1_debounce|s_debounceCnt[10]~52\ = CARRY((\key1_debounce|s_debounceCnt\(10)) # (!\key1_debounce|s_debounceCnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[9]~50\,
	combout => \key1_debounce|s_debounceCnt[10]~51_combout\,
	cout => \key1_debounce|s_debounceCnt[10]~52\);

-- Location: FF_X98_Y44_N23
\key1_debounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[10]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(10));

-- Location: LCCOMB_X98_Y44_N24
\key1_debounce|s_debounceCnt[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[11]~53_combout\ = (\key1_debounce|s_debounceCnt\(11) & (\key1_debounce|s_debounceCnt[10]~52\ & VCC)) # (!\key1_debounce|s_debounceCnt\(11) & (!\key1_debounce|s_debounceCnt[10]~52\))
-- \key1_debounce|s_debounceCnt[11]~54\ = CARRY((!\key1_debounce|s_debounceCnt\(11) & !\key1_debounce|s_debounceCnt[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[10]~52\,
	combout => \key1_debounce|s_debounceCnt[11]~53_combout\,
	cout => \key1_debounce|s_debounceCnt[11]~54\);

-- Location: FF_X98_Y44_N25
\key1_debounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[11]~53_combout\,
	asdata => \key1_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(11));

-- Location: LCCOMB_X98_Y44_N26
\key1_debounce|s_debounceCnt[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[12]~55_combout\ = (\key1_debounce|s_debounceCnt\(12) & ((GND) # (!\key1_debounce|s_debounceCnt[11]~54\))) # (!\key1_debounce|s_debounceCnt\(12) & (\key1_debounce|s_debounceCnt[11]~54\ $ (GND)))
-- \key1_debounce|s_debounceCnt[12]~56\ = CARRY((\key1_debounce|s_debounceCnt\(12)) # (!\key1_debounce|s_debounceCnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[11]~54\,
	combout => \key1_debounce|s_debounceCnt[12]~55_combout\,
	cout => \key1_debounce|s_debounceCnt[12]~56\);

-- Location: FF_X98_Y44_N27
\key1_debounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[12]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(12));

-- Location: LCCOMB_X98_Y44_N28
\key1_debounce|s_debounceCnt[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[13]~57_combout\ = (\key1_debounce|s_debounceCnt\(13) & (\key1_debounce|s_debounceCnt[12]~56\ & VCC)) # (!\key1_debounce|s_debounceCnt\(13) & (!\key1_debounce|s_debounceCnt[12]~56\))
-- \key1_debounce|s_debounceCnt[13]~58\ = CARRY((!\key1_debounce|s_debounceCnt\(13) & !\key1_debounce|s_debounceCnt[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[12]~56\,
	combout => \key1_debounce|s_debounceCnt[13]~57_combout\,
	cout => \key1_debounce|s_debounceCnt[13]~58\);

-- Location: FF_X98_Y44_N29
\key1_debounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[13]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(13));

-- Location: LCCOMB_X98_Y44_N30
\key1_debounce|s_debounceCnt[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[14]~59_combout\ = (\key1_debounce|s_debounceCnt\(14) & ((GND) # (!\key1_debounce|s_debounceCnt[13]~58\))) # (!\key1_debounce|s_debounceCnt\(14) & (\key1_debounce|s_debounceCnt[13]~58\ $ (GND)))
-- \key1_debounce|s_debounceCnt[14]~60\ = CARRY((\key1_debounce|s_debounceCnt\(14)) # (!\key1_debounce|s_debounceCnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[13]~58\,
	combout => \key1_debounce|s_debounceCnt[14]~59_combout\,
	cout => \key1_debounce|s_debounceCnt[14]~60\);

-- Location: FF_X98_Y44_N31
\key1_debounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[14]~59_combout\,
	asdata => \key1_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(14));

-- Location: LCCOMB_X98_Y43_N0
\key1_debounce|s_debounceCnt[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[15]~61_combout\ = (\key1_debounce|s_debounceCnt\(15) & (\key1_debounce|s_debounceCnt[14]~60\ & VCC)) # (!\key1_debounce|s_debounceCnt\(15) & (!\key1_debounce|s_debounceCnt[14]~60\))
-- \key1_debounce|s_debounceCnt[15]~62\ = CARRY((!\key1_debounce|s_debounceCnt\(15) & !\key1_debounce|s_debounceCnt[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[14]~60\,
	combout => \key1_debounce|s_debounceCnt[15]~61_combout\,
	cout => \key1_debounce|s_debounceCnt[15]~62\);

-- Location: LCCOMB_X99_Y44_N16
\key1_debounce|s_debounceCnt[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[15]~feeder_combout\ = \key1_debounce|s_debounceCnt[15]~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key1_debounce|s_debounceCnt[15]~61_combout\,
	combout => \key1_debounce|s_debounceCnt[15]~feeder_combout\);

-- Location: FF_X99_Y44_N17
\key1_debounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[15]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(15));

-- Location: LCCOMB_X98_Y43_N2
\key1_debounce|s_debounceCnt[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[16]~63_combout\ = (\key1_debounce|s_debounceCnt\(16) & ((GND) # (!\key1_debounce|s_debounceCnt[15]~62\))) # (!\key1_debounce|s_debounceCnt\(16) & (\key1_debounce|s_debounceCnt[15]~62\ $ (GND)))
-- \key1_debounce|s_debounceCnt[16]~64\ = CARRY((\key1_debounce|s_debounceCnt\(16)) # (!\key1_debounce|s_debounceCnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[15]~62\,
	combout => \key1_debounce|s_debounceCnt[16]~63_combout\,
	cout => \key1_debounce|s_debounceCnt[16]~64\);

-- Location: FF_X98_Y43_N3
\key1_debounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[16]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(16));

-- Location: LCCOMB_X98_Y43_N4
\key1_debounce|s_debounceCnt[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[17]~65_combout\ = (\key1_debounce|s_debounceCnt\(17) & (\key1_debounce|s_debounceCnt[16]~64\ & VCC)) # (!\key1_debounce|s_debounceCnt\(17) & (!\key1_debounce|s_debounceCnt[16]~64\))
-- \key1_debounce|s_debounceCnt[17]~66\ = CARRY((!\key1_debounce|s_debounceCnt\(17) & !\key1_debounce|s_debounceCnt[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[16]~64\,
	combout => \key1_debounce|s_debounceCnt[17]~65_combout\,
	cout => \key1_debounce|s_debounceCnt[17]~66\);

-- Location: FF_X98_Y43_N5
\key1_debounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[17]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(17));

-- Location: LCCOMB_X98_Y43_N6
\key1_debounce|s_debounceCnt[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[18]~67_combout\ = (\key1_debounce|s_debounceCnt\(18) & ((GND) # (!\key1_debounce|s_debounceCnt[17]~66\))) # (!\key1_debounce|s_debounceCnt\(18) & (\key1_debounce|s_debounceCnt[17]~66\ $ (GND)))
-- \key1_debounce|s_debounceCnt[18]~68\ = CARRY((\key1_debounce|s_debounceCnt\(18)) # (!\key1_debounce|s_debounceCnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[17]~66\,
	combout => \key1_debounce|s_debounceCnt[18]~67_combout\,
	cout => \key1_debounce|s_debounceCnt[18]~68\);

-- Location: FF_X98_Y43_N7
\key1_debounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[18]~67_combout\,
	asdata => \key1_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(18));

-- Location: LCCOMB_X98_Y43_N8
\key1_debounce|s_debounceCnt[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[19]~69_combout\ = (\key1_debounce|s_debounceCnt\(19) & (\key1_debounce|s_debounceCnt[18]~68\ & VCC)) # (!\key1_debounce|s_debounceCnt\(19) & (!\key1_debounce|s_debounceCnt[18]~68\))
-- \key1_debounce|s_debounceCnt[19]~70\ = CARRY((!\key1_debounce|s_debounceCnt\(19) & !\key1_debounce|s_debounceCnt[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[18]~68\,
	combout => \key1_debounce|s_debounceCnt[19]~69_combout\,
	cout => \key1_debounce|s_debounceCnt[19]~70\);

-- Location: FF_X98_Y43_N9
\key1_debounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[19]~69_combout\,
	asdata => \key1_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(19));

-- Location: LCCOMB_X99_Y44_N6
\key1_debounce|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Equal0~5_combout\ = (!\key1_debounce|s_debounceCnt\(19) & (!\key1_debounce|s_debounceCnt\(16) & (!\key1_debounce|s_debounceCnt\(17) & !\key1_debounce|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(19),
	datab => \key1_debounce|s_debounceCnt\(16),
	datac => \key1_debounce|s_debounceCnt\(17),
	datad => \key1_debounce|s_debounceCnt\(18),
	combout => \key1_debounce|Equal0~5_combout\);

-- Location: LCCOMB_X98_Y44_N0
\key1_debounce|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Equal0~2_combout\ = (!\key1_debounce|s_debounceCnt\(9) & (!\key1_debounce|s_debounceCnt\(8) & (!\key1_debounce|s_debounceCnt\(10) & !\key1_debounce|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(9),
	datab => \key1_debounce|s_debounceCnt\(8),
	datac => \key1_debounce|s_debounceCnt\(10),
	datad => \key1_debounce|s_debounceCnt\(11),
	combout => \key1_debounce|Equal0~2_combout\);

-- Location: LCCOMB_X99_Y44_N28
\key1_debounce|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Equal0~1_combout\ = (!\key1_debounce|s_debounceCnt\(4) & (!\key1_debounce|s_debounceCnt\(5) & (!\key1_debounce|s_debounceCnt\(7) & !\key1_debounce|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(4),
	datab => \key1_debounce|s_debounceCnt\(5),
	datac => \key1_debounce|s_debounceCnt\(7),
	datad => \key1_debounce|s_debounceCnt\(6),
	combout => \key1_debounce|Equal0~1_combout\);

-- Location: LCCOMB_X99_Y44_N14
\key1_debounce|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Equal0~0_combout\ = (!\key1_debounce|s_debounceCnt\(0) & (!\key1_debounce|s_debounceCnt\(2) & (!\key1_debounce|s_debounceCnt\(1) & !\key1_debounce|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(0),
	datab => \key1_debounce|s_debounceCnt\(2),
	datac => \key1_debounce|s_debounceCnt\(1),
	datad => \key1_debounce|s_debounceCnt\(3),
	combout => \key1_debounce|Equal0~0_combout\);

-- Location: LCCOMB_X99_Y44_N24
\key1_debounce|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Equal0~3_combout\ = (!\key1_debounce|s_debounceCnt\(12) & (!\key1_debounce|s_debounceCnt\(14) & (!\key1_debounce|s_debounceCnt\(15) & !\key1_debounce|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(12),
	datab => \key1_debounce|s_debounceCnt\(14),
	datac => \key1_debounce|s_debounceCnt\(15),
	datad => \key1_debounce|s_debounceCnt\(13),
	combout => \key1_debounce|Equal0~3_combout\);

-- Location: LCCOMB_X99_Y44_N20
\key1_debounce|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Equal0~4_combout\ = (\key1_debounce|Equal0~2_combout\ & (\key1_debounce|Equal0~1_combout\ & (\key1_debounce|Equal0~0_combout\ & \key1_debounce|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|Equal0~2_combout\,
	datab => \key1_debounce|Equal0~1_combout\,
	datac => \key1_debounce|Equal0~0_combout\,
	datad => \key1_debounce|Equal0~3_combout\,
	combout => \key1_debounce|Equal0~4_combout\);

-- Location: LCCOMB_X98_Y43_N10
\key1_debounce|s_debounceCnt[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[20]~71_combout\ = (\key1_debounce|s_debounceCnt\(20) & ((GND) # (!\key1_debounce|s_debounceCnt[19]~70\))) # (!\key1_debounce|s_debounceCnt\(20) & (\key1_debounce|s_debounceCnt[19]~70\ $ (GND)))
-- \key1_debounce|s_debounceCnt[20]~72\ = CARRY((\key1_debounce|s_debounceCnt\(20)) # (!\key1_debounce|s_debounceCnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[19]~70\,
	combout => \key1_debounce|s_debounceCnt[20]~71_combout\,
	cout => \key1_debounce|s_debounceCnt[20]~72\);

-- Location: FF_X98_Y43_N11
\key1_debounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[20]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(20));

-- Location: LCCOMB_X98_Y43_N12
\key1_debounce|s_debounceCnt[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[21]~73_combout\ = (\key1_debounce|s_debounceCnt\(21) & (\key1_debounce|s_debounceCnt[20]~72\ & VCC)) # (!\key1_debounce|s_debounceCnt\(21) & (!\key1_debounce|s_debounceCnt[20]~72\))
-- \key1_debounce|s_debounceCnt[21]~74\ = CARRY((!\key1_debounce|s_debounceCnt\(21) & !\key1_debounce|s_debounceCnt[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[20]~72\,
	combout => \key1_debounce|s_debounceCnt[21]~73_combout\,
	cout => \key1_debounce|s_debounceCnt[21]~74\);

-- Location: FF_X98_Y43_N13
\key1_debounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[21]~73_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(21));

-- Location: LCCOMB_X98_Y43_N14
\key1_debounce|s_debounceCnt[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[22]~75_combout\ = (\key1_debounce|s_debounceCnt\(22) & ((GND) # (!\key1_debounce|s_debounceCnt[21]~74\))) # (!\key1_debounce|s_debounceCnt\(22) & (\key1_debounce|s_debounceCnt[21]~74\ $ (GND)))
-- \key1_debounce|s_debounceCnt[22]~76\ = CARRY((\key1_debounce|s_debounceCnt\(22)) # (!\key1_debounce|s_debounceCnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(22),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[21]~74\,
	combout => \key1_debounce|s_debounceCnt[22]~75_combout\,
	cout => \key1_debounce|s_debounceCnt[22]~76\);

-- Location: FF_X98_Y43_N15
\key1_debounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[22]~75_combout\,
	asdata => \key1_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(22));

-- Location: LCCOMB_X98_Y43_N16
\key1_debounce|s_debounceCnt[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[23]~77_combout\ = (\key1_debounce|s_debounceCnt\(23) & (\key1_debounce|s_debounceCnt[22]~76\ & VCC)) # (!\key1_debounce|s_debounceCnt\(23) & (!\key1_debounce|s_debounceCnt[22]~76\))
-- \key1_debounce|s_debounceCnt[23]~78\ = CARRY((!\key1_debounce|s_debounceCnt\(23) & !\key1_debounce|s_debounceCnt[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(23),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[22]~76\,
	combout => \key1_debounce|s_debounceCnt[23]~77_combout\,
	cout => \key1_debounce|s_debounceCnt[23]~78\);

-- Location: FF_X98_Y43_N17
\key1_debounce|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[23]~77_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(23));

-- Location: LCCOMB_X99_Y44_N22
\key1_debounce|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Equal0~6_combout\ = (!\key1_debounce|s_debounceCnt\(22) & (!\key1_debounce|s_debounceCnt\(20) & (!\key1_debounce|s_debounceCnt\(21) & !\key1_debounce|s_debounceCnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(22),
	datab => \key1_debounce|s_debounceCnt\(20),
	datac => \key1_debounce|s_debounceCnt\(21),
	datad => \key1_debounce|s_debounceCnt\(23),
	combout => \key1_debounce|Equal0~6_combout\);

-- Location: LCCOMB_X98_Y43_N18
\key1_debounce|s_debounceCnt[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[24]~79_combout\ = (\key1_debounce|s_debounceCnt\(24) & ((GND) # (!\key1_debounce|s_debounceCnt[23]~78\))) # (!\key1_debounce|s_debounceCnt\(24) & (\key1_debounce|s_debounceCnt[23]~78\ $ (GND)))
-- \key1_debounce|s_debounceCnt[24]~80\ = CARRY((\key1_debounce|s_debounceCnt\(24)) # (!\key1_debounce|s_debounceCnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(24),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[23]~78\,
	combout => \key1_debounce|s_debounceCnt[24]~79_combout\,
	cout => \key1_debounce|s_debounceCnt[24]~80\);

-- Location: FF_X98_Y43_N19
\key1_debounce|s_debounceCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[24]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(24));

-- Location: LCCOMB_X98_Y43_N20
\key1_debounce|s_debounceCnt[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[25]~81_combout\ = (\key1_debounce|s_debounceCnt\(25) & (\key1_debounce|s_debounceCnt[24]~80\ & VCC)) # (!\key1_debounce|s_debounceCnt\(25) & (!\key1_debounce|s_debounceCnt[24]~80\))
-- \key1_debounce|s_debounceCnt[25]~82\ = CARRY((!\key1_debounce|s_debounceCnt\(25) & !\key1_debounce|s_debounceCnt[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(25),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[24]~80\,
	combout => \key1_debounce|s_debounceCnt[25]~81_combout\,
	cout => \key1_debounce|s_debounceCnt[25]~82\);

-- Location: FF_X98_Y43_N21
\key1_debounce|s_debounceCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[25]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(25));

-- Location: LCCOMB_X98_Y43_N22
\key1_debounce|s_debounceCnt[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[26]~83_combout\ = (\key1_debounce|s_debounceCnt\(26) & ((GND) # (!\key1_debounce|s_debounceCnt[25]~82\))) # (!\key1_debounce|s_debounceCnt\(26) & (\key1_debounce|s_debounceCnt[25]~82\ $ (GND)))
-- \key1_debounce|s_debounceCnt[26]~84\ = CARRY((\key1_debounce|s_debounceCnt\(26)) # (!\key1_debounce|s_debounceCnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(26),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[25]~82\,
	combout => \key1_debounce|s_debounceCnt[26]~83_combout\,
	cout => \key1_debounce|s_debounceCnt[26]~84\);

-- Location: FF_X98_Y43_N23
\key1_debounce|s_debounceCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[26]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(26));

-- Location: LCCOMB_X98_Y43_N24
\key1_debounce|s_debounceCnt[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[27]~85_combout\ = (\key1_debounce|s_debounceCnt\(27) & (\key1_debounce|s_debounceCnt[26]~84\ & VCC)) # (!\key1_debounce|s_debounceCnt\(27) & (!\key1_debounce|s_debounceCnt[26]~84\))
-- \key1_debounce|s_debounceCnt[27]~86\ = CARRY((!\key1_debounce|s_debounceCnt\(27) & !\key1_debounce|s_debounceCnt[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(27),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[26]~84\,
	combout => \key1_debounce|s_debounceCnt[27]~85_combout\,
	cout => \key1_debounce|s_debounceCnt[27]~86\);

-- Location: FF_X98_Y43_N25
\key1_debounce|s_debounceCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[27]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(27));

-- Location: LCCOMB_X99_Y44_N30
\key1_debounce|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Equal0~7_combout\ = (!\key1_debounce|s_debounceCnt\(24) & (!\key1_debounce|s_debounceCnt\(26) & (!\key1_debounce|s_debounceCnt\(25) & !\key1_debounce|s_debounceCnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(24),
	datab => \key1_debounce|s_debounceCnt\(26),
	datac => \key1_debounce|s_debounceCnt\(25),
	datad => \key1_debounce|s_debounceCnt\(27),
	combout => \key1_debounce|Equal0~7_combout\);

-- Location: LCCOMB_X98_Y43_N26
\key1_debounce|s_debounceCnt[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[28]~87_combout\ = (\key1_debounce|s_debounceCnt\(28) & ((GND) # (!\key1_debounce|s_debounceCnt[27]~86\))) # (!\key1_debounce|s_debounceCnt\(28) & (\key1_debounce|s_debounceCnt[27]~86\ $ (GND)))
-- \key1_debounce|s_debounceCnt[28]~88\ = CARRY((\key1_debounce|s_debounceCnt\(28)) # (!\key1_debounce|s_debounceCnt[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(28),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[27]~86\,
	combout => \key1_debounce|s_debounceCnt[28]~87_combout\,
	cout => \key1_debounce|s_debounceCnt[28]~88\);

-- Location: FF_X98_Y43_N27
\key1_debounce|s_debounceCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[28]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(28));

-- Location: LCCOMB_X98_Y43_N28
\key1_debounce|s_debounceCnt[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[29]~89_combout\ = (\key1_debounce|s_debounceCnt\(29) & (\key1_debounce|s_debounceCnt[28]~88\ & VCC)) # (!\key1_debounce|s_debounceCnt\(29) & (!\key1_debounce|s_debounceCnt[28]~88\))
-- \key1_debounce|s_debounceCnt[29]~90\ = CARRY((!\key1_debounce|s_debounceCnt\(29) & !\key1_debounce|s_debounceCnt[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key1_debounce|s_debounceCnt\(29),
	datad => VCC,
	cin => \key1_debounce|s_debounceCnt[28]~88\,
	combout => \key1_debounce|s_debounceCnt[29]~89_combout\,
	cout => \key1_debounce|s_debounceCnt[29]~90\);

-- Location: FF_X98_Y43_N29
\key1_debounce|s_debounceCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[29]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(29));

-- Location: LCCOMB_X98_Y43_N30
\key1_debounce|s_debounceCnt[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_debounceCnt[30]~91_combout\ = \key1_debounce|s_debounceCnt\(30) $ (\key1_debounce|s_debounceCnt[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_debounceCnt\(30),
	cin => \key1_debounce|s_debounceCnt[29]~90\,
	combout => \key1_debounce|s_debounceCnt[30]~91_combout\);

-- Location: FF_X98_Y43_N31
\key1_debounce|s_debounceCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_debounceCnt[30]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_debounceCnt\(30));

-- Location: LCCOMB_X99_Y44_N12
\key1_debounce|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Equal0~8_combout\ = (\key1_debounce|Equal0~7_combout\ & (!\key1_debounce|s_debounceCnt\(30) & (!\key1_debounce|s_debounceCnt\(29) & !\key1_debounce|s_debounceCnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|Equal0~7_combout\,
	datab => \key1_debounce|s_debounceCnt\(30),
	datac => \key1_debounce|s_debounceCnt\(29),
	datad => \key1_debounce|s_debounceCnt\(28),
	combout => \key1_debounce|Equal0~8_combout\);

-- Location: LCCOMB_X99_Y44_N18
\key1_debounce|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|Equal0~9_combout\ = (\key1_debounce|Equal0~5_combout\ & (\key1_debounce|Equal0~4_combout\ & (\key1_debounce|Equal0~6_combout\ & \key1_debounce|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|Equal0~5_combout\,
	datab => \key1_debounce|Equal0~4_combout\,
	datac => \key1_debounce|Equal0~6_combout\,
	datad => \key1_debounce|Equal0~8_combout\,
	combout => \key1_debounce|Equal0~9_combout\);

-- Location: LCCOMB_X99_Y44_N10
\key1_debounce|s_resetPulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|s_resetPulse~0_combout\ = !\key1_debounce|Equal0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key1_debounce|Equal0~9_combout\,
	combout => \key1_debounce|s_resetPulse~0_combout\);

-- Location: FF_X99_Y44_N11
\key1_debounce|s_resetPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key1_debounce|s_resetPulse~0_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_resetPulse~q\);

-- Location: LCCOMB_X99_Y44_N2
\key1_debounce|out_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1_debounce|out_proc~0_combout\ = (\key1_debounce|s_pulsedOut~q\) # (\key1_debounce|s_resetPulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key1_debounce|s_pulsedOut~q\,
	datad => \key1_debounce|s_resetPulse~q\,
	combout => \key1_debounce|out_proc~0_combout\);

-- Location: FF_X99_Y44_N27
\key1_debounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key1_debounce|ALT_INV_s_dirtyIn~q\,
	d => \key1_debounce|s_pulsedOut~feeder_combout\,
	clrn => \key1_debounce|ALT_INV_out_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1_debounce|s_pulsedOut~q\);

-- Location: LCCOMB_X98_Y52_N2
\key0_debounce|s_debounceCnt[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[0]~31_combout\ = \key0_debounce|s_debounceCnt\(0) $ (VCC)
-- \key0_debounce|s_debounceCnt[0]~32\ = CARRY(\key0_debounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \key0_debounce|s_debounceCnt[0]~31_combout\,
	cout => \key0_debounce|s_debounceCnt[0]~32\);

-- Location: FF_X98_Y52_N3
\key0_debounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[0]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(0));

-- Location: LCCOMB_X98_Y52_N4
\key0_debounce|s_debounceCnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[1]~33_combout\ = (\key0_debounce|s_debounceCnt\(1) & (\key0_debounce|s_debounceCnt[0]~32\ & VCC)) # (!\key0_debounce|s_debounceCnt\(1) & (!\key0_debounce|s_debounceCnt[0]~32\))
-- \key0_debounce|s_debounceCnt[1]~34\ = CARRY((!\key0_debounce|s_debounceCnt\(1) & !\key0_debounce|s_debounceCnt[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[0]~32\,
	combout => \key0_debounce|s_debounceCnt[1]~33_combout\,
	cout => \key0_debounce|s_debounceCnt[1]~34\);

-- Location: FF_X98_Y52_N5
\key0_debounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[1]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(1));

-- Location: LCCOMB_X98_Y52_N6
\key0_debounce|s_debounceCnt[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[2]~35_combout\ = (\key0_debounce|s_debounceCnt\(2) & ((GND) # (!\key0_debounce|s_debounceCnt[1]~34\))) # (!\key0_debounce|s_debounceCnt\(2) & (\key0_debounce|s_debounceCnt[1]~34\ $ (GND)))
-- \key0_debounce|s_debounceCnt[2]~36\ = CARRY((\key0_debounce|s_debounceCnt\(2)) # (!\key0_debounce|s_debounceCnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[1]~34\,
	combout => \key0_debounce|s_debounceCnt[2]~35_combout\,
	cout => \key0_debounce|s_debounceCnt[2]~36\);

-- Location: FF_X98_Y52_N7
\key0_debounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[2]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(2));

-- Location: LCCOMB_X98_Y52_N8
\key0_debounce|s_debounceCnt[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[3]~37_combout\ = (\key0_debounce|s_debounceCnt\(3) & (\key0_debounce|s_debounceCnt[2]~36\ & VCC)) # (!\key0_debounce|s_debounceCnt\(3) & (!\key0_debounce|s_debounceCnt[2]~36\))
-- \key0_debounce|s_debounceCnt[3]~38\ = CARRY((!\key0_debounce|s_debounceCnt\(3) & !\key0_debounce|s_debounceCnt[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[2]~36\,
	combout => \key0_debounce|s_debounceCnt[3]~37_combout\,
	cout => \key0_debounce|s_debounceCnt[3]~38\);

-- Location: FF_X98_Y52_N9
\key0_debounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[3]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(3));

-- Location: LCCOMB_X98_Y52_N10
\key0_debounce|s_debounceCnt[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[4]~39_combout\ = (\key0_debounce|s_debounceCnt\(4) & ((GND) # (!\key0_debounce|s_debounceCnt[3]~38\))) # (!\key0_debounce|s_debounceCnt\(4) & (\key0_debounce|s_debounceCnt[3]~38\ $ (GND)))
-- \key0_debounce|s_debounceCnt[4]~40\ = CARRY((\key0_debounce|s_debounceCnt\(4)) # (!\key0_debounce|s_debounceCnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[3]~38\,
	combout => \key0_debounce|s_debounceCnt[4]~39_combout\,
	cout => \key0_debounce|s_debounceCnt[4]~40\);

-- Location: FF_X98_Y52_N11
\key0_debounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[4]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(4));

-- Location: LCCOMB_X98_Y52_N12
\key0_debounce|s_debounceCnt[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[5]~41_combout\ = (\key0_debounce|s_debounceCnt\(5) & (\key0_debounce|s_debounceCnt[4]~40\ & VCC)) # (!\key0_debounce|s_debounceCnt\(5) & (!\key0_debounce|s_debounceCnt[4]~40\))
-- \key0_debounce|s_debounceCnt[5]~42\ = CARRY((!\key0_debounce|s_debounceCnt\(5) & !\key0_debounce|s_debounceCnt[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[4]~40\,
	combout => \key0_debounce|s_debounceCnt[5]~41_combout\,
	cout => \key0_debounce|s_debounceCnt[5]~42\);

-- Location: FF_X98_Y52_N13
\key0_debounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[5]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(5));

-- Location: LCCOMB_X98_Y52_N14
\key0_debounce|s_debounceCnt[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[6]~43_combout\ = (\key0_debounce|s_debounceCnt\(6) & ((GND) # (!\key0_debounce|s_debounceCnt[5]~42\))) # (!\key0_debounce|s_debounceCnt\(6) & (\key0_debounce|s_debounceCnt[5]~42\ $ (GND)))
-- \key0_debounce|s_debounceCnt[6]~44\ = CARRY((\key0_debounce|s_debounceCnt\(6)) # (!\key0_debounce|s_debounceCnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[5]~42\,
	combout => \key0_debounce|s_debounceCnt[6]~43_combout\,
	cout => \key0_debounce|s_debounceCnt[6]~44\);

-- Location: FF_X98_Y52_N15
\key0_debounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[6]~43_combout\,
	asdata => \key0_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(6));

-- Location: LCCOMB_X98_Y52_N16
\key0_debounce|s_debounceCnt[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[7]~45_combout\ = (\key0_debounce|s_debounceCnt\(7) & (\key0_debounce|s_debounceCnt[6]~44\ & VCC)) # (!\key0_debounce|s_debounceCnt\(7) & (!\key0_debounce|s_debounceCnt[6]~44\))
-- \key0_debounce|s_debounceCnt[7]~46\ = CARRY((!\key0_debounce|s_debounceCnt\(7) & !\key0_debounce|s_debounceCnt[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[6]~44\,
	combout => \key0_debounce|s_debounceCnt[7]~45_combout\,
	cout => \key0_debounce|s_debounceCnt[7]~46\);

-- Location: FF_X98_Y52_N17
\key0_debounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[7]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(7));

-- Location: LCCOMB_X98_Y52_N18
\key0_debounce|s_debounceCnt[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[8]~47_combout\ = (\key0_debounce|s_debounceCnt\(8) & ((GND) # (!\key0_debounce|s_debounceCnt[7]~46\))) # (!\key0_debounce|s_debounceCnt\(8) & (\key0_debounce|s_debounceCnt[7]~46\ $ (GND)))
-- \key0_debounce|s_debounceCnt[8]~48\ = CARRY((\key0_debounce|s_debounceCnt\(8)) # (!\key0_debounce|s_debounceCnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[7]~46\,
	combout => \key0_debounce|s_debounceCnt[8]~47_combout\,
	cout => \key0_debounce|s_debounceCnt[8]~48\);

-- Location: FF_X98_Y52_N19
\key0_debounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[8]~47_combout\,
	asdata => \key0_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(8));

-- Location: LCCOMB_X98_Y52_N20
\key0_debounce|s_debounceCnt[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[9]~49_combout\ = (\key0_debounce|s_debounceCnt\(9) & (\key0_debounce|s_debounceCnt[8]~48\ & VCC)) # (!\key0_debounce|s_debounceCnt\(9) & (!\key0_debounce|s_debounceCnt[8]~48\))
-- \key0_debounce|s_debounceCnt[9]~50\ = CARRY((!\key0_debounce|s_debounceCnt\(9) & !\key0_debounce|s_debounceCnt[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[8]~48\,
	combout => \key0_debounce|s_debounceCnt[9]~49_combout\,
	cout => \key0_debounce|s_debounceCnt[9]~50\);

-- Location: FF_X98_Y52_N21
\key0_debounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[9]~49_combout\,
	asdata => \key0_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(9));

-- Location: LCCOMB_X98_Y52_N22
\key0_debounce|s_debounceCnt[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[10]~51_combout\ = (\key0_debounce|s_debounceCnt\(10) & ((GND) # (!\key0_debounce|s_debounceCnt[9]~50\))) # (!\key0_debounce|s_debounceCnt\(10) & (\key0_debounce|s_debounceCnt[9]~50\ $ (GND)))
-- \key0_debounce|s_debounceCnt[10]~52\ = CARRY((\key0_debounce|s_debounceCnt\(10)) # (!\key0_debounce|s_debounceCnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[9]~50\,
	combout => \key0_debounce|s_debounceCnt[10]~51_combout\,
	cout => \key0_debounce|s_debounceCnt[10]~52\);

-- Location: FF_X98_Y52_N23
\key0_debounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[10]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(10));

-- Location: LCCOMB_X98_Y52_N24
\key0_debounce|s_debounceCnt[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[11]~53_combout\ = (\key0_debounce|s_debounceCnt\(11) & (\key0_debounce|s_debounceCnt[10]~52\ & VCC)) # (!\key0_debounce|s_debounceCnt\(11) & (!\key0_debounce|s_debounceCnt[10]~52\))
-- \key0_debounce|s_debounceCnt[11]~54\ = CARRY((!\key0_debounce|s_debounceCnt\(11) & !\key0_debounce|s_debounceCnt[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[10]~52\,
	combout => \key0_debounce|s_debounceCnt[11]~53_combout\,
	cout => \key0_debounce|s_debounceCnt[11]~54\);

-- Location: FF_X98_Y52_N25
\key0_debounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[11]~53_combout\,
	asdata => \key0_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(11));

-- Location: LCCOMB_X98_Y52_N26
\key0_debounce|s_debounceCnt[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[12]~55_combout\ = (\key0_debounce|s_debounceCnt\(12) & ((GND) # (!\key0_debounce|s_debounceCnt[11]~54\))) # (!\key0_debounce|s_debounceCnt\(12) & (\key0_debounce|s_debounceCnt[11]~54\ $ (GND)))
-- \key0_debounce|s_debounceCnt[12]~56\ = CARRY((\key0_debounce|s_debounceCnt\(12)) # (!\key0_debounce|s_debounceCnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[11]~54\,
	combout => \key0_debounce|s_debounceCnt[12]~55_combout\,
	cout => \key0_debounce|s_debounceCnt[12]~56\);

-- Location: FF_X98_Y52_N27
\key0_debounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[12]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(12));

-- Location: LCCOMB_X98_Y52_N28
\key0_debounce|s_debounceCnt[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[13]~57_combout\ = (\key0_debounce|s_debounceCnt\(13) & (\key0_debounce|s_debounceCnt[12]~56\ & VCC)) # (!\key0_debounce|s_debounceCnt\(13) & (!\key0_debounce|s_debounceCnt[12]~56\))
-- \key0_debounce|s_debounceCnt[13]~58\ = CARRY((!\key0_debounce|s_debounceCnt\(13) & !\key0_debounce|s_debounceCnt[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[12]~56\,
	combout => \key0_debounce|s_debounceCnt[13]~57_combout\,
	cout => \key0_debounce|s_debounceCnt[13]~58\);

-- Location: FF_X98_Y52_N29
\key0_debounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[13]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(13));

-- Location: LCCOMB_X98_Y52_N30
\key0_debounce|s_debounceCnt[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[14]~59_combout\ = (\key0_debounce|s_debounceCnt\(14) & ((GND) # (!\key0_debounce|s_debounceCnt[13]~58\))) # (!\key0_debounce|s_debounceCnt\(14) & (\key0_debounce|s_debounceCnt[13]~58\ $ (GND)))
-- \key0_debounce|s_debounceCnt[14]~60\ = CARRY((\key0_debounce|s_debounceCnt\(14)) # (!\key0_debounce|s_debounceCnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[13]~58\,
	combout => \key0_debounce|s_debounceCnt[14]~59_combout\,
	cout => \key0_debounce|s_debounceCnt[14]~60\);

-- Location: FF_X98_Y52_N31
\key0_debounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[14]~59_combout\,
	asdata => \key0_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(14));

-- Location: LCCOMB_X98_Y51_N0
\key0_debounce|s_debounceCnt[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[15]~61_combout\ = (\key0_debounce|s_debounceCnt\(15) & (\key0_debounce|s_debounceCnt[14]~60\ & VCC)) # (!\key0_debounce|s_debounceCnt\(15) & (!\key0_debounce|s_debounceCnt[14]~60\))
-- \key0_debounce|s_debounceCnt[15]~62\ = CARRY((!\key0_debounce|s_debounceCnt\(15) & !\key0_debounce|s_debounceCnt[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[14]~60\,
	combout => \key0_debounce|s_debounceCnt[15]~61_combout\,
	cout => \key0_debounce|s_debounceCnt[15]~62\);

-- Location: LCCOMB_X97_Y52_N28
\key0_debounce|s_debounceCnt[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[15]~feeder_combout\ = \key0_debounce|s_debounceCnt[15]~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key0_debounce|s_debounceCnt[15]~61_combout\,
	combout => \key0_debounce|s_debounceCnt[15]~feeder_combout\);

-- Location: FF_X97_Y52_N29
\key0_debounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[15]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(15));

-- Location: LCCOMB_X97_Y52_N26
\key0_debounce|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Equal0~3_combout\ = (!\key0_debounce|s_debounceCnt\(12) & (!\key0_debounce|s_debounceCnt\(13) & (!\key0_debounce|s_debounceCnt\(15) & !\key0_debounce|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(12),
	datab => \key0_debounce|s_debounceCnt\(13),
	datac => \key0_debounce|s_debounceCnt\(15),
	datad => \key0_debounce|s_debounceCnt\(14),
	combout => \key0_debounce|Equal0~3_combout\);

-- Location: LCCOMB_X97_Y52_N2
\key0_debounce|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Equal0~0_combout\ = (!\key0_debounce|s_debounceCnt\(1) & (!\key0_debounce|s_debounceCnt\(0) & (!\key0_debounce|s_debounceCnt\(3) & !\key0_debounce|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(1),
	datab => \key0_debounce|s_debounceCnt\(0),
	datac => \key0_debounce|s_debounceCnt\(3),
	datad => \key0_debounce|s_debounceCnt\(2),
	combout => \key0_debounce|Equal0~0_combout\);

-- Location: LCCOMB_X98_Y52_N0
\key0_debounce|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Equal0~2_combout\ = (!\key0_debounce|s_debounceCnt\(9) & (!\key0_debounce|s_debounceCnt\(8) & (!\key0_debounce|s_debounceCnt\(10) & !\key0_debounce|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(9),
	datab => \key0_debounce|s_debounceCnt\(8),
	datac => \key0_debounce|s_debounceCnt\(10),
	datad => \key0_debounce|s_debounceCnt\(11),
	combout => \key0_debounce|Equal0~2_combout\);

-- Location: LCCOMB_X97_Y52_N20
\key0_debounce|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Equal0~1_combout\ = (!\key0_debounce|s_debounceCnt\(6) & (!\key0_debounce|s_debounceCnt\(5) & (!\key0_debounce|s_debounceCnt\(4) & !\key0_debounce|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(6),
	datab => \key0_debounce|s_debounceCnt\(5),
	datac => \key0_debounce|s_debounceCnt\(4),
	datad => \key0_debounce|s_debounceCnt\(7),
	combout => \key0_debounce|Equal0~1_combout\);

-- Location: LCCOMB_X97_Y52_N12
\key0_debounce|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Equal0~4_combout\ = (\key0_debounce|Equal0~3_combout\ & (\key0_debounce|Equal0~0_combout\ & (\key0_debounce|Equal0~2_combout\ & \key0_debounce|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|Equal0~3_combout\,
	datab => \key0_debounce|Equal0~0_combout\,
	datac => \key0_debounce|Equal0~2_combout\,
	datad => \key0_debounce|Equal0~1_combout\,
	combout => \key0_debounce|Equal0~4_combout\);

-- Location: LCCOMB_X98_Y51_N2
\key0_debounce|s_debounceCnt[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[16]~63_combout\ = (\key0_debounce|s_debounceCnt\(16) & ((GND) # (!\key0_debounce|s_debounceCnt[15]~62\))) # (!\key0_debounce|s_debounceCnt\(16) & (\key0_debounce|s_debounceCnt[15]~62\ $ (GND)))
-- \key0_debounce|s_debounceCnt[16]~64\ = CARRY((\key0_debounce|s_debounceCnt\(16)) # (!\key0_debounce|s_debounceCnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[15]~62\,
	combout => \key0_debounce|s_debounceCnt[16]~63_combout\,
	cout => \key0_debounce|s_debounceCnt[16]~64\);

-- Location: FF_X98_Y51_N3
\key0_debounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[16]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(16));

-- Location: LCCOMB_X98_Y51_N4
\key0_debounce|s_debounceCnt[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[17]~65_combout\ = (\key0_debounce|s_debounceCnt\(17) & (\key0_debounce|s_debounceCnt[16]~64\ & VCC)) # (!\key0_debounce|s_debounceCnt\(17) & (!\key0_debounce|s_debounceCnt[16]~64\))
-- \key0_debounce|s_debounceCnt[17]~66\ = CARRY((!\key0_debounce|s_debounceCnt\(17) & !\key0_debounce|s_debounceCnt[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[16]~64\,
	combout => \key0_debounce|s_debounceCnt[17]~65_combout\,
	cout => \key0_debounce|s_debounceCnt[17]~66\);

-- Location: FF_X98_Y51_N5
\key0_debounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[17]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(17));

-- Location: LCCOMB_X98_Y51_N6
\key0_debounce|s_debounceCnt[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[18]~67_combout\ = (\key0_debounce|s_debounceCnt\(18) & ((GND) # (!\key0_debounce|s_debounceCnt[17]~66\))) # (!\key0_debounce|s_debounceCnt\(18) & (\key0_debounce|s_debounceCnt[17]~66\ $ (GND)))
-- \key0_debounce|s_debounceCnt[18]~68\ = CARRY((\key0_debounce|s_debounceCnt\(18)) # (!\key0_debounce|s_debounceCnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[17]~66\,
	combout => \key0_debounce|s_debounceCnt[18]~67_combout\,
	cout => \key0_debounce|s_debounceCnt[18]~68\);

-- Location: FF_X98_Y51_N7
\key0_debounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[18]~67_combout\,
	asdata => \key0_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(18));

-- Location: LCCOMB_X98_Y51_N8
\key0_debounce|s_debounceCnt[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[19]~69_combout\ = (\key0_debounce|s_debounceCnt\(19) & (\key0_debounce|s_debounceCnt[18]~68\ & VCC)) # (!\key0_debounce|s_debounceCnt\(19) & (!\key0_debounce|s_debounceCnt[18]~68\))
-- \key0_debounce|s_debounceCnt[19]~70\ = CARRY((!\key0_debounce|s_debounceCnt\(19) & !\key0_debounce|s_debounceCnt[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[18]~68\,
	combout => \key0_debounce|s_debounceCnt[19]~69_combout\,
	cout => \key0_debounce|s_debounceCnt[19]~70\);

-- Location: FF_X98_Y51_N9
\key0_debounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[19]~69_combout\,
	asdata => \key0_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(19));

-- Location: LCCOMB_X98_Y51_N10
\key0_debounce|s_debounceCnt[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[20]~71_combout\ = (\key0_debounce|s_debounceCnt\(20) & ((GND) # (!\key0_debounce|s_debounceCnt[19]~70\))) # (!\key0_debounce|s_debounceCnt\(20) & (\key0_debounce|s_debounceCnt[19]~70\ $ (GND)))
-- \key0_debounce|s_debounceCnt[20]~72\ = CARRY((\key0_debounce|s_debounceCnt\(20)) # (!\key0_debounce|s_debounceCnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[19]~70\,
	combout => \key0_debounce|s_debounceCnt[20]~71_combout\,
	cout => \key0_debounce|s_debounceCnt[20]~72\);

-- Location: FF_X98_Y51_N11
\key0_debounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[20]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(20));

-- Location: LCCOMB_X98_Y51_N12
\key0_debounce|s_debounceCnt[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[21]~73_combout\ = (\key0_debounce|s_debounceCnt\(21) & (\key0_debounce|s_debounceCnt[20]~72\ & VCC)) # (!\key0_debounce|s_debounceCnt\(21) & (!\key0_debounce|s_debounceCnt[20]~72\))
-- \key0_debounce|s_debounceCnt[21]~74\ = CARRY((!\key0_debounce|s_debounceCnt\(21) & !\key0_debounce|s_debounceCnt[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[20]~72\,
	combout => \key0_debounce|s_debounceCnt[21]~73_combout\,
	cout => \key0_debounce|s_debounceCnt[21]~74\);

-- Location: FF_X98_Y51_N13
\key0_debounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[21]~73_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(21));

-- Location: LCCOMB_X98_Y51_N14
\key0_debounce|s_debounceCnt[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[22]~75_combout\ = (\key0_debounce|s_debounceCnt\(22) & ((GND) # (!\key0_debounce|s_debounceCnt[21]~74\))) # (!\key0_debounce|s_debounceCnt\(22) & (\key0_debounce|s_debounceCnt[21]~74\ $ (GND)))
-- \key0_debounce|s_debounceCnt[22]~76\ = CARRY((\key0_debounce|s_debounceCnt\(22)) # (!\key0_debounce|s_debounceCnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(22),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[21]~74\,
	combout => \key0_debounce|s_debounceCnt[22]~75_combout\,
	cout => \key0_debounce|s_debounceCnt[22]~76\);

-- Location: FF_X98_Y51_N15
\key0_debounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[22]~75_combout\,
	asdata => \key0_debounce|s_pulsedOut~q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(22));

-- Location: LCCOMB_X98_Y51_N16
\key0_debounce|s_debounceCnt[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[23]~77_combout\ = (\key0_debounce|s_debounceCnt\(23) & (\key0_debounce|s_debounceCnt[22]~76\ & VCC)) # (!\key0_debounce|s_debounceCnt\(23) & (!\key0_debounce|s_debounceCnt[22]~76\))
-- \key0_debounce|s_debounceCnt[23]~78\ = CARRY((!\key0_debounce|s_debounceCnt\(23) & !\key0_debounce|s_debounceCnt[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(23),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[22]~76\,
	combout => \key0_debounce|s_debounceCnt[23]~77_combout\,
	cout => \key0_debounce|s_debounceCnt[23]~78\);

-- Location: FF_X98_Y51_N17
\key0_debounce|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[23]~77_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(23));

-- Location: LCCOMB_X97_Y52_N24
\key0_debounce|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Equal0~6_combout\ = (!\key0_debounce|s_debounceCnt\(22) & (!\key0_debounce|s_debounceCnt\(20) & (!\key0_debounce|s_debounceCnt\(23) & !\key0_debounce|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(22),
	datab => \key0_debounce|s_debounceCnt\(20),
	datac => \key0_debounce|s_debounceCnt\(23),
	datad => \key0_debounce|s_debounceCnt\(21),
	combout => \key0_debounce|Equal0~6_combout\);

-- Location: LCCOMB_X97_Y52_N30
\key0_debounce|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Equal0~5_combout\ = (!\key0_debounce|s_debounceCnt\(16) & (!\key0_debounce|s_debounceCnt\(18) & (!\key0_debounce|s_debounceCnt\(19) & !\key0_debounce|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(16),
	datab => \key0_debounce|s_debounceCnt\(18),
	datac => \key0_debounce|s_debounceCnt\(19),
	datad => \key0_debounce|s_debounceCnt\(17),
	combout => \key0_debounce|Equal0~5_combout\);

-- Location: LCCOMB_X98_Y51_N18
\key0_debounce|s_debounceCnt[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[24]~79_combout\ = (\key0_debounce|s_debounceCnt\(24) & ((GND) # (!\key0_debounce|s_debounceCnt[23]~78\))) # (!\key0_debounce|s_debounceCnt\(24) & (\key0_debounce|s_debounceCnt[23]~78\ $ (GND)))
-- \key0_debounce|s_debounceCnt[24]~80\ = CARRY((\key0_debounce|s_debounceCnt\(24)) # (!\key0_debounce|s_debounceCnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(24),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[23]~78\,
	combout => \key0_debounce|s_debounceCnt[24]~79_combout\,
	cout => \key0_debounce|s_debounceCnt[24]~80\);

-- Location: FF_X98_Y51_N19
\key0_debounce|s_debounceCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[24]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(24));

-- Location: LCCOMB_X98_Y51_N20
\key0_debounce|s_debounceCnt[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[25]~81_combout\ = (\key0_debounce|s_debounceCnt\(25) & (\key0_debounce|s_debounceCnt[24]~80\ & VCC)) # (!\key0_debounce|s_debounceCnt\(25) & (!\key0_debounce|s_debounceCnt[24]~80\))
-- \key0_debounce|s_debounceCnt[25]~82\ = CARRY((!\key0_debounce|s_debounceCnt\(25) & !\key0_debounce|s_debounceCnt[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(25),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[24]~80\,
	combout => \key0_debounce|s_debounceCnt[25]~81_combout\,
	cout => \key0_debounce|s_debounceCnt[25]~82\);

-- Location: FF_X98_Y51_N21
\key0_debounce|s_debounceCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[25]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(25));

-- Location: LCCOMB_X98_Y51_N22
\key0_debounce|s_debounceCnt[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[26]~83_combout\ = (\key0_debounce|s_debounceCnt\(26) & ((GND) # (!\key0_debounce|s_debounceCnt[25]~82\))) # (!\key0_debounce|s_debounceCnt\(26) & (\key0_debounce|s_debounceCnt[25]~82\ $ (GND)))
-- \key0_debounce|s_debounceCnt[26]~84\ = CARRY((\key0_debounce|s_debounceCnt\(26)) # (!\key0_debounce|s_debounceCnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(26),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[25]~82\,
	combout => \key0_debounce|s_debounceCnt[26]~83_combout\,
	cout => \key0_debounce|s_debounceCnt[26]~84\);

-- Location: FF_X98_Y51_N23
\key0_debounce|s_debounceCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[26]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(26));

-- Location: LCCOMB_X98_Y51_N24
\key0_debounce|s_debounceCnt[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[27]~85_combout\ = (\key0_debounce|s_debounceCnt\(27) & (\key0_debounce|s_debounceCnt[26]~84\ & VCC)) # (!\key0_debounce|s_debounceCnt\(27) & (!\key0_debounce|s_debounceCnt[26]~84\))
-- \key0_debounce|s_debounceCnt[27]~86\ = CARRY((!\key0_debounce|s_debounceCnt\(27) & !\key0_debounce|s_debounceCnt[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(27),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[26]~84\,
	combout => \key0_debounce|s_debounceCnt[27]~85_combout\,
	cout => \key0_debounce|s_debounceCnt[27]~86\);

-- Location: FF_X98_Y51_N25
\key0_debounce|s_debounceCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[27]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(27));

-- Location: LCCOMB_X98_Y51_N26
\key0_debounce|s_debounceCnt[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[28]~87_combout\ = (\key0_debounce|s_debounceCnt\(28) & ((GND) # (!\key0_debounce|s_debounceCnt[27]~86\))) # (!\key0_debounce|s_debounceCnt\(28) & (\key0_debounce|s_debounceCnt[27]~86\ $ (GND)))
-- \key0_debounce|s_debounceCnt[28]~88\ = CARRY((\key0_debounce|s_debounceCnt\(28)) # (!\key0_debounce|s_debounceCnt[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(28),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[27]~86\,
	combout => \key0_debounce|s_debounceCnt[28]~87_combout\,
	cout => \key0_debounce|s_debounceCnt[28]~88\);

-- Location: FF_X98_Y51_N27
\key0_debounce|s_debounceCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[28]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(28));

-- Location: LCCOMB_X98_Y51_N28
\key0_debounce|s_debounceCnt[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[29]~89_combout\ = (\key0_debounce|s_debounceCnt\(29) & (\key0_debounce|s_debounceCnt[28]~88\ & VCC)) # (!\key0_debounce|s_debounceCnt\(29) & (!\key0_debounce|s_debounceCnt[28]~88\))
-- \key0_debounce|s_debounceCnt[29]~90\ = CARRY((!\key0_debounce|s_debounceCnt\(29) & !\key0_debounce|s_debounceCnt[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_debounceCnt\(29),
	datad => VCC,
	cin => \key0_debounce|s_debounceCnt[28]~88\,
	combout => \key0_debounce|s_debounceCnt[29]~89_combout\,
	cout => \key0_debounce|s_debounceCnt[29]~90\);

-- Location: FF_X98_Y51_N29
\key0_debounce|s_debounceCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[29]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(29));

-- Location: LCCOMB_X98_Y51_N30
\key0_debounce|s_debounceCnt[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_debounceCnt[30]~91_combout\ = \key0_debounce|s_debounceCnt\(30) $ (\key0_debounce|s_debounceCnt[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(30),
	cin => \key0_debounce|s_debounceCnt[29]~90\,
	combout => \key0_debounce|s_debounceCnt[30]~91_combout\);

-- Location: FF_X98_Y51_N31
\key0_debounce|s_debounceCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_debounceCnt[30]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => \key0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_debounceCnt\(30));

-- Location: LCCOMB_X97_Y52_N6
\key0_debounce|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Equal0~7_combout\ = (!\key0_debounce|s_debounceCnt\(27) & (!\key0_debounce|s_debounceCnt\(25) & (!\key0_debounce|s_debounceCnt\(26) & !\key0_debounce|s_debounceCnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(27),
	datab => \key0_debounce|s_debounceCnt\(25),
	datac => \key0_debounce|s_debounceCnt\(26),
	datad => \key0_debounce|s_debounceCnt\(24),
	combout => \key0_debounce|Equal0~7_combout\);

-- Location: LCCOMB_X97_Y52_N16
\key0_debounce|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Equal0~8_combout\ = (!\key0_debounce|s_debounceCnt\(28) & (!\key0_debounce|s_debounceCnt\(29) & (!\key0_debounce|s_debounceCnt\(30) & \key0_debounce|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|s_debounceCnt\(28),
	datab => \key0_debounce|s_debounceCnt\(29),
	datac => \key0_debounce|s_debounceCnt\(30),
	datad => \key0_debounce|Equal0~7_combout\,
	combout => \key0_debounce|Equal0~8_combout\);

-- Location: LCCOMB_X97_Y52_N14
\key0_debounce|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|Equal0~9_combout\ = (\key0_debounce|Equal0~4_combout\ & (\key0_debounce|Equal0~6_combout\ & (\key0_debounce|Equal0~5_combout\ & \key0_debounce|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0_debounce|Equal0~4_combout\,
	datab => \key0_debounce|Equal0~6_combout\,
	datac => \key0_debounce|Equal0~5_combout\,
	datad => \key0_debounce|Equal0~8_combout\,
	combout => \key0_debounce|Equal0~9_combout\);

-- Location: LCCOMB_X97_Y44_N6
\key0_debounce|s_resetPulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|s_resetPulse~0_combout\ = (\key0_debounce|s_pulsedOut~q\) # (!\key0_debounce|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key0_debounce|s_pulsedOut~q\,
	datad => \key0_debounce|Equal0~9_combout\,
	combout => \key0_debounce|s_resetPulse~0_combout\);

-- Location: FF_X97_Y44_N7
\key0_debounce|s_resetPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \key0_debounce|s_resetPulse~0_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_resetPulse~q\);

-- Location: LCCOMB_X97_Y44_N12
\key0_debounce|out_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0_debounce|out_proc~0_combout\ = (\key1_debounce|s_pulsedOut~q\) # (\key0_debounce|s_resetPulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key1_debounce|s_pulsedOut~q\,
	datad => \key0_debounce|s_resetPulse~q\,
	combout => \key0_debounce|out_proc~0_combout\);

-- Location: FF_X97_Y44_N11
\key0_debounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key0_debounce|ALT_INV_s_dirtyIn~q\,
	d => \key0_debounce|s_pulsedOut~feeder_combout\,
	clrn => \key0_debounce|ALT_INV_out_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_debounce|s_pulsedOut~q\);

-- Location: LCCOMB_X95_Y72_N4
\main_fsm|PS.A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|PS.A~0_combout\ = (\main_fsm|PS.A~q\) # (\key0_debounce|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|PS.A~q\,
	datad => \key0_debounce|s_pulsedOut~q\,
	combout => \main_fsm|PS.A~0_combout\);

-- Location: FF_X95_Y72_N27
\main_fsm|PS.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \main_fsm|PS.A~0_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|PS.A~q\);

-- Location: LCCOMB_X95_Y72_N22
\ledcounter_fsm|s_nextState.B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledcounter_fsm|s_nextState.B~0_combout\ = (\main_fsm|PS.B~q\ & !\ledcounter_fsm|s_currentState.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|PS.B~q\,
	datad => \ledcounter_fsm|s_currentState.A~q\,
	combout => \ledcounter_fsm|s_nextState.B~0_combout\);

-- Location: FF_X95_Y72_N23
\ledcounter_fsm|s_currentState.B~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \ledcounter_fsm|s_nextState.B~0_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledcounter_fsm|s_currentState.B~_Duplicate_1_q\);

-- Location: FF_X95_Y72_N29
\ledcounter_fsm|s_currentState.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	asdata => \ledcounter_fsm|s_currentState.B~_Duplicate_1_q\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledcounter_fsm|s_currentState.C~q\);

-- Location: LCCOMB_X95_Y72_N30
\ledcounter_fsm|s_currentState.D~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledcounter_fsm|s_currentState.D~feeder_combout\ = \ledcounter_fsm|s_currentState.C~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ledcounter_fsm|s_currentState.C~q\,
	combout => \ledcounter_fsm|s_currentState.D~feeder_combout\);

-- Location: FF_X95_Y72_N31
\ledcounter_fsm|s_currentState.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \ledcounter_fsm|s_currentState.D~feeder_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledcounter_fsm|s_currentState.D~q\);

-- Location: LCCOMB_X95_Y72_N20
\ledcounter_fsm|s_currentState.E~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledcounter_fsm|s_currentState.E~0_combout\ = (\ledcounter_fsm|s_currentState.E~q\) # (\ledcounter_fsm|s_currentState.D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ledcounter_fsm|s_currentState.E~q\,
	datad => \ledcounter_fsm|s_currentState.D~q\,
	combout => \ledcounter_fsm|s_currentState.E~0_combout\);

-- Location: FF_X95_Y72_N21
\ledcounter_fsm|s_currentState.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \ledcounter_fsm|s_currentState.E~0_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledcounter_fsm|s_currentState.E~q\);

-- Location: LCCOMB_X95_Y72_N26
\main_fsm|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector0~0_combout\ = (\main_fsm|PS.B~q\ & (((\key0_debounce|s_pulsedOut~q\ & !\main_fsm|PS.A~q\)) # (!\ledcounter_fsm|s_currentState.E~q\))) # (!\main_fsm|PS.B~q\ & (\key0_debounce|s_pulsedOut~q\ & (!\main_fsm|PS.A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.B~q\,
	datab => \key0_debounce|s_pulsedOut~q\,
	datac => \main_fsm|PS.A~q\,
	datad => \ledcounter_fsm|s_currentState.E~q\,
	combout => \main_fsm|Selector0~0_combout\);

-- Location: LCCOMB_X95_Y72_N24
\main_fsm|PS.B~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|PS.B~feeder_combout\ = \main_fsm|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|Selector0~0_combout\,
	combout => \main_fsm|PS.B~feeder_combout\);

-- Location: FF_X95_Y72_N25
\main_fsm|PS.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \main_fsm|PS.B~feeder_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|PS.B~q\);

-- Location: LCCOMB_X95_Y72_N18
\ledcounter_fsm|s_currentState.A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledcounter_fsm|s_currentState.A~0_combout\ = (\ledcounter_fsm|s_currentState.A~q\) # (\main_fsm|PS.B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ledcounter_fsm|s_currentState.A~q\,
	datad => \main_fsm|PS.B~q\,
	combout => \ledcounter_fsm|s_currentState.A~0_combout\);

-- Location: FF_X95_Y72_N19
\ledcounter_fsm|s_currentState.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \ledcounter_fsm|s_currentState.A~0_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledcounter_fsm|s_currentState.A~q\);

-- Location: LCCOMB_X95_Y72_N12
\ledcounter_fsm|ledRed0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledcounter_fsm|ledRed0~2_combout\ = (\ledcounter_fsm|s_currentState.E~q\) # (!\ledcounter_fsm|s_currentState.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ledcounter_fsm|s_currentState.A~q\,
	datad => \ledcounter_fsm|s_currentState.E~q\,
	combout => \ledcounter_fsm|ledRed0~2_combout\);

-- Location: LCCOMB_X95_Y72_N28
\ledcounter_fsm|ledRed1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ledcounter_fsm|ledRed1~combout\ = (\ledcounter_fsm|s_currentState.B~_Duplicate_1_q\) # (\ledcounter_fsm|s_currentState.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ledcounter_fsm|s_currentState.B~_Duplicate_1_q\,
	datac => \ledcounter_fsm|s_currentState.C~q\,
	combout => \ledcounter_fsm|ledRed1~combout\);

-- Location: DDIOOUTCELL_X94_Y73_N11
\ledcounter_fsm|s_currentState.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \ledcounter_fsm|s_nextState.B~0_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledcounter_fsm|s_currentState.B~q\);

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

-- Location: LCCOMB_X75_Y38_N8
\rnd_gen|next_state[39]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[39]~94_combout\ = \rnd_gen|state\(9) $ (\rnd_gen|state\(15) $ (\rnd_gen|state\(12) $ (\rnd_gen|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(9),
	datab => \rnd_gen|state\(15),
	datac => \rnd_gen|state\(12),
	datad => \rnd_gen|state\(3),
	combout => \rnd_gen|next_state[39]~94_combout\);

-- Location: LCCOMB_X76_Y38_N18
\rnd_gen|next_state[56]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[56]~23_combout\ = \rnd_gen|state\(43) $ (\rnd_gen|state\(59))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|state\(43),
	datad => \rnd_gen|state\(59),
	combout => \rnd_gen|next_state[56]~23_combout\);

-- Location: LCCOMB_X77_Y38_N8
\rnd_gen|next_state[49]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[49]~111_combout\ = \rnd_gen|state\(35) $ (\rnd_gen|state\(37) $ (\rnd_gen|state\(15) $ (!\rnd_gen|state\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(35),
	datab => \rnd_gen|state\(37),
	datac => \rnd_gen|state\(15),
	datad => \rnd_gen|state\(5),
	combout => \rnd_gen|next_state[49]~111_combout\);

-- Location: LCCOMB_X76_Y40_N10
\rnd_gen|next_state[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[1]~11_combout\ = \rnd_gen|state\(28) $ (\rnd_gen|state\(21) $ (\rnd_gen|state\(13) $ (!\rnd_gen|state\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(28),
	datab => \rnd_gen|state\(21),
	datac => \rnd_gen|state\(13),
	datad => \rnd_gen|state\(63),
	combout => \rnd_gen|next_state[1]~11_combout\);

-- Location: LCCOMB_X75_Y39_N6
\rnd_gen|next_state[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[15]~10_combout\ = \rnd_gen|state\(18) $ (\rnd_gen|state\(62))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_gen|state\(18),
	datad => \rnd_gen|state\(62),
	combout => \rnd_gen|next_state[15]~10_combout\);

-- Location: LCCOMB_X76_Y41_N30
\rnd_gen|next_state[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(1) = \rnd_gen|state\(2) $ (\rnd_gen|next_state[1]~11_combout\ $ (\rnd_gen|next_state[15]~10_combout\ $ (!\rnd_gen|state\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(2),
	datab => \rnd_gen|next_state[1]~11_combout\,
	datac => \rnd_gen|next_state[15]~10_combout\,
	datad => \rnd_gen|state\(5),
	combout => \rnd_gen|next_state\(1));

-- Location: FF_X76_Y41_N31
\rnd_gen|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_gen|next_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(1));

-- Location: LCCOMB_X74_Y38_N30
\rnd_gen|next_state[61]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[61]~131_combout\ = \rnd_gen|state\(6) $ (\rnd_gen|state\(11) $ (\rnd_gen|state\(1) $ (\rnd_gen|state\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(6),
	datab => \rnd_gen|state\(11),
	datac => \rnd_gen|state\(1),
	datad => \rnd_gen|state\(42),
	combout => \rnd_gen|next_state[61]~131_combout\);

-- Location: LCCOMB_X74_Y38_N20
\rnd_gen|next_state[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(61) = \rnd_gen|next_state[61]~131_combout\ $ (\rnd_gen|state\(52) $ (\rnd_gen|state\(26) $ (!\rnd_gen|state\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[61]~131_combout\,
	datab => \rnd_gen|state\(52),
	datac => \rnd_gen|state\(26),
	datad => \rnd_gen|state\(53),
	combout => \rnd_gen|next_state\(61));

-- Location: FF_X74_Y38_N21
\rnd_gen|state[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(61));

-- Location: LCCOMB_X77_Y39_N4
\rnd_gen|next_state[47]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[47]~107_combout\ = \rnd_gen|state\(23) $ (\rnd_gen|state\(61) $ (\rnd_gen|state\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(23),
	datac => \rnd_gen|state\(61),
	datad => \rnd_gen|state\(38),
	combout => \rnd_gen|next_state[47]~107_combout\);

-- Location: LCCOMB_X74_Y38_N6
\rnd_gen|next_state[25]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[25]~68_combout\ = \rnd_gen|state\(21) $ (\rnd_gen|state\(42) $ (\rnd_gen|state\(45) $ (\rnd_gen|state\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(21),
	datab => \rnd_gen|state\(42),
	datac => \rnd_gen|state\(45),
	datad => \rnd_gen|state\(60),
	combout => \rnd_gen|next_state[25]~68_combout\);

-- Location: LCCOMB_X77_Y40_N0
\rnd_gen|next_state[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[5]~20_combout\ = \rnd_gen|state\(41) $ (\rnd_gen|state\(62) $ (!\rnd_gen|state\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|state\(41),
	datac => \rnd_gen|state\(62),
	datad => \rnd_gen|state\(31),
	combout => \rnd_gen|next_state[5]~20_combout\);

-- Location: LCCOMB_X77_Y39_N6
\rnd_gen|next_state[51]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[51]~113_combout\ = \rnd_gen|state\(2) $ (\rnd_gen|state\(5) $ (\rnd_gen|next_state[47]~107_combout\ $ (\rnd_gen|next_state[5]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(2),
	datab => \rnd_gen|state\(5),
	datac => \rnd_gen|next_state[47]~107_combout\,
	datad => \rnd_gen|next_state[5]~20_combout\,
	combout => \rnd_gen|next_state[51]~113_combout\);

-- Location: FF_X77_Y39_N7
\rnd_gen|state[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[51]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(51));

-- Location: LCCOMB_X77_Y38_N20
\rnd_gen|next_state[25]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[25]~67_combout\ = \rnd_gen|state\(51) $ (\rnd_gen|state\(14) $ (\rnd_gen|state\(33) $ (!\rnd_gen|state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(51),
	datab => \rnd_gen|state\(14),
	datac => \rnd_gen|state\(33),
	datad => \rnd_gen|state\(7),
	combout => \rnd_gen|next_state[25]~67_combout\);

-- Location: LCCOMB_X74_Y38_N0
\rnd_gen|next_state[25]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[25]~69_combout\ = \rnd_gen|next_state[25]~68_combout\ $ (\rnd_gen|next_state[25]~67_combout\ $ (\rnd_gen|state\(38) $ (!\rnd_gen|state\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[25]~68_combout\,
	datab => \rnd_gen|next_state[25]~67_combout\,
	datac => \rnd_gen|state\(38),
	datad => \rnd_gen|state\(36),
	combout => \rnd_gen|next_state[25]~69_combout\);

-- Location: FF_X74_Y38_N1
\rnd_gen|state[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[25]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(25));

-- Location: LCCOMB_X75_Y39_N14
\rnd_gen|next_state[33]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[33]~81_combout\ = \rnd_gen|state\(6) $ (\rnd_gen|state\(11) $ (\rnd_gen|state\(25) $ (!\rnd_gen|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(6),
	datab => \rnd_gen|state\(11),
	datac => \rnd_gen|state\(25),
	datad => \rnd_gen|state\(0),
	combout => \rnd_gen|next_state[33]~81_combout\);

-- Location: LCCOMB_X77_Y40_N26
\rnd_gen|next_state[54]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[54]~120_combout\ = \rnd_gen|state\(6) $ (\rnd_gen|state\(51) $ (\rnd_gen|state\(3) $ (!\rnd_gen|state\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(6),
	datab => \rnd_gen|state\(51),
	datac => \rnd_gen|state\(3),
	datad => \rnd_gen|state\(33),
	combout => \rnd_gen|next_state[54]~120_combout\);

-- Location: LCCOMB_X77_Y40_N4
\rnd_gen|next_state[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(54) = \rnd_gen|next_state[54]~120_combout\ $ (\rnd_gen|state\(37) $ (\rnd_gen|state\(15) $ (!\rnd_gen|state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[54]~120_combout\,
	datab => \rnd_gen|state\(37),
	datac => \rnd_gen|state\(15),
	datad => \rnd_gen|state\(7),
	combout => \rnd_gen|next_state\(54));

-- Location: FF_X77_Y40_N5
\rnd_gen|state[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(54));

-- Location: LCCOMB_X77_Y39_N14
\rnd_gen|next_state[47]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[47]~106_combout\ = \rnd_gen|state\(54) $ (\rnd_gen|state\(58) $ (\rnd_gen|state\(40) $ (\rnd_gen|state\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(54),
	datab => \rnd_gen|state\(58),
	datac => \rnd_gen|state\(40),
	datad => \rnd_gen|state\(49),
	combout => \rnd_gen|next_state[47]~106_combout\);

-- Location: LCCOMB_X77_Y39_N16
\rnd_gen|next_state[47]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[47]~108_combout\ = \rnd_gen|state\(26) $ (\rnd_gen|next_state[47]~106_combout\ $ (\rnd_gen|next_state[47]~107_combout\ $ (!\rnd_gen|state\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(26),
	datab => \rnd_gen|next_state[47]~106_combout\,
	datac => \rnd_gen|next_state[47]~107_combout\,
	datad => \rnd_gen|state\(53),
	combout => \rnd_gen|next_state[47]~108_combout\);

-- Location: FF_X77_Y39_N17
\rnd_gen|state[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[47]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(47));

-- Location: LCCOMB_X76_Y39_N10
\rnd_gen|next_state[30]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[30]~79_combout\ = \rnd_gen|state\(56) $ (\rnd_gen|state\(47) $ (\rnd_gen|state\(40) $ (\rnd_gen|state\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(56),
	datab => \rnd_gen|state\(47),
	datac => \rnd_gen|state\(40),
	datad => \rnd_gen|state\(45),
	combout => \rnd_gen|next_state[30]~79_combout\);

-- Location: LCCOMB_X77_Y39_N20
\rnd_gen|next_state[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(30) = \rnd_gen|next_state[30]~79_combout\ $ (\rnd_gen|state\(61) $ (\rnd_gen|state\(2) $ (!\rnd_gen|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[30]~79_combout\,
	datab => \rnd_gen|state\(61),
	datac => \rnd_gen|state\(2),
	datad => \rnd_gen|state\(4),
	combout => \rnd_gen|next_state\(30));

-- Location: FF_X77_Y39_N21
\rnd_gen|state[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(30));

-- Location: LCCOMB_X75_Y39_N22
\rnd_gen|next_state[22]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[22]~60_combout\ = \rnd_gen|state\(49) $ (\rnd_gen|state\(19) $ (\rnd_gen|state\(30) $ (!\rnd_gen|state\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(49),
	datab => \rnd_gen|state\(19),
	datac => \rnd_gen|state\(30),
	datad => \rnd_gen|state\(27),
	combout => \rnd_gen|next_state[22]~60_combout\);

-- Location: LCCOMB_X74_Y39_N2
\rnd_gen|next_state[22]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[22]~61_combout\ = \rnd_gen|state\(58) $ (\rnd_gen|state\(3) $ (\rnd_gen|state\(15) $ (\rnd_gen|state\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(58),
	datab => \rnd_gen|state\(3),
	datac => \rnd_gen|state\(15),
	datad => \rnd_gen|state\(9),
	combout => \rnd_gen|next_state[22]~61_combout\);

-- Location: LCCOMB_X75_Y39_N10
\rnd_gen|next_state[22]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[22]~62_combout\ = \rnd_gen|next_state[22]~60_combout\ $ (\rnd_gen|state\(63) $ (\rnd_gen|state\(54) $ (\rnd_gen|next_state[22]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[22]~60_combout\,
	datab => \rnd_gen|state\(63),
	datac => \rnd_gen|state\(54),
	datad => \rnd_gen|next_state[22]~61_combout\,
	combout => \rnd_gen|next_state[22]~62_combout\);

-- Location: FF_X75_Y39_N11
\rnd_gen|state[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[22]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(22));

-- Location: LCCOMB_X77_Y39_N8
\rnd_gen|next_state[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[17]~45_combout\ = \rnd_gen|state\(22) $ (\rnd_gen|state\(0) $ (\rnd_gen|state\(7) $ (\rnd_gen|state\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(22),
	datab => \rnd_gen|state\(0),
	datac => \rnd_gen|state\(7),
	datad => \rnd_gen|state\(41),
	combout => \rnd_gen|next_state[17]~45_combout\);

-- Location: LCCOMB_X74_Y39_N16
\rnd_gen|next_state[17]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[17]~46_combout\ = \rnd_gen|state\(38) $ (\rnd_gen|state\(6) $ (\rnd_gen|state\(11) $ (\rnd_gen|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(38),
	datab => \rnd_gen|state\(6),
	datac => \rnd_gen|state\(11),
	datad => \rnd_gen|state\(1),
	combout => \rnd_gen|next_state[17]~46_combout\);

-- Location: LCCOMB_X77_Y39_N22
\rnd_gen|next_state[17]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[17]~47_combout\ = \rnd_gen|state\(49) $ (\rnd_gen|next_state[17]~45_combout\ $ (\rnd_gen|next_state[17]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(49),
	datac => \rnd_gen|next_state[17]~45_combout\,
	datad => \rnd_gen|next_state[17]~46_combout\,
	combout => \rnd_gen|next_state[17]~47_combout\);

-- Location: FF_X77_Y39_N23
\rnd_gen|state[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[17]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(17));

-- Location: LCCOMB_X77_Y40_N22
\rnd_gen|next_state[44]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[44]~103_combout\ = \rnd_gen|state\(62) $ (\rnd_gen|state\(17) $ (\rnd_gen|state\(18) $ (!\rnd_gen|state\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(62),
	datab => \rnd_gen|state\(17),
	datac => \rnd_gen|state\(18),
	datad => \rnd_gen|state\(61),
	combout => \rnd_gen|next_state[44]~103_combout\);

-- Location: LCCOMB_X77_Y40_N24
\rnd_gen|next_state[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(44) = \rnd_gen|state\(50) $ (\rnd_gen|state\(0) $ (\rnd_gen|next_state[44]~103_combout\ $ (\rnd_gen|state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(50),
	datab => \rnd_gen|state\(0),
	datac => \rnd_gen|next_state[44]~103_combout\,
	datad => \rnd_gen|state\(7),
	combout => \rnd_gen|next_state\(44));

-- Location: FF_X77_Y40_N25
\rnd_gen|state[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(44));

-- Location: LCCOMB_X76_Y39_N24
\rnd_gen|next_state[33]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[33]~82_combout\ = \rnd_gen|next_state[33]~81_combout\ $ (\rnd_gen|next_state[33]~28_combout\ $ (\rnd_gen|state\(40) $ (\rnd_gen|state\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[33]~81_combout\,
	datab => \rnd_gen|next_state[33]~28_combout\,
	datac => \rnd_gen|state\(40),
	datad => \rnd_gen|state\(44),
	combout => \rnd_gen|next_state[33]~82_combout\);

-- Location: FF_X76_Y39_N25
\rnd_gen|state[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[33]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(33));

-- Location: LCCOMB_X77_Y40_N18
\rnd_gen|next_state[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[7]~27_combout\ = \rnd_gen|state\(32) $ (\rnd_gen|state\(33) $ (\rnd_gen|state\(4) $ (\rnd_gen|state\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(32),
	datab => \rnd_gen|state\(33),
	datac => \rnd_gen|state\(4),
	datad => \rnd_gen|state\(51),
	combout => \rnd_gen|next_state[7]~27_combout\);

-- Location: LCCOMB_X77_Y40_N12
\rnd_gen|next_state[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(7) = \rnd_gen|state\(43) $ (\rnd_gen|next_state[7]~27_combout\ $ (\rnd_gen|state\(23) $ (!\rnd_gen|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(43),
	datab => \rnd_gen|next_state[7]~27_combout\,
	datac => \rnd_gen|state\(23),
	datad => \rnd_gen|state\(1),
	combout => \rnd_gen|next_state\(7));

-- Location: FF_X77_Y40_N13
\rnd_gen|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(7));

-- Location: LCCOMB_X77_Y39_N18
\rnd_gen|next_state[52]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[52]~119_combout\ = \rnd_gen|state\(56) $ (\rnd_gen|state\(14) $ (\rnd_gen|state\(7) $ (!\rnd_gen|state\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(56),
	datab => \rnd_gen|state\(14),
	datac => \rnd_gen|state\(7),
	datad => \rnd_gen|state\(47),
	combout => \rnd_gen|next_state[52]~119_combout\);

-- Location: LCCOMB_X77_Y39_N24
\rnd_gen|next_state[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(52) = \rnd_gen|state\(28) $ (\rnd_gen|next_state[47]~107_combout\ $ (\rnd_gen|next_state[52]~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(28),
	datab => \rnd_gen|next_state[47]~107_combout\,
	datad => \rnd_gen|next_state[52]~119_combout\,
	combout => \rnd_gen|next_state\(52));

-- Location: FF_X77_Y39_N25
\rnd_gen|state[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(52));

-- Location: LCCOMB_X74_Y38_N28
\rnd_gen|next_state[45]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[45]~104_combout\ = \rnd_gen|state\(6) $ (\rnd_gen|state\(43) $ (\rnd_gen|state\(52) $ (\rnd_gen|state\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(6),
	datab => \rnd_gen|state\(43),
	datac => \rnd_gen|state\(52),
	datad => \rnd_gen|state\(33),
	combout => \rnd_gen|next_state[45]~104_combout\);

-- Location: LCCOMB_X74_Y38_N26
\rnd_gen|next_state[45]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[45]~105_combout\ = \rnd_gen|state\(27) $ (\rnd_gen|next_state[45]~104_combout\ $ (!\rnd_gen|next_state[45]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(27),
	datab => \rnd_gen|next_state[45]~104_combout\,
	datad => \rnd_gen|next_state[45]~64_combout\,
	combout => \rnd_gen|next_state[45]~105_combout\);

-- Location: FF_X74_Y38_N27
\rnd_gen|state[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[45]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(45));

-- Location: LCCOMB_X76_Y40_N0
\rnd_gen|next_state[41]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[41]~100_combout\ = \rnd_gen|state\(29) $ (\rnd_gen|state\(45) $ (\rnd_gen|state\(47) $ (!\rnd_gen|state\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(29),
	datab => \rnd_gen|state\(45),
	datac => \rnd_gen|state\(47),
	datad => \rnd_gen|state\(56),
	combout => \rnd_gen|next_state[41]~100_combout\);

-- Location: LCCOMB_X77_Y40_N14
\rnd_gen|next_state[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(41) = \rnd_gen|next_state[41]~100_combout\ $ (\rnd_gen|state\(54) $ (\rnd_gen|state\(36) $ (!\rnd_gen|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[41]~100_combout\,
	datab => \rnd_gen|state\(54),
	datac => \rnd_gen|state\(36),
	datad => \rnd_gen|state\(1),
	combout => \rnd_gen|next_state\(41));

-- Location: FF_X77_Y40_N15
\rnd_gen|state[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(41));

-- Location: LCCOMB_X76_Y39_N4
\rnd_gen|next_state[21]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[21]~57_combout\ = \rnd_gen|state\(56) $ (\rnd_gen|state\(16) $ (\rnd_gen|state\(13) $ (\rnd_gen|state\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(56),
	datab => \rnd_gen|state\(16),
	datac => \rnd_gen|state\(13),
	datad => \rnd_gen|state\(22),
	combout => \rnd_gen|next_state[21]~57_combout\);

-- Location: LCCOMB_X75_Y39_N24
\rnd_gen|next_state[21]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[21]~59_combout\ = \rnd_gen|next_state[57]~58_combout\ $ (\rnd_gen|state\(39) $ (\rnd_gen|state\(41) $ (!\rnd_gen|next_state[21]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[57]~58_combout\,
	datab => \rnd_gen|state\(39),
	datac => \rnd_gen|state\(41),
	datad => \rnd_gen|next_state[21]~57_combout\,
	combout => \rnd_gen|next_state[21]~59_combout\);

-- Location: FF_X75_Y39_N25
\rnd_gen|state[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[21]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(21));

-- Location: LCCOMB_X77_Y39_N10
\rnd_gen|next_state[10]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[10]~30_combout\ = \rnd_gen|state\(0) $ (\rnd_gen|state\(23) $ (\rnd_gen|state\(7) $ (!\rnd_gen|state\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(0),
	datab => \rnd_gen|state\(23),
	datac => \rnd_gen|state\(7),
	datad => \rnd_gen|state\(26),
	combout => \rnd_gen|next_state[10]~30_combout\);

-- Location: LCCOMB_X74_Y39_N20
\rnd_gen|next_state[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[10]~31_combout\ = \rnd_gen|state\(31) $ (\rnd_gen|next_state[10]~29_combout\ $ (\rnd_gen|state\(20) $ (\rnd_gen|next_state[10]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(31),
	datab => \rnd_gen|next_state[10]~29_combout\,
	datac => \rnd_gen|state\(20),
	datad => \rnd_gen|next_state[10]~30_combout\,
	combout => \rnd_gen|next_state[10]~31_combout\);

-- Location: FF_X74_Y39_N21
\rnd_gen|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[10]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(10));

-- Location: LCCOMB_X77_Y38_N2
\rnd_gen|next_state[63]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[63]~117_combout\ = \rnd_gen|state\(15) $ (\rnd_gen|state\(21) $ (!\rnd_gen|state\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(15),
	datab => \rnd_gen|state\(21),
	datad => \rnd_gen|state\(10),
	combout => \rnd_gen|next_state[63]~117_combout\);

-- Location: LCCOMB_X76_Y40_N8
\rnd_gen|next_state[34]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[34]~83_combout\ = \rnd_gen|state\(29) $ (\rnd_gen|state\(48) $ (\rnd_gen|state\(8) $ (\rnd_gen|state\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(29),
	datab => \rnd_gen|state\(48),
	datac => \rnd_gen|state\(8),
	datad => \rnd_gen|state\(57),
	combout => \rnd_gen|next_state[34]~83_combout\);

-- Location: LCCOMB_X76_Y40_N2
\rnd_gen|next_state[34]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[34]~84_combout\ = \rnd_gen|state\(42) $ (\rnd_gen|state\(55) $ (\rnd_gen|state\(34) $ (\rnd_gen|state\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(42),
	datab => \rnd_gen|state\(55),
	datac => \rnd_gen|state\(34),
	datad => \rnd_gen|state\(44),
	combout => \rnd_gen|next_state[34]~84_combout\);

-- Location: LCCOMB_X76_Y40_N4
\rnd_gen|next_state[34]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[34]~85_combout\ = \rnd_gen|state\(56) $ (\rnd_gen|next_state[34]~83_combout\ $ (\rnd_gen|state\(58) $ (\rnd_gen|next_state[34]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(56),
	datab => \rnd_gen|next_state[34]~83_combout\,
	datac => \rnd_gen|state\(58),
	datad => \rnd_gen|next_state[34]~84_combout\,
	combout => \rnd_gen|next_state[34]~85_combout\);

-- Location: FF_X76_Y40_N5
\rnd_gen|state[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[34]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(34));

-- Location: LCCOMB_X77_Y38_N24
\rnd_gen|next_state[55]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[55]~118_combout\ = \rnd_gen|next_state[55]~95_combout\ $ (\rnd_gen|next_state[63]~117_combout\ $ (\rnd_gen|state\(55) $ (!\rnd_gen|state\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[55]~95_combout\,
	datab => \rnd_gen|next_state[63]~117_combout\,
	datac => \rnd_gen|state\(55),
	datad => \rnd_gen|state\(34),
	combout => \rnd_gen|next_state[55]~118_combout\);

-- Location: FF_X77_Y38_N25
\rnd_gen|state[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[55]~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(55));

-- Location: LCCOMB_X77_Y38_N0
\rnd_gen|next_state[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(49) = \rnd_gen|state\(19) $ (\rnd_gen|next_state[56]~23_combout\ $ (\rnd_gen|next_state[49]~111_combout\ $ (\rnd_gen|state\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(19),
	datab => \rnd_gen|next_state[56]~23_combout\,
	datac => \rnd_gen|next_state[49]~111_combout\,
	datad => \rnd_gen|state\(55),
	combout => \rnd_gen|next_state\(49));

-- Location: FF_X77_Y38_N1
\rnd_gen|state[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(49));

-- Location: LCCOMB_X75_Y39_N2
\rnd_gen|next_state[59]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[59]~51_combout\ = \rnd_gen|state\(24) $ (\rnd_gen|state\(10) $ (\rnd_gen|state\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(24),
	datab => \rnd_gen|state\(10),
	datad => \rnd_gen|state\(36),
	combout => \rnd_gen|next_state[59]~51_combout\);

-- Location: LCCOMB_X75_Y39_N0
\rnd_gen|next_state[59]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[59]~123_combout\ = \rnd_gen|state\(49) $ (\rnd_gen|next_state[59]~74_combout\ $ (\rnd_gen|state\(44) $ (!\rnd_gen|next_state[59]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(49),
	datab => \rnd_gen|next_state[59]~74_combout\,
	datac => \rnd_gen|state\(44),
	datad => \rnd_gen|next_state[59]~51_combout\,
	combout => \rnd_gen|next_state[59]~123_combout\);

-- Location: FF_X75_Y39_N1
\rnd_gen|state[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[59]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(59));

-- Location: LCCOMB_X76_Y38_N26
\rnd_gen|next_state[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(39) = \rnd_gen|next_state[39]~94_combout\ $ (\rnd_gen|next_state[39]~43_combout\ $ (\rnd_gen|state\(31) $ (!\rnd_gen|state\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[39]~94_combout\,
	datab => \rnd_gen|next_state[39]~43_combout\,
	datac => \rnd_gen|state\(31),
	datad => \rnd_gen|state\(59),
	combout => \rnd_gen|next_state\(39));

-- Location: FF_X76_Y38_N27
\rnd_gen|state[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(39));

-- Location: LCCOMB_X76_Y38_N12
\rnd_gen|next_state[40]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[40]~98_combout\ = \rnd_gen|state\(4) $ (\rnd_gen|state\(2) $ (\rnd_gen|state\(39) $ (!\rnd_gen|state\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(4),
	datab => \rnd_gen|state\(2),
	datac => \rnd_gen|state\(39),
	datad => \rnd_gen|state\(41),
	combout => \rnd_gen|next_state[40]~98_combout\);

-- Location: LCCOMB_X76_Y38_N20
\rnd_gen|next_state[40]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[40]~87_combout\ = \rnd_gen|state\(37) $ (\rnd_gen|state\(34) $ (\rnd_gen|state\(13) $ (!\rnd_gen|state\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(37),
	datab => \rnd_gen|state\(34),
	datac => \rnd_gen|state\(13),
	datad => \rnd_gen|state\(32),
	combout => \rnd_gen|next_state[40]~87_combout\);

-- Location: LCCOMB_X76_Y38_N28
\rnd_gen|next_state[40]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[40]~99_combout\ = \rnd_gen|next_state[40]~98_combout\ $ (\rnd_gen|state\(18) $ (!\rnd_gen|next_state[40]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[40]~98_combout\,
	datac => \rnd_gen|state\(18),
	datad => \rnd_gen|next_state[40]~87_combout\,
	combout => \rnd_gen|next_state[40]~99_combout\);

-- Location: FF_X76_Y38_N29
\rnd_gen|state[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[40]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(40));

-- Location: LCCOMB_X77_Y40_N20
\rnd_gen|next_state[15]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[15]~37_combout\ = \rnd_gen|state\(18) $ (\rnd_gen|state\(51) $ (\rnd_gen|state\(62) $ (!\rnd_gen|state\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(18),
	datab => \rnd_gen|state\(51),
	datac => \rnd_gen|state\(62),
	datad => \rnd_gen|state\(33),
	combout => \rnd_gen|next_state[15]~37_combout\);

-- Location: LCCOMB_X77_Y40_N30
\rnd_gen|next_state[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(15) = \rnd_gen|state\(40) $ (\rnd_gen|state\(34) $ (\rnd_gen|state\(15) $ (\rnd_gen|next_state[15]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(40),
	datab => \rnd_gen|state\(34),
	datac => \rnd_gen|state\(15),
	datad => \rnd_gen|next_state[15]~37_combout\,
	combout => \rnd_gen|next_state\(15));

-- Location: FF_X77_Y40_N31
\rnd_gen|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(15));

-- Location: LCCOMB_X74_Y38_N4
\rnd_gen|next_state[58]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[58]~126_combout\ = \rnd_gen|state\(15) $ (\rnd_gen|state\(32) $ (\rnd_gen|state\(1) $ (!\rnd_gen|state\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(15),
	datab => \rnd_gen|state\(32),
	datac => \rnd_gen|state\(1),
	datad => \rnd_gen|state\(36),
	combout => \rnd_gen|next_state[58]~126_combout\);

-- Location: LCCOMB_X74_Y38_N18
\rnd_gen|next_state[58]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[58]~127_combout\ = \rnd_gen|next_state[58]~126_combout\ $ (\rnd_gen|next_state[58]~70_combout\ $ (!\rnd_gen|state\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|next_state[58]~126_combout\,
	datac => \rnd_gen|next_state[58]~70_combout\,
	datad => \rnd_gen|state\(33),
	combout => \rnd_gen|next_state[58]~127_combout\);

-- Location: FF_X74_Y38_N19
\rnd_gen|state[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[58]~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(58));

-- Location: LCCOMB_X74_Y39_N12
\rnd_gen|next_state[29]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[29]~78_combout\ = \rnd_gen|state\(58) $ (\rnd_gen|state\(28) $ (\rnd_gen|state\(6) $ (\rnd_gen|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(58),
	datab => \rnd_gen|state\(28),
	datac => \rnd_gen|state\(6),
	datad => \rnd_gen|state\(3),
	combout => \rnd_gen|next_state[29]~78_combout\);

-- Location: LCCOMB_X74_Y39_N6
\rnd_gen|next_state[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(29) = \rnd_gen|next_state[29]~78_combout\ $ (\rnd_gen|state\(63) $ (\rnd_gen|state\(10) $ (!\rnd_gen|next_state[63]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[29]~78_combout\,
	datab => \rnd_gen|state\(63),
	datac => \rnd_gen|state\(10),
	datad => \rnd_gen|next_state[63]~77_combout\,
	combout => \rnd_gen|next_state\(29));

-- Location: FF_X74_Y39_N7
\rnd_gen|state[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(29));

-- Location: LCCOMB_X76_Y39_N12
\rnd_gen|next_state[60]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[60]~128_combout\ = \rnd_gen|state\(48) $ (\rnd_gen|state\(57) $ (\rnd_gen|state\(29) $ (\rnd_gen|state\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(48),
	datab => \rnd_gen|state\(57),
	datac => \rnd_gen|state\(29),
	datad => \rnd_gen|state\(5),
	combout => \rnd_gen|next_state[60]~128_combout\);

-- Location: LCCOMB_X76_Y39_N30
\rnd_gen|next_state[60]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[60]~129_combout\ = \rnd_gen|state\(22) $ (\rnd_gen|state\(32) $ (\rnd_gen|state\(30) $ (!\rnd_gen|state\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(22),
	datab => \rnd_gen|state\(32),
	datac => \rnd_gen|state\(30),
	datad => \rnd_gen|state\(20),
	combout => \rnd_gen|next_state[60]~129_combout\);

-- Location: LCCOMB_X76_Y39_N22
\rnd_gen|next_state[60]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[60]~130_combout\ = \rnd_gen|next_state[60]~128_combout\ $ (\rnd_gen|next_state[60]~129_combout\ $ (\rnd_gen|state\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[60]~128_combout\,
	datac => \rnd_gen|next_state[60]~129_combout\,
	datad => \rnd_gen|state\(45),
	combout => \rnd_gen|next_state[60]~130_combout\);

-- Location: FF_X76_Y39_N23
\rnd_gen|state[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[60]~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(60));

-- Location: LCCOMB_X75_Y38_N12
\rnd_gen|next_state[58]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[58]~70_combout\ = \rnd_gen|state\(9) $ (\rnd_gen|state\(48) $ (\rnd_gen|state\(60) $ (!\rnd_gen|state\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(9),
	datab => \rnd_gen|state\(48),
	datac => \rnd_gen|state\(60),
	datad => \rnd_gen|state\(41),
	combout => \rnd_gen|next_state[58]~70_combout\);

-- Location: LCCOMB_X74_Y38_N12
\rnd_gen|next_state[26]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[26]~71_combout\ = \rnd_gen|state\(10) $ (\rnd_gen|state\(25) $ (\rnd_gen|state\(4) $ (\rnd_gen|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(10),
	datab => \rnd_gen|state\(25),
	datac => \rnd_gen|state\(4),
	datad => \rnd_gen|state\(2),
	combout => \rnd_gen|next_state[26]~71_combout\);

-- Location: LCCOMB_X75_Y38_N10
\rnd_gen|next_state[26]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[26]~72_combout\ = \rnd_gen|next_state[58]~70_combout\ $ (\rnd_gen|state\(51) $ (\rnd_gen|next_state[26]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[58]~70_combout\,
	datac => \rnd_gen|state\(51),
	datad => \rnd_gen|next_state[26]~71_combout\,
	combout => \rnd_gen|next_state[26]~72_combout\);

-- Location: FF_X75_Y38_N11
\rnd_gen|state[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[26]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(26));

-- Location: LCCOMB_X74_Y39_N22
\rnd_gen|next_state[63]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[63]~134_combout\ = \rnd_gen|state\(15) $ (\rnd_gen|state\(10) $ (\rnd_gen|state\(22) $ (!\rnd_gen|state\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(15),
	datab => \rnd_gen|state\(10),
	datac => \rnd_gen|state\(22),
	datad => \rnd_gen|state\(21),
	combout => \rnd_gen|next_state[63]~134_combout\);

-- Location: LCCOMB_X74_Y39_N0
\rnd_gen|next_state[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(63) = \rnd_gen|state\(26) $ (\rnd_gen|state\(28) $ (\rnd_gen|next_state[63]~134_combout\ $ (\rnd_gen|next_state[63]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(26),
	datab => \rnd_gen|state\(28),
	datac => \rnd_gen|next_state[63]~134_combout\,
	datad => \rnd_gen|next_state[63]~77_combout\,
	combout => \rnd_gen|next_state\(63));

-- Location: FF_X74_Y39_N1
\rnd_gen|state[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(63));

-- Location: LCCOMB_X76_Y39_N6
\rnd_gen|next_state[35]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[35]~86_combout\ = \rnd_gen|state\(30) $ (\rnd_gen|state\(12) $ (\rnd_gen|state\(16) $ (!\rnd_gen|state\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(30),
	datab => \rnd_gen|state\(12),
	datac => \rnd_gen|state\(16),
	datad => \rnd_gen|state\(60),
	combout => \rnd_gen|next_state[35]~86_combout\);

-- Location: LCCOMB_X76_Y39_N26
\rnd_gen|next_state[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(35) = \rnd_gen|state\(63) $ (\rnd_gen|state\(0) $ (\rnd_gen|next_state[63]~77_combout\ $ (!\rnd_gen|next_state[35]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(63),
	datab => \rnd_gen|state\(0),
	datac => \rnd_gen|next_state[63]~77_combout\,
	datad => \rnd_gen|next_state[35]~86_combout\,
	combout => \rnd_gen|next_state\(35));

-- Location: FF_X76_Y39_N27
\rnd_gen|state[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(35));

-- Location: LCCOMB_X77_Y39_N12
\rnd_gen|next_state[38]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[38]~91_combout\ = \rnd_gen|state\(35) $ (\rnd_gen|state\(29) $ (\rnd_gen|state\(7) $ (!\rnd_gen|state\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(35),
	datab => \rnd_gen|state\(29),
	datac => \rnd_gen|state\(7),
	datad => \rnd_gen|state\(41),
	combout => \rnd_gen|next_state[38]~91_combout\);

-- Location: LCCOMB_X77_Y39_N26
\rnd_gen|next_state[38]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[38]~90_combout\ = \rnd_gen|state\(23) $ (\rnd_gen|state\(61) $ (\rnd_gen|state\(17) $ (!\rnd_gen|state\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(23),
	datab => \rnd_gen|state\(61),
	datac => \rnd_gen|state\(17),
	datad => \rnd_gen|state\(19),
	combout => \rnd_gen|next_state[38]~90_combout\);

-- Location: LCCOMB_X77_Y39_N2
\rnd_gen|next_state[38]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[38]~92_combout\ = \rnd_gen|next_state[38]~91_combout\ $ (\rnd_gen|next_state[38]~90_combout\ $ (!\rnd_gen|state\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[38]~91_combout\,
	datac => \rnd_gen|next_state[38]~90_combout\,
	datad => \rnd_gen|state\(52),
	combout => \rnd_gen|next_state[38]~92_combout\);

-- Location: FF_X77_Y39_N3
\rnd_gen|state[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[38]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(38));

-- Location: LCCOMB_X74_Y40_N16
\rnd_gen|next_state[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[13]~41_combout\ = \rnd_gen|state\(9) $ (\rnd_gen|state\(36) $ (\rnd_gen|state\(13) $ (!\rnd_gen|state\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(9),
	datab => \rnd_gen|state\(36),
	datac => \rnd_gen|state\(13),
	datad => \rnd_gen|state\(38),
	combout => \rnd_gen|next_state[13]~41_combout\);

-- Location: LCCOMB_X75_Y40_N2
\rnd_gen|next_state[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[13]~40_combout\ = \rnd_gen|state\(53) $ (\rnd_gen|state\(63) $ (\rnd_gen|state\(54) $ (!\rnd_gen|state\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(53),
	datab => \rnd_gen|state\(63),
	datac => \rnd_gen|state\(54),
	datad => \rnd_gen|state\(59),
	combout => \rnd_gen|next_state[13]~40_combout\);

-- Location: LCCOMB_X75_Y40_N4
\rnd_gen|next_state[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[13]~42_combout\ = \rnd_gen|next_state[13]~41_combout\ $ (\rnd_gen|state\(39) $ (\rnd_gen|next_state[13]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[13]~41_combout\,
	datac => \rnd_gen|state\(39),
	datad => \rnd_gen|next_state[13]~40_combout\,
	combout => \rnd_gen|next_state[13]~42_combout\);

-- Location: FF_X75_Y40_N5
\rnd_gen|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(13));

-- Location: LCCOMB_X76_Y38_N6
\rnd_gen|next_state[56]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[56]~121_combout\ = \rnd_gen|state\(13) $ (\rnd_gen|state\(43) $ (\rnd_gen|state\(12) $ (\rnd_gen|state\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(13),
	datab => \rnd_gen|state\(43),
	datac => \rnd_gen|state\(12),
	datad => \rnd_gen|state\(59),
	combout => \rnd_gen|next_state[56]~121_combout\);

-- Location: LCCOMB_X75_Y38_N24
\rnd_gen|next_state[56]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[56]~32_combout\ = \rnd_gen|state\(39) $ (\rnd_gen|state\(16) $ (!\rnd_gen|state\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|state\(39),
	datac => \rnd_gen|state\(16),
	datad => \rnd_gen|state\(44),
	combout => \rnd_gen|next_state[56]~32_combout\);

-- Location: LCCOMB_X75_Y38_N16
\rnd_gen|next_state[56]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[56]~122_combout\ = \rnd_gen|next_state[56]~121_combout\ $ (\rnd_gen|state\(11) $ (\rnd_gen|state\(58) $ (\rnd_gen|next_state[56]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[56]~121_combout\,
	datab => \rnd_gen|state\(11),
	datac => \rnd_gen|state\(58),
	datad => \rnd_gen|next_state[56]~32_combout\,
	combout => \rnd_gen|next_state[56]~122_combout\);

-- Location: FF_X75_Y38_N17
\rnd_gen|state[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[56]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(56));

-- Location: LCCOMB_X76_Y39_N2
\rnd_gen|next_state[23]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[23]~54_combout\ = \rnd_gen|state\(56) $ (\rnd_gen|state\(43) $ (\rnd_gen|state\(16) $ (\rnd_gen|state\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(56),
	datab => \rnd_gen|state\(43),
	datac => \rnd_gen|state\(16),
	datad => \rnd_gen|state\(22),
	combout => \rnd_gen|next_state[23]~54_combout\);

-- Location: LCCOMB_X75_Y39_N8
\rnd_gen|next_state[23]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[23]~55_combout\ = \rnd_gen|state\(6) $ (\rnd_gen|state\(55) $ (\rnd_gen|state\(54) $ (\rnd_gen|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(6),
	datab => \rnd_gen|state\(55),
	datac => \rnd_gen|state\(54),
	datad => \rnd_gen|state\(0),
	combout => \rnd_gen|next_state[23]~55_combout\);

-- Location: LCCOMB_X75_Y39_N26
\rnd_gen|next_state[23]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[23]~56_combout\ = \rnd_gen|next_state[23]~54_combout\ $ (\rnd_gen|next_state[23]~55_combout\ $ (!\rnd_gen|state\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[23]~54_combout\,
	datac => \rnd_gen|next_state[23]~55_combout\,
	datad => \rnd_gen|state\(60),
	combout => \rnd_gen|next_state[23]~56_combout\);

-- Location: FF_X75_Y39_N27
\rnd_gen|state[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[23]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(23));

-- Location: LCCOMB_X76_Y38_N14
\rnd_gen|next_state[39]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[39]~43_combout\ = \rnd_gen|state\(23) $ (\rnd_gen|state\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|state\(23),
	datad => \rnd_gen|state\(8),
	combout => \rnd_gen|next_state[39]~43_combout\);

-- Location: LCCOMB_X76_Y38_N30
\rnd_gen|next_state[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(16) = \rnd_gen|state\(2) $ (\rnd_gen|state\(43) $ (\rnd_gen|next_state[39]~43_combout\ $ (\rnd_gen|next_state[22]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(2),
	datab => \rnd_gen|state\(43),
	datac => \rnd_gen|next_state[39]~43_combout\,
	datad => \rnd_gen|next_state[22]~44_combout\,
	combout => \rnd_gen|next_state\(16));

-- Location: FF_X76_Y38_N31
\rnd_gen|state[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(16));

-- Location: LCCOMB_X75_Y38_N4
\rnd_gen|next_state[53]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[53]~115_combout\ = \rnd_gen|state\(16) $ (\rnd_gen|state\(34) $ (\rnd_gen|state\(24) $ (\rnd_gen|state\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(16),
	datab => \rnd_gen|state\(34),
	datac => \rnd_gen|state\(24),
	datad => \rnd_gen|state\(17),
	combout => \rnd_gen|next_state[53]~115_combout\);

-- Location: LCCOMB_X74_Y38_N2
\rnd_gen|next_state[53]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[53]~114_combout\ = \rnd_gen|state\(33) $ (\rnd_gen|state\(43) $ (\rnd_gen|state\(52) $ (\rnd_gen|state\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(33),
	datab => \rnd_gen|state\(43),
	datac => \rnd_gen|state\(52),
	datad => \rnd_gen|state\(5),
	combout => \rnd_gen|next_state[53]~114_combout\);

-- Location: LCCOMB_X74_Y38_N16
\rnd_gen|next_state[53]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[53]~116_combout\ = \rnd_gen|state\(57) $ (\rnd_gen|next_state[53]~115_combout\ $ (\rnd_gen|state\(38) $ (\rnd_gen|next_state[53]~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(57),
	datab => \rnd_gen|next_state[53]~115_combout\,
	datac => \rnd_gen|state\(38),
	datad => \rnd_gen|next_state[53]~114_combout\,
	combout => \rnd_gen|next_state[53]~116_combout\);

-- Location: FF_X74_Y38_N17
\rnd_gen|state[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[53]~116_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(53));

-- Location: LCCOMB_X75_Y38_N14
\rnd_gen|next_state[31]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[31]~73_combout\ = \rnd_gen|state\(53) $ (\rnd_gen|state\(26) $ (\rnd_gen|state\(46) $ (!\rnd_gen|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(53),
	datab => \rnd_gen|state\(26),
	datac => \rnd_gen|state\(46),
	datad => \rnd_gen|state\(0),
	combout => \rnd_gen|next_state[31]~73_combout\);

-- Location: LCCOMB_X76_Y38_N8
\rnd_gen|next_state[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(31) = \rnd_gen|next_state[31]~73_combout\ $ (\rnd_gen|state\(43) $ (\rnd_gen|state\(35) $ (!\rnd_gen|state\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[31]~73_combout\,
	datab => \rnd_gen|state\(43),
	datac => \rnd_gen|state\(35),
	datad => \rnd_gen|state\(61),
	combout => \rnd_gen|next_state\(31));

-- Location: FF_X76_Y38_N9
\rnd_gen|state[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(31));

-- Location: LCCOMB_X75_Y40_N12
\rnd_gen|next_state[36]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[36]~93_combout\ = \rnd_gen|state\(46) $ (\rnd_gen|state\(31) $ (\rnd_gen|state\(39) $ (\rnd_gen|state\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(46),
	datab => \rnd_gen|state\(31),
	datac => \rnd_gen|state\(39),
	datad => \rnd_gen|state\(28),
	combout => \rnd_gen|next_state[36]~93_combout\);

-- Location: LCCOMB_X76_Y40_N16
\rnd_gen|next_state[50]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[50]~50_combout\ = \rnd_gen|state\(40) $ (!\rnd_gen|state\(58))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|state\(40),
	datac => \rnd_gen|state\(58),
	combout => \rnd_gen|next_state[50]~50_combout\);

-- Location: LCCOMB_X75_Y40_N6
\rnd_gen|next_state[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(36) = \rnd_gen|next_state[36]~93_combout\ $ (\rnd_gen|state\(8) $ (\rnd_gen|state\(54) $ (!\rnd_gen|next_state[50]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[36]~93_combout\,
	datab => \rnd_gen|state\(8),
	datac => \rnd_gen|state\(54),
	datad => \rnd_gen|next_state[50]~50_combout\,
	combout => \rnd_gen|next_state\(36));

-- Location: FF_X75_Y40_N7
\rnd_gen|state[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(36));

-- Location: LCCOMB_X77_Y38_N26
\rnd_gen|next_state[55]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[55]~95_combout\ = \rnd_gen|state\(20) $ (\rnd_gen|state\(37) $ (\rnd_gen|state\(36) $ (\rnd_gen|state\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(20),
	datab => \rnd_gen|state\(37),
	datac => \rnd_gen|state\(36),
	datad => \rnd_gen|state\(14),
	combout => \rnd_gen|next_state[55]~95_combout\);

-- Location: LCCOMB_X76_Y38_N2
\rnd_gen|next_state[42]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[42]~96_combout\ = \rnd_gen|state\(18) $ (\rnd_gen|state\(23) $ (\rnd_gen|state\(12) $ (\rnd_gen|state\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(18),
	datab => \rnd_gen|state\(23),
	datac => \rnd_gen|state\(12),
	datad => \rnd_gen|state\(19),
	combout => \rnd_gen|next_state[42]~96_combout\);

-- Location: LCCOMB_X77_Y38_N6
\rnd_gen|next_state[42]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[42]~97_combout\ = \rnd_gen|next_state[55]~95_combout\ $ (\rnd_gen|state\(42) $ (\rnd_gen|next_state[42]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[55]~95_combout\,
	datac => \rnd_gen|state\(42),
	datad => \rnd_gen|next_state[42]~96_combout\,
	combout => \rnd_gen|next_state[42]~97_combout\);

-- Location: FF_X77_Y38_N7
\rnd_gen|state[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[42]~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(42));

-- Location: LCCOMB_X76_Y40_N24
\rnd_gen|next_state[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[0]~9_combout\ = \rnd_gen|state\(42) $ (\rnd_gen|state\(22) $ (\rnd_gen|state\(53) $ (\rnd_gen|state\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(42),
	datab => \rnd_gen|state\(22),
	datac => \rnd_gen|state\(53),
	datad => \rnd_gen|state\(59),
	combout => \rnd_gen|next_state[0]~9_combout\);

-- Location: LCCOMB_X77_Y40_N28
\rnd_gen|next_state[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[0]~8_combout\ = \rnd_gen|state\(15) $ (\rnd_gen|state\(23) $ (\rnd_gen|state\(36) $ (\rnd_gen|state\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(15),
	datab => \rnd_gen|state\(23),
	datac => \rnd_gen|state\(36),
	datad => \rnd_gen|state\(44),
	combout => \rnd_gen|next_state[0]~8_combout\);

-- Location: LCCOMB_X76_Y40_N6
\rnd_gen|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~12_combout\ = (\rnd_gen|state\(42) & (!\rnd_gen|state\(41) & (\rnd_gen|state\(40) & !\rnd_gen|state\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(42),
	datab => \rnd_gen|state\(41),
	datac => \rnd_gen|state\(40),
	datad => \rnd_gen|state\(43),
	combout => \rnd_gen|Equal0~12_combout\);

-- Location: LCCOMB_X76_Y40_N28
\rnd_gen|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~13_combout\ = (!\rnd_gen|state\(47) & (!\rnd_gen|state\(44) & (!\rnd_gen|state\(45) & \rnd_gen|state\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(47),
	datab => \rnd_gen|state\(44),
	datac => \rnd_gen|state\(45),
	datad => \rnd_gen|state\(46),
	combout => \rnd_gen|Equal0~13_combout\);

-- Location: LCCOMB_X75_Y40_N18
\rnd_gen|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~11_combout\ = (!\rnd_gen|state\(36) & (\rnd_gen|state\(38) & (!\rnd_gen|state\(39) & \rnd_gen|state\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(36),
	datab => \rnd_gen|state\(38),
	datac => \rnd_gen|state\(39),
	datad => \rnd_gen|state\(37),
	combout => \rnd_gen|Equal0~11_combout\);

-- Location: LCCOMB_X77_Y40_N16
\rnd_gen|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~10_combout\ = (!\rnd_gen|state\(35) & (\rnd_gen|state\(33) & (\rnd_gen|state\(34) & \rnd_gen|state\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(35),
	datab => \rnd_gen|state\(33),
	datac => \rnd_gen|state\(34),
	datad => \rnd_gen|state\(32),
	combout => \rnd_gen|Equal0~10_combout\);

-- Location: LCCOMB_X76_Y40_N26
\rnd_gen|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~14_combout\ = (\rnd_gen|Equal0~12_combout\ & (\rnd_gen|Equal0~13_combout\ & (\rnd_gen|Equal0~11_combout\ & \rnd_gen|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|Equal0~12_combout\,
	datab => \rnd_gen|Equal0~13_combout\,
	datac => \rnd_gen|Equal0~11_combout\,
	datad => \rnd_gen|Equal0~10_combout\,
	combout => \rnd_gen|Equal0~14_combout\);

-- Location: LCCOMB_X76_Y40_N12
\rnd_gen|Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~18_combout\ = (!\rnd_gen|state\(62) & (!\rnd_gen|state\(60) & (!\rnd_gen|state\(61) & !\rnd_gen|state\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(62),
	datab => \rnd_gen|state\(60),
	datac => \rnd_gen|state\(61),
	datad => \rnd_gen|state\(63),
	combout => \rnd_gen|Equal0~18_combout\);

-- Location: LCCOMB_X76_Y40_N20
\rnd_gen|Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~16_combout\ = (!\rnd_gen|state\(52) & (!\rnd_gen|state\(55) & (\rnd_gen|state\(53) & !\rnd_gen|state\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(52),
	datab => \rnd_gen|state\(55),
	datac => \rnd_gen|state\(53),
	datad => \rnd_gen|state\(54),
	combout => \rnd_gen|Equal0~16_combout\);

-- Location: LCCOMB_X76_Y40_N22
\rnd_gen|Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~17_combout\ = (\rnd_gen|state\(56) & (!\rnd_gen|state\(57) & (!\rnd_gen|state\(58) & !\rnd_gen|state\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(56),
	datab => \rnd_gen|state\(57),
	datac => \rnd_gen|state\(58),
	datad => \rnd_gen|state\(59),
	combout => \rnd_gen|Equal0~17_combout\);

-- Location: LCCOMB_X77_Y40_N2
\rnd_gen|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~15_combout\ = (!\rnd_gen|state\(50) & (\rnd_gen|state\(48) & (\rnd_gen|state\(49) & !\rnd_gen|state\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(50),
	datab => \rnd_gen|state\(48),
	datac => \rnd_gen|state\(49),
	datad => \rnd_gen|state\(51),
	combout => \rnd_gen|Equal0~15_combout\);

-- Location: LCCOMB_X76_Y40_N18
\rnd_gen|Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~19_combout\ = (\rnd_gen|Equal0~18_combout\ & (\rnd_gen|Equal0~16_combout\ & (\rnd_gen|Equal0~17_combout\ & \rnd_gen|Equal0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|Equal0~18_combout\,
	datab => \rnd_gen|Equal0~16_combout\,
	datac => \rnd_gen|Equal0~17_combout\,
	datad => \rnd_gen|Equal0~15_combout\,
	combout => \rnd_gen|Equal0~19_combout\);

-- Location: LCCOMB_X74_Y39_N10
\rnd_gen|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~6_combout\ = (!\rnd_gen|state\(20) & (\rnd_gen|state\(21) & (!\rnd_gen|state\(22) & \rnd_gen|state\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(20),
	datab => \rnd_gen|state\(21),
	datac => \rnd_gen|state\(22),
	datad => \rnd_gen|state\(23),
	combout => \rnd_gen|Equal0~6_combout\);

-- Location: LCCOMB_X74_Y39_N4
\rnd_gen|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~8_combout\ = (!\rnd_gen|state\(29) & (!\rnd_gen|state\(28) & (\rnd_gen|state\(31) & !\rnd_gen|state\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(29),
	datab => \rnd_gen|state\(28),
	datac => \rnd_gen|state\(31),
	datad => \rnd_gen|state\(30),
	combout => \rnd_gen|Equal0~8_combout\);

-- Location: LCCOMB_X75_Y39_N20
\rnd_gen|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~5_combout\ = (\rnd_gen|state\(17) & (\rnd_gen|state\(16) & (!\rnd_gen|state\(18) & \rnd_gen|state\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(17),
	datab => \rnd_gen|state\(16),
	datac => \rnd_gen|state\(18),
	datad => \rnd_gen|state\(19),
	combout => \rnd_gen|Equal0~5_combout\);

-- Location: LCCOMB_X75_Y39_N28
\rnd_gen|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~7_combout\ = (!\rnd_gen|state\(25) & (\rnd_gen|state\(27) & (!\rnd_gen|state\(26) & \rnd_gen|state\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(25),
	datab => \rnd_gen|state\(27),
	datac => \rnd_gen|state\(26),
	datad => \rnd_gen|state\(24),
	combout => \rnd_gen|Equal0~7_combout\);

-- Location: LCCOMB_X74_Y39_N14
\rnd_gen|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~9_combout\ = (\rnd_gen|Equal0~6_combout\ & (\rnd_gen|Equal0~8_combout\ & (\rnd_gen|Equal0~5_combout\ & \rnd_gen|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|Equal0~6_combout\,
	datab => \rnd_gen|Equal0~8_combout\,
	datac => \rnd_gen|Equal0~5_combout\,
	datad => \rnd_gen|Equal0~7_combout\,
	combout => \rnd_gen|Equal0~9_combout\);

-- Location: LCCOMB_X77_Y39_N30
\rnd_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~1_combout\ = (\rnd_gen|state\(6) & (\rnd_gen|state\(7) & (\rnd_gen|state\(0) & \rnd_gen|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(6),
	datab => \rnd_gen|state\(7),
	datac => \rnd_gen|state\(0),
	datad => \rnd_gen|state\(1),
	combout => \rnd_gen|Equal0~1_combout\);

-- Location: LCCOMB_X76_Y39_N18
\rnd_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~2_combout\ = (!\rnd_gen|state\(9) & (\rnd_gen|state\(10) & (\rnd_gen|state\(11) & \rnd_gen|state\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(9),
	datab => \rnd_gen|state\(10),
	datac => \rnd_gen|state\(11),
	datad => \rnd_gen|state\(8),
	combout => \rnd_gen|Equal0~2_combout\);

-- Location: LCCOMB_X76_Y39_N16
\rnd_gen|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~3_combout\ = (!\rnd_gen|state\(13) & (\rnd_gen|state\(15) & (!\rnd_gen|state\(12) & \rnd_gen|state\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(13),
	datab => \rnd_gen|state\(15),
	datac => \rnd_gen|state\(12),
	datad => \rnd_gen|state\(14),
	combout => \rnd_gen|Equal0~3_combout\);

-- Location: LCCOMB_X77_Y39_N28
\rnd_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~0_combout\ = (\rnd_gen|state\(3) & (\rnd_gen|state\(5) & (\rnd_gen|state\(2) & !\rnd_gen|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(3),
	datab => \rnd_gen|state\(5),
	datac => \rnd_gen|state\(2),
	datad => \rnd_gen|state\(4),
	combout => \rnd_gen|Equal0~0_combout\);

-- Location: LCCOMB_X77_Y39_N0
\rnd_gen|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~4_combout\ = (\rnd_gen|Equal0~1_combout\ & (\rnd_gen|Equal0~2_combout\ & (\rnd_gen|Equal0~3_combout\ & \rnd_gen|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|Equal0~1_combout\,
	datab => \rnd_gen|Equal0~2_combout\,
	datac => \rnd_gen|Equal0~3_combout\,
	datad => \rnd_gen|Equal0~0_combout\,
	combout => \rnd_gen|Equal0~4_combout\);

-- Location: LCCOMB_X77_Y40_N6
\rnd_gen|Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|Equal0~20_combout\ = (\rnd_gen|Equal0~14_combout\ & (\rnd_gen|Equal0~19_combout\ & (\rnd_gen|Equal0~9_combout\ & \rnd_gen|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|Equal0~14_combout\,
	datab => \rnd_gen|Equal0~19_combout\,
	datac => \rnd_gen|Equal0~9_combout\,
	datad => \rnd_gen|Equal0~4_combout\,
	combout => \rnd_gen|Equal0~20_combout\);

-- Location: LCCOMB_X77_Y41_N14
\rnd_gen|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|state~0_combout\ = (!\rnd_gen|Equal0~20_combout\ & (\rnd_gen|next_state[0]~9_combout\ $ (\rnd_gen|state\(55) $ (!\rnd_gen|next_state[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[0]~9_combout\,
	datab => \rnd_gen|state\(55),
	datac => \rnd_gen|next_state[0]~8_combout\,
	datad => \rnd_gen|Equal0~20_combout\,
	combout => \rnd_gen|state~0_combout\);

-- Location: FF_X77_Y41_N15
\rnd_gen|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_gen|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(0));

-- Location: LCCOMB_X75_Y38_N30
\rnd_gen|next_state[62]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[62]~132_combout\ = \rnd_gen|state\(0) $ (\rnd_gen|state\(48) $ (\rnd_gen|state\(46) $ (\rnd_gen|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(0),
	datab => \rnd_gen|state\(48),
	datac => \rnd_gen|state\(46),
	datad => \rnd_gen|state\(3),
	combout => \rnd_gen|next_state[62]~132_combout\);

-- Location: LCCOMB_X75_Y38_N6
\rnd_gen|next_state[62]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[62]~133_combout\ = \rnd_gen|next_state[62]~132_combout\ $ (\rnd_gen|state\(29) $ (\rnd_gen|state\(34) $ (!\rnd_gen|next_state[57]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[62]~132_combout\,
	datab => \rnd_gen|state\(29),
	datac => \rnd_gen|state\(34),
	datad => \rnd_gen|next_state[57]~58_combout\,
	combout => \rnd_gen|next_state[62]~133_combout\);

-- Location: FF_X75_Y38_N7
\rnd_gen|state[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[62]~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(62));

-- Location: LCCOMB_X75_Y40_N0
\rnd_gen|next_state[48]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[48]~110_combout\ = \rnd_gen|state\(62) $ (\rnd_gen|state\(54) $ (\rnd_gen|state\(16) $ (!\rnd_gen|state\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(62),
	datab => \rnd_gen|state\(54),
	datac => \rnd_gen|state\(16),
	datad => \rnd_gen|state\(59),
	combout => \rnd_gen|next_state[48]~110_combout\);

-- Location: LCCOMB_X75_Y40_N28
\rnd_gen|next_state[48]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[48]~109_combout\ = \rnd_gen|state\(45) $ (\rnd_gen|state\(42) $ (\rnd_gen|state\(4) $ (\rnd_gen|state\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(45),
	datab => \rnd_gen|state\(42),
	datac => \rnd_gen|state\(4),
	datad => \rnd_gen|state\(37),
	combout => \rnd_gen|next_state[48]~109_combout\);

-- Location: LCCOMB_X75_Y40_N26
\rnd_gen|next_state[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(48) = \rnd_gen|next_state[48]~110_combout\ $ (!\rnd_gen|next_state[48]~109_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|next_state[48]~110_combout\,
	datad => \rnd_gen|next_state[48]~109_combout\,
	combout => \rnd_gen|next_state\(48));

-- Location: FF_X75_Y40_N27
\rnd_gen|state[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(48));

-- Location: LCCOMB_X77_Y38_N4
\rnd_gen|next_state[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[6]~25_combout\ = \rnd_gen|state\(50) $ (\rnd_gen|state\(40) $ (\rnd_gen|next_state[50]~24_combout\ $ (\rnd_gen|state\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(50),
	datab => \rnd_gen|state\(40),
	datac => \rnd_gen|next_state[50]~24_combout\,
	datad => \rnd_gen|state\(24),
	combout => \rnd_gen|next_state[6]~25_combout\);

-- Location: LCCOMB_X77_Y38_N16
\rnd_gen|next_state[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[6]~26_combout\ = \rnd_gen|state\(3) $ (\rnd_gen|state\(48) $ (\rnd_gen|next_state[6]~25_combout\ $ (!\rnd_gen|next_state[56]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(3),
	datab => \rnd_gen|state\(48),
	datac => \rnd_gen|next_state[6]~25_combout\,
	datad => \rnd_gen|next_state[56]~23_combout\,
	combout => \rnd_gen|next_state[6]~26_combout\);

-- Location: FF_X77_Y38_N17
\rnd_gen|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(6));

-- Location: LCCOMB_X77_Y38_N14
\rnd_gen|next_state[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[2]~12_combout\ = \rnd_gen|state\(5) $ (\rnd_gen|state\(31) $ (\rnd_gen|state\(53) $ (\rnd_gen|state\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(5),
	datab => \rnd_gen|state\(31),
	datac => \rnd_gen|state\(53),
	datad => \rnd_gen|state\(46),
	combout => \rnd_gen|next_state[2]~12_combout\);

-- Location: LCCOMB_X77_Y40_N10
\rnd_gen|next_state[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[2]~13_combout\ = \rnd_gen|state\(4) $ (\rnd_gen|state\(23) $ (\rnd_gen|state\(36) $ (!\rnd_gen|state\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(4),
	datab => \rnd_gen|state\(23),
	datac => \rnd_gen|state\(36),
	datad => \rnd_gen|state\(44),
	combout => \rnd_gen|next_state[2]~13_combout\);

-- Location: LCCOMB_X77_Y41_N26
\rnd_gen|next_state[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[2]~14_combout\ = \rnd_gen|state\(6) $ (\rnd_gen|next_state[2]~12_combout\ $ (\rnd_gen|state\(39) $ (\rnd_gen|next_state[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(6),
	datab => \rnd_gen|next_state[2]~12_combout\,
	datac => \rnd_gen|state\(39),
	datad => \rnd_gen|next_state[2]~13_combout\,
	combout => \rnd_gen|next_state[2]~14_combout\);

-- Location: FF_X77_Y41_N27
\rnd_gen|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_gen|next_state[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(2));

-- Location: LCCOMB_X74_Y38_N14
\rnd_gen|next_state[37]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[37]~88_combout\ = \rnd_gen|state\(27) $ (\rnd_gen|state\(2) $ (\rnd_gen|state\(57) $ (\rnd_gen|state\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(27),
	datab => \rnd_gen|state\(2),
	datac => \rnd_gen|state\(57),
	datad => \rnd_gen|state\(9),
	combout => \rnd_gen|next_state[37]~88_combout\);

-- Location: LCCOMB_X75_Y38_N28
\rnd_gen|next_state[37]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[37]~89_combout\ = \rnd_gen|next_state[37]~88_combout\ $ (\rnd_gen|next_state[40]~87_combout\ $ (\rnd_gen|state\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[37]~88_combout\,
	datac => \rnd_gen|next_state[40]~87_combout\,
	datad => \rnd_gen|state\(49),
	combout => \rnd_gen|next_state[37]~89_combout\);

-- Location: FF_X75_Y38_N29
\rnd_gen|state[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[37]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(37));

-- Location: LCCOMB_X77_Y38_N12
\rnd_gen|next_state[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[12]~39_combout\ = \rnd_gen|state\(17) $ (\rnd_gen|state\(14) $ (\rnd_gen|state\(1) $ (!\rnd_gen|state\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(17),
	datab => \rnd_gen|state\(14),
	datac => \rnd_gen|state\(1),
	datad => \rnd_gen|state\(52),
	combout => \rnd_gen|next_state[12]~39_combout\);

-- Location: LCCOMB_X76_Y38_N4
\rnd_gen|next_state[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(12) = \rnd_gen|state\(37) $ (\rnd_gen|next_state[12]~39_combout\ $ (\rnd_gen|state\(39) $ (\rnd_gen|state\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(37),
	datab => \rnd_gen|next_state[12]~39_combout\,
	datac => \rnd_gen|state\(39),
	datad => \rnd_gen|state\(27),
	combout => \rnd_gen|next_state\(12));

-- Location: FF_X76_Y38_N5
\rnd_gen|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(12));

-- Location: LCCOMB_X76_Y38_N10
\rnd_gen|next_state[45]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[45]~64_combout\ = \rnd_gen|state\(18) $ (\rnd_gen|state\(12) $ (\rnd_gen|state\(35) $ (\rnd_gen|state\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(18),
	datab => \rnd_gen|state\(12),
	datac => \rnd_gen|state\(35),
	datad => \rnd_gen|state\(30),
	combout => \rnd_gen|next_state[45]~64_combout\);

-- Location: LCCOMB_X77_Y38_N28
\rnd_gen|next_state[24]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[24]~65_combout\ = \rnd_gen|next_state[45]~64_combout\ $ (\rnd_gen|state\(60) $ (\rnd_gen|next_state[2]~12_combout\ $ (\rnd_gen|state\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[45]~64_combout\,
	datab => \rnd_gen|state\(60),
	datac => \rnd_gen|next_state[2]~12_combout\,
	datad => \rnd_gen|state\(17),
	combout => \rnd_gen|next_state[24]~65_combout\);

-- Location: FF_X77_Y38_N29
\rnd_gen|state[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[24]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(24));

-- Location: LCCOMB_X75_Y40_N24
\rnd_gen|next_state[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[12]~16_combout\ = \rnd_gen|state\(39) $ (\rnd_gen|state\(27) $ (\rnd_gen|state\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|state\(39),
	datac => \rnd_gen|state\(27),
	datad => \rnd_gen|state\(37),
	combout => \rnd_gen|next_state[12]~16_combout\);

-- Location: LCCOMB_X75_Y40_N16
\rnd_gen|next_state[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[3]~15_combout\ = \rnd_gen|state\(41) $ (\rnd_gen|state\(6) $ (\rnd_gen|state\(1) $ (\rnd_gen|state\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(41),
	datab => \rnd_gen|state\(6),
	datac => \rnd_gen|state\(1),
	datad => \rnd_gen|state\(51),
	combout => \rnd_gen|next_state[3]~15_combout\);

-- Location: LCCOMB_X75_Y40_N8
\rnd_gen|next_state[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[3]~17_combout\ = \rnd_gen|state\(24) $ (\rnd_gen|next_state[12]~16_combout\ $ (\rnd_gen|next_state[3]~15_combout\ $ (\rnd_gen|state\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(24),
	datab => \rnd_gen|next_state[12]~16_combout\,
	datac => \rnd_gen|next_state[3]~15_combout\,
	datad => \rnd_gen|state\(63),
	combout => \rnd_gen|next_state[3]~17_combout\);

-- Location: FF_X76_Y41_N27
\rnd_gen|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \rnd_gen|next_state[3]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(3));

-- Location: LCCOMB_X75_Y40_N20
\rnd_gen|next_state[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[4]~22_combout\ = \rnd_gen|state\(4) $ (\rnd_gen|state\(28) $ (\rnd_gen|state\(46) $ (\rnd_gen|state\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(4),
	datab => \rnd_gen|state\(28),
	datac => \rnd_gen|state\(46),
	datad => \rnd_gen|state\(32),
	combout => \rnd_gen|next_state[4]~22_combout\);

-- Location: LCCOMB_X75_Y40_N22
\rnd_gen|next_state[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(4) = \rnd_gen|state\(3) $ (\rnd_gen|next_state[4]~22_combout\ $ (\rnd_gen|state\(37) $ (\rnd_gen|state\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(3),
	datab => \rnd_gen|next_state[4]~22_combout\,
	datac => \rnd_gen|state\(37),
	datad => \rnd_gen|state\(50),
	combout => \rnd_gen|next_state\(4));

-- Location: FF_X75_Y40_N23
\rnd_gen|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \rnd_gen|next_state\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(4));

-- Location: LCCOMB_X74_Y39_N24
\rnd_gen|next_state[59]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[59]~74_combout\ = \rnd_gen|state\(4) $ (\rnd_gen|state\(63) $ (\rnd_gen|state\(11) $ (!\rnd_gen|state\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(4),
	datab => \rnd_gen|state\(63),
	datac => \rnd_gen|state\(11),
	datad => \rnd_gen|state\(45),
	combout => \rnd_gen|next_state[59]~74_combout\);

-- Location: LCCOMB_X75_Y39_N16
\rnd_gen|next_state[28]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[28]~75_combout\ = \rnd_gen|state\(46) $ (\rnd_gen|state\(48) $ (\rnd_gen|state\(30) $ (\rnd_gen|state\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(46),
	datab => \rnd_gen|state\(48),
	datac => \rnd_gen|state\(30),
	datad => \rnd_gen|state\(55),
	combout => \rnd_gen|next_state[28]~75_combout\);

-- Location: LCCOMB_X74_Y39_N8
\rnd_gen|next_state[28]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[28]~76_combout\ = \rnd_gen|next_state[59]~74_combout\ $ (\rnd_gen|state\(58) $ (\rnd_gen|next_state[28]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|next_state[59]~74_combout\,
	datac => \rnd_gen|state\(58),
	datad => \rnd_gen|next_state[28]~75_combout\,
	combout => \rnd_gen|next_state[28]~76_combout\);

-- Location: FF_X74_Y39_N9
\rnd_gen|state[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[28]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(28));

-- Location: LCCOMB_X75_Y39_N4
\rnd_gen|next_state[33]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[33]~28_combout\ = \rnd_gen|state\(28) $ (\rnd_gen|state\(31) $ (\rnd_gen|state\(26) $ (\rnd_gen|state\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(28),
	datab => \rnd_gen|state\(31),
	datac => \rnd_gen|state\(26),
	datad => \rnd_gen|state\(27),
	combout => \rnd_gen|next_state[33]~28_combout\);

-- Location: LCCOMB_X76_Y39_N28
\rnd_gen|next_state[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(8) = \rnd_gen|state\(50) $ (\rnd_gen|next_state[33]~28_combout\ $ (\rnd_gen|state\(29) $ (\rnd_gen|state\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(50),
	datab => \rnd_gen|next_state[33]~28_combout\,
	datac => \rnd_gen|state\(29),
	datad => \rnd_gen|state\(34),
	combout => \rnd_gen|next_state\(8));

-- Location: FF_X76_Y39_N29
\rnd_gen|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(8));

-- Location: LCCOMB_X75_Y38_N2
\rnd_gen|next_state[57]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[57]~58_combout\ = \rnd_gen|state\(8) $ (\rnd_gen|state\(53) $ (\rnd_gen|state\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|state\(8),
	datac => \rnd_gen|state\(53),
	datad => \rnd_gen|state\(52),
	combout => \rnd_gen|next_state[57]~58_combout\);

-- Location: LCCOMB_X75_Y39_N18
\rnd_gen|next_state[57]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[57]~124_combout\ = \rnd_gen|next_state[57]~58_combout\ $ (\rnd_gen|state\(51) $ (\rnd_gen|state\(30) $ (\rnd_gen|state\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[57]~58_combout\,
	datab => \rnd_gen|state\(51),
	datac => \rnd_gen|state\(30),
	datad => \rnd_gen|state\(60),
	combout => \rnd_gen|next_state[57]~124_combout\);

-- Location: LCCOMB_X76_Y39_N0
\rnd_gen|next_state[57]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[57]~125_combout\ = \rnd_gen|next_state[57]~124_combout\ $ (\rnd_gen|state\(38) $ (!\rnd_gen|next_state[57]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|next_state[57]~124_combout\,
	datac => \rnd_gen|state\(38),
	datad => \rnd_gen|next_state[57]~18_combout\,
	combout => \rnd_gen|next_state[57]~125_combout\);

-- Location: FF_X76_Y39_N1
\rnd_gen|state[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[57]~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(57));

-- Location: LCCOMB_X74_Y39_N30
\rnd_gen|next_state[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[10]~29_combout\ = \rnd_gen|state\(57) $ (\rnd_gen|state\(47) $ (\rnd_gen|state\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|state\(57),
	datac => \rnd_gen|state\(47),
	datad => \rnd_gen|state\(63),
	combout => \rnd_gen|next_state[10]~29_combout\);

-- Location: LCCOMB_X74_Y38_N8
\rnd_gen|next_state[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[9]~34_combout\ = \rnd_gen|state\(10) $ (\rnd_gen|state\(37) $ (\rnd_gen|state\(45) $ (!\rnd_gen|state\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(10),
	datab => \rnd_gen|state\(37),
	datac => \rnd_gen|state\(45),
	datad => \rnd_gen|state\(42),
	combout => \rnd_gen|next_state[9]~34_combout\);

-- Location: LCCOMB_X74_Y38_N10
\rnd_gen|next_state[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[9]~36_combout\ = \rnd_gen|next_state[10]~29_combout\ $ (\rnd_gen|next_state[43]~35_combout\ $ (\rnd_gen|next_state[9]~34_combout\ $ (!\rnd_gen|state\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[10]~29_combout\,
	datab => \rnd_gen|next_state[43]~35_combout\,
	datac => \rnd_gen|next_state[9]~34_combout\,
	datad => \rnd_gen|state\(33),
	combout => \rnd_gen|next_state[9]~36_combout\);

-- Location: FF_X74_Y38_N11
\rnd_gen|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[9]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(9));

-- Location: LCCOMB_X77_Y38_N22
\rnd_gen|next_state[27]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[27]~66_combout\ = \rnd_gen|state\(17) $ (\rnd_gen|state\(14) $ (\rnd_gen|state\(31) $ (!\rnd_gen|state\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(17),
	datab => \rnd_gen|state\(14),
	datac => \rnd_gen|state\(31),
	datad => \rnd_gen|state\(52),
	combout => \rnd_gen|next_state[27]~66_combout\);

-- Location: LCCOMB_X76_Y38_N22
\rnd_gen|next_state[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(27) = \rnd_gen|state\(9) $ (\rnd_gen|state\(57) $ (\rnd_gen|next_state[15]~10_combout\ $ (!\rnd_gen|next_state[27]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(9),
	datab => \rnd_gen|state\(57),
	datac => \rnd_gen|next_state[15]~10_combout\,
	datad => \rnd_gen|next_state[27]~66_combout\,
	combout => \rnd_gen|next_state\(27));

-- Location: FF_X76_Y38_N23
\rnd_gen|state[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(27));

-- Location: LCCOMB_X76_Y38_N16
\rnd_gen|next_state[50]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[50]~24_combout\ = \rnd_gen|state\(27) $ (\rnd_gen|state\(16) $ (!\rnd_gen|state\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(27),
	datac => \rnd_gen|state\(16),
	datad => \rnd_gen|state\(32),
	combout => \rnd_gen|next_state[50]~24_combout\);

-- Location: LCCOMB_X77_Y40_N8
\rnd_gen|next_state[50]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[50]~112_combout\ = \rnd_gen|state\(15) $ (\rnd_gen|state\(47) $ (\rnd_gen|state\(35) $ (\rnd_gen|state\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(15),
	datab => \rnd_gen|state\(47),
	datac => \rnd_gen|state\(35),
	datad => \rnd_gen|state\(37),
	combout => \rnd_gen|next_state[50]~112_combout\);

-- Location: LCCOMB_X77_Y38_N10
\rnd_gen|next_state[50]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[50]~135_combout\ = \rnd_gen|next_state[50]~24_combout\ $ (\rnd_gen|state\(40) $ (\rnd_gen|state\(58) $ (!\rnd_gen|next_state[50]~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[50]~24_combout\,
	datab => \rnd_gen|state\(40),
	datac => \rnd_gen|state\(58),
	datad => \rnd_gen|next_state[50]~112_combout\,
	combout => \rnd_gen|next_state[50]~135_combout\);

-- Location: FF_X77_Y38_N11
\rnd_gen|state[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[50]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(50));

-- Location: LCCOMB_X75_Y40_N14
\rnd_gen|next_state[18]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[18]~52_combout\ = \rnd_gen|state\(43) $ (\rnd_gen|state\(13) $ (\rnd_gen|state\(18) $ (\rnd_gen|next_state[59]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(43),
	datab => \rnd_gen|state\(13),
	datac => \rnd_gen|state\(18),
	datad => \rnd_gen|next_state[59]~51_combout\,
	combout => \rnd_gen|next_state[18]~52_combout\);

-- Location: LCCOMB_X75_Y40_N30
\rnd_gen|next_state[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[18]~53_combout\ = \rnd_gen|state\(50) $ (\rnd_gen|state\(51) $ (\rnd_gen|next_state[18]~52_combout\ $ (\rnd_gen|next_state[50]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(50),
	datab => \rnd_gen|state\(51),
	datac => \rnd_gen|next_state[18]~52_combout\,
	datad => \rnd_gen|next_state[50]~50_combout\,
	combout => \rnd_gen|next_state[18]~53_combout\);

-- Location: FF_X75_Y40_N31
\rnd_gen|state[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[18]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(18));

-- Location: LCCOMB_X75_Y38_N26
\rnd_gen|next_state[43]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[43]~35_combout\ = \rnd_gen|state\(18) $ (\rnd_gen|state\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_gen|state\(18),
	datad => \rnd_gen|state\(29),
	combout => \rnd_gen|next_state[43]~35_combout\);

-- Location: LCCOMB_X75_Y38_N22
\rnd_gen|next_state[43]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[43]~101_combout\ = \rnd_gen|state\(16) $ (\rnd_gen|state\(27) $ (\rnd_gen|state\(51) $ (\rnd_gen|state\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(16),
	datab => \rnd_gen|state\(27),
	datac => \rnd_gen|state\(51),
	datad => \rnd_gen|state\(41),
	combout => \rnd_gen|next_state[43]~101_combout\);

-- Location: LCCOMB_X75_Y38_N18
\rnd_gen|next_state[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(43) = \rnd_gen|next_state[43]~35_combout\ $ (\rnd_gen|state\(58) $ (\rnd_gen|next_state[43]~101_combout\ $ (!\rnd_gen|state\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[43]~35_combout\,
	datab => \rnd_gen|state\(58),
	datac => \rnd_gen|next_state[43]~101_combout\,
	datad => \rnd_gen|state\(49),
	combout => \rnd_gen|next_state\(43));

-- Location: FF_X75_Y38_N19
\rnd_gen|state[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(43));

-- Location: LCCOMB_X74_Y38_N22
\rnd_gen|next_state[11]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[11]~33_combout\ = \rnd_gen|state\(22) $ (\rnd_gen|state\(36) $ (\rnd_gen|state\(56) $ (\rnd_gen|state\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(22),
	datab => \rnd_gen|state\(36),
	datac => \rnd_gen|state\(56),
	datad => \rnd_gen|state\(10),
	combout => \rnd_gen|next_state[11]~33_combout\);

-- Location: LCCOMB_X74_Y38_N24
\rnd_gen|next_state[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(11) = \rnd_gen|state\(43) $ (\rnd_gen|next_state[11]~33_combout\ $ (!\rnd_gen|next_state[56]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|state\(43),
	datac => \rnd_gen|next_state[11]~33_combout\,
	datad => \rnd_gen|next_state[56]~32_combout\,
	combout => \rnd_gen|next_state\(11));

-- Location: FF_X74_Y38_N25
\rnd_gen|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(11));

-- Location: LCCOMB_X74_Y39_N18
\rnd_gen|next_state[63]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[63]~77_combout\ = \rnd_gen|state\(11) $ (!\rnd_gen|state\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_gen|state\(11),
	datad => \rnd_gen|state\(25),
	combout => \rnd_gen|next_state[63]~77_combout\);

-- Location: LCCOMB_X76_Y39_N8
\rnd_gen|next_state[32]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[32]~80_combout\ = \rnd_gen|state\(56) $ (\rnd_gen|state\(47) $ (\rnd_gen|state\(55) $ (\rnd_gen|state\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(56),
	datab => \rnd_gen|state\(47),
	datac => \rnd_gen|state\(55),
	datad => \rnd_gen|state\(34),
	combout => \rnd_gen|next_state[32]~80_combout\);

-- Location: LCCOMB_X76_Y39_N14
\rnd_gen|next_state[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(32) = \rnd_gen|next_state[63]~77_combout\ $ (\rnd_gen|next_state[32]~80_combout\ $ (\rnd_gen|state\(35) $ (!\rnd_gen|state\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[63]~77_combout\,
	datab => \rnd_gen|next_state[32]~80_combout\,
	datac => \rnd_gen|state\(35),
	datad => \rnd_gen|state\(59),
	combout => \rnd_gen|next_state\(32));

-- Location: FF_X76_Y39_N15
\rnd_gen|state[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(32));

-- Location: LCCOMB_X75_Y39_N12
\rnd_gen|next_state[46]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[46]~102_combout\ = \rnd_gen|state\(32) $ (\rnd_gen|state\(20) $ (\rnd_gen|state\(51) $ (!\rnd_gen|state\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(32),
	datab => \rnd_gen|state\(20),
	datac => \rnd_gen|state\(51),
	datad => \rnd_gen|state\(50),
	combout => \rnd_gen|next_state[46]~102_combout\);

-- Location: LCCOMB_X75_Y39_N30
\rnd_gen|next_state[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(46) = \rnd_gen|next_state[46]~102_combout\ $ (\rnd_gen|state\(11) $ (\rnd_gen|state\(25) $ (\rnd_gen|state\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[46]~102_combout\,
	datab => \rnd_gen|state\(11),
	datac => \rnd_gen|state\(25),
	datad => \rnd_gen|state\(59),
	combout => \rnd_gen|next_state\(46));

-- Location: FF_X75_Y39_N31
\rnd_gen|state[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(46));

-- Location: LCCOMB_X75_Y38_N20
\rnd_gen|next_state[19]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[19]~48_combout\ = \rnd_gen|state\(22) $ (\rnd_gen|next_state[57]~18_combout\ $ (\rnd_gen|state\(59) $ (\rnd_gen|state\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(22),
	datab => \rnd_gen|next_state[57]~18_combout\,
	datac => \rnd_gen|state\(59),
	datad => \rnd_gen|state\(41),
	combout => \rnd_gen|next_state[19]~48_combout\);

-- Location: LCCOMB_X75_Y38_N0
\rnd_gen|next_state[19]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[19]~49_combout\ = \rnd_gen|state\(46) $ (\rnd_gen|next_state[19]~48_combout\ $ (\rnd_gen|next_state[56]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(46),
	datab => \rnd_gen|next_state[19]~48_combout\,
	datad => \rnd_gen|next_state[56]~32_combout\,
	combout => \rnd_gen|next_state[19]~49_combout\);

-- Location: FF_X75_Y38_N1
\rnd_gen|state[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state[19]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(19));

-- Location: LCCOMB_X76_Y38_N24
\rnd_gen|next_state[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[22]~44_combout\ = \rnd_gen|state\(19) $ (\rnd_gen|state\(49) $ (\rnd_gen|state\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(19),
	datac => \rnd_gen|state\(49),
	datad => \rnd_gen|state\(30),
	combout => \rnd_gen|next_state[22]~44_combout\);

-- Location: LCCOMB_X76_Y40_N30
\rnd_gen|next_state[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[20]~63_combout\ = \rnd_gen|state\(33) $ (\rnd_gen|state\(13) $ (\rnd_gen|state\(40) $ (\rnd_gen|state\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(33),
	datab => \rnd_gen|state\(13),
	datac => \rnd_gen|state\(40),
	datad => \rnd_gen|state\(28),
	combout => \rnd_gen|next_state[20]~63_combout\);

-- Location: LCCOMB_X76_Y38_N0
\rnd_gen|next_state[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(20) = \rnd_gen|next_state[22]~44_combout\ $ (\rnd_gen|state\(20) $ (\rnd_gen|next_state[20]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|next_state[22]~44_combout\,
	datac => \rnd_gen|state\(20),
	datad => \rnd_gen|next_state[20]~63_combout\,
	combout => \rnd_gen|next_state\(20));

-- Location: FF_X76_Y38_N1
\rnd_gen|state[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(20));

-- Location: LCCOMB_X77_Y38_N30
\rnd_gen|next_state[14]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[14]~38_combout\ = \rnd_gen|state\(20) $ (\rnd_gen|state\(39) $ (\rnd_gen|state\(31) $ (\rnd_gen|state\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(20),
	datab => \rnd_gen|state\(39),
	datac => \rnd_gen|state\(31),
	datad => \rnd_gen|state\(14),
	combout => \rnd_gen|next_state[14]~38_combout\);

-- Location: LCCOMB_X77_Y38_N18
\rnd_gen|next_state[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state\(14) = \rnd_gen|next_state[14]~38_combout\ $ (\rnd_gen|state\(60) $ (\rnd_gen|state\(21) $ (!\rnd_gen|state\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[14]~38_combout\,
	datab => \rnd_gen|state\(60),
	datac => \rnd_gen|state\(21),
	datad => \rnd_gen|state\(42),
	combout => \rnd_gen|next_state\(14));

-- Location: FF_X77_Y38_N19
\rnd_gen|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rnd_gen|next_state\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(14));

-- Location: LCCOMB_X76_Y39_N20
\rnd_gen|next_state[57]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[57]~18_combout\ = \rnd_gen|state\(14) $ (\rnd_gen|state\(35) $ (!\rnd_gen|state\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(14),
	datac => \rnd_gen|state\(35),
	datad => \rnd_gen|state\(47),
	combout => \rnd_gen|next_state[57]~18_combout\);

-- Location: LCCOMB_X77_Y41_N28
\rnd_gen|next_state[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[5]~19_combout\ = \rnd_gen|state\(21) $ (\rnd_gen|state\(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(21),
	datad => \rnd_gen|state\(42),
	combout => \rnd_gen|next_state[5]~19_combout\);

-- Location: LCCOMB_X77_Y41_N30
\rnd_gen|next_state[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_gen|next_state[5]~21_combout\ = \rnd_gen|next_state[57]~18_combout\ $ (\rnd_gen|next_state[5]~19_combout\ $ (\rnd_gen|state\(24) $ (\rnd_gen|next_state[5]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|next_state[57]~18_combout\,
	datab => \rnd_gen|next_state[5]~19_combout\,
	datac => \rnd_gen|state\(24),
	datad => \rnd_gen|next_state[5]~20_combout\,
	combout => \rnd_gen|next_state[5]~21_combout\);

-- Location: FF_X76_Y41_N15
\rnd_gen|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \rnd_gen|next_state[5]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_gen|state\(5));

-- Location: LCCOMB_X76_Y41_N24
\timeraux_fsm|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|process_0~0_combout\ = (!\rnd_gen|state\(2) & ((!\rnd_gen|state\(0)) # (!\rnd_gen|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(1),
	datac => \rnd_gen|state\(0),
	datad => \rnd_gen|state\(2),
	combout => \timeraux_fsm|process_0~0_combout\);

-- Location: LCCOMB_X76_Y41_N18
\timeraux_fsm|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|process_0~1_combout\ = (\rnd_gen|state\(5) & (\rnd_gen|state\(3) & (!\rnd_gen|state\(4) & !\timeraux_fsm|process_0~0_combout\))) # (!\rnd_gen|state\(5) & (!\rnd_gen|state\(3) & (\rnd_gen|state\(4) & \timeraux_fsm|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(5),
	datab => \rnd_gen|state\(3),
	datac => \rnd_gen|state\(4),
	datad => \timeraux_fsm|process_0~0_combout\,
	combout => \timeraux_fsm|process_0~1_combout\);

-- Location: LCCOMB_X76_Y41_N26
\timeraux_fsm|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~0_combout\ = (\SW[0]~input_o\) # (!\timeraux_fsm|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \timeraux_fsm|process_0~1_combout\,
	combout => \timeraux_fsm|Add0~0_combout\);

-- Location: LCCOMB_X74_Y41_N6
\timeraux_fsm|s_active~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_active~7_combout\ = (!\timeraux_fsm|s_active~2_combout\ & (!\key1_debounce|s_pulsedOut~q\ & \main_fsm|PS.C~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_active~2_combout\,
	datac => \key1_debounce|s_pulsedOut~q\,
	datad => \main_fsm|PS.C~q\,
	combout => \timeraux_fsm|s_active~7_combout\);

-- Location: CLKCTRL_G7
\timeraux_fsm|s_active~7clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \timeraux_fsm|s_active~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \timeraux_fsm|s_active~7clkctrl_outclk\);

-- Location: LCCOMB_X76_Y41_N16
\timeraux_fsm|s_active~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_active~1_combout\ = (!\key1_debounce|s_pulsedOut~q\ & ((GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & (\timeraux_fsm|Add0~0_combout\)) # (!GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & ((\timeraux_fsm|s_active~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|Add0~0_combout\,
	datab => \timeraux_fsm|s_active~1_combout\,
	datac => \key1_debounce|s_pulsedOut~q\,
	datad => \timeraux_fsm|s_active~7clkctrl_outclk\,
	combout => \timeraux_fsm|s_active~1_combout\);

-- Location: LCCOMB_X76_Y41_N0
\timeraux_fsm|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~1_combout\ = \rnd_gen|state\(0) $ (GND)
-- \timeraux_fsm|Add0~2\ = CARRY(!\rnd_gen|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(0),
	datad => VCC,
	combout => \timeraux_fsm|Add0~1_combout\,
	cout => \timeraux_fsm|Add0~2\);

-- Location: LCCOMB_X73_Y41_N26
\timeraux_fsm|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~18_combout\ = (!\SW[0]~input_o\ & ((\timeraux_fsm|process_0~1_combout\ & ((\timeraux_fsm|s_counter[0]~27_combout\))) # (!\timeraux_fsm|process_0~1_combout\ & (\timeraux_fsm|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|Add0~1_combout\,
	datab => \timeraux_fsm|s_counter[0]~27_combout\,
	datac => \timeraux_fsm|process_0~1_combout\,
	datad => \SW[0]~input_o\,
	combout => \timeraux_fsm|Add0~18_combout\);

-- Location: LCCOMB_X73_Y41_N0
\timeraux_fsm|s_counter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[0]~26_combout\ = (\key1_debounce|s_pulsedOut~q\) # ((GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & ((\timeraux_fsm|Add0~18_combout\))) # (!GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & 
-- (\timeraux_fsm|s_counter[0]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_pulsedOut~q\,
	datab => \timeraux_fsm|s_counter[0]~26_combout\,
	datac => \timeraux_fsm|Add0~18_combout\,
	datad => \timeraux_fsm|s_active~7clkctrl_outclk\,
	combout => \timeraux_fsm|s_counter[0]~26_combout\);

-- Location: LCCOMB_X73_Y41_N4
\timeraux_fsm|s_counter[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[0]~29_combout\ = \timeraux_fsm|s_counter[0]~26_combout\ $ (!\timeraux_fsm|s_counter[0]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter[0]~26_combout\,
	datad => \timeraux_fsm|s_counter[0]~27_combout\,
	combout => \timeraux_fsm|s_counter[0]~29_combout\);

-- Location: LCCOMB_X74_Y41_N24
\timeraux_fsm|s_timeExp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_timeExp~0_combout\ = (\key1_debounce|s_pulsedOut~q\) # (\timeraux_fsm|s_active~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key1_debounce|s_pulsedOut~q\,
	datad => \timeraux_fsm|s_active~7_combout\,
	combout => \timeraux_fsm|s_timeExp~0_combout\);

-- Location: FF_X73_Y41_N5
\timeraux_fsm|s_counter[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \timeraux_fsm|s_counter[0]~29_combout\,
	clrn => \timeraux_fsm|ALT_INV_s_timeExp~0_combout\,
	ena => \timeraux_fsm|s_active~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_counter[0]~_emulated_q\);

-- Location: LCCOMB_X73_Y41_N18
\timeraux_fsm|s_counter[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[0]~28_combout\ = \timeraux_fsm|s_counter[0]~_emulated_q\ $ (\timeraux_fsm|s_counter[0]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeraux_fsm|s_counter[0]~_emulated_q\,
	datad => \timeraux_fsm|s_counter[0]~26_combout\,
	combout => \timeraux_fsm|s_counter[0]~28_combout\);

-- Location: LCCOMB_X73_Y41_N20
\timeraux_fsm|s_counter[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[0]~27_combout\ = (\key1_debounce|s_pulsedOut~q\) # ((\timeraux_fsm|s_active~7_combout\ & (\timeraux_fsm|Add0~18_combout\)) # (!\timeraux_fsm|s_active~7_combout\ & ((\timeraux_fsm|s_counter[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|Add0~18_combout\,
	datab => \key1_debounce|s_pulsedOut~q\,
	datac => \timeraux_fsm|s_counter[0]~28_combout\,
	datad => \timeraux_fsm|s_active~7_combout\,
	combout => \timeraux_fsm|s_counter[0]~27_combout\);

-- Location: LCCOMB_X76_Y41_N2
\timeraux_fsm|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~3_combout\ = (\rnd_gen|state\(1) & (!\timeraux_fsm|Add0~2\)) # (!\rnd_gen|state\(1) & (\timeraux_fsm|Add0~2\ & VCC))
-- \timeraux_fsm|Add0~4\ = CARRY((\rnd_gen|state\(1) & !\timeraux_fsm|Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|state\(1),
	datad => VCC,
	cin => \timeraux_fsm|Add0~2\,
	combout => \timeraux_fsm|Add0~3_combout\,
	cout => \timeraux_fsm|Add0~4\);

-- Location: LCCOMB_X74_Y41_N10
\timeraux_fsm|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~17_combout\ = (\SW[0]~input_o\) # ((\timeraux_fsm|process_0~1_combout\ & (\timeraux_fsm|s_counter[1]~22_combout\)) # (!\timeraux_fsm|process_0~1_combout\ & ((!\timeraux_fsm|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter[1]~22_combout\,
	datab => \timeraux_fsm|Add0~3_combout\,
	datac => \SW[0]~input_o\,
	datad => \timeraux_fsm|process_0~1_combout\,
	combout => \timeraux_fsm|Add0~17_combout\);

-- Location: LCCOMB_X74_Y41_N26
\timeraux_fsm|s_counter[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[1]~21_combout\ = (!\key1_debounce|s_pulsedOut~q\ & ((GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & (\timeraux_fsm|Add0~17_combout\)) # (!GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & 
-- ((\timeraux_fsm|s_counter[1]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|Add0~17_combout\,
	datab => \key1_debounce|s_pulsedOut~q\,
	datac => \timeraux_fsm|s_counter[1]~21_combout\,
	datad => \timeraux_fsm|s_active~7clkctrl_outclk\,
	combout => \timeraux_fsm|s_counter[1]~21_combout\);

-- Location: LCCOMB_X75_Y41_N20
\timeraux_fsm|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add1~1_cout\ = CARRY(\timeraux_fsm|s_counter[0]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter[0]~27_combout\,
	datad => VCC,
	cout => \timeraux_fsm|Add1~1_cout\);

-- Location: LCCOMB_X75_Y41_N22
\timeraux_fsm|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add1~2_combout\ = (\timeraux_fsm|s_counter[1]~22_combout\ & (!\timeraux_fsm|Add1~1_cout\)) # (!\timeraux_fsm|s_counter[1]~22_combout\ & (\timeraux_fsm|Add1~1_cout\ & VCC))
-- \timeraux_fsm|Add1~3\ = CARRY((\timeraux_fsm|s_counter[1]~22_combout\ & !\timeraux_fsm|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter[1]~22_combout\,
	datad => VCC,
	cin => \timeraux_fsm|Add1~1_cout\,
	combout => \timeraux_fsm|Add1~2_combout\,
	cout => \timeraux_fsm|Add1~3\);

-- Location: LCCOMB_X74_Y41_N2
\timeraux_fsm|s_counter[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[1]~24_combout\ = \timeraux_fsm|s_counter[1]~21_combout\ $ (!\timeraux_fsm|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeraux_fsm|s_counter[1]~21_combout\,
	datad => \timeraux_fsm|Add1~2_combout\,
	combout => \timeraux_fsm|s_counter[1]~24_combout\);

-- Location: FF_X74_Y41_N3
\timeraux_fsm|s_counter[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \timeraux_fsm|s_counter[1]~24_combout\,
	clrn => \timeraux_fsm|ALT_INV_s_timeExp~0_combout\,
	ena => \timeraux_fsm|s_active~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_counter[1]~_emulated_q\);

-- Location: LCCOMB_X74_Y41_N0
\timeraux_fsm|s_counter[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[1]~23_combout\ = \timeraux_fsm|s_counter[1]~21_combout\ $ (\timeraux_fsm|s_counter[1]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter[1]~21_combout\,
	datab => \timeraux_fsm|s_counter[1]~_emulated_q\,
	combout => \timeraux_fsm|s_counter[1]~23_combout\);

-- Location: LCCOMB_X74_Y41_N30
\timeraux_fsm|s_counter[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[1]~22_combout\ = (!\key1_debounce|s_pulsedOut~q\ & ((\timeraux_fsm|s_active~7_combout\ & (\timeraux_fsm|Add0~17_combout\)) # (!\timeraux_fsm|s_active~7_combout\ & ((\timeraux_fsm|s_counter[1]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|Add0~17_combout\,
	datab => \timeraux_fsm|s_counter[1]~23_combout\,
	datac => \timeraux_fsm|s_active~7_combout\,
	datad => \key1_debounce|s_pulsedOut~q\,
	combout => \timeraux_fsm|s_counter[1]~22_combout\);

-- Location: LCCOMB_X76_Y41_N4
\timeraux_fsm|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~5_combout\ = (\rnd_gen|state\(2) & (\timeraux_fsm|Add0~4\ $ (GND))) # (!\rnd_gen|state\(2) & ((GND) # (!\timeraux_fsm|Add0~4\)))
-- \timeraux_fsm|Add0~6\ = CARRY((!\timeraux_fsm|Add0~4\) # (!\rnd_gen|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|state\(2),
	datad => VCC,
	cin => \timeraux_fsm|Add0~4\,
	combout => \timeraux_fsm|Add0~5_combout\,
	cout => \timeraux_fsm|Add0~6\);

-- Location: LCCOMB_X76_Y41_N6
\timeraux_fsm|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~7_combout\ = (\rnd_gen|state\(3) & (!\timeraux_fsm|Add0~6\)) # (!\rnd_gen|state\(3) & (\timeraux_fsm|Add0~6\ & VCC))
-- \timeraux_fsm|Add0~8\ = CARRY((\rnd_gen|state\(3) & !\timeraux_fsm|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rnd_gen|state\(3),
	datad => VCC,
	cin => \timeraux_fsm|Add0~6\,
	combout => \timeraux_fsm|Add0~7_combout\,
	cout => \timeraux_fsm|Add0~8\);

-- Location: LCCOMB_X76_Y41_N28
\timeraux_fsm|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~15_combout\ = (\SW[0]~input_o\) # ((\timeraux_fsm|process_0~1_combout\ & (\timeraux_fsm|s_counter[3]~12_combout\)) # (!\timeraux_fsm|process_0~1_combout\ & ((!\timeraux_fsm|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter[3]~12_combout\,
	datab => \timeraux_fsm|Add0~7_combout\,
	datac => \SW[0]~input_o\,
	datad => \timeraux_fsm|process_0~1_combout\,
	combout => \timeraux_fsm|Add0~15_combout\);

-- Location: LCCOMB_X74_Y41_N22
\timeraux_fsm|s_counter[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[3]~11_combout\ = (!\key1_debounce|s_pulsedOut~q\ & ((GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & ((\timeraux_fsm|Add0~15_combout\))) # (!GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & 
-- (\timeraux_fsm|s_counter[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_pulsedOut~q\,
	datab => \timeraux_fsm|s_counter[3]~11_combout\,
	datac => \timeraux_fsm|Add0~15_combout\,
	datad => \timeraux_fsm|s_active~7clkctrl_outclk\,
	combout => \timeraux_fsm|s_counter[3]~11_combout\);

-- Location: LCCOMB_X73_Y41_N8
\timeraux_fsm|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~16_combout\ = (\SW[0]~input_o\) # ((\timeraux_fsm|process_0~1_combout\ & (!\timeraux_fsm|s_counter[2]~17_combout\)) # (!\timeraux_fsm|process_0~1_combout\ & ((\timeraux_fsm|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|process_0~1_combout\,
	datab => \timeraux_fsm|s_counter[2]~17_combout\,
	datac => \timeraux_fsm|Add0~5_combout\,
	datad => \SW[0]~input_o\,
	combout => \timeraux_fsm|Add0~16_combout\);

-- Location: LCCOMB_X73_Y41_N14
\timeraux_fsm|s_counter[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[2]~16_combout\ = (!\key1_debounce|s_pulsedOut~q\ & ((GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & (!\timeraux_fsm|Add0~16_combout\)) # (!GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & 
-- ((\timeraux_fsm|s_counter[2]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_pulsedOut~q\,
	datab => \timeraux_fsm|Add0~16_combout\,
	datac => \timeraux_fsm|s_counter[2]~16_combout\,
	datad => \timeraux_fsm|s_active~7clkctrl_outclk\,
	combout => \timeraux_fsm|s_counter[2]~16_combout\);

-- Location: LCCOMB_X75_Y41_N24
\timeraux_fsm|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add1~4_combout\ = (\timeraux_fsm|s_counter[2]~17_combout\ & (\timeraux_fsm|Add1~3\ $ (GND))) # (!\timeraux_fsm|s_counter[2]~17_combout\ & ((GND) # (!\timeraux_fsm|Add1~3\)))
-- \timeraux_fsm|Add1~5\ = CARRY((!\timeraux_fsm|Add1~3\) # (!\timeraux_fsm|s_counter[2]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter[2]~17_combout\,
	datad => VCC,
	cin => \timeraux_fsm|Add1~3\,
	combout => \timeraux_fsm|Add1~4_combout\,
	cout => \timeraux_fsm|Add1~5\);

-- Location: LCCOMB_X73_Y41_N2
\timeraux_fsm|s_counter[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[2]~19_combout\ = \timeraux_fsm|s_counter[2]~16_combout\ $ (!\timeraux_fsm|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeraux_fsm|s_counter[2]~16_combout\,
	datad => \timeraux_fsm|Add1~4_combout\,
	combout => \timeraux_fsm|s_counter[2]~19_combout\);

-- Location: FF_X73_Y41_N3
\timeraux_fsm|s_counter[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \timeraux_fsm|s_counter[2]~19_combout\,
	clrn => \timeraux_fsm|ALT_INV_s_timeExp~0_combout\,
	ena => \timeraux_fsm|s_active~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_counter[2]~_emulated_q\);

-- Location: LCCOMB_X73_Y41_N16
\timeraux_fsm|s_counter[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[2]~18_combout\ = \timeraux_fsm|s_counter[2]~16_combout\ $ (\timeraux_fsm|s_counter[2]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter[2]~16_combout\,
	datac => \timeraux_fsm|s_counter[2]~_emulated_q\,
	combout => \timeraux_fsm|s_counter[2]~18_combout\);

-- Location: LCCOMB_X73_Y41_N6
\timeraux_fsm|s_counter[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[2]~17_combout\ = (!\key1_debounce|s_pulsedOut~q\ & ((\timeraux_fsm|s_active~7_combout\ & ((!\timeraux_fsm|Add0~16_combout\))) # (!\timeraux_fsm|s_active~7_combout\ & (\timeraux_fsm|s_counter[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_active~7_combout\,
	datab => \key1_debounce|s_pulsedOut~q\,
	datac => \timeraux_fsm|s_counter[2]~18_combout\,
	datad => \timeraux_fsm|Add0~16_combout\,
	combout => \timeraux_fsm|s_counter[2]~17_combout\);

-- Location: LCCOMB_X75_Y41_N26
\timeraux_fsm|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add1~6_combout\ = (\timeraux_fsm|s_counter[3]~12_combout\ & (!\timeraux_fsm|Add1~5\)) # (!\timeraux_fsm|s_counter[3]~12_combout\ & (\timeraux_fsm|Add1~5\ & VCC))
-- \timeraux_fsm|Add1~7\ = CARRY((\timeraux_fsm|s_counter[3]~12_combout\ & !\timeraux_fsm|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter[3]~12_combout\,
	datad => VCC,
	cin => \timeraux_fsm|Add1~5\,
	combout => \timeraux_fsm|Add1~6_combout\,
	cout => \timeraux_fsm|Add1~7\);

-- Location: LCCOMB_X74_Y41_N20
\timeraux_fsm|s_counter[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[3]~14_combout\ = \timeraux_fsm|s_counter[3]~11_combout\ $ (!\timeraux_fsm|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeraux_fsm|s_counter[3]~11_combout\,
	datad => \timeraux_fsm|Add1~6_combout\,
	combout => \timeraux_fsm|s_counter[3]~14_combout\);

-- Location: FF_X74_Y41_N21
\timeraux_fsm|s_counter[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \timeraux_fsm|s_counter[3]~14_combout\,
	clrn => \timeraux_fsm|ALT_INV_s_timeExp~0_combout\,
	ena => \timeraux_fsm|s_active~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_counter[3]~_emulated_q\);

-- Location: LCCOMB_X74_Y41_N12
\timeraux_fsm|s_counter[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[3]~13_combout\ = \timeraux_fsm|s_counter[3]~_emulated_q\ $ (\timeraux_fsm|s_counter[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter[3]~_emulated_q\,
	datac => \timeraux_fsm|s_counter[3]~11_combout\,
	combout => \timeraux_fsm|s_counter[3]~13_combout\);

-- Location: LCCOMB_X74_Y41_N14
\timeraux_fsm|s_counter[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[3]~12_combout\ = (!\key1_debounce|s_pulsedOut~q\ & ((\timeraux_fsm|s_active~7_combout\ & ((\timeraux_fsm|Add0~15_combout\))) # (!\timeraux_fsm|s_active~7_combout\ & (\timeraux_fsm|s_counter[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter[3]~13_combout\,
	datab => \timeraux_fsm|Add0~15_combout\,
	datac => \timeraux_fsm|s_active~7_combout\,
	datad => \key1_debounce|s_pulsedOut~q\,
	combout => \timeraux_fsm|s_counter[3]~12_combout\);

-- Location: LCCOMB_X76_Y41_N8
\timeraux_fsm|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~9_combout\ = (\rnd_gen|state\(4) & ((GND) # (!\timeraux_fsm|Add0~8\))) # (!\rnd_gen|state\(4) & (\timeraux_fsm|Add0~8\ $ (GND)))
-- \timeraux_fsm|Add0~10\ = CARRY((\rnd_gen|state\(4)) # (!\timeraux_fsm|Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_gen|state\(4),
	datad => VCC,
	cin => \timeraux_fsm|Add0~8\,
	combout => \timeraux_fsm|Add0~9_combout\,
	cout => \timeraux_fsm|Add0~10\);

-- Location: LCCOMB_X76_Y41_N10
\timeraux_fsm|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~11_combout\ = \timeraux_fsm|Add0~10\ $ (\rnd_gen|state\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rnd_gen|state\(5),
	cin => \timeraux_fsm|Add0~10\,
	combout => \timeraux_fsm|Add0~11_combout\);

-- Location: LCCOMB_X76_Y41_N12
\timeraux_fsm|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~13_combout\ = (\SW[0]~input_o\) # ((\timeraux_fsm|process_0~1_combout\ & ((\timeraux_fsm|s_counter[5]~2_combout\))) # (!\timeraux_fsm|process_0~1_combout\ & (!\timeraux_fsm|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \timeraux_fsm|Add0~11_combout\,
	datac => \timeraux_fsm|s_counter[5]~2_combout\,
	datad => \timeraux_fsm|process_0~1_combout\,
	combout => \timeraux_fsm|Add0~13_combout\);

-- Location: LCCOMB_X76_Y41_N22
\timeraux_fsm|s_counter[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[5]~1_combout\ = (!\key1_debounce|s_pulsedOut~q\ & ((GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & (\timeraux_fsm|Add0~13_combout\)) # (!GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & 
-- ((\timeraux_fsm|s_counter[5]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|Add0~13_combout\,
	datab => \key1_debounce|s_pulsedOut~q\,
	datac => \timeraux_fsm|s_counter[5]~1_combout\,
	datad => \timeraux_fsm|s_active~7clkctrl_outclk\,
	combout => \timeraux_fsm|s_counter[5]~1_combout\);

-- Location: LCCOMB_X73_Y41_N30
\timeraux_fsm|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add0~14_combout\ = (\SW[0]~input_o\) # ((\timeraux_fsm|process_0~1_combout\ & ((\timeraux_fsm|s_counter[4]~7_combout\))) # (!\timeraux_fsm|process_0~1_combout\ & (!\timeraux_fsm|Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|process_0~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \timeraux_fsm|Add0~9_combout\,
	datad => \timeraux_fsm|s_counter[4]~7_combout\,
	combout => \timeraux_fsm|Add0~14_combout\);

-- Location: LCCOMB_X73_Y41_N28
\timeraux_fsm|s_counter[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[4]~6_combout\ = (!\key1_debounce|s_pulsedOut~q\ & ((GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & ((\timeraux_fsm|Add0~14_combout\))) # (!GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & 
-- (\timeraux_fsm|s_counter[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_pulsedOut~q\,
	datab => \timeraux_fsm|s_counter[4]~6_combout\,
	datac => \timeraux_fsm|Add0~14_combout\,
	datad => \timeraux_fsm|s_active~7clkctrl_outclk\,
	combout => \timeraux_fsm|s_counter[4]~6_combout\);

-- Location: LCCOMB_X75_Y41_N28
\timeraux_fsm|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add1~8_combout\ = (\timeraux_fsm|s_counter[4]~7_combout\ & (\timeraux_fsm|Add1~7\ $ (GND))) # (!\timeraux_fsm|s_counter[4]~7_combout\ & ((GND) # (!\timeraux_fsm|Add1~7\)))
-- \timeraux_fsm|Add1~9\ = CARRY((!\timeraux_fsm|Add1~7\) # (!\timeraux_fsm|s_counter[4]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter[4]~7_combout\,
	datad => VCC,
	cin => \timeraux_fsm|Add1~7\,
	combout => \timeraux_fsm|Add1~8_combout\,
	cout => \timeraux_fsm|Add1~9\);

-- Location: LCCOMB_X73_Y41_N12
\timeraux_fsm|s_counter[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[4]~9_combout\ = \timeraux_fsm|s_counter[4]~6_combout\ $ (!\timeraux_fsm|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_counter[4]~6_combout\,
	datad => \timeraux_fsm|Add1~8_combout\,
	combout => \timeraux_fsm|s_counter[4]~9_combout\);

-- Location: FF_X73_Y41_N13
\timeraux_fsm|s_counter[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \timeraux_fsm|s_counter[4]~9_combout\,
	clrn => \timeraux_fsm|ALT_INV_s_timeExp~0_combout\,
	ena => \timeraux_fsm|s_active~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_counter[4]~_emulated_q\);

-- Location: LCCOMB_X73_Y41_N22
\timeraux_fsm|s_counter[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[4]~8_combout\ = \timeraux_fsm|s_counter[4]~_emulated_q\ $ (\timeraux_fsm|s_counter[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter[4]~_emulated_q\,
	datad => \timeraux_fsm|s_counter[4]~6_combout\,
	combout => \timeraux_fsm|s_counter[4]~8_combout\);

-- Location: LCCOMB_X73_Y41_N24
\timeraux_fsm|s_counter[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[4]~7_combout\ = (!\key1_debounce|s_pulsedOut~q\ & ((\timeraux_fsm|s_active~7_combout\ & ((\timeraux_fsm|Add0~14_combout\))) # (!\timeraux_fsm|s_active~7_combout\ & (\timeraux_fsm|s_counter[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter[4]~8_combout\,
	datab => \timeraux_fsm|s_active~7_combout\,
	datac => \timeraux_fsm|Add0~14_combout\,
	datad => \key1_debounce|s_pulsedOut~q\,
	combout => \timeraux_fsm|s_counter[4]~7_combout\);

-- Location: LCCOMB_X75_Y41_N30
\timeraux_fsm|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Add1~10_combout\ = \timeraux_fsm|Add1~9\ $ (\timeraux_fsm|s_counter[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timeraux_fsm|s_counter[5]~2_combout\,
	cin => \timeraux_fsm|Add1~9\,
	combout => \timeraux_fsm|Add1~10_combout\);

-- Location: LCCOMB_X75_Y41_N0
\timeraux_fsm|s_counter[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[5]~4_combout\ = \timeraux_fsm|s_counter[5]~1_combout\ $ (!\timeraux_fsm|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter[5]~1_combout\,
	datac => \timeraux_fsm|Add1~10_combout\,
	combout => \timeraux_fsm|s_counter[5]~4_combout\);

-- Location: FF_X75_Y41_N1
\timeraux_fsm|s_counter[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \timeraux_fsm|s_counter[5]~4_combout\,
	clrn => \timeraux_fsm|ALT_INV_s_timeExp~0_combout\,
	ena => \timeraux_fsm|s_active~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_counter[5]~_emulated_q\);

-- Location: LCCOMB_X74_Y41_N8
\timeraux_fsm|s_counter[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[5]~3_combout\ = \timeraux_fsm|s_counter[5]~_emulated_q\ $ (\timeraux_fsm|s_counter[5]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeraux_fsm|s_counter[5]~_emulated_q\,
	datad => \timeraux_fsm|s_counter[5]~1_combout\,
	combout => \timeraux_fsm|s_counter[5]~3_combout\);

-- Location: LCCOMB_X74_Y41_N4
\timeraux_fsm|s_counter[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_counter[5]~2_combout\ = (!\key1_debounce|s_pulsedOut~q\ & ((\timeraux_fsm|s_active~7_combout\ & (\timeraux_fsm|Add0~13_combout\)) # (!\timeraux_fsm|s_active~7_combout\ & ((\timeraux_fsm|s_counter[5]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_pulsedOut~q\,
	datab => \timeraux_fsm|s_active~7_combout\,
	datac => \timeraux_fsm|Add0~13_combout\,
	datad => \timeraux_fsm|s_counter[5]~3_combout\,
	combout => \timeraux_fsm|s_counter[5]~2_combout\);

-- Location: LCCOMB_X74_Y41_N16
\timeraux_fsm|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|Equal0~0_combout\ = (\timeraux_fsm|s_counter[3]~12_combout\ & (\timeraux_fsm|s_counter[5]~2_combout\ & (\timeraux_fsm|s_counter[2]~17_combout\ & \timeraux_fsm|s_counter[4]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_counter[3]~12_combout\,
	datab => \timeraux_fsm|s_counter[5]~2_combout\,
	datac => \timeraux_fsm|s_counter[2]~17_combout\,
	datad => \timeraux_fsm|s_counter[4]~7_combout\,
	combout => \timeraux_fsm|Equal0~0_combout\);

-- Location: LCCOMB_X74_Y41_N18
\timeraux_fsm|s_active~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_active~8_combout\ = (\timeraux_fsm|s_active~2_combout\ & ((\timeraux_fsm|s_counter[0]~27_combout\) # ((!\timeraux_fsm|Equal0~0_combout\) # (!\timeraux_fsm|s_counter[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_active~2_combout\,
	datab => \timeraux_fsm|s_counter[0]~27_combout\,
	datac => \timeraux_fsm|s_counter[1]~22_combout\,
	datad => \timeraux_fsm|Equal0~0_combout\,
	combout => \timeraux_fsm|s_active~8_combout\);

-- Location: LCCOMB_X74_Y41_N28
\timeraux_fsm|s_active~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_active~4_combout\ = \timeraux_fsm|s_active~1_combout\ $ (\timeraux_fsm|s_active~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeraux_fsm|s_active~1_combout\,
	datad => \timeraux_fsm|s_active~8_combout\,
	combout => \timeraux_fsm|s_active~4_combout\);

-- Location: FF_X74_Y41_N29
\timeraux_fsm|s_active~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~q\,
	d => \timeraux_fsm|s_active~4_combout\,
	clrn => \timeraux_fsm|ALT_INV_s_timeExp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_active~_emulated_q\);

-- Location: LCCOMB_X76_Y41_N14
\timeraux_fsm|s_active~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_active~3_combout\ = \timeraux_fsm|s_active~_emulated_q\ $ (\timeraux_fsm|s_active~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_active~_emulated_q\,
	datad => \timeraux_fsm|s_active~1_combout\,
	combout => \timeraux_fsm|s_active~3_combout\);

-- Location: LCCOMB_X76_Y41_N20
\timeraux_fsm|s_active~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_active~2_combout\ = (!\key1_debounce|s_pulsedOut~q\ & ((\timeraux_fsm|s_active~7_combout\ & (\timeraux_fsm|Add0~0_combout\)) # (!\timeraux_fsm|s_active~7_combout\ & ((\timeraux_fsm|s_active~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|Add0~0_combout\,
	datab => \key1_debounce|s_pulsedOut~q\,
	datac => \timeraux_fsm|s_active~3_combout\,
	datad => \timeraux_fsm|s_active~7_combout\,
	combout => \timeraux_fsm|s_active~2_combout\);

-- Location: LCCOMB_X75_Y40_N10
\main_fsm|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector1~0_combout\ = (\main_fsm|PS.B~q\ & ((\ledcounter_fsm|s_currentState.E~q\) # ((\main_fsm|PS.C~q\ & !\timeraux_fsm|s_active~2_combout\)))) # (!\main_fsm|PS.B~q\ & (((\main_fsm|PS.C~q\ & !\timeraux_fsm|s_active~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.B~q\,
	datab => \ledcounter_fsm|s_currentState.E~q\,
	datac => \main_fsm|PS.C~q\,
	datad => \timeraux_fsm|s_active~2_combout\,
	combout => \main_fsm|Selector1~0_combout\);

-- Location: FF_X75_Y40_N11
\main_fsm|PS.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \main_fsm|Selector1~0_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|PS.C~q\);

-- Location: LCCOMB_X75_Y41_N2
\timeraux_fsm|s_timeExp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_timeExp~8_combout\ = (!\timeraux_fsm|Add0~0_combout\ & \timeraux_fsm|s_timeExp~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|Add0~0_combout\,
	datad => \timeraux_fsm|s_timeExp~2_combout\,
	combout => \timeraux_fsm|s_timeExp~8_combout\);

-- Location: LCCOMB_X75_Y41_N14
\timeraux_fsm|s_timeExp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_timeExp~1_combout\ = (!\key1_debounce|s_pulsedOut~q\ & ((GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & (\timeraux_fsm|s_timeExp~8_combout\)) # (!GLOBAL(\timeraux_fsm|s_active~7clkctrl_outclk\) & 
-- ((\timeraux_fsm|s_timeExp~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_pulsedOut~q\,
	datab => \timeraux_fsm|s_timeExp~8_combout\,
	datac => \timeraux_fsm|s_timeExp~1_combout\,
	datad => \timeraux_fsm|s_active~7clkctrl_outclk\,
	combout => \timeraux_fsm|s_timeExp~1_combout\);

-- Location: LCCOMB_X75_Y41_N4
\timeraux_fsm|s_timeExp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_timeExp~4_combout\ = \timeraux_fsm|s_timeExp~1_combout\ $ (((\timeraux_fsm|s_counter[1]~22_combout\ & (!\timeraux_fsm|s_counter[0]~27_combout\ & \timeraux_fsm|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeraux_fsm|s_timeExp~1_combout\,
	datab => \timeraux_fsm|s_counter[1]~22_combout\,
	datac => \timeraux_fsm|s_counter[0]~27_combout\,
	datad => \timeraux_fsm|Equal0~0_combout\,
	combout => \timeraux_fsm|s_timeExp~4_combout\);

-- Location: FF_X75_Y41_N5
\timeraux_fsm|s_timeExp~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \timeraux_fsm|s_timeExp~4_combout\,
	clrn => \timeraux_fsm|ALT_INV_s_timeExp~0_combout\,
	ena => \timeraux_fsm|s_active~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeraux_fsm|s_timeExp~_emulated_q\);

-- Location: LCCOMB_X75_Y41_N10
\timeraux_fsm|s_timeExp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_timeExp~3_combout\ = \timeraux_fsm|s_timeExp~1_combout\ $ (\timeraux_fsm|s_timeExp~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeraux_fsm|s_timeExp~1_combout\,
	datac => \timeraux_fsm|s_timeExp~_emulated_q\,
	combout => \timeraux_fsm|s_timeExp~3_combout\);

-- Location: LCCOMB_X75_Y41_N8
\timeraux_fsm|s_timeExp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeraux_fsm|s_timeExp~2_combout\ = (!\key1_debounce|s_pulsedOut~q\ & ((\timeraux_fsm|s_active~7_combout\ & ((\timeraux_fsm|s_timeExp~8_combout\))) # (!\timeraux_fsm|s_active~7_combout\ & (\timeraux_fsm|s_timeExp~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1_debounce|s_pulsedOut~q\,
	datab => \timeraux_fsm|s_active~7_combout\,
	datac => \timeraux_fsm|s_timeExp~3_combout\,
	datad => \timeraux_fsm|s_timeExp~8_combout\,
	combout => \timeraux_fsm|s_timeExp~2_combout\);

-- Location: LCCOMB_X75_Y41_N18
\main_fsm|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector2~0_combout\ = (\main_fsm|PS.D~q\ & (!\timeraux_fsm|s_timeExp~2_combout\ & !\key0_debounce|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.D~q\,
	datac => \timeraux_fsm|s_timeExp~2_combout\,
	datad => \key0_debounce|s_pulsedOut~q\,
	combout => \main_fsm|Selector2~0_combout\);

-- Location: LCCOMB_X75_Y41_N6
\main_fsm|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector2~1_combout\ = (\main_fsm|Selector2~0_combout\) # ((\main_fsm|PS.C~q\ & \timeraux_fsm|s_active~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.C~q\,
	datab => \timeraux_fsm|s_active~2_combout\,
	datad => \main_fsm|Selector2~0_combout\,
	combout => \main_fsm|Selector2~1_combout\);

-- Location: FF_X75_Y41_N7
\main_fsm|PS.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \main_fsm|Selector2~1_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|PS.D~q\);

-- Location: LCCOMB_X101_Y42_N8
\main_fsm|PS.E~_Duplicate_1feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|PS.E~_Duplicate_1feeder_combout\ = \main_fsm|Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|Selector3~0_combout\,
	combout => \main_fsm|PS.E~_Duplicate_1feeder_combout\);

-- Location: FF_X101_Y42_N9
\main_fsm|PS.E~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \main_fsm|PS.E~_Duplicate_1feeder_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|PS.E~_Duplicate_1_q\);

-- Location: LCCOMB_X75_Y41_N12
\main_fsm|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|Selector3~0_combout\ = (\main_fsm|PS.D~q\ & ((\timeraux_fsm|s_timeExp~2_combout\) # ((\main_fsm|PS.E~_Duplicate_1_q\ & !\key0_debounce|s_pulsedOut~q\)))) # (!\main_fsm|PS.D~q\ & (\main_fsm|PS.E~_Duplicate_1_q\ & 
-- ((!\key0_debounce|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.D~q\,
	datab => \main_fsm|PS.E~_Duplicate_1_q\,
	datac => \timeraux_fsm|s_timeExp~2_combout\,
	datad => \key0_debounce|s_pulsedOut~q\,
	combout => \main_fsm|Selector3~0_combout\);

-- Location: DDIOOUTCELL_X107_Y73_N11
\main_fsm|PS.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \main_fsm|Selector3~0_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|PS.E~q\);

-- Location: LCCOMB_X97_Y44_N8
\main_fsm|PS.G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|PS.G~0_combout\ = (\main_fsm|PS.G~q\) # ((\main_fsm|PS.E~_Duplicate_1_q\ & \key0_debounce|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datac => \key0_debounce|s_pulsedOut~q\,
	datad => \main_fsm|PS.G~q\,
	combout => \main_fsm|PS.G~0_combout\);

-- Location: LCCOMB_X97_Y44_N28
\main_fsm|PS.G~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|PS.G~feeder_combout\ = \main_fsm|PS.G~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|PS.G~0_combout\,
	combout => \main_fsm|PS.G~feeder_combout\);

-- Location: FF_X97_Y44_N29
\main_fsm|PS.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \main_fsm|PS.G~feeder_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|PS.G~q\);

-- Location: LCCOMB_X75_Y41_N16
\main_fsm|PS.F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_fsm|PS.F~0_combout\ = (\main_fsm|PS.F~q\) # ((\main_fsm|PS.D~q\ & (!\timeraux_fsm|s_timeExp~2_combout\ & \key0_debounce|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.D~q\,
	datab => \timeraux_fsm|s_timeExp~2_combout\,
	datac => \main_fsm|PS.F~q\,
	datad => \key0_debounce|s_pulsedOut~q\,
	combout => \main_fsm|PS.F~0_combout\);

-- Location: FF_X75_Y41_N17
\main_fsm|PS.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \main_fsm|PS.F~0_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|PS.F~q\);

-- Location: LCCOMB_X35_Y52_N2
\clkdivider_10000hz|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~1_cout\ = CARRY((\clkdivider_1hz|s_counter\(1) & \clkdivider_1hz|s_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(1),
	datab => \clkdivider_1hz|s_counter\(0),
	datad => VCC,
	cout => \clkdivider_10000hz|Add0~1_cout\);

-- Location: LCCOMB_X35_Y52_N4
\clkdivider_10000hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~2_combout\ = (\clkdivider_10000hz|s_counter\(2) & (!\clkdivider_10000hz|Add0~1_cout\)) # (!\clkdivider_10000hz|s_counter\(2) & ((\clkdivider_10000hz|Add0~1_cout\) # (GND)))
-- \clkdivider_10000hz|Add0~3\ = CARRY((!\clkdivider_10000hz|Add0~1_cout\) # (!\clkdivider_10000hz|s_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(2),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~1_cout\,
	combout => \clkdivider_10000hz|Add0~2_combout\,
	cout => \clkdivider_10000hz|Add0~3\);

-- Location: FF_X35_Y52_N5
\clkdivider_10000hz|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(2));

-- Location: LCCOMB_X35_Y52_N6
\clkdivider_10000hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~4_combout\ = (\clkdivider_10000hz|s_counter\(3) & (\clkdivider_10000hz|Add0~3\ $ (GND))) # (!\clkdivider_10000hz|s_counter\(3) & (!\clkdivider_10000hz|Add0~3\ & VCC))
-- \clkdivider_10000hz|Add0~5\ = CARRY((\clkdivider_10000hz|s_counter\(3) & !\clkdivider_10000hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(3),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~3\,
	combout => \clkdivider_10000hz|Add0~4_combout\,
	cout => \clkdivider_10000hz|Add0~5\);

-- Location: LCCOMB_X35_Y52_N0
\clkdivider_10000hz|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|s_counter~2_combout\ = (!\clkdivider_10000hz|Equal0~9_combout\ & \clkdivider_10000hz|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_10000hz|Equal0~9_combout\,
	datad => \clkdivider_10000hz|Add0~4_combout\,
	combout => \clkdivider_10000hz|s_counter~2_combout\);

-- Location: FF_X35_Y52_N1
\clkdivider_10000hz|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(3));

-- Location: LCCOMB_X35_Y52_N8
\clkdivider_10000hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~6_combout\ = (\clkdivider_10000hz|s_counter\(4) & (!\clkdivider_10000hz|Add0~5\)) # (!\clkdivider_10000hz|s_counter\(4) & ((\clkdivider_10000hz|Add0~5\) # (GND)))
-- \clkdivider_10000hz|Add0~7\ = CARRY((!\clkdivider_10000hz|Add0~5\) # (!\clkdivider_10000hz|s_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(4),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~5\,
	combout => \clkdivider_10000hz|Add0~6_combout\,
	cout => \clkdivider_10000hz|Add0~7\);

-- Location: FF_X35_Y52_N9
\clkdivider_10000hz|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(4));

-- Location: LCCOMB_X35_Y52_N10
\clkdivider_10000hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~8_combout\ = (\clkdivider_10000hz|s_counter\(5) & (\clkdivider_10000hz|Add0~7\ $ (GND))) # (!\clkdivider_10000hz|s_counter\(5) & (!\clkdivider_10000hz|Add0~7\ & VCC))
-- \clkdivider_10000hz|Add0~9\ = CARRY((\clkdivider_10000hz|s_counter\(5) & !\clkdivider_10000hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(5),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~7\,
	combout => \clkdivider_10000hz|Add0~8_combout\,
	cout => \clkdivider_10000hz|Add0~9\);

-- Location: FF_X35_Y52_N11
\clkdivider_10000hz|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(5));

-- Location: LCCOMB_X35_Y52_N12
\clkdivider_10000hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~10_combout\ = (\clkdivider_10000hz|s_counter\(6) & (!\clkdivider_10000hz|Add0~9\)) # (!\clkdivider_10000hz|s_counter\(6) & ((\clkdivider_10000hz|Add0~9\) # (GND)))
-- \clkdivider_10000hz|Add0~11\ = CARRY((!\clkdivider_10000hz|Add0~9\) # (!\clkdivider_10000hz|s_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(6),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~9\,
	combout => \clkdivider_10000hz|Add0~10_combout\,
	cout => \clkdivider_10000hz|Add0~11\);

-- Location: FF_X35_Y52_N13
\clkdivider_10000hz|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(6));

-- Location: LCCOMB_X35_Y52_N14
\clkdivider_10000hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~12_combout\ = (\clkdivider_10000hz|s_counter\(7) & (\clkdivider_10000hz|Add0~11\ $ (GND))) # (!\clkdivider_10000hz|s_counter\(7) & (!\clkdivider_10000hz|Add0~11\ & VCC))
-- \clkdivider_10000hz|Add0~13\ = CARRY((\clkdivider_10000hz|s_counter\(7) & !\clkdivider_10000hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(7),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~11\,
	combout => \clkdivider_10000hz|Add0~12_combout\,
	cout => \clkdivider_10000hz|Add0~13\);

-- Location: LCCOMB_X36_Y52_N28
\clkdivider_10000hz|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|s_counter~0_combout\ = (!\clkdivider_10000hz|Equal0~9_combout\ & \clkdivider_10000hz|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|Equal0~9_combout\,
	datad => \clkdivider_10000hz|Add0~12_combout\,
	combout => \clkdivider_10000hz|s_counter~0_combout\);

-- Location: FF_X36_Y52_N29
\clkdivider_10000hz|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(7));

-- Location: LCCOMB_X35_Y52_N16
\clkdivider_10000hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~14_combout\ = (\clkdivider_10000hz|s_counter\(8) & (!\clkdivider_10000hz|Add0~13\)) # (!\clkdivider_10000hz|s_counter\(8) & ((\clkdivider_10000hz|Add0~13\) # (GND)))
-- \clkdivider_10000hz|Add0~15\ = CARRY((!\clkdivider_10000hz|Add0~13\) # (!\clkdivider_10000hz|s_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(8),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~13\,
	combout => \clkdivider_10000hz|Add0~14_combout\,
	cout => \clkdivider_10000hz|Add0~15\);

-- Location: LCCOMB_X36_Y52_N4
\clkdivider_10000hz|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|s_counter~1_combout\ = (\clkdivider_10000hz|Add0~14_combout\ & !\clkdivider_10000hz|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_10000hz|Add0~14_combout\,
	datad => \clkdivider_10000hz|Equal0~9_combout\,
	combout => \clkdivider_10000hz|s_counter~1_combout\);

-- Location: FF_X36_Y52_N5
\clkdivider_10000hz|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(8));

-- Location: LCCOMB_X35_Y52_N18
\clkdivider_10000hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~16_combout\ = (\clkdivider_10000hz|s_counter\(9) & (\clkdivider_10000hz|Add0~15\ $ (GND))) # (!\clkdivider_10000hz|s_counter\(9) & (!\clkdivider_10000hz|Add0~15\ & VCC))
-- \clkdivider_10000hz|Add0~17\ = CARRY((\clkdivider_10000hz|s_counter\(9) & !\clkdivider_10000hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(9),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~15\,
	combout => \clkdivider_10000hz|Add0~16_combout\,
	cout => \clkdivider_10000hz|Add0~17\);

-- Location: LCCOMB_X36_Y52_N6
\clkdivider_10000hz|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|s_counter~3_combout\ = (!\clkdivider_10000hz|Equal0~9_combout\ & \clkdivider_10000hz|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|Equal0~9_combout\,
	datac => \clkdivider_10000hz|Add0~16_combout\,
	combout => \clkdivider_10000hz|s_counter~3_combout\);

-- Location: FF_X36_Y52_N7
\clkdivider_10000hz|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(9));

-- Location: LCCOMB_X35_Y52_N20
\clkdivider_10000hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~18_combout\ = (\clkdivider_10000hz|s_counter\(10) & (!\clkdivider_10000hz|Add0~17\)) # (!\clkdivider_10000hz|s_counter\(10) & ((\clkdivider_10000hz|Add0~17\) # (GND)))
-- \clkdivider_10000hz|Add0~19\ = CARRY((!\clkdivider_10000hz|Add0~17\) # (!\clkdivider_10000hz|s_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(10),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~17\,
	combout => \clkdivider_10000hz|Add0~18_combout\,
	cout => \clkdivider_10000hz|Add0~19\);

-- Location: FF_X35_Y52_N21
\clkdivider_10000hz|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(10));

-- Location: LCCOMB_X35_Y52_N22
\clkdivider_10000hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~20_combout\ = (\clkdivider_10000hz|s_counter\(11) & (\clkdivider_10000hz|Add0~19\ $ (GND))) # (!\clkdivider_10000hz|s_counter\(11) & (!\clkdivider_10000hz|Add0~19\ & VCC))
-- \clkdivider_10000hz|Add0~21\ = CARRY((\clkdivider_10000hz|s_counter\(11) & !\clkdivider_10000hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(11),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~19\,
	combout => \clkdivider_10000hz|Add0~20_combout\,
	cout => \clkdivider_10000hz|Add0~21\);

-- Location: FF_X35_Y52_N23
\clkdivider_10000hz|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(11));

-- Location: LCCOMB_X35_Y52_N24
\clkdivider_10000hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~22_combout\ = (\clkdivider_10000hz|s_counter\(12) & (!\clkdivider_10000hz|Add0~21\)) # (!\clkdivider_10000hz|s_counter\(12) & ((\clkdivider_10000hz|Add0~21\) # (GND)))
-- \clkdivider_10000hz|Add0~23\ = CARRY((!\clkdivider_10000hz|Add0~21\) # (!\clkdivider_10000hz|s_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(12),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~21\,
	combout => \clkdivider_10000hz|Add0~22_combout\,
	cout => \clkdivider_10000hz|Add0~23\);

-- Location: LCCOMB_X36_Y52_N18
\clkdivider_10000hz|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|s_counter~4_combout\ = (!\clkdivider_10000hz|Equal0~9_combout\ & \clkdivider_10000hz|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|Equal0~9_combout\,
	datad => \clkdivider_10000hz|Add0~22_combout\,
	combout => \clkdivider_10000hz|s_counter~4_combout\);

-- Location: FF_X36_Y52_N19
\clkdivider_10000hz|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(12));

-- Location: LCCOMB_X35_Y52_N26
\clkdivider_10000hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~24_combout\ = (\clkdivider_10000hz|s_counter\(13) & (\clkdivider_10000hz|Add0~23\ $ (GND))) # (!\clkdivider_10000hz|s_counter\(13) & (!\clkdivider_10000hz|Add0~23\ & VCC))
-- \clkdivider_10000hz|Add0~25\ = CARRY((\clkdivider_10000hz|s_counter\(13) & !\clkdivider_10000hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(13),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~23\,
	combout => \clkdivider_10000hz|Add0~24_combout\,
	cout => \clkdivider_10000hz|Add0~25\);

-- Location: FF_X35_Y52_N27
\clkdivider_10000hz|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(13));

-- Location: LCCOMB_X35_Y52_N28
\clkdivider_10000hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~26_combout\ = (\clkdivider_10000hz|s_counter\(14) & (!\clkdivider_10000hz|Add0~25\)) # (!\clkdivider_10000hz|s_counter\(14) & ((\clkdivider_10000hz|Add0~25\) # (GND)))
-- \clkdivider_10000hz|Add0~27\ = CARRY((!\clkdivider_10000hz|Add0~25\) # (!\clkdivider_10000hz|s_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(14),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~25\,
	combout => \clkdivider_10000hz|Add0~26_combout\,
	cout => \clkdivider_10000hz|Add0~27\);

-- Location: FF_X35_Y52_N29
\clkdivider_10000hz|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(14));

-- Location: LCCOMB_X35_Y52_N30
\clkdivider_10000hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~28_combout\ = (\clkdivider_10000hz|s_counter\(15) & (\clkdivider_10000hz|Add0~27\ $ (GND))) # (!\clkdivider_10000hz|s_counter\(15) & (!\clkdivider_10000hz|Add0~27\ & VCC))
-- \clkdivider_10000hz|Add0~29\ = CARRY((\clkdivider_10000hz|s_counter\(15) & !\clkdivider_10000hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(15),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~27\,
	combout => \clkdivider_10000hz|Add0~28_combout\,
	cout => \clkdivider_10000hz|Add0~29\);

-- Location: FF_X35_Y52_N31
\clkdivider_10000hz|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(15));

-- Location: LCCOMB_X35_Y51_N0
\clkdivider_10000hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~30_combout\ = (\clkdivider_10000hz|s_counter\(16) & (!\clkdivider_10000hz|Add0~29\)) # (!\clkdivider_10000hz|s_counter\(16) & ((\clkdivider_10000hz|Add0~29\) # (GND)))
-- \clkdivider_10000hz|Add0~31\ = CARRY((!\clkdivider_10000hz|Add0~29\) # (!\clkdivider_10000hz|s_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(16),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~29\,
	combout => \clkdivider_10000hz|Add0~30_combout\,
	cout => \clkdivider_10000hz|Add0~31\);

-- Location: FF_X35_Y51_N1
\clkdivider_10000hz|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(16));

-- Location: LCCOMB_X35_Y51_N2
\clkdivider_10000hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~32_combout\ = (\clkdivider_10000hz|s_counter\(17) & (\clkdivider_10000hz|Add0~31\ $ (GND))) # (!\clkdivider_10000hz|s_counter\(17) & (!\clkdivider_10000hz|Add0~31\ & VCC))
-- \clkdivider_10000hz|Add0~33\ = CARRY((\clkdivider_10000hz|s_counter\(17) & !\clkdivider_10000hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(17),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~31\,
	combout => \clkdivider_10000hz|Add0~32_combout\,
	cout => \clkdivider_10000hz|Add0~33\);

-- Location: FF_X35_Y51_N3
\clkdivider_10000hz|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(17));

-- Location: LCCOMB_X35_Y51_N4
\clkdivider_10000hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~34_combout\ = (\clkdivider_10000hz|s_counter\(18) & (!\clkdivider_10000hz|Add0~33\)) # (!\clkdivider_10000hz|s_counter\(18) & ((\clkdivider_10000hz|Add0~33\) # (GND)))
-- \clkdivider_10000hz|Add0~35\ = CARRY((!\clkdivider_10000hz|Add0~33\) # (!\clkdivider_10000hz|s_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(18),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~33\,
	combout => \clkdivider_10000hz|Add0~34_combout\,
	cout => \clkdivider_10000hz|Add0~35\);

-- Location: FF_X35_Y51_N5
\clkdivider_10000hz|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(18));

-- Location: LCCOMB_X35_Y51_N6
\clkdivider_10000hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~36_combout\ = (\clkdivider_10000hz|s_counter\(19) & (\clkdivider_10000hz|Add0~35\ $ (GND))) # (!\clkdivider_10000hz|s_counter\(19) & (!\clkdivider_10000hz|Add0~35\ & VCC))
-- \clkdivider_10000hz|Add0~37\ = CARRY((\clkdivider_10000hz|s_counter\(19) & !\clkdivider_10000hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(19),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~35\,
	combout => \clkdivider_10000hz|Add0~36_combout\,
	cout => \clkdivider_10000hz|Add0~37\);

-- Location: FF_X35_Y51_N7
\clkdivider_10000hz|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(19));

-- Location: LCCOMB_X35_Y51_N8
\clkdivider_10000hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~38_combout\ = (\clkdivider_10000hz|s_counter\(20) & (!\clkdivider_10000hz|Add0~37\)) # (!\clkdivider_10000hz|s_counter\(20) & ((\clkdivider_10000hz|Add0~37\) # (GND)))
-- \clkdivider_10000hz|Add0~39\ = CARRY((!\clkdivider_10000hz|Add0~37\) # (!\clkdivider_10000hz|s_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(20),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~37\,
	combout => \clkdivider_10000hz|Add0~38_combout\,
	cout => \clkdivider_10000hz|Add0~39\);

-- Location: FF_X35_Y51_N9
\clkdivider_10000hz|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(20));

-- Location: LCCOMB_X35_Y51_N30
\clkdivider_10000hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Equal0~3_combout\ = (!\clkdivider_10000hz|s_counter\(19) & (!\clkdivider_10000hz|s_counter\(20) & (!\clkdivider_10000hz|s_counter\(18) & !\clkdivider_10000hz|s_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(19),
	datab => \clkdivider_10000hz|s_counter\(20),
	datac => \clkdivider_10000hz|s_counter\(18),
	datad => \clkdivider_10000hz|s_counter\(17),
	combout => \clkdivider_10000hz|Equal0~3_combout\);

-- Location: LCCOMB_X36_Y52_N16
\clkdivider_10000hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Equal0~1_combout\ = (\clkdivider_10000hz|s_counter\(7) & (!\clkdivider_10000hz|s_counter\(10) & (!\clkdivider_10000hz|s_counter\(3) & \clkdivider_10000hz|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(7),
	datab => \clkdivider_10000hz|s_counter\(10),
	datac => \clkdivider_10000hz|s_counter\(3),
	datad => \clkdivider_10000hz|s_counter\(8),
	combout => \clkdivider_10000hz|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y52_N8
\clkdivider_10000hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Equal0~2_combout\ = (!\clkdivider_10000hz|s_counter\(13) & (!\clkdivider_10000hz|s_counter\(15) & (!\clkdivider_10000hz|s_counter\(16) & !\clkdivider_10000hz|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(13),
	datab => \clkdivider_10000hz|s_counter\(15),
	datac => \clkdivider_10000hz|s_counter\(16),
	datad => \clkdivider_10000hz|s_counter\(14),
	combout => \clkdivider_10000hz|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y52_N24
\clkdivider_10000hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Equal0~0_combout\ = (!\clkdivider_10000hz|s_counter\(4) & (\clkdivider_1hz|s_counter\(0) & (\clkdivider_1hz|s_counter\(1) & !\clkdivider_10000hz|s_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(4),
	datab => \clkdivider_1hz|s_counter\(0),
	datac => \clkdivider_1hz|s_counter\(1),
	datad => \clkdivider_10000hz|s_counter\(5),
	combout => \clkdivider_10000hz|Equal0~0_combout\);

-- Location: LCCOMB_X36_Y52_N12
\clkdivider_10000hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Equal0~4_combout\ = (\clkdivider_10000hz|Equal0~3_combout\ & (\clkdivider_10000hz|Equal0~1_combout\ & (\clkdivider_10000hz|Equal0~2_combout\ & \clkdivider_10000hz|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|Equal0~3_combout\,
	datab => \clkdivider_10000hz|Equal0~1_combout\,
	datac => \clkdivider_10000hz|Equal0~2_combout\,
	datad => \clkdivider_10000hz|Equal0~0_combout\,
	combout => \clkdivider_10000hz|Equal0~4_combout\);

-- Location: LCCOMB_X36_Y52_N14
\clkdivider_10000hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Equal0~8_combout\ = (!\clkdivider_10000hz|s_counter\(6) & (!\clkdivider_10000hz|s_counter\(11) & (\clkdivider_10000hz|s_counter\(2) & \clkdivider_10000hz|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(6),
	datab => \clkdivider_10000hz|s_counter\(11),
	datac => \clkdivider_10000hz|s_counter\(2),
	datad => \clkdivider_10000hz|s_counter\(9),
	combout => \clkdivider_10000hz|Equal0~8_combout\);

-- Location: LCCOMB_X35_Y51_N10
\clkdivider_10000hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~40_combout\ = (\clkdivider_10000hz|s_counter\(21) & (\clkdivider_10000hz|Add0~39\ $ (GND))) # (!\clkdivider_10000hz|s_counter\(21) & (!\clkdivider_10000hz|Add0~39\ & VCC))
-- \clkdivider_10000hz|Add0~41\ = CARRY((\clkdivider_10000hz|s_counter\(21) & !\clkdivider_10000hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(21),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~39\,
	combout => \clkdivider_10000hz|Add0~40_combout\,
	cout => \clkdivider_10000hz|Add0~41\);

-- Location: FF_X35_Y51_N11
\clkdivider_10000hz|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(21));

-- Location: LCCOMB_X35_Y51_N12
\clkdivider_10000hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~42_combout\ = (\clkdivider_10000hz|s_counter\(22) & (!\clkdivider_10000hz|Add0~41\)) # (!\clkdivider_10000hz|s_counter\(22) & ((\clkdivider_10000hz|Add0~41\) # (GND)))
-- \clkdivider_10000hz|Add0~43\ = CARRY((!\clkdivider_10000hz|Add0~41\) # (!\clkdivider_10000hz|s_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(22),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~41\,
	combout => \clkdivider_10000hz|Add0~42_combout\,
	cout => \clkdivider_10000hz|Add0~43\);

-- Location: FF_X35_Y51_N13
\clkdivider_10000hz|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(22));

-- Location: LCCOMB_X35_Y51_N14
\clkdivider_10000hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~44_combout\ = (\clkdivider_10000hz|s_counter\(23) & (\clkdivider_10000hz|Add0~43\ $ (GND))) # (!\clkdivider_10000hz|s_counter\(23) & (!\clkdivider_10000hz|Add0~43\ & VCC))
-- \clkdivider_10000hz|Add0~45\ = CARRY((\clkdivider_10000hz|s_counter\(23) & !\clkdivider_10000hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(23),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~43\,
	combout => \clkdivider_10000hz|Add0~44_combout\,
	cout => \clkdivider_10000hz|Add0~45\);

-- Location: FF_X35_Y51_N15
\clkdivider_10000hz|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(23));

-- Location: LCCOMB_X35_Y51_N16
\clkdivider_10000hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~46_combout\ = (\clkdivider_10000hz|s_counter\(24) & (!\clkdivider_10000hz|Add0~45\)) # (!\clkdivider_10000hz|s_counter\(24) & ((\clkdivider_10000hz|Add0~45\) # (GND)))
-- \clkdivider_10000hz|Add0~47\ = CARRY((!\clkdivider_10000hz|Add0~45\) # (!\clkdivider_10000hz|s_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(24),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~45\,
	combout => \clkdivider_10000hz|Add0~46_combout\,
	cout => \clkdivider_10000hz|Add0~47\);

-- Location: FF_X35_Y51_N17
\clkdivider_10000hz|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(24));

-- Location: LCCOMB_X35_Y51_N18
\clkdivider_10000hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~48_combout\ = (\clkdivider_10000hz|s_counter\(25) & (\clkdivider_10000hz|Add0~47\ $ (GND))) # (!\clkdivider_10000hz|s_counter\(25) & (!\clkdivider_10000hz|Add0~47\ & VCC))
-- \clkdivider_10000hz|Add0~49\ = CARRY((\clkdivider_10000hz|s_counter\(25) & !\clkdivider_10000hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(25),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~47\,
	combout => \clkdivider_10000hz|Add0~48_combout\,
	cout => \clkdivider_10000hz|Add0~49\);

-- Location: FF_X35_Y51_N19
\clkdivider_10000hz|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(25));

-- Location: LCCOMB_X35_Y51_N20
\clkdivider_10000hz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~50_combout\ = (\clkdivider_10000hz|s_counter\(26) & (!\clkdivider_10000hz|Add0~49\)) # (!\clkdivider_10000hz|s_counter\(26) & ((\clkdivider_10000hz|Add0~49\) # (GND)))
-- \clkdivider_10000hz|Add0~51\ = CARRY((!\clkdivider_10000hz|Add0~49\) # (!\clkdivider_10000hz|s_counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(26),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~49\,
	combout => \clkdivider_10000hz|Add0~50_combout\,
	cout => \clkdivider_10000hz|Add0~51\);

-- Location: FF_X35_Y51_N21
\clkdivider_10000hz|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(26));

-- Location: LCCOMB_X35_Y51_N22
\clkdivider_10000hz|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~52_combout\ = (\clkdivider_10000hz|s_counter\(27) & (\clkdivider_10000hz|Add0~51\ $ (GND))) # (!\clkdivider_10000hz|s_counter\(27) & (!\clkdivider_10000hz|Add0~51\ & VCC))
-- \clkdivider_10000hz|Add0~53\ = CARRY((\clkdivider_10000hz|s_counter\(27) & !\clkdivider_10000hz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(27),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~51\,
	combout => \clkdivider_10000hz|Add0~52_combout\,
	cout => \clkdivider_10000hz|Add0~53\);

-- Location: FF_X35_Y51_N23
\clkdivider_10000hz|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(27));

-- Location: LCCOMB_X35_Y51_N24
\clkdivider_10000hz|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~54_combout\ = (\clkdivider_10000hz|s_counter\(28) & (!\clkdivider_10000hz|Add0~53\)) # (!\clkdivider_10000hz|s_counter\(28) & ((\clkdivider_10000hz|Add0~53\) # (GND)))
-- \clkdivider_10000hz|Add0~55\ = CARRY((!\clkdivider_10000hz|Add0~53\) # (!\clkdivider_10000hz|s_counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|s_counter\(28),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~53\,
	combout => \clkdivider_10000hz|Add0~54_combout\,
	cout => \clkdivider_10000hz|Add0~55\);

-- Location: FF_X35_Y51_N25
\clkdivider_10000hz|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(28));

-- Location: LCCOMB_X35_Y51_N26
\clkdivider_10000hz|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~56_combout\ = (\clkdivider_10000hz|s_counter\(29) & (\clkdivider_10000hz|Add0~55\ $ (GND))) # (!\clkdivider_10000hz|s_counter\(29) & (!\clkdivider_10000hz|Add0~55\ & VCC))
-- \clkdivider_10000hz|Add0~57\ = CARRY((\clkdivider_10000hz|s_counter\(29) & !\clkdivider_10000hz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(29),
	datad => VCC,
	cin => \clkdivider_10000hz|Add0~55\,
	combout => \clkdivider_10000hz|Add0~56_combout\,
	cout => \clkdivider_10000hz|Add0~57\);

-- Location: FF_X35_Y51_N27
\clkdivider_10000hz|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(29));

-- Location: LCCOMB_X35_Y51_N28
\clkdivider_10000hz|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Add0~58_combout\ = \clkdivider_10000hz|Add0~57\ $ (\clkdivider_10000hz|s_counter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clkdivider_10000hz|s_counter\(30),
	cin => \clkdivider_10000hz|Add0~57\,
	combout => \clkdivider_10000hz|Add0~58_combout\);

-- Location: FF_X35_Y51_N29
\clkdivider_10000hz|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|s_counter\(30));

-- Location: LCCOMB_X36_Y51_N8
\clkdivider_10000hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Equal0~5_combout\ = (!\clkdivider_10000hz|s_counter\(22) & (!\clkdivider_10000hz|s_counter\(23) & (!\clkdivider_10000hz|s_counter\(24) & !\clkdivider_10000hz|s_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(22),
	datab => \clkdivider_10000hz|s_counter\(23),
	datac => \clkdivider_10000hz|s_counter\(24),
	datad => \clkdivider_10000hz|s_counter\(21),
	combout => \clkdivider_10000hz|Equal0~5_combout\);

-- Location: LCCOMB_X36_Y51_N18
\clkdivider_10000hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Equal0~6_combout\ = (!\clkdivider_10000hz|s_counter\(28) & (!\clkdivider_10000hz|s_counter\(26) & (!\clkdivider_10000hz|s_counter\(27) & !\clkdivider_10000hz|s_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(28),
	datab => \clkdivider_10000hz|s_counter\(26),
	datac => \clkdivider_10000hz|s_counter\(27),
	datad => \clkdivider_10000hz|s_counter\(25),
	combout => \clkdivider_10000hz|Equal0~6_combout\);

-- Location: LCCOMB_X36_Y51_N0
\clkdivider_10000hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Equal0~7_combout\ = (!\clkdivider_10000hz|s_counter\(29) & (!\clkdivider_10000hz|s_counter\(30) & (\clkdivider_10000hz|Equal0~5_combout\ & \clkdivider_10000hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(29),
	datab => \clkdivider_10000hz|s_counter\(30),
	datac => \clkdivider_10000hz|Equal0~5_combout\,
	datad => \clkdivider_10000hz|Equal0~6_combout\,
	combout => \clkdivider_10000hz|Equal0~7_combout\);

-- Location: LCCOMB_X36_Y52_N20
\clkdivider_10000hz|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|Equal0~9_combout\ = (\clkdivider_10000hz|Equal0~4_combout\ & (\clkdivider_10000hz|s_counter\(12) & (\clkdivider_10000hz|Equal0~8_combout\ & \clkdivider_10000hz|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|Equal0~4_combout\,
	datab => \clkdivider_10000hz|s_counter\(12),
	datac => \clkdivider_10000hz|Equal0~8_combout\,
	datad => \clkdivider_10000hz|Equal0~7_combout\,
	combout => \clkdivider_10000hz|Equal0~9_combout\);

-- Location: LCCOMB_X36_Y52_N30
\clkdivider_10000hz|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|clkOut~0_combout\ = (\clkdivider_10000hz|s_counter\(6) & (\clkdivider_10000hz|s_counter\(11) & (!\clkdivider_10000hz|s_counter\(2) & !\clkdivider_10000hz|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|s_counter\(6),
	datab => \clkdivider_10000hz|s_counter\(11),
	datac => \clkdivider_10000hz|s_counter\(2),
	datad => \clkdivider_10000hz|s_counter\(9),
	combout => \clkdivider_10000hz|clkOut~0_combout\);

-- Location: LCCOMB_X36_Y52_N26
\clkdivider_10000hz|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|clkOut~1_combout\ = (\clkdivider_10000hz|Equal0~4_combout\ & (!\clkdivider_10000hz|s_counter\(12) & (\clkdivider_10000hz|clkOut~0_combout\ & \clkdivider_10000hz|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|Equal0~4_combout\,
	datab => \clkdivider_10000hz|s_counter\(12),
	datac => \clkdivider_10000hz|clkOut~0_combout\,
	datad => \clkdivider_10000hz|Equal0~7_combout\,
	combout => \clkdivider_10000hz|clkOut~1_combout\);

-- Location: LCCOMB_X36_Y52_N22
\clkdivider_10000hz|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|clkOut~2_combout\ = (!\clkdivider_10000hz|Equal0~9_combout\ & ((\clkdivider_10000hz|clkOut~q\) # (\clkdivider_10000hz|clkOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_10000hz|clkOut~q\,
	datab => \clkdivider_10000hz|Equal0~9_combout\,
	datac => \clkdivider_10000hz|clkOut~1_combout\,
	combout => \clkdivider_10000hz|clkOut~2_combout\);

-- Location: LCCOMB_X36_Y52_N10
\clkdivider_10000hz|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_10000hz|clkOut~feeder_combout\ = \clkdivider_10000hz|clkOut~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_10000hz|clkOut~2_combout\,
	combout => \clkdivider_10000hz|clkOut~feeder_combout\);

-- Location: FF_X36_Y52_N11
\clkdivider_10000hz|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_10000hz|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_10000hz|clkOut~q\);

-- Location: CLKCTRL_G13
\clkdivider_10000hz|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkdivider_10000hz|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkdivider_10000hz|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X99_Y43_N28
\counter|s_count[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[0]~34_combout\ = !\counter|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(0),
	combout => \counter|s_count[0]~34_combout\);

-- Location: FF_X99_Y43_N29
\counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[0]~34_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \main_fsm|PS.E~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(0));

-- Location: LCCOMB_X100_Y43_N4
\hexdisplay|s_registerOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[0]~0_combout\ = (\main_fsm|PS.G~q\ & (((\counter|s_count\(0))))) # (!\main_fsm|PS.G~q\ & ((\main_fsm|PS.E~_Duplicate_1_q\ & ((\counter|s_count\(0)))) # (!\main_fsm|PS.E~_Duplicate_1_q\ & (\main_fsm|PS.F~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.G~q\,
	datab => \main_fsm|PS.E~_Duplicate_1_q\,
	datac => \main_fsm|PS.F~q\,
	datad => \counter|s_count\(0),
	combout => \hexdisplay|s_registerOut[0]~0_combout\);

-- Location: LCCOMB_X99_Y43_N18
\counter|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~2_combout\ = (\counter|s_count\(1) & (\counter|s_count\(3) $ (((\counter|s_count\(0) & \counter|s_count\(2)))))) # (!\counter|s_count\(1) & (\counter|s_count\(3) & ((\counter|s_count\(2)) # (!\counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(1),
	datab => \counter|s_count\(0),
	datac => \counter|s_count\(3),
	datad => \counter|s_count\(2),
	combout => \counter|s_count~2_combout\);

-- Location: FF_X99_Y43_N19
\counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~2_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \main_fsm|PS.E~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(3));

-- Location: LCCOMB_X99_Y43_N26
\counter|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~0_combout\ = (\counter|s_count\(0) & (!\counter|s_count\(1) & ((\counter|s_count\(2)) # (!\counter|s_count\(3))))) # (!\counter|s_count\(0) & (((\counter|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(3),
	datab => \counter|s_count\(0),
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(2),
	combout => \counter|s_count~0_combout\);

-- Location: FF_X99_Y43_N27
\counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~0_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \main_fsm|PS.E~_Duplicate_1_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(1));

-- Location: LCCOMB_X99_Y43_N30
\counter|s_count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[2]~1_combout\ = \counter|s_count\(2) $ (((\counter|s_count\(1) & (\main_fsm|PS.E~_Duplicate_1_q\ & \counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(1),
	datab => \main_fsm|PS.E~_Duplicate_1_q\,
	datac => \counter|s_count\(2),
	datad => \counter|s_count\(0),
	combout => \counter|s_count[2]~1_combout\);

-- Location: FF_X99_Y43_N31
\counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[2]~1_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(2));

-- Location: LCCOMB_X99_Y43_N24
\hexdisplay|s_registerOut[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[2]~2_combout\ = (\counter|s_count\(2)) # ((!\main_fsm|PS.E~_Duplicate_1_q\ & !\main_fsm|PS.G~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|PS.E~_Duplicate_1_q\,
	datac => \main_fsm|PS.G~q\,
	datad => \counter|s_count\(2),
	combout => \hexdisplay|s_registerOut[2]~2_combout\);

-- Location: LCCOMB_X99_Y43_N8
\hexdisplay|s_registerOut[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[1]~1_combout\ = (\counter|s_count\(1) & ((\main_fsm|PS.G~q\) # (\main_fsm|PS.E~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(1),
	datac => \main_fsm|PS.G~q\,
	datad => \main_fsm|PS.E~_Duplicate_1_q\,
	combout => \hexdisplay|s_registerOut[1]~1_combout\);

-- Location: LCCOMB_X99_Y43_N20
\hexdisplay|s_registerOut[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[3]~3_combout\ = (\counter|s_count\(3)) # ((!\main_fsm|PS.G~q\ & !\main_fsm|PS.E~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(3),
	datac => \main_fsm|PS.G~q\,
	datad => \main_fsm|PS.E~_Duplicate_1_q\,
	combout => \hexdisplay|s_registerOut[3]~3_combout\);

-- Location: LCCOMB_X99_Y43_N6
\hexdisplay|disp_0_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_0_decoder|Mux6~0_combout\ = (\hexdisplay|s_registerOut[1]~1_combout\ & (\hexdisplay|s_registerOut[3]~3_combout\ & ((\hexdisplay|s_registerOut[0]~0_combout\) # (!\hexdisplay|s_registerOut[2]~2_combout\)))) # 
-- (!\hexdisplay|s_registerOut[1]~1_combout\ & (\hexdisplay|s_registerOut[2]~2_combout\ $ (((\hexdisplay|s_registerOut[0]~0_combout\ & !\hexdisplay|s_registerOut[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[0]~0_combout\,
	datab => \hexdisplay|s_registerOut[2]~2_combout\,
	datac => \hexdisplay|s_registerOut[1]~1_combout\,
	datad => \hexdisplay|s_registerOut[3]~3_combout\,
	combout => \hexdisplay|disp_0_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X99_Y43_N4
\hexdisplay|disp_0_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_0_decoder|Mux5~0_combout\ = (\hexdisplay|s_registerOut[2]~2_combout\ & ((\hexdisplay|s_registerOut[3]~3_combout\) # (\hexdisplay|s_registerOut[0]~0_combout\ $ (\hexdisplay|s_registerOut[1]~1_combout\)))) # 
-- (!\hexdisplay|s_registerOut[2]~2_combout\ & (((\hexdisplay|s_registerOut[1]~1_combout\ & \hexdisplay|s_registerOut[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[0]~0_combout\,
	datab => \hexdisplay|s_registerOut[2]~2_combout\,
	datac => \hexdisplay|s_registerOut[1]~1_combout\,
	datad => \hexdisplay|s_registerOut[3]~3_combout\,
	combout => \hexdisplay|disp_0_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X99_Y43_N22
\hexdisplay|disp_0_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_0_decoder|Mux4~0_combout\ = (\hexdisplay|s_registerOut[0]~0_combout\ & (((\hexdisplay|s_registerOut[1]~1_combout\ & \hexdisplay|s_registerOut[3]~3_combout\)))) # (!\hexdisplay|s_registerOut[0]~0_combout\ & 
-- ((\hexdisplay|s_registerOut[2]~2_combout\ & ((\hexdisplay|s_registerOut[3]~3_combout\))) # (!\hexdisplay|s_registerOut[2]~2_combout\ & (\hexdisplay|s_registerOut[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[0]~0_combout\,
	datab => \hexdisplay|s_registerOut[2]~2_combout\,
	datac => \hexdisplay|s_registerOut[1]~1_combout\,
	datad => \hexdisplay|s_registerOut[3]~3_combout\,
	combout => \hexdisplay|disp_0_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X99_Y43_N16
\hexdisplay|disp_0_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_0_decoder|Mux3~0_combout\ = (\hexdisplay|s_registerOut[2]~2_combout\ & (\hexdisplay|s_registerOut[0]~0_combout\ $ ((!\hexdisplay|s_registerOut[1]~1_combout\)))) # (!\hexdisplay|s_registerOut[2]~2_combout\ & 
-- ((\hexdisplay|s_registerOut[1]~1_combout\ & ((\hexdisplay|s_registerOut[3]~3_combout\))) # (!\hexdisplay|s_registerOut[1]~1_combout\ & (\hexdisplay|s_registerOut[0]~0_combout\ & !\hexdisplay|s_registerOut[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[0]~0_combout\,
	datab => \hexdisplay|s_registerOut[2]~2_combout\,
	datac => \hexdisplay|s_registerOut[1]~1_combout\,
	datad => \hexdisplay|s_registerOut[3]~3_combout\,
	combout => \hexdisplay|disp_0_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X99_Y43_N14
\hexdisplay|disp_0_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_0_decoder|Mux2~0_combout\ = (\hexdisplay|s_registerOut[0]~0_combout\ & (((!\hexdisplay|s_registerOut[3]~3_combout\)) # (!\hexdisplay|s_registerOut[2]~2_combout\))) # (!\hexdisplay|s_registerOut[0]~0_combout\ & 
-- ((\hexdisplay|s_registerOut[2]~2_combout\ & (!\hexdisplay|s_registerOut[1]~1_combout\)) # (!\hexdisplay|s_registerOut[2]~2_combout\ & (\hexdisplay|s_registerOut[1]~1_combout\ & \hexdisplay|s_registerOut[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[0]~0_combout\,
	datab => \hexdisplay|s_registerOut[2]~2_combout\,
	datac => \hexdisplay|s_registerOut[1]~1_combout\,
	datad => \hexdisplay|s_registerOut[3]~3_combout\,
	combout => \hexdisplay|disp_0_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X99_Y43_N12
\hexdisplay|disp_0_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_0_decoder|Mux1~0_combout\ = (\hexdisplay|s_registerOut[2]~2_combout\ & ((\hexdisplay|s_registerOut[1]~1_combout\ & (\hexdisplay|s_registerOut[0]~0_combout\)) # (!\hexdisplay|s_registerOut[1]~1_combout\ & 
-- ((\hexdisplay|s_registerOut[3]~3_combout\))))) # (!\hexdisplay|s_registerOut[2]~2_combout\ & ((\hexdisplay|s_registerOut[1]~1_combout\) # ((\hexdisplay|s_registerOut[0]~0_combout\ & !\hexdisplay|s_registerOut[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[0]~0_combout\,
	datab => \hexdisplay|s_registerOut[2]~2_combout\,
	datac => \hexdisplay|s_registerOut[1]~1_combout\,
	datad => \hexdisplay|s_registerOut[3]~3_combout\,
	combout => \hexdisplay|disp_0_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X99_Y43_N10
\hexdisplay|disp_0_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_0_decoder|Mux0~0_combout\ = (\hexdisplay|s_registerOut[2]~2_combout\ & ((\hexdisplay|s_registerOut[0]~0_combout\ & ((\hexdisplay|s_registerOut[3]~3_combout\) # (!\hexdisplay|s_registerOut[1]~1_combout\))) # 
-- (!\hexdisplay|s_registerOut[0]~0_combout\ & ((\hexdisplay|s_registerOut[1]~1_combout\) # (!\hexdisplay|s_registerOut[3]~3_combout\))))) # (!\hexdisplay|s_registerOut[2]~2_combout\ & ((\hexdisplay|s_registerOut[1]~1_combout\ $ 
-- (\hexdisplay|s_registerOut[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[0]~0_combout\,
	datab => \hexdisplay|s_registerOut[2]~2_combout\,
	datac => \hexdisplay|s_registerOut[1]~1_combout\,
	datad => \hexdisplay|s_registerOut[3]~3_combout\,
	combout => \hexdisplay|disp_0_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X100_Y43_N10
\counter|s_count[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[4]~35_combout\ = !\counter|s_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(4),
	combout => \counter|s_count[4]~35_combout\);

-- Location: LCCOMB_X99_Y43_N0
\counter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Equal0~0_combout\ = (!\counter|s_count\(2) & (\counter|s_count\(0) & (!\counter|s_count\(1) & \counter|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(2),
	datab => \counter|s_count\(0),
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(3),
	combout => \counter|Equal0~0_combout\);

-- Location: LCCOMB_X100_Y43_N24
\counter|s_count[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[7]~3_combout\ = (\main_fsm|PS.E~_Duplicate_1_q\ & \counter|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|PS.E~_Duplicate_1_q\,
	datac => \counter|Equal0~0_combout\,
	combout => \counter|s_count[7]~3_combout\);

-- Location: FF_X100_Y43_N11
\counter|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[4]~35_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(4));

-- Location: LCCOMB_X100_Y43_N14
\counter|s_count[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[6]~5_combout\ = \counter|s_count\(6) $ (((\counter|s_count[7]~3_combout\ & (\counter|s_count\(4) & \counter|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count[7]~3_combout\,
	datab => \counter|s_count\(4),
	datac => \counter|s_count\(6),
	datad => \counter|s_count\(5),
	combout => \counter|s_count[6]~5_combout\);

-- Location: FF_X100_Y43_N15
\counter|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[6]~5_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(6));

-- Location: LCCOMB_X100_Y43_N22
\counter|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~6_combout\ = (\counter|s_count\(5) & (\counter|s_count\(7) $ (((\counter|s_count\(4) & \counter|s_count\(6)))))) # (!\counter|s_count\(5) & (\counter|s_count\(7) & ((\counter|s_count\(6)) # (!\counter|s_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(5),
	datab => \counter|s_count\(4),
	datac => \counter|s_count\(7),
	datad => \counter|s_count\(6),
	combout => \counter|s_count~6_combout\);

-- Location: FF_X100_Y43_N23
\counter|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~6_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(7));

-- Location: LCCOMB_X100_Y43_N6
\counter|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~4_combout\ = (\counter|s_count\(4) & (!\counter|s_count\(5) & ((\counter|s_count\(6)) # (!\counter|s_count\(7))))) # (!\counter|s_count\(4) & (((\counter|s_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(4),
	datab => \counter|s_count\(7),
	datac => \counter|s_count\(5),
	datad => \counter|s_count\(6),
	combout => \counter|s_count~4_combout\);

-- Location: FF_X100_Y43_N7
\counter|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~4_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(5));

-- Location: LCCOMB_X100_Y43_N20
\hexdisplay|s_registerOut[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[5]~5_combout\ = (\main_fsm|PS.E~_Duplicate_1_q\ & (((\counter|s_count\(5))))) # (!\main_fsm|PS.E~_Duplicate_1_q\ & ((\main_fsm|PS.G~q\ & ((\counter|s_count\(5)))) # (!\main_fsm|PS.G~q\ & (\main_fsm|PS.F~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.F~q\,
	datab => \main_fsm|PS.E~_Duplicate_1_q\,
	datac => \counter|s_count\(5),
	datad => \main_fsm|PS.G~q\,
	combout => \hexdisplay|s_registerOut[5]~5_combout\);

-- Location: LCCOMB_X100_Y43_N8
\hexdisplay|s_registerOut[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[4]~4_combout\ = (\main_fsm|PS.G~q\ & (\counter|s_count\(4))) # (!\main_fsm|PS.G~q\ & ((\main_fsm|PS.E~_Duplicate_1_q\ & (\counter|s_count\(4))) # (!\main_fsm|PS.E~_Duplicate_1_q\ & ((\main_fsm|PS.F~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.G~q\,
	datab => \counter|s_count\(4),
	datac => \main_fsm|PS.F~q\,
	datad => \main_fsm|PS.E~_Duplicate_1_q\,
	combout => \hexdisplay|s_registerOut[4]~4_combout\);

-- Location: LCCOMB_X100_Y43_N16
\hexdisplay|s_registerOut[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[7]~7_combout\ = (\counter|s_count\(7)) # ((!\main_fsm|PS.E~_Duplicate_1_q\ & !\main_fsm|PS.G~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(7),
	datac => \main_fsm|PS.E~_Duplicate_1_q\,
	datad => \main_fsm|PS.G~q\,
	combout => \hexdisplay|s_registerOut[7]~7_combout\);

-- Location: LCCOMB_X100_Y43_N28
\hexdisplay|s_registerOut[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[6]~6_combout\ = (\counter|s_count\(6)) # ((!\main_fsm|PS.E~_Duplicate_1_q\ & !\main_fsm|PS.G~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(6),
	datac => \main_fsm|PS.E~_Duplicate_1_q\,
	datad => \main_fsm|PS.G~q\,
	combout => \hexdisplay|s_registerOut[6]~6_combout\);

-- Location: LCCOMB_X114_Y41_N4
\hexdisplay|disp_1_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_1_decoder|Mux6~0_combout\ = (\hexdisplay|s_registerOut[5]~5_combout\ & (\hexdisplay|s_registerOut[7]~7_combout\ & ((\hexdisplay|s_registerOut[4]~4_combout\) # (!\hexdisplay|s_registerOut[6]~6_combout\)))) # 
-- (!\hexdisplay|s_registerOut[5]~5_combout\ & (\hexdisplay|s_registerOut[6]~6_combout\ $ (((\hexdisplay|s_registerOut[4]~4_combout\ & !\hexdisplay|s_registerOut[7]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[5]~5_combout\,
	datab => \hexdisplay|s_registerOut[4]~4_combout\,
	datac => \hexdisplay|s_registerOut[7]~7_combout\,
	datad => \hexdisplay|s_registerOut[6]~6_combout\,
	combout => \hexdisplay|disp_1_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y30_N4
\hexdisplay|disp_1_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_1_decoder|Mux5~0_combout\ = (\hexdisplay|s_registerOut[6]~6_combout\ & ((\hexdisplay|s_registerOut[7]~7_combout\) # (\hexdisplay|s_registerOut[4]~4_combout\ $ (\hexdisplay|s_registerOut[5]~5_combout\)))) # 
-- (!\hexdisplay|s_registerOut[6]~6_combout\ & (((\hexdisplay|s_registerOut[5]~5_combout\ & \hexdisplay|s_registerOut[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[4]~4_combout\,
	datab => \hexdisplay|s_registerOut[5]~5_combout\,
	datac => \hexdisplay|s_registerOut[6]~6_combout\,
	datad => \hexdisplay|s_registerOut[7]~7_combout\,
	combout => \hexdisplay|disp_1_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y30_N30
\hexdisplay|disp_1_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_1_decoder|Mux4~0_combout\ = (\hexdisplay|s_registerOut[4]~4_combout\ & (\hexdisplay|s_registerOut[5]~5_combout\ & ((\hexdisplay|s_registerOut[7]~7_combout\)))) # (!\hexdisplay|s_registerOut[4]~4_combout\ & 
-- ((\hexdisplay|s_registerOut[6]~6_combout\ & ((\hexdisplay|s_registerOut[7]~7_combout\))) # (!\hexdisplay|s_registerOut[6]~6_combout\ & (\hexdisplay|s_registerOut[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[4]~4_combout\,
	datab => \hexdisplay|s_registerOut[5]~5_combout\,
	datac => \hexdisplay|s_registerOut[6]~6_combout\,
	datad => \hexdisplay|s_registerOut[7]~7_combout\,
	combout => \hexdisplay|disp_1_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y30_N12
\hexdisplay|disp_1_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_1_decoder|Mux3~0_combout\ = (\hexdisplay|s_registerOut[6]~6_combout\ & (\hexdisplay|s_registerOut[4]~4_combout\ $ ((!\hexdisplay|s_registerOut[5]~5_combout\)))) # (!\hexdisplay|s_registerOut[6]~6_combout\ & 
-- ((\hexdisplay|s_registerOut[5]~5_combout\ & ((\hexdisplay|s_registerOut[7]~7_combout\))) # (!\hexdisplay|s_registerOut[5]~5_combout\ & (\hexdisplay|s_registerOut[4]~4_combout\ & !\hexdisplay|s_registerOut[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[4]~4_combout\,
	datab => \hexdisplay|s_registerOut[5]~5_combout\,
	datac => \hexdisplay|s_registerOut[6]~6_combout\,
	datad => \hexdisplay|s_registerOut[7]~7_combout\,
	combout => \hexdisplay|disp_1_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y30_N10
\hexdisplay|disp_1_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_1_decoder|Mux2~0_combout\ = (\hexdisplay|s_registerOut[4]~4_combout\ & (((!\hexdisplay|s_registerOut[7]~7_combout\) # (!\hexdisplay|s_registerOut[6]~6_combout\)))) # (!\hexdisplay|s_registerOut[4]~4_combout\ & 
-- ((\hexdisplay|s_registerOut[5]~5_combout\ & (!\hexdisplay|s_registerOut[6]~6_combout\ & \hexdisplay|s_registerOut[7]~7_combout\)) # (!\hexdisplay|s_registerOut[5]~5_combout\ & (\hexdisplay|s_registerOut[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[4]~4_combout\,
	datab => \hexdisplay|s_registerOut[5]~5_combout\,
	datac => \hexdisplay|s_registerOut[6]~6_combout\,
	datad => \hexdisplay|s_registerOut[7]~7_combout\,
	combout => \hexdisplay|disp_1_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y30_N28
\hexdisplay|disp_1_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_1_decoder|Mux1~0_combout\ = (\hexdisplay|s_registerOut[5]~5_combout\ & ((\hexdisplay|s_registerOut[4]~4_combout\) # ((!\hexdisplay|s_registerOut[6]~6_combout\)))) # (!\hexdisplay|s_registerOut[5]~5_combout\ & 
-- ((\hexdisplay|s_registerOut[6]~6_combout\ & ((\hexdisplay|s_registerOut[7]~7_combout\))) # (!\hexdisplay|s_registerOut[6]~6_combout\ & (\hexdisplay|s_registerOut[4]~4_combout\ & !\hexdisplay|s_registerOut[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[4]~4_combout\,
	datab => \hexdisplay|s_registerOut[5]~5_combout\,
	datac => \hexdisplay|s_registerOut[6]~6_combout\,
	datad => \hexdisplay|s_registerOut[7]~7_combout\,
	combout => \hexdisplay|disp_1_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y30_N22
\hexdisplay|disp_1_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_1_decoder|Mux0~0_combout\ = (\hexdisplay|s_registerOut[6]~6_combout\ & ((\hexdisplay|s_registerOut[4]~4_combout\ & ((\hexdisplay|s_registerOut[7]~7_combout\) # (!\hexdisplay|s_registerOut[5]~5_combout\))) # 
-- (!\hexdisplay|s_registerOut[4]~4_combout\ & ((\hexdisplay|s_registerOut[5]~5_combout\) # (!\hexdisplay|s_registerOut[7]~7_combout\))))) # (!\hexdisplay|s_registerOut[6]~6_combout\ & ((\hexdisplay|s_registerOut[5]~5_combout\ $ 
-- (\hexdisplay|s_registerOut[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[4]~4_combout\,
	datab => \hexdisplay|s_registerOut[5]~5_combout\,
	datac => \hexdisplay|s_registerOut[6]~6_combout\,
	datad => \hexdisplay|s_registerOut[7]~7_combout\,
	combout => \hexdisplay|disp_1_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X100_Y43_N30
\counter|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Equal1~0_combout\ = (!\counter|s_count\(5) & (!\counter|s_count\(6) & (\counter|s_count\(7) & \counter|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(5),
	datab => \counter|s_count\(6),
	datac => \counter|s_count\(7),
	datad => \counter|s_count\(4),
	combout => \counter|Equal1~0_combout\);

-- Location: LCCOMB_X100_Y44_N16
\counter|s_count[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[11]~7_combout\ = (\counter|Equal0~0_combout\ & (\counter|Equal1~0_combout\ & \main_fsm|PS.E~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Equal0~0_combout\,
	datac => \counter|Equal1~0_combout\,
	datad => \main_fsm|PS.E~_Duplicate_1_q\,
	combout => \counter|s_count[11]~7_combout\);

-- Location: LCCOMB_X100_Y44_N8
\counter|s_count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[8]~36_combout\ = !\counter|s_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(8),
	combout => \counter|s_count[8]~36_combout\);

-- Location: FF_X100_Y44_N9
\counter|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[8]~36_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(8));

-- Location: LCCOMB_X100_Y44_N12
\counter|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~10_combout\ = (\counter|s_count\(10) & (\counter|s_count\(11) $ (((\counter|s_count\(8) & \counter|s_count\(9)))))) # (!\counter|s_count\(10) & (\counter|s_count\(11) & ((\counter|s_count\(9)) # (!\counter|s_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(10),
	datab => \counter|s_count\(8),
	datac => \counter|s_count\(11),
	datad => \counter|s_count\(9),
	combout => \counter|s_count~10_combout\);

-- Location: FF_X100_Y44_N13
\counter|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~10_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(11));

-- Location: LCCOMB_X100_Y44_N20
\counter|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~8_combout\ = (\counter|s_count\(8) & (!\counter|s_count\(9) & ((\counter|s_count\(10)) # (!\counter|s_count\(11))))) # (!\counter|s_count\(8) & (((\counter|s_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(11),
	datab => \counter|s_count\(8),
	datac => \counter|s_count\(9),
	datad => \counter|s_count\(10),
	combout => \counter|s_count~8_combout\);

-- Location: FF_X100_Y44_N21
\counter|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~8_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(9));

-- Location: LCCOMB_X100_Y44_N4
\counter|s_count[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[10]~9_combout\ = \counter|s_count\(10) $ (((\counter|s_count[11]~7_combout\ & (\counter|s_count\(8) & \counter|s_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count[11]~7_combout\,
	datab => \counter|s_count\(8),
	datac => \counter|s_count\(10),
	datad => \counter|s_count\(9),
	combout => \counter|s_count[10]~9_combout\);

-- Location: FF_X100_Y44_N5
\counter|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[10]~9_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(10));

-- Location: LCCOMB_X100_Y44_N10
\hexdisplay|s_registerOut[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[10]~10_combout\ = (\counter|s_count\(10)) # ((!\main_fsm|PS.G~q\ & !\main_fsm|PS.E~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(10),
	datac => \main_fsm|PS.G~q\,
	datad => \main_fsm|PS.E~_Duplicate_1_q\,
	combout => \hexdisplay|s_registerOut[10]~10_combout\);

-- Location: LCCOMB_X100_Y44_N2
\hexdisplay|s_registerOut[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[9]~9_combout\ = (\main_fsm|PS.G~q\ & (\counter|s_count\(9))) # (!\main_fsm|PS.G~q\ & ((\main_fsm|PS.E~_Duplicate_1_q\ & (\counter|s_count\(9))) # (!\main_fsm|PS.E~_Duplicate_1_q\ & ((\main_fsm|PS.F~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(9),
	datab => \main_fsm|PS.G~q\,
	datac => \main_fsm|PS.F~q\,
	datad => \main_fsm|PS.E~_Duplicate_1_q\,
	combout => \hexdisplay|s_registerOut[9]~9_combout\);

-- Location: LCCOMB_X100_Y43_N26
\hexdisplay|s_registerOut[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[11]~11_combout\ = (\counter|s_count\(11)) # ((!\main_fsm|PS.E~_Duplicate_1_q\ & !\main_fsm|PS.G~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(11),
	datac => \main_fsm|PS.E~_Duplicate_1_q\,
	datad => \main_fsm|PS.G~q\,
	combout => \hexdisplay|s_registerOut[11]~11_combout\);

-- Location: LCCOMB_X100_Y44_N6
\hexdisplay|s_registerOut[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[8]~8_combout\ = (\main_fsm|PS.E~_Duplicate_1_q\ & (\counter|s_count\(8))) # (!\main_fsm|PS.E~_Duplicate_1_q\ & ((\main_fsm|PS.G~q\ & (\counter|s_count\(8))) # (!\main_fsm|PS.G~q\ & ((\main_fsm|PS.F~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datab => \counter|s_count\(8),
	datac => \main_fsm|PS.F~q\,
	datad => \main_fsm|PS.G~q\,
	combout => \hexdisplay|s_registerOut[8]~8_combout\);

-- Location: LCCOMB_X100_Y44_N14
\hexdisplay|disp_2_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_2_decoder|Mux6~0_combout\ = (\hexdisplay|s_registerOut[9]~9_combout\ & (\hexdisplay|s_registerOut[11]~11_combout\ & ((\hexdisplay|s_registerOut[8]~8_combout\) # (!\hexdisplay|s_registerOut[10]~10_combout\)))) # 
-- (!\hexdisplay|s_registerOut[9]~9_combout\ & (\hexdisplay|s_registerOut[10]~10_combout\ $ (((!\hexdisplay|s_registerOut[11]~11_combout\ & \hexdisplay|s_registerOut[8]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[10]~10_combout\,
	datab => \hexdisplay|s_registerOut[9]~9_combout\,
	datac => \hexdisplay|s_registerOut[11]~11_combout\,
	datad => \hexdisplay|s_registerOut[8]~8_combout\,
	combout => \hexdisplay|disp_2_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X100_Y44_N0
\hexdisplay|disp_2_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_2_decoder|Mux5~0_combout\ = (\hexdisplay|s_registerOut[10]~10_combout\ & ((\hexdisplay|s_registerOut[11]~11_combout\) # (\hexdisplay|s_registerOut[9]~9_combout\ $ (\hexdisplay|s_registerOut[8]~8_combout\)))) # 
-- (!\hexdisplay|s_registerOut[10]~10_combout\ & (\hexdisplay|s_registerOut[9]~9_combout\ & (\hexdisplay|s_registerOut[11]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[10]~10_combout\,
	datab => \hexdisplay|s_registerOut[9]~9_combout\,
	datac => \hexdisplay|s_registerOut[11]~11_combout\,
	datad => \hexdisplay|s_registerOut[8]~8_combout\,
	combout => \hexdisplay|disp_2_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X100_Y44_N22
\hexdisplay|disp_2_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_2_decoder|Mux4~0_combout\ = (\hexdisplay|s_registerOut[8]~8_combout\ & (((\hexdisplay|s_registerOut[9]~9_combout\ & \hexdisplay|s_registerOut[11]~11_combout\)))) # (!\hexdisplay|s_registerOut[8]~8_combout\ & 
-- ((\hexdisplay|s_registerOut[10]~10_combout\ & ((\hexdisplay|s_registerOut[11]~11_combout\))) # (!\hexdisplay|s_registerOut[10]~10_combout\ & (\hexdisplay|s_registerOut[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[10]~10_combout\,
	datab => \hexdisplay|s_registerOut[9]~9_combout\,
	datac => \hexdisplay|s_registerOut[11]~11_combout\,
	datad => \hexdisplay|s_registerOut[8]~8_combout\,
	combout => \hexdisplay|disp_2_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X100_Y44_N28
\hexdisplay|disp_2_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_2_decoder|Mux3~0_combout\ = (\hexdisplay|s_registerOut[10]~10_combout\ & (\hexdisplay|s_registerOut[9]~9_combout\ $ (((!\hexdisplay|s_registerOut[8]~8_combout\))))) # (!\hexdisplay|s_registerOut[10]~10_combout\ & 
-- ((\hexdisplay|s_registerOut[9]~9_combout\ & (\hexdisplay|s_registerOut[11]~11_combout\)) # (!\hexdisplay|s_registerOut[9]~9_combout\ & (!\hexdisplay|s_registerOut[11]~11_combout\ & \hexdisplay|s_registerOut[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[10]~10_combout\,
	datab => \hexdisplay|s_registerOut[9]~9_combout\,
	datac => \hexdisplay|s_registerOut[11]~11_combout\,
	datad => \hexdisplay|s_registerOut[8]~8_combout\,
	combout => \hexdisplay|disp_2_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X100_Y44_N18
\hexdisplay|disp_2_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_2_decoder|Mux2~0_combout\ = (\hexdisplay|s_registerOut[10]~10_combout\ & ((\hexdisplay|s_registerOut[8]~8_combout\ & ((!\hexdisplay|s_registerOut[11]~11_combout\))) # (!\hexdisplay|s_registerOut[8]~8_combout\ & 
-- (!\hexdisplay|s_registerOut[9]~9_combout\)))) # (!\hexdisplay|s_registerOut[10]~10_combout\ & ((\hexdisplay|s_registerOut[8]~8_combout\) # ((\hexdisplay|s_registerOut[9]~9_combout\ & \hexdisplay|s_registerOut[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[10]~10_combout\,
	datab => \hexdisplay|s_registerOut[9]~9_combout\,
	datac => \hexdisplay|s_registerOut[11]~11_combout\,
	datad => \hexdisplay|s_registerOut[8]~8_combout\,
	combout => \hexdisplay|disp_2_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X100_Y44_N24
\hexdisplay|disp_2_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_2_decoder|Mux1~0_combout\ = (\hexdisplay|s_registerOut[10]~10_combout\ & ((\hexdisplay|s_registerOut[9]~9_combout\ & ((\hexdisplay|s_registerOut[8]~8_combout\))) # (!\hexdisplay|s_registerOut[9]~9_combout\ & 
-- (\hexdisplay|s_registerOut[11]~11_combout\)))) # (!\hexdisplay|s_registerOut[10]~10_combout\ & ((\hexdisplay|s_registerOut[9]~9_combout\) # ((!\hexdisplay|s_registerOut[11]~11_combout\ & \hexdisplay|s_registerOut[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[10]~10_combout\,
	datab => \hexdisplay|s_registerOut[9]~9_combout\,
	datac => \hexdisplay|s_registerOut[11]~11_combout\,
	datad => \hexdisplay|s_registerOut[8]~8_combout\,
	combout => \hexdisplay|disp_2_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X100_Y44_N30
\hexdisplay|disp_2_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_2_decoder|Mux0~0_combout\ = (\hexdisplay|s_registerOut[10]~10_combout\ & ((\hexdisplay|s_registerOut[9]~9_combout\ & ((\hexdisplay|s_registerOut[11]~11_combout\) # (!\hexdisplay|s_registerOut[8]~8_combout\))) # 
-- (!\hexdisplay|s_registerOut[9]~9_combout\ & ((\hexdisplay|s_registerOut[8]~8_combout\) # (!\hexdisplay|s_registerOut[11]~11_combout\))))) # (!\hexdisplay|s_registerOut[10]~10_combout\ & (\hexdisplay|s_registerOut[9]~9_combout\ $ 
-- ((\hexdisplay|s_registerOut[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[10]~10_combout\,
	datab => \hexdisplay|s_registerOut[9]~9_combout\,
	datac => \hexdisplay|s_registerOut[11]~11_combout\,
	datad => \hexdisplay|s_registerOut[8]~8_combout\,
	combout => \hexdisplay|disp_2_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X100_Y44_N26
\counter|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Equal2~0_combout\ = (\counter|s_count\(11) & (!\counter|s_count\(10) & (\counter|s_count\(8) & !\counter|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(11),
	datab => \counter|s_count\(10),
	datac => \counter|s_count\(8),
	datad => \counter|s_count\(9),
	combout => \counter|Equal2~0_combout\);

-- Location: LCCOMB_X99_Y42_N8
\counter|s_count[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[15]~11_combout\ = (\counter|Equal0~0_combout\ & (\counter|Equal1~0_combout\ & (\main_fsm|PS.E~_Duplicate_1_q\ & \counter|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Equal0~0_combout\,
	datab => \counter|Equal1~0_combout\,
	datac => \main_fsm|PS.E~_Duplicate_1_q\,
	datad => \counter|Equal2~0_combout\,
	combout => \counter|s_count[15]~11_combout\);

-- Location: LCCOMB_X100_Y42_N4
\counter|s_count[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[12]~37_combout\ = !\counter|s_count\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(12),
	combout => \counter|s_count[12]~37_combout\);

-- Location: FF_X100_Y42_N5
\counter|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[12]~37_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(12));

-- Location: LCCOMB_X100_Y42_N12
\counter|s_count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~14_combout\ = (\counter|s_count\(14) & (\counter|s_count\(15) $ (((\counter|s_count\(12) & \counter|s_count\(13)))))) # (!\counter|s_count\(14) & (\counter|s_count\(15) & ((\counter|s_count\(13)) # (!\counter|s_count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(14),
	datab => \counter|s_count\(12),
	datac => \counter|s_count\(15),
	datad => \counter|s_count\(13),
	combout => \counter|s_count~14_combout\);

-- Location: FF_X100_Y42_N13
\counter|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~14_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(15));

-- Location: LCCOMB_X100_Y42_N20
\counter|s_count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~12_combout\ = (\counter|s_count\(12) & (!\counter|s_count\(13) & ((\counter|s_count\(14)) # (!\counter|s_count\(15))))) # (!\counter|s_count\(12) & (((\counter|s_count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(12),
	datab => \counter|s_count\(15),
	datac => \counter|s_count\(13),
	datad => \counter|s_count\(14),
	combout => \counter|s_count~12_combout\);

-- Location: FF_X100_Y42_N21
\counter|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~12_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(13));

-- Location: LCCOMB_X100_Y42_N8
\counter|s_count[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[14]~13_combout\ = \counter|s_count\(14) $ (((\counter|s_count[15]~11_combout\ & (\counter|s_count\(12) & \counter|s_count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count[15]~11_combout\,
	datab => \counter|s_count\(12),
	datac => \counter|s_count\(14),
	datad => \counter|s_count\(13),
	combout => \counter|s_count[14]~13_combout\);

-- Location: FF_X100_Y42_N9
\counter|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[14]~13_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(14));

-- Location: LCCOMB_X100_Y42_N26
\hexdisplay|s_registerOut[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[14]~14_combout\ = (\counter|s_count\(14)) # ((!\main_fsm|PS.G~q\ & !\main_fsm|PS.E~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(14),
	datac => \main_fsm|PS.G~q\,
	datad => \main_fsm|PS.E~_Duplicate_1_q\,
	combout => \hexdisplay|s_registerOut[14]~14_combout\);

-- Location: LCCOMB_X100_Y42_N2
\hexdisplay|s_registerOut[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[13]~13_combout\ = (\main_fsm|PS.E~_Duplicate_1_q\ & (((\counter|s_count\(13))))) # (!\main_fsm|PS.E~_Duplicate_1_q\ & ((\main_fsm|PS.G~q\ & ((\counter|s_count\(13)))) # (!\main_fsm|PS.G~q\ & (\main_fsm|PS.F~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datab => \main_fsm|PS.F~q\,
	datac => \main_fsm|PS.G~q\,
	datad => \counter|s_count\(13),
	combout => \hexdisplay|s_registerOut[13]~13_combout\);

-- Location: LCCOMB_X100_Y42_N22
\hexdisplay|s_registerOut[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[15]~15_combout\ = (\counter|s_count\(15)) # ((!\main_fsm|PS.G~q\ & !\main_fsm|PS.E~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(15),
	datac => \main_fsm|PS.G~q\,
	datad => \main_fsm|PS.E~_Duplicate_1_q\,
	combout => \hexdisplay|s_registerOut[15]~15_combout\);

-- Location: LCCOMB_X100_Y42_N18
\hexdisplay|s_registerOut[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[12]~12_combout\ = (\counter|s_count\(12) & ((\main_fsm|PS.G~q\) # (\main_fsm|PS.E~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(12),
	datac => \main_fsm|PS.G~q\,
	datad => \main_fsm|PS.E~_Duplicate_1_q\,
	combout => \hexdisplay|s_registerOut[12]~12_combout\);

-- Location: LCCOMB_X100_Y42_N0
\hexdisplay|disp_3_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_3_decoder|Mux6~0_combout\ = (\hexdisplay|s_registerOut[13]~13_combout\ & (\hexdisplay|s_registerOut[15]~15_combout\ & ((\hexdisplay|s_registerOut[12]~12_combout\) # (!\hexdisplay|s_registerOut[14]~14_combout\)))) # 
-- (!\hexdisplay|s_registerOut[13]~13_combout\ & (\hexdisplay|s_registerOut[14]~14_combout\ $ (((!\hexdisplay|s_registerOut[15]~15_combout\ & \hexdisplay|s_registerOut[12]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[14]~14_combout\,
	datab => \hexdisplay|s_registerOut[13]~13_combout\,
	datac => \hexdisplay|s_registerOut[15]~15_combout\,
	datad => \hexdisplay|s_registerOut[12]~12_combout\,
	combout => \hexdisplay|disp_3_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X100_Y42_N30
\hexdisplay|disp_3_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_3_decoder|Mux5~0_combout\ = (\hexdisplay|s_registerOut[14]~14_combout\ & ((\hexdisplay|s_registerOut[15]~15_combout\) # (\hexdisplay|s_registerOut[13]~13_combout\ $ (\hexdisplay|s_registerOut[12]~12_combout\)))) # 
-- (!\hexdisplay|s_registerOut[14]~14_combout\ & (\hexdisplay|s_registerOut[13]~13_combout\ & (\hexdisplay|s_registerOut[15]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[14]~14_combout\,
	datab => \hexdisplay|s_registerOut[13]~13_combout\,
	datac => \hexdisplay|s_registerOut[15]~15_combout\,
	datad => \hexdisplay|s_registerOut[12]~12_combout\,
	combout => \hexdisplay|disp_3_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X100_Y42_N28
\hexdisplay|disp_3_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_3_decoder|Mux4~0_combout\ = (\hexdisplay|s_registerOut[12]~12_combout\ & (((\hexdisplay|s_registerOut[13]~13_combout\ & \hexdisplay|s_registerOut[15]~15_combout\)))) # (!\hexdisplay|s_registerOut[12]~12_combout\ & 
-- ((\hexdisplay|s_registerOut[14]~14_combout\ & ((\hexdisplay|s_registerOut[15]~15_combout\))) # (!\hexdisplay|s_registerOut[14]~14_combout\ & (\hexdisplay|s_registerOut[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[14]~14_combout\,
	datab => \hexdisplay|s_registerOut[13]~13_combout\,
	datac => \hexdisplay|s_registerOut[15]~15_combout\,
	datad => \hexdisplay|s_registerOut[12]~12_combout\,
	combout => \hexdisplay|disp_3_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X100_Y42_N6
\hexdisplay|disp_3_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_3_decoder|Mux3~0_combout\ = (\hexdisplay|s_registerOut[14]~14_combout\ & (\hexdisplay|s_registerOut[13]~13_combout\ $ (((!\hexdisplay|s_registerOut[12]~12_combout\))))) # (!\hexdisplay|s_registerOut[14]~14_combout\ & 
-- ((\hexdisplay|s_registerOut[13]~13_combout\ & (\hexdisplay|s_registerOut[15]~15_combout\)) # (!\hexdisplay|s_registerOut[13]~13_combout\ & (!\hexdisplay|s_registerOut[15]~15_combout\ & \hexdisplay|s_registerOut[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[14]~14_combout\,
	datab => \hexdisplay|s_registerOut[13]~13_combout\,
	datac => \hexdisplay|s_registerOut[15]~15_combout\,
	datad => \hexdisplay|s_registerOut[12]~12_combout\,
	combout => \hexdisplay|disp_3_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X100_Y42_N16
\hexdisplay|disp_3_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_3_decoder|Mux2~0_combout\ = (\hexdisplay|s_registerOut[14]~14_combout\ & ((\hexdisplay|s_registerOut[12]~12_combout\ & ((!\hexdisplay|s_registerOut[15]~15_combout\))) # (!\hexdisplay|s_registerOut[12]~12_combout\ & 
-- (!\hexdisplay|s_registerOut[13]~13_combout\)))) # (!\hexdisplay|s_registerOut[14]~14_combout\ & ((\hexdisplay|s_registerOut[12]~12_combout\) # ((\hexdisplay|s_registerOut[13]~13_combout\ & \hexdisplay|s_registerOut[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[14]~14_combout\,
	datab => \hexdisplay|s_registerOut[13]~13_combout\,
	datac => \hexdisplay|s_registerOut[15]~15_combout\,
	datad => \hexdisplay|s_registerOut[12]~12_combout\,
	combout => \hexdisplay|disp_3_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X100_Y42_N10
\hexdisplay|disp_3_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_3_decoder|Mux1~0_combout\ = (\hexdisplay|s_registerOut[14]~14_combout\ & ((\hexdisplay|s_registerOut[13]~13_combout\ & ((\hexdisplay|s_registerOut[12]~12_combout\))) # (!\hexdisplay|s_registerOut[13]~13_combout\ & 
-- (\hexdisplay|s_registerOut[15]~15_combout\)))) # (!\hexdisplay|s_registerOut[14]~14_combout\ & ((\hexdisplay|s_registerOut[13]~13_combout\) # ((!\hexdisplay|s_registerOut[15]~15_combout\ & \hexdisplay|s_registerOut[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[14]~14_combout\,
	datab => \hexdisplay|s_registerOut[13]~13_combout\,
	datac => \hexdisplay|s_registerOut[15]~15_combout\,
	datad => \hexdisplay|s_registerOut[12]~12_combout\,
	combout => \hexdisplay|disp_3_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X100_Y42_N24
\hexdisplay|disp_3_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_3_decoder|Mux0~0_combout\ = (\hexdisplay|s_registerOut[14]~14_combout\ & ((\hexdisplay|s_registerOut[13]~13_combout\ & ((\hexdisplay|s_registerOut[15]~15_combout\) # (!\hexdisplay|s_registerOut[12]~12_combout\))) # 
-- (!\hexdisplay|s_registerOut[13]~13_combout\ & ((\hexdisplay|s_registerOut[12]~12_combout\) # (!\hexdisplay|s_registerOut[15]~15_combout\))))) # (!\hexdisplay|s_registerOut[14]~14_combout\ & (\hexdisplay|s_registerOut[13]~13_combout\ $ 
-- ((\hexdisplay|s_registerOut[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[14]~14_combout\,
	datab => \hexdisplay|s_registerOut[13]~13_combout\,
	datac => \hexdisplay|s_registerOut[15]~15_combout\,
	datad => \hexdisplay|s_registerOut[12]~12_combout\,
	combout => \hexdisplay|disp_3_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X101_Y44_N4
\counter|s_count[16]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[16]~38_combout\ = !\counter|s_count\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(16),
	combout => \counter|s_count[16]~38_combout\);

-- Location: LCCOMB_X100_Y42_N14
\counter|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Equal3~0_combout\ = (\counter|s_count\(15) & (!\counter|s_count\(14) & (\counter|s_count\(12) & !\counter|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(15),
	datab => \counter|s_count\(14),
	datac => \counter|s_count\(12),
	datad => \counter|s_count\(13),
	combout => \counter|Equal3~0_combout\);

-- Location: LCCOMB_X101_Y44_N2
\counter|s_count[19]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[19]~15_combout\ = (\counter|Equal3~0_combout\ & \counter|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|Equal3~0_combout\,
	datad => \counter|Equal0~0_combout\,
	combout => \counter|s_count[19]~15_combout\);

-- Location: LCCOMB_X101_Y44_N20
\counter|s_count[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[19]~16_combout\ = (\main_fsm|PS.E~_Duplicate_1_q\ & (\counter|Equal1~0_combout\ & (\counter|Equal2~0_combout\ & \counter|s_count[19]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datab => \counter|Equal1~0_combout\,
	datac => \counter|Equal2~0_combout\,
	datad => \counter|s_count[19]~15_combout\,
	combout => \counter|s_count[19]~16_combout\);

-- Location: FF_X101_Y44_N5
\counter|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[16]~38_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[19]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(16));

-- Location: LCCOMB_X101_Y44_N8
\counter|s_count[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[18]~18_combout\ = \counter|s_count\(18) $ (((\counter|s_count\(16) & (\counter|s_count[19]~16_combout\ & \counter|s_count\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(16),
	datab => \counter|s_count[19]~16_combout\,
	datac => \counter|s_count\(18),
	datad => \counter|s_count\(17),
	combout => \counter|s_count[18]~18_combout\);

-- Location: FF_X101_Y44_N9
\counter|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[18]~18_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(18));

-- Location: LCCOMB_X101_Y44_N26
\counter|s_count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~17_combout\ = (\counter|s_count\(16) & (!\counter|s_count\(17) & ((\counter|s_count\(18)) # (!\counter|s_count\(19))))) # (!\counter|s_count\(16) & (((\counter|s_count\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(16),
	datab => \counter|s_count\(19),
	datac => \counter|s_count\(17),
	datad => \counter|s_count\(18),
	combout => \counter|s_count~17_combout\);

-- Location: FF_X101_Y44_N27
\counter|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~17_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[19]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(17));

-- Location: LCCOMB_X101_Y44_N18
\counter|s_count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~19_combout\ = (\counter|s_count\(16) & ((\counter|s_count\(17) & (\counter|s_count\(19) $ (\counter|s_count\(18)))) # (!\counter|s_count\(17) & (\counter|s_count\(19) & \counter|s_count\(18))))) # (!\counter|s_count\(16) & 
-- (((\counter|s_count\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(16),
	datab => \counter|s_count\(17),
	datac => \counter|s_count\(19),
	datad => \counter|s_count\(18),
	combout => \counter|s_count~19_combout\);

-- Location: FF_X101_Y44_N19
\counter|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~19_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[19]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(19));

-- Location: LCCOMB_X94_Y12_N6
\hexdisplay|s_registerOut[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[19]~19_combout\ = (\counter|s_count\(19)) # ((!\main_fsm|PS.E~_Duplicate_1_q\ & !\main_fsm|PS.G~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(19),
	datac => \main_fsm|PS.E~_Duplicate_1_q\,
	datad => \main_fsm|PS.G~q\,
	combout => \hexdisplay|s_registerOut[19]~19_combout\);

-- Location: LCCOMB_X94_Y12_N20
\hexdisplay|s_registerOut[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[18]~18_combout\ = (\counter|s_count\(18)) # ((!\main_fsm|PS.E~_Duplicate_1_q\ & !\main_fsm|PS.G~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(18),
	datac => \main_fsm|PS.E~_Duplicate_1_q\,
	datad => \main_fsm|PS.G~q\,
	combout => \hexdisplay|s_registerOut[18]~18_combout\);

-- Location: LCCOMB_X94_Y12_N30
\hexdisplay|s_registerOut[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[17]~17_combout\ = (\counter|s_count\(17) & ((\main_fsm|PS.E~_Duplicate_1_q\) # (\main_fsm|PS.G~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|s_count\(17),
	datac => \main_fsm|PS.E~_Duplicate_1_q\,
	datad => \main_fsm|PS.G~q\,
	combout => \hexdisplay|s_registerOut[17]~17_combout\);

-- Location: LCCOMB_X94_Y12_N28
\hexdisplay|s_registerOut[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[16]~16_combout\ = (\counter|s_count\(16) & ((\main_fsm|PS.E~_Duplicate_1_q\) # (\main_fsm|PS.G~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(16),
	datac => \main_fsm|PS.E~_Duplicate_1_q\,
	datad => \main_fsm|PS.G~q\,
	combout => \hexdisplay|s_registerOut[16]~16_combout\);

-- Location: LCCOMB_X94_Y12_N0
\hexdisplay|disp_4_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_4_decoder|Mux6~0_combout\ = (\hexdisplay|s_registerOut[17]~17_combout\ & (\hexdisplay|s_registerOut[19]~19_combout\ & ((\hexdisplay|s_registerOut[16]~16_combout\) # (!\hexdisplay|s_registerOut[18]~18_combout\)))) # 
-- (!\hexdisplay|s_registerOut[17]~17_combout\ & (\hexdisplay|s_registerOut[18]~18_combout\ $ (((!\hexdisplay|s_registerOut[19]~19_combout\ & \hexdisplay|s_registerOut[16]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[19]~19_combout\,
	datab => \hexdisplay|s_registerOut[18]~18_combout\,
	datac => \hexdisplay|s_registerOut[17]~17_combout\,
	datad => \hexdisplay|s_registerOut[16]~16_combout\,
	combout => \hexdisplay|disp_4_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X94_Y12_N26
\hexdisplay|disp_4_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_4_decoder|Mux5~0_combout\ = (\hexdisplay|s_registerOut[19]~19_combout\ & ((\hexdisplay|s_registerOut[18]~18_combout\) # ((\hexdisplay|s_registerOut[17]~17_combout\)))) # (!\hexdisplay|s_registerOut[19]~19_combout\ & 
-- (\hexdisplay|s_registerOut[18]~18_combout\ & (\hexdisplay|s_registerOut[17]~17_combout\ $ (\hexdisplay|s_registerOut[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[19]~19_combout\,
	datab => \hexdisplay|s_registerOut[18]~18_combout\,
	datac => \hexdisplay|s_registerOut[17]~17_combout\,
	datad => \hexdisplay|s_registerOut[16]~16_combout\,
	combout => \hexdisplay|disp_4_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X94_Y12_N8
\hexdisplay|disp_4_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_4_decoder|Mux4~0_combout\ = (\hexdisplay|s_registerOut[16]~16_combout\ & (\hexdisplay|s_registerOut[19]~19_combout\ & ((\hexdisplay|s_registerOut[17]~17_combout\)))) # (!\hexdisplay|s_registerOut[16]~16_combout\ & 
-- ((\hexdisplay|s_registerOut[18]~18_combout\ & (\hexdisplay|s_registerOut[19]~19_combout\)) # (!\hexdisplay|s_registerOut[18]~18_combout\ & ((\hexdisplay|s_registerOut[17]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[19]~19_combout\,
	datab => \hexdisplay|s_registerOut[18]~18_combout\,
	datac => \hexdisplay|s_registerOut[17]~17_combout\,
	datad => \hexdisplay|s_registerOut[16]~16_combout\,
	combout => \hexdisplay|disp_4_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X94_Y12_N22
\hexdisplay|disp_4_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_4_decoder|Mux3~0_combout\ = (\hexdisplay|s_registerOut[18]~18_combout\ & ((\hexdisplay|s_registerOut[17]~17_combout\ $ (!\hexdisplay|s_registerOut[16]~16_combout\)))) # (!\hexdisplay|s_registerOut[18]~18_combout\ & 
-- ((\hexdisplay|s_registerOut[19]~19_combout\ & (\hexdisplay|s_registerOut[17]~17_combout\)) # (!\hexdisplay|s_registerOut[19]~19_combout\ & (!\hexdisplay|s_registerOut[17]~17_combout\ & \hexdisplay|s_registerOut[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[19]~19_combout\,
	datab => \hexdisplay|s_registerOut[18]~18_combout\,
	datac => \hexdisplay|s_registerOut[17]~17_combout\,
	datad => \hexdisplay|s_registerOut[16]~16_combout\,
	combout => \hexdisplay|disp_4_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X94_Y12_N12
\hexdisplay|disp_4_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_4_decoder|Mux2~0_combout\ = (\hexdisplay|s_registerOut[19]~19_combout\ & (\hexdisplay|s_registerOut[18]~18_combout\ $ (((\hexdisplay|s_registerOut[17]~17_combout\) # (\hexdisplay|s_registerOut[16]~16_combout\))))) # 
-- (!\hexdisplay|s_registerOut[19]~19_combout\ & ((\hexdisplay|s_registerOut[16]~16_combout\) # ((\hexdisplay|s_registerOut[18]~18_combout\ & !\hexdisplay|s_registerOut[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[19]~19_combout\,
	datab => \hexdisplay|s_registerOut[18]~18_combout\,
	datac => \hexdisplay|s_registerOut[17]~17_combout\,
	datad => \hexdisplay|s_registerOut[16]~16_combout\,
	combout => \hexdisplay|disp_4_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X94_Y12_N10
\hexdisplay|disp_4_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_4_decoder|Mux1~0_combout\ = (\hexdisplay|s_registerOut[18]~18_combout\ & ((\hexdisplay|s_registerOut[17]~17_combout\ & ((\hexdisplay|s_registerOut[16]~16_combout\))) # (!\hexdisplay|s_registerOut[17]~17_combout\ & 
-- (\hexdisplay|s_registerOut[19]~19_combout\)))) # (!\hexdisplay|s_registerOut[18]~18_combout\ & ((\hexdisplay|s_registerOut[17]~17_combout\) # ((!\hexdisplay|s_registerOut[19]~19_combout\ & \hexdisplay|s_registerOut[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[19]~19_combout\,
	datab => \hexdisplay|s_registerOut[18]~18_combout\,
	datac => \hexdisplay|s_registerOut[17]~17_combout\,
	datad => \hexdisplay|s_registerOut[16]~16_combout\,
	combout => \hexdisplay|disp_4_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X94_Y12_N24
\hexdisplay|disp_4_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_4_decoder|Mux0~0_combout\ = (\hexdisplay|s_registerOut[18]~18_combout\ & ((\hexdisplay|s_registerOut[19]~19_combout\ & ((\hexdisplay|s_registerOut[17]~17_combout\) # (\hexdisplay|s_registerOut[16]~16_combout\))) # 
-- (!\hexdisplay|s_registerOut[19]~19_combout\ & ((!\hexdisplay|s_registerOut[16]~16_combout\) # (!\hexdisplay|s_registerOut[17]~17_combout\))))) # (!\hexdisplay|s_registerOut[18]~18_combout\ & (\hexdisplay|s_registerOut[19]~19_combout\ $ 
-- ((\hexdisplay|s_registerOut[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[19]~19_combout\,
	datab => \hexdisplay|s_registerOut[18]~18_combout\,
	datac => \hexdisplay|s_registerOut[17]~17_combout\,
	datad => \hexdisplay|s_registerOut[16]~16_combout\,
	combout => \hexdisplay|disp_4_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X99_Y42_N20
\counter|s_count[20]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[20]~39_combout\ = !\counter|s_count\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(20),
	combout => \counter|s_count[20]~39_combout\);

-- Location: LCCOMB_X101_Y44_N22
\counter|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Equal4~0_combout\ = (!\counter|s_count\(17) & (!\counter|s_count\(18) & (\counter|s_count\(16) & \counter|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(17),
	datab => \counter|s_count\(18),
	datac => \counter|s_count\(16),
	datad => \counter|s_count\(19),
	combout => \counter|Equal4~0_combout\);

-- Location: LCCOMB_X99_Y42_N2
\counter|s_count[23]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[23]~20_combout\ = (\counter|Equal3~0_combout\ & (\counter|s_count[15]~11_combout\ & \counter|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter|Equal3~0_combout\,
	datac => \counter|s_count[15]~11_combout\,
	datad => \counter|Equal4~0_combout\,
	combout => \counter|s_count[23]~20_combout\);

-- Location: FF_X99_Y42_N21
\counter|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[20]~39_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[23]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(20));

-- Location: LCCOMB_X99_Y42_N4
\counter|s_count[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[22]~22_combout\ = \counter|s_count\(22) $ (((\counter|s_count[23]~20_combout\ & (\counter|s_count\(20) & \counter|s_count\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count[23]~20_combout\,
	datab => \counter|s_count\(20),
	datac => \counter|s_count\(22),
	datad => \counter|s_count\(21),
	combout => \counter|s_count[22]~22_combout\);

-- Location: FF_X99_Y42_N5
\counter|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[22]~22_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(22));

-- Location: LCCOMB_X99_Y42_N28
\counter|s_count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~21_combout\ = (\counter|s_count\(20) & (!\counter|s_count\(21) & ((\counter|s_count\(22)) # (!\counter|s_count\(23))))) # (!\counter|s_count\(20) & (((\counter|s_count\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(23),
	datab => \counter|s_count\(20),
	datac => \counter|s_count\(21),
	datad => \counter|s_count\(22),
	combout => \counter|s_count~21_combout\);

-- Location: FF_X99_Y42_N29
\counter|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~21_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[23]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(21));

-- Location: LCCOMB_X99_Y42_N12
\counter|s_count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~23_combout\ = (\counter|s_count\(20) & ((\counter|s_count\(21) & (\counter|s_count\(23) $ (\counter|s_count\(22)))) # (!\counter|s_count\(21) & (\counter|s_count\(23) & \counter|s_count\(22))))) # (!\counter|s_count\(20) & 
-- (((\counter|s_count\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(20),
	datab => \counter|s_count\(21),
	datac => \counter|s_count\(23),
	datad => \counter|s_count\(22),
	combout => \counter|s_count~23_combout\);

-- Location: FF_X99_Y42_N13
\counter|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~23_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[23]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(23));

-- Location: LCCOMB_X99_Y42_N30
\hexdisplay|s_registerOut[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[23]~23_combout\ = (\counter|s_count\(23)) # ((!\main_fsm|PS.E~_Duplicate_1_q\ & !\main_fsm|PS.G~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datac => \main_fsm|PS.G~q\,
	datad => \counter|s_count\(23),
	combout => \hexdisplay|s_registerOut[23]~23_combout\);

-- Location: LCCOMB_X99_Y42_N26
\hexdisplay|s_registerOut[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[20]~20_combout\ = (\counter|s_count\(20) & ((\main_fsm|PS.E~_Duplicate_1_q\) # (\main_fsm|PS.G~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datac => \main_fsm|PS.G~q\,
	datad => \counter|s_count\(20),
	combout => \hexdisplay|s_registerOut[20]~20_combout\);

-- Location: LCCOMB_X99_Y42_N22
\hexdisplay|s_registerOut[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[21]~21_combout\ = (\counter|s_count\(21) & ((\main_fsm|PS.E~_Duplicate_1_q\) # (\main_fsm|PS.G~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datac => \main_fsm|PS.G~q\,
	datad => \counter|s_count\(21),
	combout => \hexdisplay|s_registerOut[21]~21_combout\);

-- Location: LCCOMB_X99_Y42_N10
\hexdisplay|s_registerOut[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[22]~22_combout\ = (\counter|s_count\(22)) # ((!\main_fsm|PS.E~_Duplicate_1_q\ & !\main_fsm|PS.G~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datac => \main_fsm|PS.G~q\,
	datad => \counter|s_count\(22),
	combout => \hexdisplay|s_registerOut[22]~22_combout\);

-- Location: LCCOMB_X101_Y44_N24
\hexdisplay|disp_5_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_5_decoder|Mux6~0_combout\ = (\hexdisplay|s_registerOut[21]~21_combout\ & (\hexdisplay|s_registerOut[23]~23_combout\ & ((\hexdisplay|s_registerOut[20]~20_combout\) # (!\hexdisplay|s_registerOut[22]~22_combout\)))) # 
-- (!\hexdisplay|s_registerOut[21]~21_combout\ & (\hexdisplay|s_registerOut[22]~22_combout\ $ (((!\hexdisplay|s_registerOut[23]~23_combout\ & \hexdisplay|s_registerOut[20]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[23]~23_combout\,
	datab => \hexdisplay|s_registerOut[20]~20_combout\,
	datac => \hexdisplay|s_registerOut[21]~21_combout\,
	datad => \hexdisplay|s_registerOut[22]~22_combout\,
	combout => \hexdisplay|disp_5_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X101_Y44_N14
\hexdisplay|disp_5_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_5_decoder|Mux5~0_combout\ = (\hexdisplay|s_registerOut[23]~23_combout\ & (((\hexdisplay|s_registerOut[21]~21_combout\) # (\hexdisplay|s_registerOut[22]~22_combout\)))) # (!\hexdisplay|s_registerOut[23]~23_combout\ & 
-- (\hexdisplay|s_registerOut[22]~22_combout\ & (\hexdisplay|s_registerOut[20]~20_combout\ $ (\hexdisplay|s_registerOut[21]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[23]~23_combout\,
	datab => \hexdisplay|s_registerOut[20]~20_combout\,
	datac => \hexdisplay|s_registerOut[21]~21_combout\,
	datad => \hexdisplay|s_registerOut[22]~22_combout\,
	combout => \hexdisplay|disp_5_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X101_Y44_N28
\hexdisplay|disp_5_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_5_decoder|Mux4~0_combout\ = (\hexdisplay|s_registerOut[20]~20_combout\ & (\hexdisplay|s_registerOut[23]~23_combout\ & (\hexdisplay|s_registerOut[21]~21_combout\))) # (!\hexdisplay|s_registerOut[20]~20_combout\ & 
-- ((\hexdisplay|s_registerOut[22]~22_combout\ & (\hexdisplay|s_registerOut[23]~23_combout\)) # (!\hexdisplay|s_registerOut[22]~22_combout\ & ((\hexdisplay|s_registerOut[21]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[23]~23_combout\,
	datab => \hexdisplay|s_registerOut[20]~20_combout\,
	datac => \hexdisplay|s_registerOut[21]~21_combout\,
	datad => \hexdisplay|s_registerOut[22]~22_combout\,
	combout => \hexdisplay|disp_5_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X101_Y44_N30
\hexdisplay|disp_5_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_5_decoder|Mux3~0_combout\ = (\hexdisplay|s_registerOut[22]~22_combout\ & ((\hexdisplay|s_registerOut[20]~20_combout\ $ (!\hexdisplay|s_registerOut[21]~21_combout\)))) # (!\hexdisplay|s_registerOut[22]~22_combout\ & 
-- ((\hexdisplay|s_registerOut[23]~23_combout\ & ((\hexdisplay|s_registerOut[21]~21_combout\))) # (!\hexdisplay|s_registerOut[23]~23_combout\ & (\hexdisplay|s_registerOut[20]~20_combout\ & !\hexdisplay|s_registerOut[21]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[23]~23_combout\,
	datab => \hexdisplay|s_registerOut[20]~20_combout\,
	datac => \hexdisplay|s_registerOut[21]~21_combout\,
	datad => \hexdisplay|s_registerOut[22]~22_combout\,
	combout => \hexdisplay|disp_5_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X99_Y42_N24
\hexdisplay|disp_5_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_5_decoder|Mux2~0_combout\ = (\hexdisplay|s_registerOut[23]~23_combout\ & (\hexdisplay|s_registerOut[22]~22_combout\ $ (((\hexdisplay|s_registerOut[21]~21_combout\) # (\hexdisplay|s_registerOut[20]~20_combout\))))) # 
-- (!\hexdisplay|s_registerOut[23]~23_combout\ & ((\hexdisplay|s_registerOut[20]~20_combout\) # ((!\hexdisplay|s_registerOut[21]~21_combout\ & \hexdisplay|s_registerOut[22]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[23]~23_combout\,
	datab => \hexdisplay|s_registerOut[21]~21_combout\,
	datac => \hexdisplay|s_registerOut[20]~20_combout\,
	datad => \hexdisplay|s_registerOut[22]~22_combout\,
	combout => \hexdisplay|disp_5_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X99_Y42_N14
\hexdisplay|disp_5_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_5_decoder|Mux1~0_combout\ = (\hexdisplay|s_registerOut[21]~21_combout\ & (((\hexdisplay|s_registerOut[20]~20_combout\) # (!\hexdisplay|s_registerOut[22]~22_combout\)))) # (!\hexdisplay|s_registerOut[21]~21_combout\ & 
-- ((\hexdisplay|s_registerOut[23]~23_combout\ & ((\hexdisplay|s_registerOut[22]~22_combout\))) # (!\hexdisplay|s_registerOut[23]~23_combout\ & (\hexdisplay|s_registerOut[20]~20_combout\ & !\hexdisplay|s_registerOut[22]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[23]~23_combout\,
	datab => \hexdisplay|s_registerOut[21]~21_combout\,
	datac => \hexdisplay|s_registerOut[20]~20_combout\,
	datad => \hexdisplay|s_registerOut[22]~22_combout\,
	combout => \hexdisplay|disp_5_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X101_Y44_N16
\hexdisplay|disp_5_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_5_decoder|Mux0~0_combout\ = (\hexdisplay|s_registerOut[22]~22_combout\ & ((\hexdisplay|s_registerOut[23]~23_combout\ & ((\hexdisplay|s_registerOut[20]~20_combout\) # (\hexdisplay|s_registerOut[21]~21_combout\))) # 
-- (!\hexdisplay|s_registerOut[23]~23_combout\ & ((!\hexdisplay|s_registerOut[21]~21_combout\) # (!\hexdisplay|s_registerOut[20]~20_combout\))))) # (!\hexdisplay|s_registerOut[22]~22_combout\ & (\hexdisplay|s_registerOut[23]~23_combout\ $ 
-- (((\hexdisplay|s_registerOut[21]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[23]~23_combout\,
	datab => \hexdisplay|s_registerOut[20]~20_combout\,
	datac => \hexdisplay|s_registerOut[21]~21_combout\,
	datad => \hexdisplay|s_registerOut[22]~22_combout\,
	combout => \hexdisplay|disp_5_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X99_Y42_N0
\counter|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Equal5~0_combout\ = (\counter|s_count\(23) & (\counter|s_count\(20) & (!\counter|s_count\(22) & !\counter|s_count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(23),
	datab => \counter|s_count\(20),
	datac => \counter|s_count\(22),
	datad => \counter|s_count\(21),
	combout => \counter|Equal5~0_combout\);

-- Location: LCCOMB_X99_Y42_N18
\counter|s_count[27]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[27]~24_combout\ = (\counter|Equal3~0_combout\ & (\counter|Equal5~0_combout\ & (\counter|s_count[15]~11_combout\ & \counter|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Equal3~0_combout\,
	datab => \counter|Equal5~0_combout\,
	datac => \counter|s_count[15]~11_combout\,
	datad => \counter|Equal4~0_combout\,
	combout => \counter|s_count[27]~24_combout\);

-- Location: LCCOMB_X98_Y42_N28
\counter|s_count[24]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[24]~40_combout\ = !\counter|s_count\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(24),
	combout => \counter|s_count[24]~40_combout\);

-- Location: FF_X98_Y42_N29
\counter|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[24]~40_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[27]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(24));

-- Location: LCCOMB_X98_Y42_N12
\counter|s_count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~25_combout\ = (\counter|s_count\(25) & (((!\counter|s_count\(24))))) # (!\counter|s_count\(25) & (\counter|s_count\(24) & ((\counter|s_count\(26)) # (!\counter|s_count\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(26),
	datab => \counter|s_count\(27),
	datac => \counter|s_count\(25),
	datad => \counter|s_count\(24),
	combout => \counter|s_count~25_combout\);

-- Location: FF_X98_Y42_N13
\counter|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~25_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[27]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(25));

-- Location: LCCOMB_X99_Y42_N16
\counter|s_count[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[26]~26_combout\ = \counter|s_count\(26) $ (((\counter|s_count[27]~24_combout\ & (\counter|s_count\(24) & \counter|s_count\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count[27]~24_combout\,
	datab => \counter|s_count\(24),
	datac => \counter|s_count\(26),
	datad => \counter|s_count\(25),
	combout => \counter|s_count[26]~26_combout\);

-- Location: FF_X99_Y42_N17
\counter|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[26]~26_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(26));

-- Location: LCCOMB_X98_Y42_N8
\counter|s_count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~27_combout\ = (\counter|s_count\(26) & (\counter|s_count\(27) $ (((\counter|s_count\(24) & \counter|s_count\(25)))))) # (!\counter|s_count\(26) & (\counter|s_count\(27) & ((\counter|s_count\(25)) # (!\counter|s_count\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(26),
	datab => \counter|s_count\(24),
	datac => \counter|s_count\(27),
	datad => \counter|s_count\(25),
	combout => \counter|s_count~27_combout\);

-- Location: FF_X98_Y42_N9
\counter|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~27_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[27]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(27));

-- Location: LCCOMB_X90_Y35_N2
\hexdisplay|s_registerOut[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[27]~27_combout\ = (\counter|s_count\(27)) # ((!\main_fsm|PS.E~_Duplicate_1_q\ & !\main_fsm|PS.G~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datab => \main_fsm|PS.G~q\,
	datad => \counter|s_count\(27),
	combout => \hexdisplay|s_registerOut[27]~27_combout\);

-- Location: LCCOMB_X90_Y35_N24
\hexdisplay|s_registerOut[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[26]~26_combout\ = (\counter|s_count\(26)) # ((!\main_fsm|PS.E~_Duplicate_1_q\ & !\main_fsm|PS.G~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datab => \main_fsm|PS.G~q\,
	datad => \counter|s_count\(26),
	combout => \hexdisplay|s_registerOut[26]~26_combout\);

-- Location: LCCOMB_X98_Y42_N30
\hexdisplay|s_registerOut[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[25]~25_combout\ = (\counter|s_count\(25) & ((\main_fsm|PS.E~_Duplicate_1_q\) # (\main_fsm|PS.G~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datac => \main_fsm|PS.G~q\,
	datad => \counter|s_count\(25),
	combout => \hexdisplay|s_registerOut[25]~25_combout\);

-- Location: LCCOMB_X98_Y42_N26
\hexdisplay|s_registerOut[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[24]~24_combout\ = (\counter|s_count\(24) & ((\main_fsm|PS.E~_Duplicate_1_q\) # (\main_fsm|PS.G~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datac => \main_fsm|PS.G~q\,
	datad => \counter|s_count\(24),
	combout => \hexdisplay|s_registerOut[24]~24_combout\);

-- Location: LCCOMB_X90_Y3_N24
\hexdisplay|disp_6_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_6_decoder|Mux6~0_combout\ = (\hexdisplay|s_registerOut[25]~25_combout\ & (\hexdisplay|s_registerOut[27]~27_combout\ & ((\hexdisplay|s_registerOut[24]~24_combout\) # (!\hexdisplay|s_registerOut[26]~26_combout\)))) # 
-- (!\hexdisplay|s_registerOut[25]~25_combout\ & (\hexdisplay|s_registerOut[26]~26_combout\ $ (((!\hexdisplay|s_registerOut[27]~27_combout\ & \hexdisplay|s_registerOut[24]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[27]~27_combout\,
	datab => \hexdisplay|s_registerOut[26]~26_combout\,
	datac => \hexdisplay|s_registerOut[25]~25_combout\,
	datad => \hexdisplay|s_registerOut[24]~24_combout\,
	combout => \hexdisplay|disp_6_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X90_Y3_N18
\hexdisplay|disp_6_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_6_decoder|Mux5~0_combout\ = (\hexdisplay|s_registerOut[27]~27_combout\ & ((\hexdisplay|s_registerOut[26]~26_combout\) # ((\hexdisplay|s_registerOut[25]~25_combout\)))) # (!\hexdisplay|s_registerOut[27]~27_combout\ & 
-- (\hexdisplay|s_registerOut[26]~26_combout\ & (\hexdisplay|s_registerOut[25]~25_combout\ $ (\hexdisplay|s_registerOut[24]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[27]~27_combout\,
	datab => \hexdisplay|s_registerOut[26]~26_combout\,
	datac => \hexdisplay|s_registerOut[25]~25_combout\,
	datad => \hexdisplay|s_registerOut[24]~24_combout\,
	combout => \hexdisplay|disp_6_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X90_Y3_N20
\hexdisplay|disp_6_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_6_decoder|Mux4~0_combout\ = (\hexdisplay|s_registerOut[24]~24_combout\ & (\hexdisplay|s_registerOut[27]~27_combout\ & ((\hexdisplay|s_registerOut[25]~25_combout\)))) # (!\hexdisplay|s_registerOut[24]~24_combout\ & 
-- ((\hexdisplay|s_registerOut[26]~26_combout\ & (\hexdisplay|s_registerOut[27]~27_combout\)) # (!\hexdisplay|s_registerOut[26]~26_combout\ & ((\hexdisplay|s_registerOut[25]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[27]~27_combout\,
	datab => \hexdisplay|s_registerOut[26]~26_combout\,
	datac => \hexdisplay|s_registerOut[25]~25_combout\,
	datad => \hexdisplay|s_registerOut[24]~24_combout\,
	combout => \hexdisplay|disp_6_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X90_Y3_N26
\hexdisplay|disp_6_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_6_decoder|Mux3~0_combout\ = (\hexdisplay|s_registerOut[26]~26_combout\ & ((\hexdisplay|s_registerOut[25]~25_combout\ $ (!\hexdisplay|s_registerOut[24]~24_combout\)))) # (!\hexdisplay|s_registerOut[26]~26_combout\ & 
-- ((\hexdisplay|s_registerOut[27]~27_combout\ & (\hexdisplay|s_registerOut[25]~25_combout\)) # (!\hexdisplay|s_registerOut[27]~27_combout\ & (!\hexdisplay|s_registerOut[25]~25_combout\ & \hexdisplay|s_registerOut[24]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[27]~27_combout\,
	datab => \hexdisplay|s_registerOut[26]~26_combout\,
	datac => \hexdisplay|s_registerOut[25]~25_combout\,
	datad => \hexdisplay|s_registerOut[24]~24_combout\,
	combout => \hexdisplay|disp_6_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X90_Y3_N12
\hexdisplay|disp_6_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_6_decoder|Mux2~0_combout\ = (\hexdisplay|s_registerOut[27]~27_combout\ & (\hexdisplay|s_registerOut[26]~26_combout\ $ (((\hexdisplay|s_registerOut[25]~25_combout\) # (\hexdisplay|s_registerOut[24]~24_combout\))))) # 
-- (!\hexdisplay|s_registerOut[27]~27_combout\ & ((\hexdisplay|s_registerOut[24]~24_combout\) # ((\hexdisplay|s_registerOut[26]~26_combout\ & !\hexdisplay|s_registerOut[25]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[27]~27_combout\,
	datab => \hexdisplay|s_registerOut[26]~26_combout\,
	datac => \hexdisplay|s_registerOut[25]~25_combout\,
	datad => \hexdisplay|s_registerOut[24]~24_combout\,
	combout => \hexdisplay|disp_6_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X90_Y3_N10
\hexdisplay|disp_6_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_6_decoder|Mux1~0_combout\ = (\hexdisplay|s_registerOut[26]~26_combout\ & ((\hexdisplay|s_registerOut[25]~25_combout\ & ((\hexdisplay|s_registerOut[24]~24_combout\))) # (!\hexdisplay|s_registerOut[25]~25_combout\ & 
-- (\hexdisplay|s_registerOut[27]~27_combout\)))) # (!\hexdisplay|s_registerOut[26]~26_combout\ & ((\hexdisplay|s_registerOut[25]~25_combout\) # ((!\hexdisplay|s_registerOut[27]~27_combout\ & \hexdisplay|s_registerOut[24]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[27]~27_combout\,
	datab => \hexdisplay|s_registerOut[26]~26_combout\,
	datac => \hexdisplay|s_registerOut[25]~25_combout\,
	datad => \hexdisplay|s_registerOut[24]~24_combout\,
	combout => \hexdisplay|disp_6_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X90_Y3_N28
\hexdisplay|disp_6_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_6_decoder|Mux0~0_combout\ = (\hexdisplay|s_registerOut[26]~26_combout\ & ((\hexdisplay|s_registerOut[27]~27_combout\ & ((\hexdisplay|s_registerOut[25]~25_combout\) # (\hexdisplay|s_registerOut[24]~24_combout\))) # 
-- (!\hexdisplay|s_registerOut[27]~27_combout\ & ((!\hexdisplay|s_registerOut[24]~24_combout\) # (!\hexdisplay|s_registerOut[25]~25_combout\))))) # (!\hexdisplay|s_registerOut[26]~26_combout\ & (\hexdisplay|s_registerOut[27]~27_combout\ $ 
-- ((\hexdisplay|s_registerOut[25]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[27]~27_combout\,
	datab => \hexdisplay|s_registerOut[26]~26_combout\,
	datac => \hexdisplay|s_registerOut[25]~25_combout\,
	datad => \hexdisplay|s_registerOut[24]~24_combout\,
	combout => \hexdisplay|disp_6_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X98_Y42_N22
\counter|s_count[28]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[28]~41_combout\ = !\counter|s_count\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(28),
	combout => \counter|s_count[28]~41_combout\);

-- Location: LCCOMB_X98_Y42_N2
\counter|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Equal6~0_combout\ = (!\counter|s_count\(25) & (\counter|s_count\(27) & (!\counter|s_count\(26) & \counter|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(25),
	datab => \counter|s_count\(27),
	datac => \counter|s_count\(26),
	datad => \counter|s_count\(24),
	combout => \counter|Equal6~0_combout\);

-- Location: LCCOMB_X98_Y42_N0
\counter|s_count[31]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[31]~28_combout\ = (\counter|Equal5~0_combout\ & \counter|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|Equal5~0_combout\,
	datad => \counter|Equal4~0_combout\,
	combout => \counter|s_count[31]~28_combout\);

-- Location: LCCOMB_X98_Y42_N18
\counter|s_count[31]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[31]~29_combout\ = (\counter|Equal3~0_combout\ & (\counter|Equal6~0_combout\ & (\counter|s_count[15]~11_combout\ & \counter|s_count[31]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|Equal3~0_combout\,
	datab => \counter|Equal6~0_combout\,
	datac => \counter|s_count[15]~11_combout\,
	datad => \counter|s_count[31]~28_combout\,
	combout => \counter|s_count[31]~29_combout\);

-- Location: FF_X98_Y42_N23
\counter|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[28]~41_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[31]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(28));

-- Location: LCCOMB_X98_Y42_N24
\counter|s_count[31]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[31]~32_combout\ = (\counter|s_count\(30) & (\counter|s_count\(29) & \counter|s_count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(30),
	datab => \counter|s_count\(29),
	datac => \counter|s_count\(28),
	combout => \counter|s_count[31]~32_combout\);

-- Location: LCCOMB_X99_Y42_N6
\counter|s_count[31]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[31]~33_combout\ = \counter|s_count\(31) $ (((\counter|s_count[27]~24_combout\ & (\counter|s_count[31]~32_combout\ & \counter|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count[27]~24_combout\,
	datab => \counter|s_count[31]~32_combout\,
	datac => \counter|s_count\(31),
	datad => \counter|Equal6~0_combout\,
	combout => \counter|s_count[31]~33_combout\);

-- Location: FF_X99_Y42_N7
\counter|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count[31]~33_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(31));

-- Location: LCCOMB_X98_Y42_N16
\counter|s_count~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~30_combout\ = (\counter|s_count\(28) & (!\counter|s_count\(29) & ((\counter|s_count\(31)) # (!\counter|s_count\(30))))) # (!\counter|s_count\(28) & (((\counter|s_count\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(28),
	datab => \counter|s_count\(31),
	datac => \counter|s_count\(29),
	datad => \counter|s_count\(30),
	combout => \counter|s_count~30_combout\);

-- Location: FF_X98_Y42_N17
\counter|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~30_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[31]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(29));

-- Location: LCCOMB_X98_Y42_N10
\counter|s_count~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count~31_combout\ = (\counter|s_count\(28) & ((\counter|s_count\(29) & (!\counter|s_count\(30))) # (!\counter|s_count\(29) & (\counter|s_count\(30) & \counter|s_count\(31))))) # (!\counter|s_count\(28) & (((\counter|s_count\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(28),
	datab => \counter|s_count\(29),
	datac => \counter|s_count\(30),
	datad => \counter|s_count\(31),
	combout => \counter|s_count~31_combout\);

-- Location: FF_X98_Y42_N11
\counter|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_10000hz|clkOut~clkctrl_outclk\,
	d => \counter|s_count~31_combout\,
	clrn => \key1_debounce|ALT_INV_s_pulsedOut~q\,
	ena => \counter|s_count[31]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(30));

-- Location: LCCOMB_X90_Y35_N12
\hexdisplay|s_registerOut[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[30]~30_combout\ = (\counter|s_count\(30)) # ((!\main_fsm|PS.E~_Duplicate_1_q\ & !\main_fsm|PS.G~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datab => \main_fsm|PS.G~q\,
	datad => \counter|s_count\(30),
	combout => \hexdisplay|s_registerOut[30]~30_combout\);

-- Location: LCCOMB_X90_Y35_N18
\hexdisplay|s_registerOut[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[29]~29_combout\ = (\counter|s_count\(29) & ((\main_fsm|PS.E~_Duplicate_1_q\) # (\main_fsm|PS.G~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datab => \main_fsm|PS.G~q\,
	datad => \counter|s_count\(29),
	combout => \hexdisplay|s_registerOut[29]~29_combout\);

-- Location: LCCOMB_X98_Y42_N20
\hexdisplay|s_registerOut[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[31]~31_combout\ = (\counter|s_count\(31)) # ((!\main_fsm|PS.E~_Duplicate_1_q\ & !\main_fsm|PS.G~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datac => \main_fsm|PS.G~q\,
	datad => \counter|s_count\(31),
	combout => \hexdisplay|s_registerOut[31]~31_combout\);

-- Location: LCCOMB_X90_Y35_N28
\hexdisplay|s_registerOut[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|s_registerOut[28]~28_combout\ = (\counter|s_count\(28) & ((\main_fsm|PS.E~_Duplicate_1_q\) # (\main_fsm|PS.G~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|PS.E~_Duplicate_1_q\,
	datab => \main_fsm|PS.G~q\,
	datad => \counter|s_count\(28),
	combout => \hexdisplay|s_registerOut[28]~28_combout\);

-- Location: LCCOMB_X90_Y35_N22
\hexdisplay|disp_7_decoder|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_7_decoder|Mux6~0_combout\ = (\hexdisplay|s_registerOut[29]~29_combout\ & (\hexdisplay|s_registerOut[31]~31_combout\ & ((\hexdisplay|s_registerOut[28]~28_combout\) # (!\hexdisplay|s_registerOut[30]~30_combout\)))) # 
-- (!\hexdisplay|s_registerOut[29]~29_combout\ & (\hexdisplay|s_registerOut[30]~30_combout\ $ (((!\hexdisplay|s_registerOut[31]~31_combout\ & \hexdisplay|s_registerOut[28]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[30]~30_combout\,
	datab => \hexdisplay|s_registerOut[29]~29_combout\,
	datac => \hexdisplay|s_registerOut[31]~31_combout\,
	datad => \hexdisplay|s_registerOut[28]~28_combout\,
	combout => \hexdisplay|disp_7_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X90_Y35_N20
\hexdisplay|disp_7_decoder|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_7_decoder|Mux5~0_combout\ = (\hexdisplay|s_registerOut[30]~30_combout\ & ((\hexdisplay|s_registerOut[31]~31_combout\) # (\hexdisplay|s_registerOut[29]~29_combout\ $ (\hexdisplay|s_registerOut[28]~28_combout\)))) # 
-- (!\hexdisplay|s_registerOut[30]~30_combout\ & (\hexdisplay|s_registerOut[29]~29_combout\ & (\hexdisplay|s_registerOut[31]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[30]~30_combout\,
	datab => \hexdisplay|s_registerOut[29]~29_combout\,
	datac => \hexdisplay|s_registerOut[31]~31_combout\,
	datad => \hexdisplay|s_registerOut[28]~28_combout\,
	combout => \hexdisplay|disp_7_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X90_Y35_N30
\hexdisplay|disp_7_decoder|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_7_decoder|Mux4~0_combout\ = (\hexdisplay|s_registerOut[28]~28_combout\ & (((\hexdisplay|s_registerOut[29]~29_combout\ & \hexdisplay|s_registerOut[31]~31_combout\)))) # (!\hexdisplay|s_registerOut[28]~28_combout\ & 
-- ((\hexdisplay|s_registerOut[30]~30_combout\ & ((\hexdisplay|s_registerOut[31]~31_combout\))) # (!\hexdisplay|s_registerOut[30]~30_combout\ & (\hexdisplay|s_registerOut[29]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[30]~30_combout\,
	datab => \hexdisplay|s_registerOut[29]~29_combout\,
	datac => \hexdisplay|s_registerOut[31]~31_combout\,
	datad => \hexdisplay|s_registerOut[28]~28_combout\,
	combout => \hexdisplay|disp_7_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X90_Y35_N4
\hexdisplay|disp_7_decoder|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_7_decoder|Mux3~0_combout\ = (\hexdisplay|s_registerOut[30]~30_combout\ & (\hexdisplay|s_registerOut[29]~29_combout\ $ (((!\hexdisplay|s_registerOut[28]~28_combout\))))) # (!\hexdisplay|s_registerOut[30]~30_combout\ & 
-- ((\hexdisplay|s_registerOut[29]~29_combout\ & (\hexdisplay|s_registerOut[31]~31_combout\)) # (!\hexdisplay|s_registerOut[29]~29_combout\ & (!\hexdisplay|s_registerOut[31]~31_combout\ & \hexdisplay|s_registerOut[28]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[30]~30_combout\,
	datab => \hexdisplay|s_registerOut[29]~29_combout\,
	datac => \hexdisplay|s_registerOut[31]~31_combout\,
	datad => \hexdisplay|s_registerOut[28]~28_combout\,
	combout => \hexdisplay|disp_7_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X90_Y35_N10
\hexdisplay|disp_7_decoder|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_7_decoder|Mux2~0_combout\ = (\hexdisplay|s_registerOut[30]~30_combout\ & ((\hexdisplay|s_registerOut[28]~28_combout\ & ((!\hexdisplay|s_registerOut[31]~31_combout\))) # (!\hexdisplay|s_registerOut[28]~28_combout\ & 
-- (!\hexdisplay|s_registerOut[29]~29_combout\)))) # (!\hexdisplay|s_registerOut[30]~30_combout\ & ((\hexdisplay|s_registerOut[28]~28_combout\) # ((\hexdisplay|s_registerOut[29]~29_combout\ & \hexdisplay|s_registerOut[31]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[30]~30_combout\,
	datab => \hexdisplay|s_registerOut[29]~29_combout\,
	datac => \hexdisplay|s_registerOut[31]~31_combout\,
	datad => \hexdisplay|s_registerOut[28]~28_combout\,
	combout => \hexdisplay|disp_7_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X90_Y35_N8
\hexdisplay|disp_7_decoder|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_7_decoder|Mux1~0_combout\ = (\hexdisplay|s_registerOut[30]~30_combout\ & ((\hexdisplay|s_registerOut[29]~29_combout\ & ((\hexdisplay|s_registerOut[28]~28_combout\))) # (!\hexdisplay|s_registerOut[29]~29_combout\ & 
-- (\hexdisplay|s_registerOut[31]~31_combout\)))) # (!\hexdisplay|s_registerOut[30]~30_combout\ & ((\hexdisplay|s_registerOut[29]~29_combout\) # ((!\hexdisplay|s_registerOut[31]~31_combout\ & \hexdisplay|s_registerOut[28]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[30]~30_combout\,
	datab => \hexdisplay|s_registerOut[29]~29_combout\,
	datac => \hexdisplay|s_registerOut[31]~31_combout\,
	datad => \hexdisplay|s_registerOut[28]~28_combout\,
	combout => \hexdisplay|disp_7_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X90_Y35_N26
\hexdisplay|disp_7_decoder|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay|disp_7_decoder|Mux0~0_combout\ = (\hexdisplay|s_registerOut[30]~30_combout\ & ((\hexdisplay|s_registerOut[29]~29_combout\ & ((\hexdisplay|s_registerOut[31]~31_combout\) # (!\hexdisplay|s_registerOut[28]~28_combout\))) # 
-- (!\hexdisplay|s_registerOut[29]~29_combout\ & ((\hexdisplay|s_registerOut[28]~28_combout\) # (!\hexdisplay|s_registerOut[31]~31_combout\))))) # (!\hexdisplay|s_registerOut[30]~30_combout\ & (\hexdisplay|s_registerOut[29]~29_combout\ $ 
-- ((\hexdisplay|s_registerOut[31]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay|s_registerOut[30]~30_combout\,
	datab => \hexdisplay|s_registerOut[29]~29_combout\,
	datac => \hexdisplay|s_registerOut[31]~31_combout\,
	datad => \hexdisplay|s_registerOut[28]~28_combout\,
	combout => \hexdisplay|disp_7_decoder|Mux0~0_combout\);

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

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


