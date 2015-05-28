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

-- DATE "05/26/2015 12:23:37"

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
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END RandomGeneratorDemo;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(5 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkdivider_50000hz|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rnd_generator|checkrng|process_0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~0_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~1\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~2_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~3\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~4_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~5\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~7\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~8_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Equal0~9_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~9\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~10_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|s_counter~4_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~11\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~12_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|s_counter~3_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~13\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~14_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|s_counter~2_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~15\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~16_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|s_counter~1_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~17\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~19\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~20_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~21\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~22_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~23\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~24_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~25\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~26_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~27\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~28_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~29\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~30_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~31\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~32_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~33\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~34_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~35\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~36_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~37\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~38_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~39\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~40_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~41\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~42_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~43\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~44_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Equal0~5_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~45\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~46_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~47\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~48_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~49\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~50_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~51\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~52_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Equal0~6_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~53\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~54_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~55\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~56_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~57\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~58_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~59\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~60_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Equal0~7_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Equal0~10_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~6_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|s_counter~5_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Equal0~1_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Equal0~0_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Equal0~2_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Equal0~3_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Equal0~4_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Add0~18_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|s_counter~0_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|clkOut~0_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|Equal0~8_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|clkOut~1_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|clkOut~feeder_combout\ : std_logic;
SIGNAL \clkdivider_50000hz|clkOut~q\ : std_logic;
SIGNAL \clkdivider_50000hz|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[2]~12_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[2]~13_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[25]~84_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[47]~112_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[47]~28_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[47]~113_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[41]~27_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[5]~21_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[51]~29_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[25]~83_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[25]~85_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[26]~87_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[22]~67_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[48]~115_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[48]~114_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[58]~86_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[26]~88_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[33]~52_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[33]~95_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[33]~96_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[45]~110_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[50]~48_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[13]~65_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[3]~8_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[12]~9_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[3]~10_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[22]~80_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[22]~79_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[22]~81_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[63]~30_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[13]~64_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[13]~66_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[59]~73_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[18]~74_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[18]~75_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[45]~32_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[45]~111_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[60]~129_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[20]~82_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[60]~130_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[60]~131_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[14]~62_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[55]~104_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[42]~105_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[42]~106_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[9]~58_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[10]~53_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[43]~59_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[9]~60_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[17]~69_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[17]~68_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[17]~70_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[27]~34_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[37]~36_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[37]~37_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[40]~35_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[40]~107_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[40]~108_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[50]~24_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[50]~117_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[50]~135_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[57]~77_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[21]~76_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[21]~78_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[63]~118_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[55]~119_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[23]~46_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[23]~45_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[23]~47_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[39]~39_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[39]~38_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[12]~63_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[56]~122_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[56]~56_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[56]~123_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[52]~120_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[61]~132_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[30]~93_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[28]~90_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[59]~89_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[28]~91_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[4]~18_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[7]~51_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[44]~50_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[59]~124_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[56]~23_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[6]~25_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[6]~26_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[54]~121_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[36]~49_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[0]~14_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[0]~15_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~2_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~1_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~0_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~3_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~4_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~7_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~8_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~6_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~5_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~9_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~16_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~18_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~15_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~17_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~19_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~10_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~11_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~12_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~13_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~14_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|Equal0~20_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|state~0_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[35]~100_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[31]~40_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[10]~54_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[10]~55_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[29]~92_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[62]~133_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[62]~134_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[15]~16_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[1]~17_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[58]~127_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[58]~128_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[34]~98_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[34]~97_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[34]~99_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[15]~61_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[49]~116_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[43]~109_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[11]~57_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[63]~31_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[32]~94_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[46]~41_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[57]~19_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[19]~71_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[19]~72_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[38]~101_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[38]~102_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[38]~103_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[57]~125_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[57]~126_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[53]~43_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[53]~42_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[53]~44_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[24]~11_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[24]~33_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[5]~20_combout\ : std_logic;
SIGNAL \rnd_generator|rnd_gen|next_state[5]~22_combout\ : std_logic;
SIGNAL \rnd_generator|shiftreg|dataOut[5]~4_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \rnd_generator|shiftreg|dataOut[0]~2_combout\ : std_logic;
SIGNAL \rnd_generator|shiftreg|dataOut[2]~1_combout\ : std_logic;
SIGNAL \rnd_generator|shiftreg|dataOut[1]~3_combout\ : std_logic;
SIGNAL \rnd_generator|checkrng|process_0~0_combout\ : std_logic;
SIGNAL \rnd_generator|shiftreg|dataOut[3]~0_combout\ : std_logic;
SIGNAL \rnd_generator|s_en~0_combout\ : std_logic;
SIGNAL \rnd_generator|s_en~combout\ : std_logic;
SIGNAL \rnd_generator|checkrng|process_0~1_combout\ : std_logic;
SIGNAL \rnd_generator|checkrng|process_0~1clkctrl_outclk\ : std_logic;
SIGNAL \clkdivider_50000hz|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \rnd_generator|rnd_gen|state\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \rnd_generator|shiftreg|dataOut\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \rnd_generator|checkrng|dataOut\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \rnd_generator|rnd_gen|next_state\ : std_logic_vector(63 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clkdivider_50000hz|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkdivider_50000hz|clkOut~q\);

\rnd_generator|checkrng|process_0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rnd_generator|checkrng|process_0~1_combout\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rnd_generator|checkrng|process_0~1_combout\,
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
	i => \rnd_generator|checkrng|dataOut\(0),
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
	i => \rnd_generator|checkrng|dataOut\(1),
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
	i => \rnd_generator|checkrng|dataOut\(2),
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
	i => \rnd_generator|checkrng|dataOut\(3),
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
	i => \rnd_generator|checkrng|dataOut\(4),
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
	i => \rnd_generator|checkrng|dataOut\(5),
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

-- Location: LCCOMB_X55_Y48_N2
\clkdivider_50000hz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~0_combout\ = \clkdivider_50000hz|s_counter\(0) $ (VCC)
-- \clkdivider_50000hz|Add0~1\ = CARRY(\clkdivider_50000hz|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(0),
	datad => VCC,
	combout => \clkdivider_50000hz|Add0~0_combout\,
	cout => \clkdivider_50000hz|Add0~1\);

-- Location: FF_X55_Y48_N3
\clkdivider_50000hz|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(0));

-- Location: LCCOMB_X55_Y48_N4
\clkdivider_50000hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~2_combout\ = (\clkdivider_50000hz|s_counter\(1) & (!\clkdivider_50000hz|Add0~1\)) # (!\clkdivider_50000hz|s_counter\(1) & ((\clkdivider_50000hz|Add0~1\) # (GND)))
-- \clkdivider_50000hz|Add0~3\ = CARRY((!\clkdivider_50000hz|Add0~1\) # (!\clkdivider_50000hz|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(1),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~1\,
	combout => \clkdivider_50000hz|Add0~2_combout\,
	cout => \clkdivider_50000hz|Add0~3\);

-- Location: FF_X55_Y48_N5
\clkdivider_50000hz|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(1));

-- Location: LCCOMB_X55_Y48_N6
\clkdivider_50000hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~4_combout\ = (\clkdivider_50000hz|s_counter\(2) & (\clkdivider_50000hz|Add0~3\ $ (GND))) # (!\clkdivider_50000hz|s_counter\(2) & (!\clkdivider_50000hz|Add0~3\ & VCC))
-- \clkdivider_50000hz|Add0~5\ = CARRY((\clkdivider_50000hz|s_counter\(2) & !\clkdivider_50000hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(2),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~3\,
	combout => \clkdivider_50000hz|Add0~4_combout\,
	cout => \clkdivider_50000hz|Add0~5\);

-- Location: FF_X55_Y48_N7
\clkdivider_50000hz|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(2));

-- Location: LCCOMB_X55_Y48_N8
\clkdivider_50000hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~6_combout\ = (\clkdivider_50000hz|s_counter\(3) & (!\clkdivider_50000hz|Add0~5\)) # (!\clkdivider_50000hz|s_counter\(3) & ((\clkdivider_50000hz|Add0~5\) # (GND)))
-- \clkdivider_50000hz|Add0~7\ = CARRY((!\clkdivider_50000hz|Add0~5\) # (!\clkdivider_50000hz|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(3),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~5\,
	combout => \clkdivider_50000hz|Add0~6_combout\,
	cout => \clkdivider_50000hz|Add0~7\);

-- Location: LCCOMB_X55_Y48_N10
\clkdivider_50000hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~8_combout\ = (\clkdivider_50000hz|s_counter\(4) & (\clkdivider_50000hz|Add0~7\ $ (GND))) # (!\clkdivider_50000hz|s_counter\(4) & (!\clkdivider_50000hz|Add0~7\ & VCC))
-- \clkdivider_50000hz|Add0~9\ = CARRY((\clkdivider_50000hz|s_counter\(4) & !\clkdivider_50000hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(4),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~7\,
	combout => \clkdivider_50000hz|Add0~8_combout\,
	cout => \clkdivider_50000hz|Add0~9\);

-- Location: FF_X55_Y48_N11
\clkdivider_50000hz|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(4));

-- Location: LCCOMB_X56_Y48_N28
\clkdivider_50000hz|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Equal0~9_combout\ = (\clkdivider_50000hz|s_counter\(2) & (\clkdivider_50000hz|s_counter\(9) & !\clkdivider_50000hz|s_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(2),
	datac => \clkdivider_50000hz|s_counter\(9),
	datad => \clkdivider_50000hz|s_counter\(4),
	combout => \clkdivider_50000hz|Equal0~9_combout\);

-- Location: LCCOMB_X55_Y48_N12
\clkdivider_50000hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~10_combout\ = (\clkdivider_50000hz|s_counter\(5) & (!\clkdivider_50000hz|Add0~9\)) # (!\clkdivider_50000hz|s_counter\(5) & ((\clkdivider_50000hz|Add0~9\) # (GND)))
-- \clkdivider_50000hz|Add0~11\ = CARRY((!\clkdivider_50000hz|Add0~9\) # (!\clkdivider_50000hz|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(5),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~9\,
	combout => \clkdivider_50000hz|Add0~10_combout\,
	cout => \clkdivider_50000hz|Add0~11\);

-- Location: LCCOMB_X55_Y48_N0
\clkdivider_50000hz|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|s_counter~4_combout\ = (\clkdivider_50000hz|Add0~10_combout\ & (((!\clkdivider_50000hz|Equal0~10_combout\) # (!\clkdivider_50000hz|Equal0~9_combout\)) # (!\clkdivider_50000hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|Equal0~4_combout\,
	datab => \clkdivider_50000hz|Equal0~9_combout\,
	datac => \clkdivider_50000hz|Equal0~10_combout\,
	datad => \clkdivider_50000hz|Add0~10_combout\,
	combout => \clkdivider_50000hz|s_counter~4_combout\);

-- Location: FF_X55_Y48_N1
\clkdivider_50000hz|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(5));

-- Location: LCCOMB_X55_Y48_N14
\clkdivider_50000hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~12_combout\ = (\clkdivider_50000hz|s_counter\(6) & (\clkdivider_50000hz|Add0~11\ $ (GND))) # (!\clkdivider_50000hz|s_counter\(6) & (!\clkdivider_50000hz|Add0~11\ & VCC))
-- \clkdivider_50000hz|Add0~13\ = CARRY((\clkdivider_50000hz|s_counter\(6) & !\clkdivider_50000hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(6),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~11\,
	combout => \clkdivider_50000hz|Add0~12_combout\,
	cout => \clkdivider_50000hz|Add0~13\);

-- Location: LCCOMB_X56_Y48_N20
\clkdivider_50000hz|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|s_counter~3_combout\ = (\clkdivider_50000hz|Add0~12_combout\ & (((!\clkdivider_50000hz|Equal0~10_combout\) # (!\clkdivider_50000hz|Equal0~9_combout\)) # (!\clkdivider_50000hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|Equal0~4_combout\,
	datab => \clkdivider_50000hz|Equal0~9_combout\,
	datac => \clkdivider_50000hz|Equal0~10_combout\,
	datad => \clkdivider_50000hz|Add0~12_combout\,
	combout => \clkdivider_50000hz|s_counter~3_combout\);

-- Location: FF_X56_Y48_N21
\clkdivider_50000hz|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(6));

-- Location: LCCOMB_X55_Y48_N16
\clkdivider_50000hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~14_combout\ = (\clkdivider_50000hz|s_counter\(7) & (!\clkdivider_50000hz|Add0~13\)) # (!\clkdivider_50000hz|s_counter\(7) & ((\clkdivider_50000hz|Add0~13\) # (GND)))
-- \clkdivider_50000hz|Add0~15\ = CARRY((!\clkdivider_50000hz|Add0~13\) # (!\clkdivider_50000hz|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(7),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~13\,
	combout => \clkdivider_50000hz|Add0~14_combout\,
	cout => \clkdivider_50000hz|Add0~15\);

-- Location: LCCOMB_X56_Y48_N2
\clkdivider_50000hz|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|s_counter~2_combout\ = (\clkdivider_50000hz|Add0~14_combout\ & (((!\clkdivider_50000hz|Equal0~4_combout\) # (!\clkdivider_50000hz|Equal0~9_combout\)) # (!\clkdivider_50000hz|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|Equal0~10_combout\,
	datab => \clkdivider_50000hz|Equal0~9_combout\,
	datac => \clkdivider_50000hz|Equal0~4_combout\,
	datad => \clkdivider_50000hz|Add0~14_combout\,
	combout => \clkdivider_50000hz|s_counter~2_combout\);

-- Location: FF_X56_Y48_N3
\clkdivider_50000hz|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(7));

-- Location: LCCOMB_X55_Y48_N18
\clkdivider_50000hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~16_combout\ = (\clkdivider_50000hz|s_counter\(8) & (\clkdivider_50000hz|Add0~15\ $ (GND))) # (!\clkdivider_50000hz|s_counter\(8) & (!\clkdivider_50000hz|Add0~15\ & VCC))
-- \clkdivider_50000hz|Add0~17\ = CARRY((\clkdivider_50000hz|s_counter\(8) & !\clkdivider_50000hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(8),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~15\,
	combout => \clkdivider_50000hz|Add0~16_combout\,
	cout => \clkdivider_50000hz|Add0~17\);

-- Location: LCCOMB_X56_Y48_N30
\clkdivider_50000hz|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|s_counter~1_combout\ = (\clkdivider_50000hz|Add0~16_combout\ & (((!\clkdivider_50000hz|Equal0~10_combout\) # (!\clkdivider_50000hz|Equal0~9_combout\)) # (!\clkdivider_50000hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|Equal0~4_combout\,
	datab => \clkdivider_50000hz|Equal0~9_combout\,
	datac => \clkdivider_50000hz|Equal0~10_combout\,
	datad => \clkdivider_50000hz|Add0~16_combout\,
	combout => \clkdivider_50000hz|s_counter~1_combout\);

-- Location: FF_X56_Y48_N31
\clkdivider_50000hz|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(8));

-- Location: LCCOMB_X55_Y48_N20
\clkdivider_50000hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~18_combout\ = (\clkdivider_50000hz|s_counter\(9) & (!\clkdivider_50000hz|Add0~17\)) # (!\clkdivider_50000hz|s_counter\(9) & ((\clkdivider_50000hz|Add0~17\) # (GND)))
-- \clkdivider_50000hz|Add0~19\ = CARRY((!\clkdivider_50000hz|Add0~17\) # (!\clkdivider_50000hz|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(9),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~17\,
	combout => \clkdivider_50000hz|Add0~18_combout\,
	cout => \clkdivider_50000hz|Add0~19\);

-- Location: LCCOMB_X55_Y48_N22
\clkdivider_50000hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~20_combout\ = (\clkdivider_50000hz|s_counter\(10) & (\clkdivider_50000hz|Add0~19\ $ (GND))) # (!\clkdivider_50000hz|s_counter\(10) & (!\clkdivider_50000hz|Add0~19\ & VCC))
-- \clkdivider_50000hz|Add0~21\ = CARRY((\clkdivider_50000hz|s_counter\(10) & !\clkdivider_50000hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(10),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~19\,
	combout => \clkdivider_50000hz|Add0~20_combout\,
	cout => \clkdivider_50000hz|Add0~21\);

-- Location: FF_X55_Y48_N23
\clkdivider_50000hz|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(10));

-- Location: LCCOMB_X55_Y48_N24
\clkdivider_50000hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~22_combout\ = (\clkdivider_50000hz|s_counter\(11) & (!\clkdivider_50000hz|Add0~21\)) # (!\clkdivider_50000hz|s_counter\(11) & ((\clkdivider_50000hz|Add0~21\) # (GND)))
-- \clkdivider_50000hz|Add0~23\ = CARRY((!\clkdivider_50000hz|Add0~21\) # (!\clkdivider_50000hz|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(11),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~21\,
	combout => \clkdivider_50000hz|Add0~22_combout\,
	cout => \clkdivider_50000hz|Add0~23\);

-- Location: FF_X55_Y48_N25
\clkdivider_50000hz|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(11));

-- Location: LCCOMB_X55_Y48_N26
\clkdivider_50000hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~24_combout\ = (\clkdivider_50000hz|s_counter\(12) & (\clkdivider_50000hz|Add0~23\ $ (GND))) # (!\clkdivider_50000hz|s_counter\(12) & (!\clkdivider_50000hz|Add0~23\ & VCC))
-- \clkdivider_50000hz|Add0~25\ = CARRY((\clkdivider_50000hz|s_counter\(12) & !\clkdivider_50000hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(12),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~23\,
	combout => \clkdivider_50000hz|Add0~24_combout\,
	cout => \clkdivider_50000hz|Add0~25\);

-- Location: FF_X55_Y48_N27
\clkdivider_50000hz|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(12));

-- Location: LCCOMB_X55_Y48_N28
\clkdivider_50000hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~26_combout\ = (\clkdivider_50000hz|s_counter\(13) & (!\clkdivider_50000hz|Add0~25\)) # (!\clkdivider_50000hz|s_counter\(13) & ((\clkdivider_50000hz|Add0~25\) # (GND)))
-- \clkdivider_50000hz|Add0~27\ = CARRY((!\clkdivider_50000hz|Add0~25\) # (!\clkdivider_50000hz|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(13),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~25\,
	combout => \clkdivider_50000hz|Add0~26_combout\,
	cout => \clkdivider_50000hz|Add0~27\);

-- Location: FF_X55_Y48_N29
\clkdivider_50000hz|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(13));

-- Location: LCCOMB_X55_Y48_N30
\clkdivider_50000hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~28_combout\ = (\clkdivider_50000hz|s_counter\(14) & (\clkdivider_50000hz|Add0~27\ $ (GND))) # (!\clkdivider_50000hz|s_counter\(14) & (!\clkdivider_50000hz|Add0~27\ & VCC))
-- \clkdivider_50000hz|Add0~29\ = CARRY((\clkdivider_50000hz|s_counter\(14) & !\clkdivider_50000hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(14),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~27\,
	combout => \clkdivider_50000hz|Add0~28_combout\,
	cout => \clkdivider_50000hz|Add0~29\);

-- Location: FF_X55_Y48_N31
\clkdivider_50000hz|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(14));

-- Location: LCCOMB_X55_Y47_N0
\clkdivider_50000hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~30_combout\ = (\clkdivider_50000hz|s_counter\(15) & (!\clkdivider_50000hz|Add0~29\)) # (!\clkdivider_50000hz|s_counter\(15) & ((\clkdivider_50000hz|Add0~29\) # (GND)))
-- \clkdivider_50000hz|Add0~31\ = CARRY((!\clkdivider_50000hz|Add0~29\) # (!\clkdivider_50000hz|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(15),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~29\,
	combout => \clkdivider_50000hz|Add0~30_combout\,
	cout => \clkdivider_50000hz|Add0~31\);

-- Location: FF_X55_Y47_N1
\clkdivider_50000hz|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(15));

-- Location: LCCOMB_X55_Y47_N2
\clkdivider_50000hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~32_combout\ = (\clkdivider_50000hz|s_counter\(16) & (\clkdivider_50000hz|Add0~31\ $ (GND))) # (!\clkdivider_50000hz|s_counter\(16) & (!\clkdivider_50000hz|Add0~31\ & VCC))
-- \clkdivider_50000hz|Add0~33\ = CARRY((\clkdivider_50000hz|s_counter\(16) & !\clkdivider_50000hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(16),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~31\,
	combout => \clkdivider_50000hz|Add0~32_combout\,
	cout => \clkdivider_50000hz|Add0~33\);

-- Location: FF_X55_Y47_N3
\clkdivider_50000hz|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(16));

-- Location: LCCOMB_X55_Y47_N4
\clkdivider_50000hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~34_combout\ = (\clkdivider_50000hz|s_counter\(17) & (!\clkdivider_50000hz|Add0~33\)) # (!\clkdivider_50000hz|s_counter\(17) & ((\clkdivider_50000hz|Add0~33\) # (GND)))
-- \clkdivider_50000hz|Add0~35\ = CARRY((!\clkdivider_50000hz|Add0~33\) # (!\clkdivider_50000hz|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(17),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~33\,
	combout => \clkdivider_50000hz|Add0~34_combout\,
	cout => \clkdivider_50000hz|Add0~35\);

-- Location: FF_X55_Y47_N5
\clkdivider_50000hz|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(17));

-- Location: LCCOMB_X55_Y47_N6
\clkdivider_50000hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~36_combout\ = (\clkdivider_50000hz|s_counter\(18) & (\clkdivider_50000hz|Add0~35\ $ (GND))) # (!\clkdivider_50000hz|s_counter\(18) & (!\clkdivider_50000hz|Add0~35\ & VCC))
-- \clkdivider_50000hz|Add0~37\ = CARRY((\clkdivider_50000hz|s_counter\(18) & !\clkdivider_50000hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(18),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~35\,
	combout => \clkdivider_50000hz|Add0~36_combout\,
	cout => \clkdivider_50000hz|Add0~37\);

-- Location: FF_X55_Y47_N7
\clkdivider_50000hz|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(18));

-- Location: LCCOMB_X55_Y47_N8
\clkdivider_50000hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~38_combout\ = (\clkdivider_50000hz|s_counter\(19) & (!\clkdivider_50000hz|Add0~37\)) # (!\clkdivider_50000hz|s_counter\(19) & ((\clkdivider_50000hz|Add0~37\) # (GND)))
-- \clkdivider_50000hz|Add0~39\ = CARRY((!\clkdivider_50000hz|Add0~37\) # (!\clkdivider_50000hz|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(19),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~37\,
	combout => \clkdivider_50000hz|Add0~38_combout\,
	cout => \clkdivider_50000hz|Add0~39\);

-- Location: FF_X55_Y47_N9
\clkdivider_50000hz|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(19));

-- Location: LCCOMB_X55_Y47_N10
\clkdivider_50000hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~40_combout\ = (\clkdivider_50000hz|s_counter\(20) & (\clkdivider_50000hz|Add0~39\ $ (GND))) # (!\clkdivider_50000hz|s_counter\(20) & (!\clkdivider_50000hz|Add0~39\ & VCC))
-- \clkdivider_50000hz|Add0~41\ = CARRY((\clkdivider_50000hz|s_counter\(20) & !\clkdivider_50000hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(20),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~39\,
	combout => \clkdivider_50000hz|Add0~40_combout\,
	cout => \clkdivider_50000hz|Add0~41\);

-- Location: FF_X55_Y47_N11
\clkdivider_50000hz|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(20));

-- Location: LCCOMB_X55_Y47_N12
\clkdivider_50000hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~42_combout\ = (\clkdivider_50000hz|s_counter\(21) & (!\clkdivider_50000hz|Add0~41\)) # (!\clkdivider_50000hz|s_counter\(21) & ((\clkdivider_50000hz|Add0~41\) # (GND)))
-- \clkdivider_50000hz|Add0~43\ = CARRY((!\clkdivider_50000hz|Add0~41\) # (!\clkdivider_50000hz|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(21),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~41\,
	combout => \clkdivider_50000hz|Add0~42_combout\,
	cout => \clkdivider_50000hz|Add0~43\);

-- Location: FF_X55_Y47_N13
\clkdivider_50000hz|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(21));

-- Location: LCCOMB_X55_Y47_N14
\clkdivider_50000hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~44_combout\ = (\clkdivider_50000hz|s_counter\(22) & (\clkdivider_50000hz|Add0~43\ $ (GND))) # (!\clkdivider_50000hz|s_counter\(22) & (!\clkdivider_50000hz|Add0~43\ & VCC))
-- \clkdivider_50000hz|Add0~45\ = CARRY((\clkdivider_50000hz|s_counter\(22) & !\clkdivider_50000hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(22),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~43\,
	combout => \clkdivider_50000hz|Add0~44_combout\,
	cout => \clkdivider_50000hz|Add0~45\);

-- Location: FF_X55_Y47_N15
\clkdivider_50000hz|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(22));

-- Location: LCCOMB_X56_Y47_N6
\clkdivider_50000hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Equal0~5_combout\ = (!\clkdivider_50000hz|s_counter\(19) & (!\clkdivider_50000hz|s_counter\(22) & (!\clkdivider_50000hz|s_counter\(21) & !\clkdivider_50000hz|s_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(19),
	datab => \clkdivider_50000hz|s_counter\(22),
	datac => \clkdivider_50000hz|s_counter\(21),
	datad => \clkdivider_50000hz|s_counter\(20),
	combout => \clkdivider_50000hz|Equal0~5_combout\);

-- Location: LCCOMB_X55_Y47_N16
\clkdivider_50000hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~46_combout\ = (\clkdivider_50000hz|s_counter\(23) & (!\clkdivider_50000hz|Add0~45\)) # (!\clkdivider_50000hz|s_counter\(23) & ((\clkdivider_50000hz|Add0~45\) # (GND)))
-- \clkdivider_50000hz|Add0~47\ = CARRY((!\clkdivider_50000hz|Add0~45\) # (!\clkdivider_50000hz|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(23),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~45\,
	combout => \clkdivider_50000hz|Add0~46_combout\,
	cout => \clkdivider_50000hz|Add0~47\);

-- Location: FF_X55_Y47_N17
\clkdivider_50000hz|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(23));

-- Location: LCCOMB_X55_Y47_N18
\clkdivider_50000hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~48_combout\ = (\clkdivider_50000hz|s_counter\(24) & (\clkdivider_50000hz|Add0~47\ $ (GND))) # (!\clkdivider_50000hz|s_counter\(24) & (!\clkdivider_50000hz|Add0~47\ & VCC))
-- \clkdivider_50000hz|Add0~49\ = CARRY((\clkdivider_50000hz|s_counter\(24) & !\clkdivider_50000hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(24),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~47\,
	combout => \clkdivider_50000hz|Add0~48_combout\,
	cout => \clkdivider_50000hz|Add0~49\);

-- Location: FF_X55_Y47_N19
\clkdivider_50000hz|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(24));

-- Location: LCCOMB_X55_Y47_N20
\clkdivider_50000hz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~50_combout\ = (\clkdivider_50000hz|s_counter\(25) & (!\clkdivider_50000hz|Add0~49\)) # (!\clkdivider_50000hz|s_counter\(25) & ((\clkdivider_50000hz|Add0~49\) # (GND)))
-- \clkdivider_50000hz|Add0~51\ = CARRY((!\clkdivider_50000hz|Add0~49\) # (!\clkdivider_50000hz|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(25),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~49\,
	combout => \clkdivider_50000hz|Add0~50_combout\,
	cout => \clkdivider_50000hz|Add0~51\);

-- Location: FF_X55_Y47_N21
\clkdivider_50000hz|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(25));

-- Location: LCCOMB_X55_Y47_N22
\clkdivider_50000hz|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~52_combout\ = (\clkdivider_50000hz|s_counter\(26) & (\clkdivider_50000hz|Add0~51\ $ (GND))) # (!\clkdivider_50000hz|s_counter\(26) & (!\clkdivider_50000hz|Add0~51\ & VCC))
-- \clkdivider_50000hz|Add0~53\ = CARRY((\clkdivider_50000hz|s_counter\(26) & !\clkdivider_50000hz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(26),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~51\,
	combout => \clkdivider_50000hz|Add0~52_combout\,
	cout => \clkdivider_50000hz|Add0~53\);

-- Location: FF_X55_Y47_N23
\clkdivider_50000hz|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(26));

-- Location: LCCOMB_X56_Y47_N24
\clkdivider_50000hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Equal0~6_combout\ = (!\clkdivider_50000hz|s_counter\(23) & (!\clkdivider_50000hz|s_counter\(25) & (!\clkdivider_50000hz|s_counter\(24) & !\clkdivider_50000hz|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(23),
	datab => \clkdivider_50000hz|s_counter\(25),
	datac => \clkdivider_50000hz|s_counter\(24),
	datad => \clkdivider_50000hz|s_counter\(26),
	combout => \clkdivider_50000hz|Equal0~6_combout\);

-- Location: LCCOMB_X55_Y47_N24
\clkdivider_50000hz|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~54_combout\ = (\clkdivider_50000hz|s_counter\(27) & (!\clkdivider_50000hz|Add0~53\)) # (!\clkdivider_50000hz|s_counter\(27) & ((\clkdivider_50000hz|Add0~53\) # (GND)))
-- \clkdivider_50000hz|Add0~55\ = CARRY((!\clkdivider_50000hz|Add0~53\) # (!\clkdivider_50000hz|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(27),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~53\,
	combout => \clkdivider_50000hz|Add0~54_combout\,
	cout => \clkdivider_50000hz|Add0~55\);

-- Location: FF_X55_Y47_N25
\clkdivider_50000hz|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(27));

-- Location: LCCOMB_X55_Y47_N26
\clkdivider_50000hz|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~56_combout\ = (\clkdivider_50000hz|s_counter\(28) & (\clkdivider_50000hz|Add0~55\ $ (GND))) # (!\clkdivider_50000hz|s_counter\(28) & (!\clkdivider_50000hz|Add0~55\ & VCC))
-- \clkdivider_50000hz|Add0~57\ = CARRY((\clkdivider_50000hz|s_counter\(28) & !\clkdivider_50000hz|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(28),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~55\,
	combout => \clkdivider_50000hz|Add0~56_combout\,
	cout => \clkdivider_50000hz|Add0~57\);

-- Location: FF_X55_Y47_N27
\clkdivider_50000hz|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(28));

-- Location: LCCOMB_X55_Y47_N28
\clkdivider_50000hz|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~58_combout\ = (\clkdivider_50000hz|s_counter\(29) & (!\clkdivider_50000hz|Add0~57\)) # (!\clkdivider_50000hz|s_counter\(29) & ((\clkdivider_50000hz|Add0~57\) # (GND)))
-- \clkdivider_50000hz|Add0~59\ = CARRY((!\clkdivider_50000hz|Add0~57\) # (!\clkdivider_50000hz|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(29),
	datad => VCC,
	cin => \clkdivider_50000hz|Add0~57\,
	combout => \clkdivider_50000hz|Add0~58_combout\,
	cout => \clkdivider_50000hz|Add0~59\);

-- Location: FF_X55_Y47_N29
\clkdivider_50000hz|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(29));

-- Location: LCCOMB_X55_Y47_N30
\clkdivider_50000hz|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Add0~60_combout\ = \clkdivider_50000hz|s_counter\(30) $ (!\clkdivider_50000hz|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(30),
	cin => \clkdivider_50000hz|Add0~59\,
	combout => \clkdivider_50000hz|Add0~60_combout\);

-- Location: FF_X55_Y47_N31
\clkdivider_50000hz|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(30));

-- Location: LCCOMB_X56_Y47_N14
\clkdivider_50000hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Equal0~7_combout\ = (!\clkdivider_50000hz|s_counter\(28) & (!\clkdivider_50000hz|s_counter\(29) & (!\clkdivider_50000hz|s_counter\(27) & !\clkdivider_50000hz|s_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(28),
	datab => \clkdivider_50000hz|s_counter\(29),
	datac => \clkdivider_50000hz|s_counter\(27),
	datad => \clkdivider_50000hz|s_counter\(30),
	combout => \clkdivider_50000hz|Equal0~7_combout\);

-- Location: LCCOMB_X56_Y48_N22
\clkdivider_50000hz|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Equal0~10_combout\ = (\clkdivider_50000hz|Equal0~5_combout\ & (\clkdivider_50000hz|Equal0~6_combout\ & \clkdivider_50000hz|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|Equal0~5_combout\,
	datac => \clkdivider_50000hz|Equal0~6_combout\,
	datad => \clkdivider_50000hz|Equal0~7_combout\,
	combout => \clkdivider_50000hz|Equal0~10_combout\);

-- Location: LCCOMB_X56_Y48_N10
\clkdivider_50000hz|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|s_counter~5_combout\ = (\clkdivider_50000hz|Add0~6_combout\ & (((!\clkdivider_50000hz|Equal0~10_combout\) # (!\clkdivider_50000hz|Equal0~9_combout\)) # (!\clkdivider_50000hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|Equal0~4_combout\,
	datab => \clkdivider_50000hz|Equal0~9_combout\,
	datac => \clkdivider_50000hz|Equal0~10_combout\,
	datad => \clkdivider_50000hz|Add0~6_combout\,
	combout => \clkdivider_50000hz|s_counter~5_combout\);

-- Location: FF_X55_Y48_N17
\clkdivider_50000hz|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \clkdivider_50000hz|s_counter~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(3));

-- Location: LCCOMB_X56_Y48_N12
\clkdivider_50000hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Equal0~1_combout\ = (\clkdivider_50000hz|s_counter\(0) & (\clkdivider_50000hz|s_counter\(1) & (!\clkdivider_50000hz|s_counter\(3) & !\clkdivider_50000hz|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(0),
	datab => \clkdivider_50000hz|s_counter\(1),
	datac => \clkdivider_50000hz|s_counter\(3),
	datad => \clkdivider_50000hz|s_counter\(10),
	combout => \clkdivider_50000hz|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y48_N0
\clkdivider_50000hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Equal0~0_combout\ = (\clkdivider_50000hz|s_counter\(8) & (\clkdivider_50000hz|s_counter\(7) & (\clkdivider_50000hz|s_counter\(5) & \clkdivider_50000hz|s_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(8),
	datab => \clkdivider_50000hz|s_counter\(7),
	datac => \clkdivider_50000hz|s_counter\(5),
	datad => \clkdivider_50000hz|s_counter\(6),
	combout => \clkdivider_50000hz|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y48_N26
\clkdivider_50000hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Equal0~2_combout\ = (!\clkdivider_50000hz|s_counter\(12) & (!\clkdivider_50000hz|s_counter\(13) & (!\clkdivider_50000hz|s_counter\(14) & !\clkdivider_50000hz|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(12),
	datab => \clkdivider_50000hz|s_counter\(13),
	datac => \clkdivider_50000hz|s_counter\(14),
	datad => \clkdivider_50000hz|s_counter\(11),
	combout => \clkdivider_50000hz|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y47_N0
\clkdivider_50000hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Equal0~3_combout\ = (!\clkdivider_50000hz|s_counter\(15) & (!\clkdivider_50000hz|s_counter\(18) & (!\clkdivider_50000hz|s_counter\(17) & !\clkdivider_50000hz|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|s_counter\(15),
	datab => \clkdivider_50000hz|s_counter\(18),
	datac => \clkdivider_50000hz|s_counter\(17),
	datad => \clkdivider_50000hz|s_counter\(16),
	combout => \clkdivider_50000hz|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y48_N4
\clkdivider_50000hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Equal0~4_combout\ = (\clkdivider_50000hz|Equal0~1_combout\ & (\clkdivider_50000hz|Equal0~0_combout\ & (\clkdivider_50000hz|Equal0~2_combout\ & \clkdivider_50000hz|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|Equal0~1_combout\,
	datab => \clkdivider_50000hz|Equal0~0_combout\,
	datac => \clkdivider_50000hz|Equal0~2_combout\,
	datad => \clkdivider_50000hz|Equal0~3_combout\,
	combout => \clkdivider_50000hz|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y48_N8
\clkdivider_50000hz|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|s_counter~0_combout\ = (\clkdivider_50000hz|Add0~18_combout\ & (((!\clkdivider_50000hz|Equal0~10_combout\) # (!\clkdivider_50000hz|Equal0~9_combout\)) # (!\clkdivider_50000hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|Equal0~4_combout\,
	datab => \clkdivider_50000hz|Equal0~9_combout\,
	datac => \clkdivider_50000hz|Equal0~10_combout\,
	datad => \clkdivider_50000hz|Add0~18_combout\,
	combout => \clkdivider_50000hz|s_counter~0_combout\);

-- Location: FF_X56_Y48_N9
\clkdivider_50000hz|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|s_counter\(9));

-- Location: LCCOMB_X56_Y48_N6
\clkdivider_50000hz|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|clkOut~0_combout\ = (!\clkdivider_50000hz|s_counter\(9) & (!\clkdivider_50000hz|s_counter\(2) & \clkdivider_50000hz|s_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|s_counter\(9),
	datac => \clkdivider_50000hz|s_counter\(2),
	datad => \clkdivider_50000hz|s_counter\(4),
	combout => \clkdivider_50000hz|clkOut~0_combout\);

-- Location: LCCOMB_X56_Y48_N16
\clkdivider_50000hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|Equal0~8_combout\ = (\clkdivider_50000hz|Equal0~7_combout\ & (\clkdivider_50000hz|Equal0~4_combout\ & (\clkdivider_50000hz|Equal0~6_combout\ & \clkdivider_50000hz|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|Equal0~7_combout\,
	datab => \clkdivider_50000hz|Equal0~4_combout\,
	datac => \clkdivider_50000hz|Equal0~6_combout\,
	datad => \clkdivider_50000hz|Equal0~5_combout\,
	combout => \clkdivider_50000hz|Equal0~8_combout\);

-- Location: LCCOMB_X56_Y48_N24
\clkdivider_50000hz|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|clkOut~1_combout\ = (\clkdivider_50000hz|Equal0~8_combout\ & (!\clkdivider_50000hz|Equal0~9_combout\ & ((\clkdivider_50000hz|clkOut~0_combout\) # (\clkdivider_50000hz|clkOut~q\)))) # (!\clkdivider_50000hz|Equal0~8_combout\ & 
-- (((\clkdivider_50000hz|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_50000hz|clkOut~0_combout\,
	datab => \clkdivider_50000hz|Equal0~9_combout\,
	datac => \clkdivider_50000hz|clkOut~q\,
	datad => \clkdivider_50000hz|Equal0~8_combout\,
	combout => \clkdivider_50000hz|clkOut~1_combout\);

-- Location: LCCOMB_X56_Y48_N14
\clkdivider_50000hz|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_50000hz|clkOut~feeder_combout\ = \clkdivider_50000hz|clkOut~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_50000hz|clkOut~1_combout\,
	combout => \clkdivider_50000hz|clkOut~feeder_combout\);

-- Location: FF_X56_Y48_N15
\clkdivider_50000hz|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_50000hz|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_50000hz|clkOut~q\);

-- Location: CLKCTRL_G14
\clkdivider_50000hz|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkdivider_50000hz|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkdivider_50000hz|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X75_Y55_N24
\rnd_generator|rnd_gen|next_state[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[2]~12_combout\ = \rnd_generator|rnd_gen|state\(36) $ (\rnd_generator|rnd_gen|state\(4) $ (\rnd_generator|rnd_gen|state\(23) $ (!\rnd_generator|rnd_gen|state\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(36),
	datab => \rnd_generator|rnd_gen|state\(4),
	datac => \rnd_generator|rnd_gen|state\(23),
	datad => \rnd_generator|rnd_gen|state\(44),
	combout => \rnd_generator|rnd_gen|next_state[2]~12_combout\);

-- Location: LCCOMB_X76_Y55_N22
\rnd_generator|rnd_gen|next_state[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[2]~13_combout\ = \rnd_generator|rnd_gen|state\(39) $ (\rnd_generator|rnd_gen|next_state[2]~12_combout\ $ (\rnd_generator|rnd_gen|state\(6) $ (\rnd_generator|rnd_gen|next_state[24]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(39),
	datab => \rnd_generator|rnd_gen|next_state[2]~12_combout\,
	datac => \rnd_generator|rnd_gen|state\(6),
	datad => \rnd_generator|rnd_gen|next_state[24]~11_combout\,
	combout => \rnd_generator|rnd_gen|next_state[2]~13_combout\);

-- Location: FF_X76_Y55_N23
\rnd_generator|rnd_gen|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(2));

-- Location: LCCOMB_X75_Y57_N30
\rnd_generator|rnd_gen|next_state[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[25]~84_combout\ = \rnd_generator|rnd_gen|state\(60) $ (\rnd_generator|rnd_gen|state\(21) $ (\rnd_generator|rnd_gen|state\(45) $ (\rnd_generator|rnd_gen|state\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(60),
	datab => \rnd_generator|rnd_gen|state\(21),
	datac => \rnd_generator|rnd_gen|state\(45),
	datad => \rnd_generator|rnd_gen|state\(42),
	combout => \rnd_generator|rnd_gen|next_state[25]~84_combout\);

-- Location: LCCOMB_X74_Y56_N2
\rnd_generator|rnd_gen|next_state[47]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[47]~112_combout\ = \rnd_generator|rnd_gen|state\(58) $ (\rnd_generator|rnd_gen|state\(40) $ (\rnd_generator|rnd_gen|state\(49) $ (\rnd_generator|rnd_gen|state\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(58),
	datab => \rnd_generator|rnd_gen|state\(40),
	datac => \rnd_generator|rnd_gen|state\(49),
	datad => \rnd_generator|rnd_gen|state\(54),
	combout => \rnd_generator|rnd_gen|next_state[47]~112_combout\);

-- Location: LCCOMB_X74_Y57_N2
\rnd_generator|rnd_gen|next_state[47]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[47]~28_combout\ = \rnd_generator|rnd_gen|state\(61) $ (\rnd_generator|rnd_gen|state\(23) $ (\rnd_generator|rnd_gen|state\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(61),
	datac => \rnd_generator|rnd_gen|state\(23),
	datad => \rnd_generator|rnd_gen|state\(38),
	combout => \rnd_generator|rnd_gen|next_state[47]~28_combout\);

-- Location: LCCOMB_X74_Y56_N30
\rnd_generator|rnd_gen|next_state[47]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[47]~113_combout\ = \rnd_generator|rnd_gen|state\(53) $ (\rnd_generator|rnd_gen|next_state[47]~112_combout\ $ (\rnd_generator|rnd_gen|state\(26) $ (!\rnd_generator|rnd_gen|next_state[47]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(53),
	datab => \rnd_generator|rnd_gen|next_state[47]~112_combout\,
	datac => \rnd_generator|rnd_gen|state\(26),
	datad => \rnd_generator|rnd_gen|next_state[47]~28_combout\,
	combout => \rnd_generator|rnd_gen|next_state[47]~113_combout\);

-- Location: FF_X74_Y56_N31
\rnd_generator|rnd_gen|state[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[47]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(47));

-- Location: LCCOMB_X74_Y55_N28
\rnd_generator|rnd_gen|next_state[41]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[41]~27_combout\ = \rnd_generator|rnd_gen|state\(45) $ (\rnd_generator|rnd_gen|state\(47) $ (\rnd_generator|rnd_gen|state\(56) $ (!\rnd_generator|rnd_gen|state\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(45),
	datab => \rnd_generator|rnd_gen|state\(47),
	datac => \rnd_generator|rnd_gen|state\(56),
	datad => \rnd_generator|rnd_gen|state\(29),
	combout => \rnd_generator|rnd_gen|next_state[41]~27_combout\);

-- Location: LCCOMB_X74_Y55_N0
\rnd_generator|rnd_gen|next_state[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(41) = \rnd_generator|rnd_gen|state\(1) $ (\rnd_generator|rnd_gen|next_state[41]~27_combout\ $ (\rnd_generator|rnd_gen|state\(36) $ (!\rnd_generator|rnd_gen|state\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(1),
	datab => \rnd_generator|rnd_gen|next_state[41]~27_combout\,
	datac => \rnd_generator|rnd_gen|state\(36),
	datad => \rnd_generator|rnd_gen|state\(54),
	combout => \rnd_generator|rnd_gen|next_state\(41));

-- Location: FF_X74_Y55_N1
\rnd_generator|rnd_gen|state[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(41));

-- Location: LCCOMB_X75_Y55_N4
\rnd_generator|rnd_gen|next_state[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[5]~21_combout\ = \rnd_generator|rnd_gen|state\(62) $ (\rnd_generator|rnd_gen|state\(41) $ (!\rnd_generator|rnd_gen|state\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(62),
	datac => \rnd_generator|rnd_gen|state\(41),
	datad => \rnd_generator|rnd_gen|state\(31),
	combout => \rnd_generator|rnd_gen|next_state[5]~21_combout\);

-- Location: LCCOMB_X75_Y55_N20
\rnd_generator|rnd_gen|next_state[51]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[51]~29_combout\ = \rnd_generator|rnd_gen|state\(5) $ (\rnd_generator|rnd_gen|state\(2) $ (\rnd_generator|rnd_gen|next_state[5]~21_combout\ $ (\rnd_generator|rnd_gen|next_state[47]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(5),
	datab => \rnd_generator|rnd_gen|state\(2),
	datac => \rnd_generator|rnd_gen|next_state[5]~21_combout\,
	datad => \rnd_generator|rnd_gen|next_state[47]~28_combout\,
	combout => \rnd_generator|rnd_gen|next_state[51]~29_combout\);

-- Location: FF_X75_Y55_N21
\rnd_generator|rnd_gen|state[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[51]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(51));

-- Location: LCCOMB_X75_Y57_N12
\rnd_generator|rnd_gen|next_state[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[25]~83_combout\ = \rnd_generator|rnd_gen|state\(51) $ (\rnd_generator|rnd_gen|state\(7) $ (\rnd_generator|rnd_gen|state\(33) $ (!\rnd_generator|rnd_gen|state\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(51),
	datab => \rnd_generator|rnd_gen|state\(7),
	datac => \rnd_generator|rnd_gen|state\(33),
	datad => \rnd_generator|rnd_gen|state\(14),
	combout => \rnd_generator|rnd_gen|next_state[25]~83_combout\);

-- Location: LCCOMB_X75_Y57_N2
\rnd_generator|rnd_gen|next_state[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[25]~85_combout\ = \rnd_generator|rnd_gen|state\(36) $ (\rnd_generator|rnd_gen|state\(38) $ (\rnd_generator|rnd_gen|next_state[25]~84_combout\ $ (!\rnd_generator|rnd_gen|next_state[25]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(36),
	datab => \rnd_generator|rnd_gen|state\(38),
	datac => \rnd_generator|rnd_gen|next_state[25]~84_combout\,
	datad => \rnd_generator|rnd_gen|next_state[25]~83_combout\,
	combout => \rnd_generator|rnd_gen|next_state[25]~85_combout\);

-- Location: FF_X75_Y57_N3
\rnd_generator|rnd_gen|state[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[25]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(25));

-- Location: LCCOMB_X74_Y57_N24
\rnd_generator|rnd_gen|next_state[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[26]~87_combout\ = \rnd_generator|rnd_gen|state\(25) $ (\rnd_generator|rnd_gen|state\(10) $ (\rnd_generator|rnd_gen|state\(2) $ (\rnd_generator|rnd_gen|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(25),
	datab => \rnd_generator|rnd_gen|state\(10),
	datac => \rnd_generator|rnd_gen|state\(2),
	datad => \rnd_generator|rnd_gen|state\(4),
	combout => \rnd_generator|rnd_gen|next_state[26]~87_combout\);

-- Location: LCCOMB_X75_Y56_N24
\rnd_generator|rnd_gen|next_state[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[22]~67_combout\ = \rnd_generator|rnd_gen|state\(30) $ (\rnd_generator|rnd_gen|state\(19) $ (\rnd_generator|rnd_gen|state\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(30),
	datac => \rnd_generator|rnd_gen|state\(19),
	datad => \rnd_generator|rnd_gen|state\(49),
	combout => \rnd_generator|rnd_gen|next_state[22]~67_combout\);

-- Location: LCCOMB_X73_Y56_N18
\rnd_generator|rnd_gen|next_state[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(16) = \rnd_generator|rnd_gen|state\(2) $ (\rnd_generator|rnd_gen|next_state[22]~67_combout\ $ (\rnd_generator|rnd_gen|state\(43) $ (\rnd_generator|rnd_gen|next_state[39]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(2),
	datab => \rnd_generator|rnd_gen|next_state[22]~67_combout\,
	datac => \rnd_generator|rnd_gen|state\(43),
	datad => \rnd_generator|rnd_gen|next_state[39]~39_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(16));

-- Location: FF_X73_Y56_N19
\rnd_generator|rnd_gen|state[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(16));

-- Location: LCCOMB_X75_Y55_N10
\rnd_generator|rnd_gen|next_state[48]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[48]~115_combout\ = \rnd_generator|rnd_gen|state\(54) $ (\rnd_generator|rnd_gen|state\(62) $ (\rnd_generator|rnd_gen|state\(16) $ (!\rnd_generator|rnd_gen|state\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(54),
	datab => \rnd_generator|rnd_gen|state\(62),
	datac => \rnd_generator|rnd_gen|state\(16),
	datad => \rnd_generator|rnd_gen|state\(59),
	combout => \rnd_generator|rnd_gen|next_state[48]~115_combout\);

-- Location: LCCOMB_X77_Y55_N22
\rnd_generator|rnd_gen|next_state[48]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[48]~114_combout\ = \rnd_generator|rnd_gen|state\(42) $ (\rnd_generator|rnd_gen|state\(45) $ (\rnd_generator|rnd_gen|state\(4) $ (\rnd_generator|rnd_gen|state\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(42),
	datab => \rnd_generator|rnd_gen|state\(45),
	datac => \rnd_generator|rnd_gen|state\(4),
	datad => \rnd_generator|rnd_gen|state\(37),
	combout => \rnd_generator|rnd_gen|next_state[48]~114_combout\);

-- Location: LCCOMB_X76_Y55_N4
\rnd_generator|rnd_gen|next_state[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(48) = \rnd_generator|rnd_gen|next_state[48]~115_combout\ $ (!\rnd_generator|rnd_gen|next_state[48]~114_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[48]~115_combout\,
	datad => \rnd_generator|rnd_gen|next_state[48]~114_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(48));

-- Location: FF_X76_Y55_N5
\rnd_generator|rnd_gen|state[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(48));

-- Location: LCCOMB_X73_Y57_N18
\rnd_generator|rnd_gen|next_state[58]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[58]~86_combout\ = \rnd_generator|rnd_gen|state\(41) $ (\rnd_generator|rnd_gen|state\(9) $ (\rnd_generator|rnd_gen|state\(60) $ (!\rnd_generator|rnd_gen|state\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(41),
	datab => \rnd_generator|rnd_gen|state\(9),
	datac => \rnd_generator|rnd_gen|state\(60),
	datad => \rnd_generator|rnd_gen|state\(48),
	combout => \rnd_generator|rnd_gen|next_state[58]~86_combout\);

-- Location: LCCOMB_X74_Y57_N8
\rnd_generator|rnd_gen|next_state[26]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[26]~88_combout\ = \rnd_generator|rnd_gen|next_state[26]~87_combout\ $ (\rnd_generator|rnd_gen|state\(51) $ (\rnd_generator|rnd_gen|next_state[58]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|next_state[26]~87_combout\,
	datac => \rnd_generator|rnd_gen|state\(51),
	datad => \rnd_generator|rnd_gen|next_state[58]~86_combout\,
	combout => \rnd_generator|rnd_gen|next_state[26]~88_combout\);

-- Location: FF_X74_Y57_N9
\rnd_generator|rnd_gen|state[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[26]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(26));

-- Location: LCCOMB_X74_Y57_N6
\rnd_generator|rnd_gen|next_state[33]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[33]~52_combout\ = \rnd_generator|rnd_gen|state\(31) $ (\rnd_generator|rnd_gen|state\(27) $ (\rnd_generator|rnd_gen|state\(26) $ (\rnd_generator|rnd_gen|state\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(31),
	datab => \rnd_generator|rnd_gen|state\(27),
	datac => \rnd_generator|rnd_gen|state\(26),
	datad => \rnd_generator|rnd_gen|state\(28),
	combout => \rnd_generator|rnd_gen|next_state[33]~52_combout\);

-- Location: LCCOMB_X75_Y57_N0
\rnd_generator|rnd_gen|next_state[33]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[33]~95_combout\ = \rnd_generator|rnd_gen|state\(25) $ (\rnd_generator|rnd_gen|state\(11) $ (\rnd_generator|rnd_gen|state\(6) $ (!\rnd_generator|rnd_gen|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(25),
	datab => \rnd_generator|rnd_gen|state\(11),
	datac => \rnd_generator|rnd_gen|state\(6),
	datad => \rnd_generator|rnd_gen|state\(0),
	combout => \rnd_generator|rnd_gen|next_state[33]~95_combout\);

-- Location: LCCOMB_X75_Y57_N8
\rnd_generator|rnd_gen|next_state[33]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[33]~96_combout\ = \rnd_generator|rnd_gen|state\(40) $ (\rnd_generator|rnd_gen|state\(44) $ (\rnd_generator|rnd_gen|next_state[33]~52_combout\ $ (\rnd_generator|rnd_gen|next_state[33]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(40),
	datab => \rnd_generator|rnd_gen|state\(44),
	datac => \rnd_generator|rnd_gen|next_state[33]~52_combout\,
	datad => \rnd_generator|rnd_gen|next_state[33]~95_combout\,
	combout => \rnd_generator|rnd_gen|next_state[33]~96_combout\);

-- Location: FF_X75_Y57_N9
\rnd_generator|rnd_gen|state[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[33]~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(33));

-- Location: LCCOMB_X73_Y57_N24
\rnd_generator|rnd_gen|next_state[45]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[45]~110_combout\ = \rnd_generator|rnd_gen|state\(52) $ (\rnd_generator|rnd_gen|state\(43) $ (\rnd_generator|rnd_gen|state\(33) $ (\rnd_generator|rnd_gen|state\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(52),
	datab => \rnd_generator|rnd_gen|state\(43),
	datac => \rnd_generator|rnd_gen|state\(33),
	datad => \rnd_generator|rnd_gen|state\(6),
	combout => \rnd_generator|rnd_gen|next_state[45]~110_combout\);

-- Location: LCCOMB_X73_Y57_N14
\rnd_generator|rnd_gen|next_state[50]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[50]~48_combout\ = \rnd_generator|rnd_gen|state\(40) $ (!\rnd_generator|rnd_gen|state\(58))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(40),
	datac => \rnd_generator|rnd_gen|state\(58),
	combout => \rnd_generator|rnd_gen|next_state[50]~48_combout\);

-- Location: LCCOMB_X72_Y55_N26
\rnd_generator|rnd_gen|next_state[13]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[13]~65_combout\ = \rnd_generator|rnd_gen|state\(9) $ (\rnd_generator|rnd_gen|state\(38) $ (\rnd_generator|rnd_gen|state\(13) $ (!\rnd_generator|rnd_gen|state\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(9),
	datab => \rnd_generator|rnd_gen|state\(38),
	datac => \rnd_generator|rnd_gen|state\(13),
	datad => \rnd_generator|rnd_gen|state\(36),
	combout => \rnd_generator|rnd_gen|next_state[13]~65_combout\);

-- Location: LCCOMB_X75_Y55_N22
\rnd_generator|rnd_gen|next_state[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[3]~8_combout\ = \rnd_generator|rnd_gen|state\(6) $ (\rnd_generator|rnd_gen|state\(51) $ (\rnd_generator|rnd_gen|state\(41) $ (\rnd_generator|rnd_gen|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(6),
	datab => \rnd_generator|rnd_gen|state\(51),
	datac => \rnd_generator|rnd_gen|state\(41),
	datad => \rnd_generator|rnd_gen|state\(1),
	combout => \rnd_generator|rnd_gen|next_state[3]~8_combout\);

-- Location: LCCOMB_X75_Y56_N0
\rnd_generator|rnd_gen|next_state[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[12]~9_combout\ = \rnd_generator|rnd_gen|state\(37) $ (\rnd_generator|rnd_gen|state\(27) $ (\rnd_generator|rnd_gen|state\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(37),
	datac => \rnd_generator|rnd_gen|state\(27),
	datad => \rnd_generator|rnd_gen|state\(39),
	combout => \rnd_generator|rnd_gen|next_state[12]~9_combout\);

-- Location: LCCOMB_X76_Y55_N28
\rnd_generator|rnd_gen|next_state[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[3]~10_combout\ = \rnd_generator|rnd_gen|state\(24) $ (\rnd_generator|rnd_gen|next_state[3]~8_combout\ $ (\rnd_generator|rnd_gen|next_state[12]~9_combout\ $ (\rnd_generator|rnd_gen|state\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(24),
	datab => \rnd_generator|rnd_gen|next_state[3]~8_combout\,
	datac => \rnd_generator|rnd_gen|next_state[12]~9_combout\,
	datad => \rnd_generator|rnd_gen|state\(63),
	combout => \rnd_generator|rnd_gen|next_state[3]~10_combout\);

-- Location: FF_X76_Y55_N29
\rnd_generator|rnd_gen|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(3));

-- Location: LCCOMB_X75_Y56_N30
\rnd_generator|rnd_gen|next_state[22]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[22]~80_combout\ = \rnd_generator|rnd_gen|state\(9) $ (\rnd_generator|rnd_gen|state\(3) $ (\rnd_generator|rnd_gen|state\(58) $ (\rnd_generator|rnd_gen|state\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(9),
	datab => \rnd_generator|rnd_gen|state\(3),
	datac => \rnd_generator|rnd_gen|state\(58),
	datad => \rnd_generator|rnd_gen|state\(15),
	combout => \rnd_generator|rnd_gen|next_state[22]~80_combout\);

-- Location: LCCOMB_X75_Y56_N16
\rnd_generator|rnd_gen|next_state[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[22]~79_combout\ = \rnd_generator|rnd_gen|state\(19) $ (\rnd_generator|rnd_gen|state\(49) $ (\rnd_generator|rnd_gen|state\(27) $ (!\rnd_generator|rnd_gen|state\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(19),
	datab => \rnd_generator|rnd_gen|state\(49),
	datac => \rnd_generator|rnd_gen|state\(27),
	datad => \rnd_generator|rnd_gen|state\(30),
	combout => \rnd_generator|rnd_gen|next_state[22]~79_combout\);

-- Location: LCCOMB_X74_Y56_N28
\rnd_generator|rnd_gen|next_state[22]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[22]~81_combout\ = \rnd_generator|rnd_gen|next_state[22]~80_combout\ $ (\rnd_generator|rnd_gen|state\(54) $ (\rnd_generator|rnd_gen|state\(63) $ (\rnd_generator|rnd_gen|next_state[22]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[22]~80_combout\,
	datab => \rnd_generator|rnd_gen|state\(54),
	datac => \rnd_generator|rnd_gen|state\(63),
	datad => \rnd_generator|rnd_gen|next_state[22]~79_combout\,
	combout => \rnd_generator|rnd_gen|next_state[22]~81_combout\);

-- Location: FF_X74_Y56_N29
\rnd_generator|rnd_gen|state[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[22]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(22));

-- Location: LCCOMB_X75_Y56_N18
\rnd_generator|rnd_gen|next_state[63]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[63]~30_combout\ = \rnd_generator|rnd_gen|state\(21) $ (\rnd_generator|rnd_gen|state\(22) $ (\rnd_generator|rnd_gen|state\(10) $ (!\rnd_generator|rnd_gen|state\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(21),
	datab => \rnd_generator|rnd_gen|state\(22),
	datac => \rnd_generator|rnd_gen|state\(10),
	datad => \rnd_generator|rnd_gen|state\(15),
	combout => \rnd_generator|rnd_gen|next_state[63]~30_combout\);

-- Location: LCCOMB_X74_Y56_N8
\rnd_generator|rnd_gen|next_state[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(63) = \rnd_generator|rnd_gen|state\(26) $ (\rnd_generator|rnd_gen|next_state[63]~30_combout\ $ (\rnd_generator|rnd_gen|state\(28) $ (\rnd_generator|rnd_gen|next_state[63]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(26),
	datab => \rnd_generator|rnd_gen|next_state[63]~30_combout\,
	datac => \rnd_generator|rnd_gen|state\(28),
	datad => \rnd_generator|rnd_gen|next_state[63]~31_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(63));

-- Location: FF_X74_Y56_N9
\rnd_generator|rnd_gen|state[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(63));

-- Location: LCCOMB_X73_Y55_N22
\rnd_generator|rnd_gen|next_state[13]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[13]~64_combout\ = \rnd_generator|rnd_gen|state\(54) $ (\rnd_generator|rnd_gen|state\(63) $ (\rnd_generator|rnd_gen|state\(59) $ (!\rnd_generator|rnd_gen|state\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(54),
	datab => \rnd_generator|rnd_gen|state\(63),
	datac => \rnd_generator|rnd_gen|state\(59),
	datad => \rnd_generator|rnd_gen|state\(53),
	combout => \rnd_generator|rnd_gen|next_state[13]~64_combout\);

-- Location: LCCOMB_X72_Y55_N24
\rnd_generator|rnd_gen|next_state[13]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[13]~66_combout\ = \rnd_generator|rnd_gen|state\(39) $ (\rnd_generator|rnd_gen|next_state[13]~65_combout\ $ (\rnd_generator|rnd_gen|next_state[13]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(39),
	datac => \rnd_generator|rnd_gen|next_state[13]~65_combout\,
	datad => \rnd_generator|rnd_gen|next_state[13]~64_combout\,
	combout => \rnd_generator|rnd_gen|next_state[13]~66_combout\);

-- Location: FF_X72_Y55_N25
\rnd_generator|rnd_gen|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[13]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(13));

-- Location: LCCOMB_X74_Y57_N4
\rnd_generator|rnd_gen|next_state[59]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[59]~73_combout\ = \rnd_generator|rnd_gen|state\(24) $ (\rnd_generator|rnd_gen|state\(10) $ (\rnd_generator|rnd_gen|state\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(24),
	datab => \rnd_generator|rnd_gen|state\(10),
	datad => \rnd_generator|rnd_gen|state\(36),
	combout => \rnd_generator|rnd_gen|next_state[59]~73_combout\);

-- Location: LCCOMB_X73_Y57_N0
\rnd_generator|rnd_gen|next_state[18]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[18]~74_combout\ = \rnd_generator|rnd_gen|state\(43) $ (\rnd_generator|rnd_gen|state\(13) $ (\rnd_generator|rnd_gen|state\(18) $ (\rnd_generator|rnd_gen|next_state[59]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(43),
	datab => \rnd_generator|rnd_gen|state\(13),
	datac => \rnd_generator|rnd_gen|state\(18),
	datad => \rnd_generator|rnd_gen|next_state[59]~73_combout\,
	combout => \rnd_generator|rnd_gen|next_state[18]~74_combout\);

-- Location: LCCOMB_X73_Y57_N8
\rnd_generator|rnd_gen|next_state[18]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[18]~75_combout\ = \rnd_generator|rnd_gen|state\(50) $ (\rnd_generator|rnd_gen|state\(51) $ (\rnd_generator|rnd_gen|next_state[50]~48_combout\ $ (\rnd_generator|rnd_gen|next_state[18]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(50),
	datab => \rnd_generator|rnd_gen|state\(51),
	datac => \rnd_generator|rnd_gen|next_state[50]~48_combout\,
	datad => \rnd_generator|rnd_gen|next_state[18]~74_combout\,
	combout => \rnd_generator|rnd_gen|next_state[18]~75_combout\);

-- Location: FF_X73_Y57_N9
\rnd_generator|rnd_gen|state[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[18]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(18));

-- Location: LCCOMB_X73_Y57_N2
\rnd_generator|rnd_gen|next_state[45]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[45]~32_combout\ = \rnd_generator|rnd_gen|state\(35) $ (\rnd_generator|rnd_gen|state\(12) $ (\rnd_generator|rnd_gen|state\(18) $ (\rnd_generator|rnd_gen|state\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(35),
	datab => \rnd_generator|rnd_gen|state\(12),
	datac => \rnd_generator|rnd_gen|state\(18),
	datad => \rnd_generator|rnd_gen|state\(30),
	combout => \rnd_generator|rnd_gen|next_state[45]~32_combout\);

-- Location: LCCOMB_X73_Y57_N6
\rnd_generator|rnd_gen|next_state[45]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[45]~111_combout\ = \rnd_generator|rnd_gen|state\(27) $ (\rnd_generator|rnd_gen|next_state[45]~110_combout\ $ (!\rnd_generator|rnd_gen|next_state[45]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(27),
	datac => \rnd_generator|rnd_gen|next_state[45]~110_combout\,
	datad => \rnd_generator|rnd_gen|next_state[45]~32_combout\,
	combout => \rnd_generator|rnd_gen|next_state[45]~111_combout\);

-- Location: FF_X73_Y57_N7
\rnd_generator|rnd_gen|state[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[45]~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(45));

-- Location: LCCOMB_X75_Y56_N14
\rnd_generator|rnd_gen|next_state[60]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[60]~129_combout\ = \rnd_generator|rnd_gen|state\(29) $ (\rnd_generator|rnd_gen|state\(57) $ (\rnd_generator|rnd_gen|state\(5) $ (\rnd_generator|rnd_gen|state\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(29),
	datab => \rnd_generator|rnd_gen|state\(57),
	datac => \rnd_generator|rnd_gen|state\(5),
	datad => \rnd_generator|rnd_gen|state\(48),
	combout => \rnd_generator|rnd_gen|next_state[60]~129_combout\);

-- Location: LCCOMB_X75_Y57_N26
\rnd_generator|rnd_gen|next_state[20]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[20]~82_combout\ = \rnd_generator|rnd_gen|state\(40) $ (\rnd_generator|rnd_gen|state\(33) $ (\rnd_generator|rnd_gen|state\(28) $ (\rnd_generator|rnd_gen|state\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(40),
	datab => \rnd_generator|rnd_gen|state\(33),
	datac => \rnd_generator|rnd_gen|state\(28),
	datad => \rnd_generator|rnd_gen|state\(13),
	combout => \rnd_generator|rnd_gen|next_state[20]~82_combout\);

-- Location: LCCOMB_X74_Y56_N26
\rnd_generator|rnd_gen|next_state[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(20) = \rnd_generator|rnd_gen|next_state[22]~67_combout\ $ (\rnd_generator|rnd_gen|state\(20) $ (\rnd_generator|rnd_gen|next_state[20]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[22]~67_combout\,
	datac => \rnd_generator|rnd_gen|state\(20),
	datad => \rnd_generator|rnd_gen|next_state[20]~82_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(20));

-- Location: FF_X74_Y56_N27
\rnd_generator|rnd_gen|state[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(20));

-- Location: LCCOMB_X75_Y56_N28
\rnd_generator|rnd_gen|next_state[60]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[60]~130_combout\ = \rnd_generator|rnd_gen|state\(32) $ (\rnd_generator|rnd_gen|state\(22) $ (\rnd_generator|rnd_gen|state\(30) $ (!\rnd_generator|rnd_gen|state\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(32),
	datab => \rnd_generator|rnd_gen|state\(22),
	datac => \rnd_generator|rnd_gen|state\(30),
	datad => \rnd_generator|rnd_gen|state\(20),
	combout => \rnd_generator|rnd_gen|next_state[60]~130_combout\);

-- Location: LCCOMB_X74_Y56_N4
\rnd_generator|rnd_gen|next_state[60]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[60]~131_combout\ = \rnd_generator|rnd_gen|state\(45) $ (\rnd_generator|rnd_gen|next_state[60]~129_combout\ $ (\rnd_generator|rnd_gen|next_state[60]~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(45),
	datac => \rnd_generator|rnd_gen|next_state[60]~129_combout\,
	datad => \rnd_generator|rnd_gen|next_state[60]~130_combout\,
	combout => \rnd_generator|rnd_gen|next_state[60]~131_combout\);

-- Location: FF_X74_Y56_N5
\rnd_generator|rnd_gen|state[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[60]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(60));

-- Location: LCCOMB_X72_Y55_N0
\rnd_generator|rnd_gen|next_state[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[14]~62_combout\ = \rnd_generator|rnd_gen|state\(14) $ (\rnd_generator|rnd_gen|state\(20) $ (\rnd_generator|rnd_gen|state\(31) $ (\rnd_generator|rnd_gen|state\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(14),
	datab => \rnd_generator|rnd_gen|state\(20),
	datac => \rnd_generator|rnd_gen|state\(31),
	datad => \rnd_generator|rnd_gen|state\(39),
	combout => \rnd_generator|rnd_gen|next_state[14]~62_combout\);

-- Location: LCCOMB_X72_Y55_N30
\rnd_generator|rnd_gen|next_state[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(14) = \rnd_generator|rnd_gen|state\(42) $ (\rnd_generator|rnd_gen|state\(21) $ (\rnd_generator|rnd_gen|state\(60) $ (!\rnd_generator|rnd_gen|next_state[14]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(42),
	datab => \rnd_generator|rnd_gen|state\(21),
	datac => \rnd_generator|rnd_gen|state\(60),
	datad => \rnd_generator|rnd_gen|next_state[14]~62_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(14));

-- Location: FF_X72_Y55_N31
\rnd_generator|rnd_gen|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(14));

-- Location: LCCOMB_X73_Y56_N28
\rnd_generator|rnd_gen|next_state[55]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[55]~104_combout\ = \rnd_generator|rnd_gen|state\(37) $ (\rnd_generator|rnd_gen|state\(14) $ (\rnd_generator|rnd_gen|state\(36) $ (\rnd_generator|rnd_gen|state\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(37),
	datab => \rnd_generator|rnd_gen|state\(14),
	datac => \rnd_generator|rnd_gen|state\(36),
	datad => \rnd_generator|rnd_gen|state\(20),
	combout => \rnd_generator|rnd_gen|next_state[55]~104_combout\);

-- Location: LCCOMB_X73_Y56_N14
\rnd_generator|rnd_gen|next_state[42]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[42]~105_combout\ = \rnd_generator|rnd_gen|state\(19) $ (\rnd_generator|rnd_gen|state\(12) $ (\rnd_generator|rnd_gen|state\(23) $ (\rnd_generator|rnd_gen|state\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(19),
	datab => \rnd_generator|rnd_gen|state\(12),
	datac => \rnd_generator|rnd_gen|state\(23),
	datad => \rnd_generator|rnd_gen|state\(18),
	combout => \rnd_generator|rnd_gen|next_state[42]~105_combout\);

-- Location: LCCOMB_X73_Y55_N18
\rnd_generator|rnd_gen|next_state[42]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[42]~106_combout\ = \rnd_generator|rnd_gen|next_state[55]~104_combout\ $ (\rnd_generator|rnd_gen|state\(42) $ (\rnd_generator|rnd_gen|next_state[42]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[55]~104_combout\,
	datac => \rnd_generator|rnd_gen|state\(42),
	datad => \rnd_generator|rnd_gen|next_state[42]~105_combout\,
	combout => \rnd_generator|rnd_gen|next_state[42]~106_combout\);

-- Location: FF_X73_Y55_N19
\rnd_generator|rnd_gen|state[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[42]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(42));

-- Location: LCCOMB_X72_Y55_N10
\rnd_generator|rnd_gen|next_state[9]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[9]~58_combout\ = \rnd_generator|rnd_gen|state\(42) $ (\rnd_generator|rnd_gen|state\(45) $ (\rnd_generator|rnd_gen|state\(37) $ (!\rnd_generator|rnd_gen|state\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(42),
	datab => \rnd_generator|rnd_gen|state\(45),
	datac => \rnd_generator|rnd_gen|state\(37),
	datad => \rnd_generator|rnd_gen|state\(10),
	combout => \rnd_generator|rnd_gen|next_state[9]~58_combout\);

-- Location: LCCOMB_X73_Y55_N20
\rnd_generator|rnd_gen|next_state[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[10]~53_combout\ = \rnd_generator|rnd_gen|state\(57) $ (\rnd_generator|rnd_gen|state\(47) $ (\rnd_generator|rnd_gen|state\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(57),
	datab => \rnd_generator|rnd_gen|state\(47),
	datad => \rnd_generator|rnd_gen|state\(63),
	combout => \rnd_generator|rnd_gen|next_state[10]~53_combout\);

-- Location: LCCOMB_X73_Y57_N28
\rnd_generator|rnd_gen|next_state[43]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[43]~59_combout\ = \rnd_generator|rnd_gen|state\(18) $ (\rnd_generator|rnd_gen|state\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(18),
	datad => \rnd_generator|rnd_gen|state\(29),
	combout => \rnd_generator|rnd_gen|next_state[43]~59_combout\);

-- Location: LCCOMB_X72_Y55_N12
\rnd_generator|rnd_gen|next_state[9]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[9]~60_combout\ = \rnd_generator|rnd_gen|next_state[9]~58_combout\ $ (\rnd_generator|rnd_gen|state\(33) $ (\rnd_generator|rnd_gen|next_state[10]~53_combout\ $ (!\rnd_generator|rnd_gen|next_state[43]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[9]~58_combout\,
	datab => \rnd_generator|rnd_gen|state\(33),
	datac => \rnd_generator|rnd_gen|next_state[10]~53_combout\,
	datad => \rnd_generator|rnd_gen|next_state[43]~59_combout\,
	combout => \rnd_generator|rnd_gen|next_state[9]~60_combout\);

-- Location: FF_X72_Y55_N13
\rnd_generator|rnd_gen|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[9]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(9));

-- Location: LCCOMB_X73_Y56_N20
\rnd_generator|rnd_gen|next_state[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[17]~69_combout\ = \rnd_generator|rnd_gen|state\(1) $ (\rnd_generator|rnd_gen|state\(11) $ (\rnd_generator|rnd_gen|state\(38) $ (\rnd_generator|rnd_gen|state\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(1),
	datab => \rnd_generator|rnd_gen|state\(11),
	datac => \rnd_generator|rnd_gen|state\(38),
	datad => \rnd_generator|rnd_gen|state\(6),
	combout => \rnd_generator|rnd_gen|next_state[17]~69_combout\);

-- Location: LCCOMB_X73_Y56_N6
\rnd_generator|rnd_gen|next_state[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[17]~68_combout\ = \rnd_generator|rnd_gen|state\(0) $ (\rnd_generator|rnd_gen|state\(41) $ (\rnd_generator|rnd_gen|state\(22) $ (\rnd_generator|rnd_gen|state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(0),
	datab => \rnd_generator|rnd_gen|state\(41),
	datac => \rnd_generator|rnd_gen|state\(22),
	datad => \rnd_generator|rnd_gen|state\(7),
	combout => \rnd_generator|rnd_gen|next_state[17]~68_combout\);

-- Location: LCCOMB_X73_Y56_N4
\rnd_generator|rnd_gen|next_state[17]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[17]~70_combout\ = \rnd_generator|rnd_gen|next_state[17]~69_combout\ $ (\rnd_generator|rnd_gen|state\(49) $ (\rnd_generator|rnd_gen|next_state[17]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|next_state[17]~69_combout\,
	datac => \rnd_generator|rnd_gen|state\(49),
	datad => \rnd_generator|rnd_gen|next_state[17]~68_combout\,
	combout => \rnd_generator|rnd_gen|next_state[17]~70_combout\);

-- Location: FF_X73_Y56_N5
\rnd_generator|rnd_gen|state[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[17]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(17));

-- Location: LCCOMB_X75_Y57_N16
\rnd_generator|rnd_gen|next_state[27]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[27]~34_combout\ = \rnd_generator|rnd_gen|state\(14) $ (\rnd_generator|rnd_gen|state\(31) $ (\rnd_generator|rnd_gen|state\(52) $ (!\rnd_generator|rnd_gen|state\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(14),
	datab => \rnd_generator|rnd_gen|state\(31),
	datac => \rnd_generator|rnd_gen|state\(52),
	datad => \rnd_generator|rnd_gen|state\(17),
	combout => \rnd_generator|rnd_gen|next_state[27]~34_combout\);

-- Location: LCCOMB_X74_Y57_N18
\rnd_generator|rnd_gen|next_state[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(27) = \rnd_generator|rnd_gen|next_state[15]~16_combout\ $ (\rnd_generator|rnd_gen|state\(9) $ (\rnd_generator|rnd_gen|state\(57) $ (!\rnd_generator|rnd_gen|next_state[27]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[15]~16_combout\,
	datab => \rnd_generator|rnd_gen|state\(9),
	datac => \rnd_generator|rnd_gen|state\(57),
	datad => \rnd_generator|rnd_gen|next_state[27]~34_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(27));

-- Location: FF_X74_Y57_N19
\rnd_generator|rnd_gen|state[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(27));

-- Location: LCCOMB_X75_Y56_N20
\rnd_generator|rnd_gen|next_state[37]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[37]~36_combout\ = \rnd_generator|rnd_gen|state\(2) $ (\rnd_generator|rnd_gen|state\(57) $ (\rnd_generator|rnd_gen|state\(27) $ (\rnd_generator|rnd_gen|state\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(2),
	datab => \rnd_generator|rnd_gen|state\(57),
	datac => \rnd_generator|rnd_gen|state\(27),
	datad => \rnd_generator|rnd_gen|state\(9),
	combout => \rnd_generator|rnd_gen|next_state[37]~36_combout\);

-- Location: LCCOMB_X74_Y56_N14
\rnd_generator|rnd_gen|next_state[37]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[37]~37_combout\ = \rnd_generator|rnd_gen|state\(49) $ (\rnd_generator|rnd_gen|next_state[37]~36_combout\ $ (\rnd_generator|rnd_gen|next_state[40]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(49),
	datac => \rnd_generator|rnd_gen|next_state[37]~36_combout\,
	datad => \rnd_generator|rnd_gen|next_state[40]~35_combout\,
	combout => \rnd_generator|rnd_gen|next_state[37]~37_combout\);

-- Location: FF_X74_Y56_N15
\rnd_generator|rnd_gen|state[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[37]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(37));

-- Location: LCCOMB_X73_Y57_N12
\rnd_generator|rnd_gen|next_state[40]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[40]~35_combout\ = \rnd_generator|rnd_gen|state\(34) $ (\rnd_generator|rnd_gen|state\(37) $ (\rnd_generator|rnd_gen|state\(13) $ (!\rnd_generator|rnd_gen|state\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(34),
	datab => \rnd_generator|rnd_gen|state\(37),
	datac => \rnd_generator|rnd_gen|state\(13),
	datad => \rnd_generator|rnd_gen|state\(32),
	combout => \rnd_generator|rnd_gen|next_state[40]~35_combout\);

-- Location: LCCOMB_X75_Y55_N0
\rnd_generator|rnd_gen|next_state[40]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[40]~107_combout\ = \rnd_generator|rnd_gen|state\(39) $ (\rnd_generator|rnd_gen|state\(4) $ (\rnd_generator|rnd_gen|state\(41) $ (!\rnd_generator|rnd_gen|state\(2))))

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
	combout => \rnd_generator|rnd_gen|next_state[40]~107_combout\);

-- Location: LCCOMB_X73_Y57_N26
\rnd_generator|rnd_gen|next_state[40]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[40]~108_combout\ = \rnd_generator|rnd_gen|next_state[40]~35_combout\ $ (\rnd_generator|rnd_gen|state\(18) $ (!\rnd_generator|rnd_gen|next_state[40]~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[40]~35_combout\,
	datac => \rnd_generator|rnd_gen|state\(18),
	datad => \rnd_generator|rnd_gen|next_state[40]~107_combout\,
	combout => \rnd_generator|rnd_gen|next_state[40]~108_combout\);

-- Location: FF_X73_Y57_N27
\rnd_generator|rnd_gen|state[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[40]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(40));

-- Location: LCCOMB_X76_Y55_N18
\rnd_generator|rnd_gen|next_state[50]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[50]~24_combout\ = \rnd_generator|rnd_gen|state\(32) $ (\rnd_generator|rnd_gen|state\(27) $ (!\rnd_generator|rnd_gen|state\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(32),
	datac => \rnd_generator|rnd_gen|state\(27),
	datad => \rnd_generator|rnd_gen|state\(16),
	combout => \rnd_generator|rnd_gen|next_state[50]~24_combout\);

-- Location: LCCOMB_X75_Y55_N2
\rnd_generator|rnd_gen|next_state[50]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[50]~117_combout\ = \rnd_generator|rnd_gen|state\(47) $ (\rnd_generator|rnd_gen|state\(15) $ (\rnd_generator|rnd_gen|state\(35) $ (\rnd_generator|rnd_gen|state\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(47),
	datab => \rnd_generator|rnd_gen|state\(15),
	datac => \rnd_generator|rnd_gen|state\(35),
	datad => \rnd_generator|rnd_gen|state\(37),
	combout => \rnd_generator|rnd_gen|next_state[50]~117_combout\);

-- Location: LCCOMB_X76_Y55_N24
\rnd_generator|rnd_gen|next_state[50]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[50]~135_combout\ = \rnd_generator|rnd_gen|state\(40) $ (\rnd_generator|rnd_gen|next_state[50]~24_combout\ $ (\rnd_generator|rnd_gen|state\(58) $ (!\rnd_generator|rnd_gen|next_state[50]~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(40),
	datab => \rnd_generator|rnd_gen|next_state[50]~24_combout\,
	datac => \rnd_generator|rnd_gen|state\(58),
	datad => \rnd_generator|rnd_gen|next_state[50]~117_combout\,
	combout => \rnd_generator|rnd_gen|next_state[50]~135_combout\);

-- Location: FF_X76_Y55_N25
\rnd_generator|rnd_gen|state[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[50]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(50));

-- Location: LCCOMB_X72_Y55_N14
\rnd_generator|rnd_gen|next_state[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(8) = \rnd_generator|rnd_gen|state\(34) $ (\rnd_generator|rnd_gen|state\(50) $ (\rnd_generator|rnd_gen|state\(29) $ (\rnd_generator|rnd_gen|next_state[33]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(34),
	datab => \rnd_generator|rnd_gen|state\(50),
	datac => \rnd_generator|rnd_gen|state\(29),
	datad => \rnd_generator|rnd_gen|next_state[33]~52_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(8));

-- Location: FF_X72_Y55_N15
\rnd_generator|rnd_gen|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(8));

-- Location: LCCOMB_X74_Y57_N14
\rnd_generator|rnd_gen|next_state[57]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[57]~77_combout\ = \rnd_generator|rnd_gen|state\(52) $ (\rnd_generator|rnd_gen|state\(8) $ (\rnd_generator|rnd_gen|state\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(52),
	datac => \rnd_generator|rnd_gen|state\(8),
	datad => \rnd_generator|rnd_gen|state\(53),
	combout => \rnd_generator|rnd_gen|next_state[57]~77_combout\);

-- Location: LCCOMB_X75_Y56_N6
\rnd_generator|rnd_gen|next_state[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[21]~76_combout\ = \rnd_generator|rnd_gen|state\(16) $ (\rnd_generator|rnd_gen|state\(22) $ (\rnd_generator|rnd_gen|state\(56) $ (\rnd_generator|rnd_gen|state\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(16),
	datab => \rnd_generator|rnd_gen|state\(22),
	datac => \rnd_generator|rnd_gen|state\(56),
	datad => \rnd_generator|rnd_gen|state\(13),
	combout => \rnd_generator|rnd_gen|next_state[21]~76_combout\);

-- Location: LCCOMB_X74_Y57_N30
\rnd_generator|rnd_gen|next_state[21]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[21]~78_combout\ = \rnd_generator|rnd_gen|state\(39) $ (\rnd_generator|rnd_gen|next_state[57]~77_combout\ $ (\rnd_generator|rnd_gen|state\(41) $ (!\rnd_generator|rnd_gen|next_state[21]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(39),
	datab => \rnd_generator|rnd_gen|next_state[57]~77_combout\,
	datac => \rnd_generator|rnd_gen|state\(41),
	datad => \rnd_generator|rnd_gen|next_state[21]~76_combout\,
	combout => \rnd_generator|rnd_gen|next_state[21]~78_combout\);

-- Location: FF_X74_Y57_N31
\rnd_generator|rnd_gen|state[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[21]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(21));

-- Location: LCCOMB_X73_Y57_N30
\rnd_generator|rnd_gen|next_state[63]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[63]~118_combout\ = \rnd_generator|rnd_gen|state\(15) $ (\rnd_generator|rnd_gen|state\(21) $ (!\rnd_generator|rnd_gen|state\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(15),
	datac => \rnd_generator|rnd_gen|state\(21),
	datad => \rnd_generator|rnd_gen|state\(10),
	combout => \rnd_generator|rnd_gen|next_state[63]~118_combout\);

-- Location: LCCOMB_X73_Y56_N30
\rnd_generator|rnd_gen|next_state[55]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[55]~119_combout\ = \rnd_generator|rnd_gen|next_state[63]~118_combout\ $ (\rnd_generator|rnd_gen|state\(34) $ (\rnd_generator|rnd_gen|state\(55) $ (!\rnd_generator|rnd_gen|next_state[55]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[63]~118_combout\,
	datab => \rnd_generator|rnd_gen|state\(34),
	datac => \rnd_generator|rnd_gen|state\(55),
	datad => \rnd_generator|rnd_gen|next_state[55]~104_combout\,
	combout => \rnd_generator|rnd_gen|next_state[55]~119_combout\);

-- Location: FF_X73_Y56_N31
\rnd_generator|rnd_gen|state[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[55]~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(55));

-- Location: LCCOMB_X75_Y56_N12
\rnd_generator|rnd_gen|next_state[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[23]~46_combout\ = \rnd_generator|rnd_gen|state\(0) $ (\rnd_generator|rnd_gen|state\(54) $ (\rnd_generator|rnd_gen|state\(6) $ (\rnd_generator|rnd_gen|state\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(0),
	datab => \rnd_generator|rnd_gen|state\(54),
	datac => \rnd_generator|rnd_gen|state\(6),
	datad => \rnd_generator|rnd_gen|state\(55),
	combout => \rnd_generator|rnd_gen|next_state[23]~46_combout\);

-- Location: LCCOMB_X75_Y56_N22
\rnd_generator|rnd_gen|next_state[23]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[23]~45_combout\ = \rnd_generator|rnd_gen|state\(43) $ (\rnd_generator|rnd_gen|state\(16) $ (\rnd_generator|rnd_gen|state\(56) $ (\rnd_generator|rnd_gen|state\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(43),
	datab => \rnd_generator|rnd_gen|state\(16),
	datac => \rnd_generator|rnd_gen|state\(56),
	datad => \rnd_generator|rnd_gen|state\(22),
	combout => \rnd_generator|rnd_gen|next_state[23]~45_combout\);

-- Location: LCCOMB_X74_Y56_N18
\rnd_generator|rnd_gen|next_state[23]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[23]~47_combout\ = \rnd_generator|rnd_gen|next_state[23]~46_combout\ $ (\rnd_generator|rnd_gen|state\(60) $ (!\rnd_generator|rnd_gen|next_state[23]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|next_state[23]~46_combout\,
	datac => \rnd_generator|rnd_gen|state\(60),
	datad => \rnd_generator|rnd_gen|next_state[23]~45_combout\,
	combout => \rnd_generator|rnd_gen|next_state[23]~47_combout\);

-- Location: FF_X74_Y56_N19
\rnd_generator|rnd_gen|state[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[23]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(23));

-- Location: LCCOMB_X74_Y55_N16
\rnd_generator|rnd_gen|next_state[39]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[39]~39_combout\ = \rnd_generator|rnd_gen|state\(23) $ (\rnd_generator|rnd_gen|state\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|rnd_gen|state\(23),
	datad => \rnd_generator|rnd_gen|state\(8),
	combout => \rnd_generator|rnd_gen|next_state[39]~39_combout\);

-- Location: LCCOMB_X70_Y55_N16
\rnd_generator|rnd_gen|next_state[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[39]~38_combout\ = \rnd_generator|rnd_gen|state\(9) $ (\rnd_generator|rnd_gen|state\(15) $ (\rnd_generator|rnd_gen|state\(3) $ (\rnd_generator|rnd_gen|state\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(9),
	datab => \rnd_generator|rnd_gen|state\(15),
	datac => \rnd_generator|rnd_gen|state\(3),
	datad => \rnd_generator|rnd_gen|state\(12),
	combout => \rnd_generator|rnd_gen|next_state[39]~38_combout\);

-- Location: LCCOMB_X74_Y55_N10
\rnd_generator|rnd_gen|next_state[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(39) = \rnd_generator|rnd_gen|state\(31) $ (\rnd_generator|rnd_gen|next_state[39]~39_combout\ $ (\rnd_generator|rnd_gen|state\(59) $ (!\rnd_generator|rnd_gen|next_state[39]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(31),
	datab => \rnd_generator|rnd_gen|next_state[39]~39_combout\,
	datac => \rnd_generator|rnd_gen|state\(59),
	datad => \rnd_generator|rnd_gen|next_state[39]~38_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(39));

-- Location: FF_X74_Y55_N11
\rnd_generator|rnd_gen|state[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(39));

-- Location: LCCOMB_X73_Y56_N12
\rnd_generator|rnd_gen|next_state[12]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[12]~63_combout\ = \rnd_generator|rnd_gen|state\(52) $ (\rnd_generator|rnd_gen|state\(14) $ (\rnd_generator|rnd_gen|state\(17) $ (!\rnd_generator|rnd_gen|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(52),
	datab => \rnd_generator|rnd_gen|state\(14),
	datac => \rnd_generator|rnd_gen|state\(17),
	datad => \rnd_generator|rnd_gen|state\(1),
	combout => \rnd_generator|rnd_gen|next_state[12]~63_combout\);

-- Location: LCCOMB_X73_Y56_N24
\rnd_generator|rnd_gen|next_state[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(12) = \rnd_generator|rnd_gen|state\(39) $ (\rnd_generator|rnd_gen|state\(27) $ (\rnd_generator|rnd_gen|state\(37) $ (\rnd_generator|rnd_gen|next_state[12]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(39),
	datab => \rnd_generator|rnd_gen|state\(27),
	datac => \rnd_generator|rnd_gen|state\(37),
	datad => \rnd_generator|rnd_gen|next_state[12]~63_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(12));

-- Location: FF_X73_Y56_N25
\rnd_generator|rnd_gen|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(12));

-- Location: LCCOMB_X73_Y57_N20
\rnd_generator|rnd_gen|next_state[56]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[56]~122_combout\ = \rnd_generator|rnd_gen|state\(43) $ (\rnd_generator|rnd_gen|state\(12) $ (\rnd_generator|rnd_gen|state\(13) $ (\rnd_generator|rnd_gen|state\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(43),
	datab => \rnd_generator|rnd_gen|state\(12),
	datac => \rnd_generator|rnd_gen|state\(13),
	datad => \rnd_generator|rnd_gen|state\(59),
	combout => \rnd_generator|rnd_gen|next_state[56]~122_combout\);

-- Location: LCCOMB_X73_Y56_N22
\rnd_generator|rnd_gen|next_state[56]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[56]~56_combout\ = \rnd_generator|rnd_gen|state\(16) $ (\rnd_generator|rnd_gen|state\(44) $ (!\rnd_generator|rnd_gen|state\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(16),
	datac => \rnd_generator|rnd_gen|state\(44),
	datad => \rnd_generator|rnd_gen|state\(39),
	combout => \rnd_generator|rnd_gen|next_state[56]~56_combout\);

-- Location: LCCOMB_X74_Y55_N4
\rnd_generator|rnd_gen|next_state[56]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[56]~123_combout\ = \rnd_generator|rnd_gen|state\(58) $ (\rnd_generator|rnd_gen|state\(11) $ (\rnd_generator|rnd_gen|next_state[56]~122_combout\ $ (\rnd_generator|rnd_gen|next_state[56]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(58),
	datab => \rnd_generator|rnd_gen|state\(11),
	datac => \rnd_generator|rnd_gen|next_state[56]~122_combout\,
	datad => \rnd_generator|rnd_gen|next_state[56]~56_combout\,
	combout => \rnd_generator|rnd_gen|next_state[56]~123_combout\);

-- Location: FF_X74_Y55_N5
\rnd_generator|rnd_gen|state[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[56]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(56));

-- Location: LCCOMB_X75_Y57_N14
\rnd_generator|rnd_gen|next_state[52]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[52]~120_combout\ = \rnd_generator|rnd_gen|state\(56) $ (\rnd_generator|rnd_gen|state\(7) $ (\rnd_generator|rnd_gen|state\(47) $ (!\rnd_generator|rnd_gen|state\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(56),
	datab => \rnd_generator|rnd_gen|state\(7),
	datac => \rnd_generator|rnd_gen|state\(47),
	datad => \rnd_generator|rnd_gen|state\(14),
	combout => \rnd_generator|rnd_gen|next_state[52]~120_combout\);

-- Location: LCCOMB_X74_Y57_N20
\rnd_generator|rnd_gen|next_state[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(52) = \rnd_generator|rnd_gen|state\(28) $ (\rnd_generator|rnd_gen|next_state[52]~120_combout\ $ (\rnd_generator|rnd_gen|next_state[47]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(28),
	datac => \rnd_generator|rnd_gen|next_state[52]~120_combout\,
	datad => \rnd_generator|rnd_gen|next_state[47]~28_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(52));

-- Location: FF_X74_Y57_N21
\rnd_generator|rnd_gen|state[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(52));

-- Location: LCCOMB_X75_Y57_N18
\rnd_generator|rnd_gen|next_state[61]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[61]~132_combout\ = \rnd_generator|rnd_gen|state\(1) $ (\rnd_generator|rnd_gen|state\(42) $ (\rnd_generator|rnd_gen|state\(6) $ (\rnd_generator|rnd_gen|state\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(1),
	datab => \rnd_generator|rnd_gen|state\(42),
	datac => \rnd_generator|rnd_gen|state\(6),
	datad => \rnd_generator|rnd_gen|state\(11),
	combout => \rnd_generator|rnd_gen|next_state[61]~132_combout\);

-- Location: LCCOMB_X74_Y57_N0
\rnd_generator|rnd_gen|next_state[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(61) = \rnd_generator|rnd_gen|state\(52) $ (\rnd_generator|rnd_gen|state\(53) $ (\rnd_generator|rnd_gen|state\(26) $ (!\rnd_generator|rnd_gen|next_state[61]~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(52),
	datab => \rnd_generator|rnd_gen|state\(53),
	datac => \rnd_generator|rnd_gen|state\(26),
	datad => \rnd_generator|rnd_gen|next_state[61]~132_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(61));

-- Location: FF_X74_Y57_N1
\rnd_generator|rnd_gen|state[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(61));

-- Location: LCCOMB_X74_Y56_N24
\rnd_generator|rnd_gen|next_state[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[30]~93_combout\ = \rnd_generator|rnd_gen|state\(47) $ (\rnd_generator|rnd_gen|state\(45) $ (\rnd_generator|rnd_gen|state\(40) $ (\rnd_generator|rnd_gen|state\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(47),
	datab => \rnd_generator|rnd_gen|state\(45),
	datac => \rnd_generator|rnd_gen|state\(40),
	datad => \rnd_generator|rnd_gen|state\(56),
	combout => \rnd_generator|rnd_gen|next_state[30]~93_combout\);

-- Location: LCCOMB_X74_Y56_N22
\rnd_generator|rnd_gen|next_state[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(30) = \rnd_generator|rnd_gen|state\(61) $ (\rnd_generator|rnd_gen|next_state[30]~93_combout\ $ (\rnd_generator|rnd_gen|state\(4) $ (!\rnd_generator|rnd_gen|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(61),
	datab => \rnd_generator|rnd_gen|next_state[30]~93_combout\,
	datac => \rnd_generator|rnd_gen|state\(4),
	datad => \rnd_generator|rnd_gen|state\(2),
	combout => \rnd_generator|rnd_gen|next_state\(30));

-- Location: FF_X74_Y56_N23
\rnd_generator|rnd_gen|state[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(30));

-- Location: LCCOMB_X75_Y56_N8
\rnd_generator|rnd_gen|next_state[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[28]~90_combout\ = \rnd_generator|rnd_gen|state\(30) $ (\rnd_generator|rnd_gen|state\(48) $ (\rnd_generator|rnd_gen|state\(46) $ (\rnd_generator|rnd_gen|state\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(30),
	datab => \rnd_generator|rnd_gen|state\(48),
	datac => \rnd_generator|rnd_gen|state\(46),
	datad => \rnd_generator|rnd_gen|state\(55),
	combout => \rnd_generator|rnd_gen|next_state[28]~90_combout\);

-- Location: LCCOMB_X74_Y56_N10
\rnd_generator|rnd_gen|next_state[59]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[59]~89_combout\ = \rnd_generator|rnd_gen|state\(63) $ (\rnd_generator|rnd_gen|state\(45) $ (\rnd_generator|rnd_gen|state\(4) $ (!\rnd_generator|rnd_gen|state\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(63),
	datab => \rnd_generator|rnd_gen|state\(45),
	datac => \rnd_generator|rnd_gen|state\(4),
	datad => \rnd_generator|rnd_gen|state\(11),
	combout => \rnd_generator|rnd_gen|next_state[59]~89_combout\);

-- Location: LCCOMB_X74_Y56_N6
\rnd_generator|rnd_gen|next_state[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[28]~91_combout\ = \rnd_generator|rnd_gen|state\(58) $ (\rnd_generator|rnd_gen|next_state[28]~90_combout\ $ (\rnd_generator|rnd_gen|next_state[59]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(58),
	datac => \rnd_generator|rnd_gen|next_state[28]~90_combout\,
	datad => \rnd_generator|rnd_gen|next_state[59]~89_combout\,
	combout => \rnd_generator|rnd_gen|next_state[28]~91_combout\);

-- Location: FF_X74_Y56_N7
\rnd_generator|rnd_gen|state[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[28]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(28));

-- Location: LCCOMB_X75_Y55_N14
\rnd_generator|rnd_gen|next_state[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[4]~18_combout\ = \rnd_generator|rnd_gen|state\(32) $ (\rnd_generator|rnd_gen|state\(4) $ (\rnd_generator|rnd_gen|state\(46) $ (\rnd_generator|rnd_gen|state\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(32),
	datab => \rnd_generator|rnd_gen|state\(4),
	datac => \rnd_generator|rnd_gen|state\(46),
	datad => \rnd_generator|rnd_gen|state\(28),
	combout => \rnd_generator|rnd_gen|next_state[4]~18_combout\);

-- Location: LCCOMB_X76_Y55_N6
\rnd_generator|rnd_gen|next_state[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(4) = \rnd_generator|rnd_gen|next_state[4]~18_combout\ $ (\rnd_generator|rnd_gen|state\(50) $ (\rnd_generator|rnd_gen|state\(37) $ (\rnd_generator|rnd_gen|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[4]~18_combout\,
	datab => \rnd_generator|rnd_gen|state\(50),
	datac => \rnd_generator|rnd_gen|state\(37),
	datad => \rnd_generator|rnd_gen|state\(3),
	combout => \rnd_generator|rnd_gen|next_state\(4));

-- Location: FF_X76_Y55_N7
\rnd_generator|rnd_gen|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(4));

-- Location: LCCOMB_X76_Y55_N30
\rnd_generator|rnd_gen|next_state[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[7]~51_combout\ = \rnd_generator|rnd_gen|state\(4) $ (\rnd_generator|rnd_gen|state\(51) $ (\rnd_generator|rnd_gen|state\(33) $ (\rnd_generator|rnd_gen|state\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(4),
	datab => \rnd_generator|rnd_gen|state\(51),
	datac => \rnd_generator|rnd_gen|state\(33),
	datad => \rnd_generator|rnd_gen|state\(32),
	combout => \rnd_generator|rnd_gen|next_state[7]~51_combout\);

-- Location: LCCOMB_X76_Y55_N0
\rnd_generator|rnd_gen|next_state[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(7) = \rnd_generator|rnd_gen|next_state[7]~51_combout\ $ (\rnd_generator|rnd_gen|state\(23) $ (\rnd_generator|rnd_gen|state\(1) $ (!\rnd_generator|rnd_gen|state\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[7]~51_combout\,
	datab => \rnd_generator|rnd_gen|state\(23),
	datac => \rnd_generator|rnd_gen|state\(1),
	datad => \rnd_generator|rnd_gen|state\(43),
	combout => \rnd_generator|rnd_gen|next_state\(7));

-- Location: FF_X76_Y55_N1
\rnd_generator|rnd_gen|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(7));

-- Location: LCCOMB_X73_Y55_N10
\rnd_generator|rnd_gen|next_state[44]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[44]~50_combout\ = \rnd_generator|rnd_gen|state\(62) $ (\rnd_generator|rnd_gen|state\(61) $ (\rnd_generator|rnd_gen|state\(17) $ (!\rnd_generator|rnd_gen|state\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(62),
	datab => \rnd_generator|rnd_gen|state\(61),
	datac => \rnd_generator|rnd_gen|state\(17),
	datad => \rnd_generator|rnd_gen|state\(18),
	combout => \rnd_generator|rnd_gen|next_state[44]~50_combout\);

-- Location: LCCOMB_X73_Y55_N26
\rnd_generator|rnd_gen|next_state[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(44) = \rnd_generator|rnd_gen|state\(7) $ (\rnd_generator|rnd_gen|state\(50) $ (\rnd_generator|rnd_gen|state\(0) $ (\rnd_generator|rnd_gen|next_state[44]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(7),
	datab => \rnd_generator|rnd_gen|state\(50),
	datac => \rnd_generator|rnd_gen|state\(0),
	datad => \rnd_generator|rnd_gen|next_state[44]~50_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(44));

-- Location: FF_X73_Y55_N27
\rnd_generator|rnd_gen|state[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(44));

-- Location: LCCOMB_X74_Y57_N10
\rnd_generator|rnd_gen|next_state[59]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[59]~124_combout\ = \rnd_generator|rnd_gen|state\(44) $ (\rnd_generator|rnd_gen|state\(49) $ (\rnd_generator|rnd_gen|next_state[59]~73_combout\ $ (!\rnd_generator|rnd_gen|next_state[59]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(44),
	datab => \rnd_generator|rnd_gen|state\(49),
	datac => \rnd_generator|rnd_gen|next_state[59]~73_combout\,
	datad => \rnd_generator|rnd_gen|next_state[59]~89_combout\,
	combout => \rnd_generator|rnd_gen|next_state[59]~124_combout\);

-- Location: FF_X74_Y57_N11
\rnd_generator|rnd_gen|state[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[59]~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(59));

-- Location: LCCOMB_X75_Y57_N6
\rnd_generator|rnd_gen|next_state[56]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[56]~23_combout\ = \rnd_generator|rnd_gen|state\(59) $ (\rnd_generator|rnd_gen|state\(43))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(59),
	datad => \rnd_generator|rnd_gen|state\(43),
	combout => \rnd_generator|rnd_gen|next_state[56]~23_combout\);

-- Location: LCCOMB_X76_Y55_N16
\rnd_generator|rnd_gen|next_state[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[6]~25_combout\ = \rnd_generator|rnd_gen|state\(40) $ (\rnd_generator|rnd_gen|state\(50) $ (\rnd_generator|rnd_gen|state\(24) $ (\rnd_generator|rnd_gen|next_state[50]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(40),
	datab => \rnd_generator|rnd_gen|state\(50),
	datac => \rnd_generator|rnd_gen|state\(24),
	datad => \rnd_generator|rnd_gen|next_state[50]~24_combout\,
	combout => \rnd_generator|rnd_gen|next_state[6]~25_combout\);

-- Location: LCCOMB_X76_Y55_N26
\rnd_generator|rnd_gen|next_state[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[6]~26_combout\ = \rnd_generator|rnd_gen|next_state[56]~23_combout\ $ (\rnd_generator|rnd_gen|state\(3) $ (\rnd_generator|rnd_gen|state\(48) $ (!\rnd_generator|rnd_gen|next_state[6]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[56]~23_combout\,
	datab => \rnd_generator|rnd_gen|state\(3),
	datac => \rnd_generator|rnd_gen|state\(48),
	datad => \rnd_generator|rnd_gen|next_state[6]~25_combout\,
	combout => \rnd_generator|rnd_gen|next_state[6]~26_combout\);

-- Location: FF_X76_Y55_N27
\rnd_generator|rnd_gen|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(6));

-- Location: LCCOMB_X75_Y55_N12
\rnd_generator|rnd_gen|next_state[54]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[54]~121_combout\ = \rnd_generator|rnd_gen|state\(6) $ (\rnd_generator|rnd_gen|state\(51) $ (\rnd_generator|rnd_gen|state\(33) $ (!\rnd_generator|rnd_gen|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(6),
	datab => \rnd_generator|rnd_gen|state\(51),
	datac => \rnd_generator|rnd_gen|state\(33),
	datad => \rnd_generator|rnd_gen|state\(3),
	combout => \rnd_generator|rnd_gen|next_state[54]~121_combout\);

-- Location: LCCOMB_X75_Y55_N6
\rnd_generator|rnd_gen|next_state[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(54) = \rnd_generator|rnd_gen|next_state[54]~121_combout\ $ (\rnd_generator|rnd_gen|state\(7) $ (\rnd_generator|rnd_gen|state\(15) $ (!\rnd_generator|rnd_gen|state\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[54]~121_combout\,
	datab => \rnd_generator|rnd_gen|state\(7),
	datac => \rnd_generator|rnd_gen|state\(15),
	datad => \rnd_generator|rnd_gen|state\(37),
	combout => \rnd_generator|rnd_gen|next_state\(54));

-- Location: FF_X75_Y55_N7
\rnd_generator|rnd_gen|state[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(54));

-- Location: LCCOMB_X75_Y56_N26
\rnd_generator|rnd_gen|next_state[36]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[36]~49_combout\ = \rnd_generator|rnd_gen|state\(31) $ (\rnd_generator|rnd_gen|state\(28) $ (\rnd_generator|rnd_gen|state\(46) $ (\rnd_generator|rnd_gen|state\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(31),
	datab => \rnd_generator|rnd_gen|state\(28),
	datac => \rnd_generator|rnd_gen|state\(46),
	datad => \rnd_generator|rnd_gen|state\(39),
	combout => \rnd_generator|rnd_gen|next_state[36]~49_combout\);

-- Location: LCCOMB_X74_Y55_N14
\rnd_generator|rnd_gen|next_state[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(36) = \rnd_generator|rnd_gen|state\(54) $ (\rnd_generator|rnd_gen|state\(8) $ (\rnd_generator|rnd_gen|next_state[50]~48_combout\ $ (!\rnd_generator|rnd_gen|next_state[36]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(54),
	datab => \rnd_generator|rnd_gen|state\(8),
	datac => \rnd_generator|rnd_gen|next_state[50]~48_combout\,
	datad => \rnd_generator|rnd_gen|next_state[36]~49_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(36));

-- Location: FF_X74_Y55_N15
\rnd_generator|rnd_gen|state[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(36));

-- Location: LCCOMB_X75_Y55_N8
\rnd_generator|rnd_gen|next_state[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[0]~14_combout\ = \rnd_generator|rnd_gen|state\(36) $ (\rnd_generator|rnd_gen|state\(23) $ (\rnd_generator|rnd_gen|state\(15) $ (\rnd_generator|rnd_gen|state\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(36),
	datab => \rnd_generator|rnd_gen|state\(23),
	datac => \rnd_generator|rnd_gen|state\(15),
	datad => \rnd_generator|rnd_gen|state\(44),
	combout => \rnd_generator|rnd_gen|next_state[0]~14_combout\);

-- Location: LCCOMB_X73_Y55_N14
\rnd_generator|rnd_gen|next_state[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[0]~15_combout\ = \rnd_generator|rnd_gen|state\(59) $ (\rnd_generator|rnd_gen|state\(42) $ (\rnd_generator|rnd_gen|state\(22) $ (\rnd_generator|rnd_gen|state\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(59),
	datab => \rnd_generator|rnd_gen|state\(42),
	datac => \rnd_generator|rnd_gen|state\(22),
	datad => \rnd_generator|rnd_gen|state\(53),
	combout => \rnd_generator|rnd_gen|next_state[0]~15_combout\);

-- Location: LCCOMB_X72_Y55_N22
\rnd_generator|rnd_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~2_combout\ = (!\rnd_generator|rnd_gen|state\(9) & (\rnd_generator|rnd_gen|state\(11) & (\rnd_generator|rnd_gen|state\(8) & \rnd_generator|rnd_gen|state\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(9),
	datab => \rnd_generator|rnd_gen|state\(11),
	datac => \rnd_generator|rnd_gen|state\(8),
	datad => \rnd_generator|rnd_gen|state\(10),
	combout => \rnd_generator|rnd_gen|Equal0~2_combout\);

-- Location: LCCOMB_X76_Y55_N14
\rnd_generator|rnd_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~1_combout\ = (!\rnd_generator|rnd_gen|state\(4) & (\rnd_generator|rnd_gen|state\(5) & (\rnd_generator|rnd_gen|state\(6) & \rnd_generator|rnd_gen|state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(4),
	datab => \rnd_generator|rnd_gen|state\(5),
	datac => \rnd_generator|rnd_gen|state\(6),
	datad => \rnd_generator|rnd_gen|state\(7),
	combout => \rnd_generator|rnd_gen|Equal0~1_combout\);

-- Location: LCCOMB_X72_Y55_N4
\rnd_generator|rnd_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~0_combout\ = (\rnd_generator|rnd_gen|state\(2) & (\rnd_generator|rnd_gen|state\(0) & (\rnd_generator|rnd_gen|state\(1) & \rnd_generator|rnd_gen|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(2),
	datab => \rnd_generator|rnd_gen|state\(0),
	datac => \rnd_generator|rnd_gen|state\(1),
	datad => \rnd_generator|rnd_gen|state\(3),
	combout => \rnd_generator|rnd_gen|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y55_N18
\rnd_generator|rnd_gen|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~3_combout\ = (\rnd_generator|rnd_gen|state\(15) & (!\rnd_generator|rnd_gen|state\(13) & (\rnd_generator|rnd_gen|state\(14) & !\rnd_generator|rnd_gen|state\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(15),
	datab => \rnd_generator|rnd_gen|state\(13),
	datac => \rnd_generator|rnd_gen|state\(14),
	datad => \rnd_generator|rnd_gen|state\(12),
	combout => \rnd_generator|rnd_gen|Equal0~3_combout\);

-- Location: LCCOMB_X72_Y55_N16
\rnd_generator|rnd_gen|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~4_combout\ = (\rnd_generator|rnd_gen|Equal0~2_combout\ & (\rnd_generator|rnd_gen|Equal0~1_combout\ & (\rnd_generator|rnd_gen|Equal0~0_combout\ & \rnd_generator|rnd_gen|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|Equal0~2_combout\,
	datab => \rnd_generator|rnd_gen|Equal0~1_combout\,
	datac => \rnd_generator|rnd_gen|Equal0~0_combout\,
	datad => \rnd_generator|rnd_gen|Equal0~3_combout\,
	combout => \rnd_generator|rnd_gen|Equal0~4_combout\);

-- Location: LCCOMB_X74_Y57_N26
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

-- Location: LCCOMB_X74_Y56_N20
\rnd_generator|rnd_gen|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~8_combout\ = (!\rnd_generator|rnd_gen|state\(30) & (!\rnd_generator|rnd_gen|state\(29) & (!\rnd_generator|rnd_gen|state\(28) & \rnd_generator|rnd_gen|state\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(30),
	datab => \rnd_generator|rnd_gen|state\(29),
	datac => \rnd_generator|rnd_gen|state\(28),
	datad => \rnd_generator|rnd_gen|state\(31),
	combout => \rnd_generator|rnd_gen|Equal0~8_combout\);

-- Location: LCCOMB_X74_Y56_N12
\rnd_generator|rnd_gen|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~6_combout\ = (\rnd_generator|rnd_gen|state\(21) & (!\rnd_generator|rnd_gen|state\(22) & (!\rnd_generator|rnd_gen|state\(20) & \rnd_generator|rnd_gen|state\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(21),
	datab => \rnd_generator|rnd_gen|state\(22),
	datac => \rnd_generator|rnd_gen|state\(20),
	datad => \rnd_generator|rnd_gen|state\(23),
	combout => \rnd_generator|rnd_gen|Equal0~6_combout\);

-- Location: LCCOMB_X73_Y56_N16
\rnd_generator|rnd_gen|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~5_combout\ = (\rnd_generator|rnd_gen|state\(19) & (\rnd_generator|rnd_gen|state\(16) & (\rnd_generator|rnd_gen|state\(17) & !\rnd_generator|rnd_gen|state\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(19),
	datab => \rnd_generator|rnd_gen|state\(16),
	datac => \rnd_generator|rnd_gen|state\(17),
	datad => \rnd_generator|rnd_gen|state\(18),
	combout => \rnd_generator|rnd_gen|Equal0~5_combout\);

-- Location: LCCOMB_X73_Y55_N16
\rnd_generator|rnd_gen|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~9_combout\ = (\rnd_generator|rnd_gen|Equal0~7_combout\ & (\rnd_generator|rnd_gen|Equal0~8_combout\ & (\rnd_generator|rnd_gen|Equal0~6_combout\ & \rnd_generator|rnd_gen|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|Equal0~7_combout\,
	datab => \rnd_generator|rnd_gen|Equal0~8_combout\,
	datac => \rnd_generator|rnd_gen|Equal0~6_combout\,
	datad => \rnd_generator|rnd_gen|Equal0~5_combout\,
	combout => \rnd_generator|rnd_gen|Equal0~9_combout\);

-- Location: LCCOMB_X73_Y55_N12
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

-- Location: LCCOMB_X73_Y55_N24
\rnd_generator|rnd_gen|Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~18_combout\ = (!\rnd_generator|rnd_gen|state\(62) & (!\rnd_generator|rnd_gen|state\(60) & (!\rnd_generator|rnd_gen|state\(61) & !\rnd_generator|rnd_gen|state\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(62),
	datab => \rnd_generator|rnd_gen|state\(60),
	datac => \rnd_generator|rnd_gen|state\(61),
	datad => \rnd_generator|rnd_gen|state\(63),
	combout => \rnd_generator|rnd_gen|Equal0~18_combout\);

-- Location: LCCOMB_X76_Y55_N10
\rnd_generator|rnd_gen|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~15_combout\ = (\rnd_generator|rnd_gen|state\(48) & (!\rnd_generator|rnd_gen|state\(50) & (\rnd_generator|rnd_gen|state\(49) & !\rnd_generator|rnd_gen|state\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(48),
	datab => \rnd_generator|rnd_gen|state\(50),
	datac => \rnd_generator|rnd_gen|state\(49),
	datad => \rnd_generator|rnd_gen|state\(51),
	combout => \rnd_generator|rnd_gen|Equal0~15_combout\);

-- Location: LCCOMB_X73_Y55_N6
\rnd_generator|rnd_gen|Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~17_combout\ = (!\rnd_generator|rnd_gen|state\(58) & (\rnd_generator|rnd_gen|state\(56) & (!\rnd_generator|rnd_gen|state\(59) & !\rnd_generator|rnd_gen|state\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(58),
	datab => \rnd_generator|rnd_gen|state\(56),
	datac => \rnd_generator|rnd_gen|state\(59),
	datad => \rnd_generator|rnd_gen|state\(57),
	combout => \rnd_generator|rnd_gen|Equal0~17_combout\);

-- Location: LCCOMB_X73_Y55_N30
\rnd_generator|rnd_gen|Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~19_combout\ = (\rnd_generator|rnd_gen|Equal0~16_combout\ & (\rnd_generator|rnd_gen|Equal0~18_combout\ & (\rnd_generator|rnd_gen|Equal0~15_combout\ & \rnd_generator|rnd_gen|Equal0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|Equal0~16_combout\,
	datab => \rnd_generator|rnd_gen|Equal0~18_combout\,
	datac => \rnd_generator|rnd_gen|Equal0~15_combout\,
	datad => \rnd_generator|rnd_gen|Equal0~17_combout\,
	combout => \rnd_generator|rnd_gen|Equal0~19_combout\);

-- Location: LCCOMB_X74_Y55_N6
\rnd_generator|rnd_gen|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~10_combout\ = (\rnd_generator|rnd_gen|state\(34) & (\rnd_generator|rnd_gen|state\(32) & (!\rnd_generator|rnd_gen|state\(35) & \rnd_generator|rnd_gen|state\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(34),
	datab => \rnd_generator|rnd_gen|state\(32),
	datac => \rnd_generator|rnd_gen|state\(35),
	datad => \rnd_generator|rnd_gen|state\(33),
	combout => \rnd_generator|rnd_gen|Equal0~10_combout\);

-- Location: LCCOMB_X74_Y55_N18
\rnd_generator|rnd_gen|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~11_combout\ = (!\rnd_generator|rnd_gen|state\(39) & (!\rnd_generator|rnd_gen|state\(36) & (\rnd_generator|rnd_gen|state\(37) & \rnd_generator|rnd_gen|state\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(39),
	datab => \rnd_generator|rnd_gen|state\(36),
	datac => \rnd_generator|rnd_gen|state\(37),
	datad => \rnd_generator|rnd_gen|state\(38),
	combout => \rnd_generator|rnd_gen|Equal0~11_combout\);

-- Location: LCCOMB_X72_Y55_N6
\rnd_generator|rnd_gen|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~12_combout\ = (\rnd_generator|rnd_gen|state\(42) & (!\rnd_generator|rnd_gen|state\(41) & (\rnd_generator|rnd_gen|state\(40) & !\rnd_generator|rnd_gen|state\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(42),
	datab => \rnd_generator|rnd_gen|state\(41),
	datac => \rnd_generator|rnd_gen|state\(40),
	datad => \rnd_generator|rnd_gen|state\(43),
	combout => \rnd_generator|rnd_gen|Equal0~12_combout\);

-- Location: LCCOMB_X73_Y55_N28
\rnd_generator|rnd_gen|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~13_combout\ = (!\rnd_generator|rnd_gen|state\(44) & (!\rnd_generator|rnd_gen|state\(47) & (\rnd_generator|rnd_gen|state\(46) & !\rnd_generator|rnd_gen|state\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(44),
	datab => \rnd_generator|rnd_gen|state\(47),
	datac => \rnd_generator|rnd_gen|state\(46),
	datad => \rnd_generator|rnd_gen|state\(45),
	combout => \rnd_generator|rnd_gen|Equal0~13_combout\);

-- Location: LCCOMB_X73_Y55_N2
\rnd_generator|rnd_gen|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~14_combout\ = (\rnd_generator|rnd_gen|Equal0~10_combout\ & (\rnd_generator|rnd_gen|Equal0~11_combout\ & (\rnd_generator|rnd_gen|Equal0~12_combout\ & \rnd_generator|rnd_gen|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|Equal0~10_combout\,
	datab => \rnd_generator|rnd_gen|Equal0~11_combout\,
	datac => \rnd_generator|rnd_gen|Equal0~12_combout\,
	datad => \rnd_generator|rnd_gen|Equal0~13_combout\,
	combout => \rnd_generator|rnd_gen|Equal0~14_combout\);

-- Location: LCCOMB_X73_Y55_N0
\rnd_generator|rnd_gen|Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|Equal0~20_combout\ = (\rnd_generator|rnd_gen|Equal0~4_combout\ & (\rnd_generator|rnd_gen|Equal0~9_combout\ & (\rnd_generator|rnd_gen|Equal0~19_combout\ & \rnd_generator|rnd_gen|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|Equal0~4_combout\,
	datab => \rnd_generator|rnd_gen|Equal0~9_combout\,
	datac => \rnd_generator|rnd_gen|Equal0~19_combout\,
	datad => \rnd_generator|rnd_gen|Equal0~14_combout\,
	combout => \rnd_generator|rnd_gen|Equal0~20_combout\);

-- Location: LCCOMB_X73_Y55_N8
\rnd_generator|rnd_gen|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|state~0_combout\ = (!\rnd_generator|rnd_gen|Equal0~20_combout\ & (\rnd_generator|rnd_gen|next_state[0]~14_combout\ $ (\rnd_generator|rnd_gen|next_state[0]~15_combout\ $ (!\rnd_generator|rnd_gen|state\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[0]~14_combout\,
	datab => \rnd_generator|rnd_gen|next_state[0]~15_combout\,
	datac => \rnd_generator|rnd_gen|state\(55),
	datad => \rnd_generator|rnd_gen|Equal0~20_combout\,
	combout => \rnd_generator|rnd_gen|state~0_combout\);

-- Location: FF_X73_Y55_N9
\rnd_generator|rnd_gen|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(0));

-- Location: LCCOMB_X73_Y56_N8
\rnd_generator|rnd_gen|next_state[35]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[35]~100_combout\ = \rnd_generator|rnd_gen|state\(30) $ (\rnd_generator|rnd_gen|state\(16) $ (\rnd_generator|rnd_gen|state\(60) $ (!\rnd_generator|rnd_gen|state\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(30),
	datab => \rnd_generator|rnd_gen|state\(16),
	datac => \rnd_generator|rnd_gen|state\(60),
	datad => \rnd_generator|rnd_gen|state\(12),
	combout => \rnd_generator|rnd_gen|next_state[35]~100_combout\);

-- Location: LCCOMB_X74_Y55_N8
\rnd_generator|rnd_gen|next_state[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(35) = \rnd_generator|rnd_gen|state\(0) $ (\rnd_generator|rnd_gen|state\(63) $ (\rnd_generator|rnd_gen|next_state[63]~31_combout\ $ (!\rnd_generator|rnd_gen|next_state[35]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(0),
	datab => \rnd_generator|rnd_gen|state\(63),
	datac => \rnd_generator|rnd_gen|next_state[63]~31_combout\,
	datad => \rnd_generator|rnd_gen|next_state[35]~100_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(35));

-- Location: FF_X74_Y55_N9
\rnd_generator|rnd_gen|state[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(35));

-- Location: LCCOMB_X75_Y57_N22
\rnd_generator|rnd_gen|next_state[31]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[31]~40_combout\ = \rnd_generator|rnd_gen|state\(26) $ (\rnd_generator|rnd_gen|state\(46) $ (\rnd_generator|rnd_gen|state\(53) $ (!\rnd_generator|rnd_gen|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(26),
	datab => \rnd_generator|rnd_gen|state\(46),
	datac => \rnd_generator|rnd_gen|state\(53),
	datad => \rnd_generator|rnd_gen|state\(0),
	combout => \rnd_generator|rnd_gen|next_state[31]~40_combout\);

-- Location: LCCOMB_X74_Y56_N0
\rnd_generator|rnd_gen|next_state[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(31) = \rnd_generator|rnd_gen|state\(35) $ (\rnd_generator|rnd_gen|state\(43) $ (\rnd_generator|rnd_gen|state\(61) $ (!\rnd_generator|rnd_gen|next_state[31]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(35),
	datab => \rnd_generator|rnd_gen|state\(43),
	datac => \rnd_generator|rnd_gen|state\(61),
	datad => \rnd_generator|rnd_gen|next_state[31]~40_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(31));

-- Location: FF_X74_Y56_N1
\rnd_generator|rnd_gen|state[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(31));

-- Location: LCCOMB_X75_Y55_N28
\rnd_generator|rnd_gen|next_state[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[10]~54_combout\ = \rnd_generator|rnd_gen|state\(0) $ (\rnd_generator|rnd_gen|state\(7) $ (\rnd_generator|rnd_gen|state\(23) $ (!\rnd_generator|rnd_gen|state\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(0),
	datab => \rnd_generator|rnd_gen|state\(7),
	datac => \rnd_generator|rnd_gen|state\(23),
	datad => \rnd_generator|rnd_gen|state\(26),
	combout => \rnd_generator|rnd_gen|next_state[10]~54_combout\);

-- Location: LCCOMB_X72_Y55_N28
\rnd_generator|rnd_gen|next_state[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[10]~55_combout\ = \rnd_generator|rnd_gen|state\(31) $ (\rnd_generator|rnd_gen|state\(20) $ (\rnd_generator|rnd_gen|next_state[10]~53_combout\ $ (\rnd_generator|rnd_gen|next_state[10]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(31),
	datab => \rnd_generator|rnd_gen|state\(20),
	datac => \rnd_generator|rnd_gen|next_state[10]~53_combout\,
	datad => \rnd_generator|rnd_gen|next_state[10]~54_combout\,
	combout => \rnd_generator|rnd_gen|next_state[10]~55_combout\);

-- Location: FF_X72_Y55_N29
\rnd_generator|rnd_gen|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[10]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(10));

-- Location: LCCOMB_X75_Y56_N10
\rnd_generator|rnd_gen|next_state[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[29]~92_combout\ = \rnd_generator|rnd_gen|state\(6) $ (\rnd_generator|rnd_gen|state\(28) $ (\rnd_generator|rnd_gen|state\(3) $ (\rnd_generator|rnd_gen|state\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(6),
	datab => \rnd_generator|rnd_gen|state\(28),
	datac => \rnd_generator|rnd_gen|state\(3),
	datad => \rnd_generator|rnd_gen|state\(58),
	combout => \rnd_generator|rnd_gen|next_state[29]~92_combout\);

-- Location: LCCOMB_X74_Y56_N16
\rnd_generator|rnd_gen|next_state[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(29) = \rnd_generator|rnd_gen|state\(10) $ (\rnd_generator|rnd_gen|next_state[29]~92_combout\ $ (\rnd_generator|rnd_gen|state\(63) $ (!\rnd_generator|rnd_gen|next_state[63]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(10),
	datab => \rnd_generator|rnd_gen|next_state[29]~92_combout\,
	datac => \rnd_generator|rnd_gen|state\(63),
	datad => \rnd_generator|rnd_gen|next_state[63]~31_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(29));

-- Location: FF_X74_Y56_N17
\rnd_generator|rnd_gen|state[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(29));

-- Location: LCCOMB_X75_Y55_N18
\rnd_generator|rnd_gen|next_state[62]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[62]~133_combout\ = \rnd_generator|rnd_gen|state\(0) $ (\rnd_generator|rnd_gen|state\(48) $ (\rnd_generator|rnd_gen|state\(46) $ (\rnd_generator|rnd_gen|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(0),
	datab => \rnd_generator|rnd_gen|state\(48),
	datac => \rnd_generator|rnd_gen|state\(46),
	datad => \rnd_generator|rnd_gen|state\(3),
	combout => \rnd_generator|rnd_gen|next_state[62]~133_combout\);

-- Location: LCCOMB_X74_Y55_N30
\rnd_generator|rnd_gen|next_state[62]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[62]~134_combout\ = \rnd_generator|rnd_gen|state\(29) $ (\rnd_generator|rnd_gen|next_state[62]~133_combout\ $ (\rnd_generator|rnd_gen|state\(34) $ (!\rnd_generator|rnd_gen|next_state[57]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(29),
	datab => \rnd_generator|rnd_gen|next_state[62]~133_combout\,
	datac => \rnd_generator|rnd_gen|state\(34),
	datad => \rnd_generator|rnd_gen|next_state[57]~77_combout\,
	combout => \rnd_generator|rnd_gen|next_state[62]~134_combout\);

-- Location: FF_X74_Y55_N31
\rnd_generator|rnd_gen|state[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[62]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(62));

-- Location: LCCOMB_X73_Y55_N4
\rnd_generator|rnd_gen|next_state[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[15]~16_combout\ = \rnd_generator|rnd_gen|state\(62) $ (\rnd_generator|rnd_gen|state\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|rnd_gen|state\(62),
	datad => \rnd_generator|rnd_gen|state\(18),
	combout => \rnd_generator|rnd_gen|next_state[15]~16_combout\);

-- Location: LCCOMB_X76_Y55_N12
\rnd_generator|rnd_gen|next_state[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[1]~17_combout\ = \rnd_generator|rnd_gen|state\(21) $ (\rnd_generator|rnd_gen|state\(13) $ (\rnd_generator|rnd_gen|state\(28) $ (!\rnd_generator|rnd_gen|state\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(21),
	datab => \rnd_generator|rnd_gen|state\(13),
	datac => \rnd_generator|rnd_gen|state\(28),
	datad => \rnd_generator|rnd_gen|state\(63),
	combout => \rnd_generator|rnd_gen|next_state[1]~17_combout\);

-- Location: LCCOMB_X76_Y55_N8
\rnd_generator|rnd_gen|next_state[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(1) = \rnd_generator|rnd_gen|next_state[15]~16_combout\ $ (\rnd_generator|rnd_gen|state\(5) $ (\rnd_generator|rnd_gen|state\(2) $ (!\rnd_generator|rnd_gen|next_state[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[15]~16_combout\,
	datab => \rnd_generator|rnd_gen|state\(5),
	datac => \rnd_generator|rnd_gen|state\(2),
	datad => \rnd_generator|rnd_gen|next_state[1]~17_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(1));

-- Location: FF_X76_Y55_N9
\rnd_generator|rnd_gen|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(1));

-- Location: LCCOMB_X73_Y57_N10
\rnd_generator|rnd_gen|next_state[58]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[58]~127_combout\ = \rnd_generator|rnd_gen|state\(1) $ (\rnd_generator|rnd_gen|state\(15) $ (\rnd_generator|rnd_gen|state\(36) $ (!\rnd_generator|rnd_gen|state\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(1),
	datab => \rnd_generator|rnd_gen|state\(15),
	datac => \rnd_generator|rnd_gen|state\(36),
	datad => \rnd_generator|rnd_gen|state\(32),
	combout => \rnd_generator|rnd_gen|next_state[58]~127_combout\);

-- Location: LCCOMB_X73_Y57_N4
\rnd_generator|rnd_gen|next_state[58]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[58]~128_combout\ = \rnd_generator|rnd_gen|next_state[58]~127_combout\ $ (\rnd_generator|rnd_gen|state\(33) $ (!\rnd_generator|rnd_gen|next_state[58]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[58]~127_combout\,
	datac => \rnd_generator|rnd_gen|state\(33),
	datad => \rnd_generator|rnd_gen|next_state[58]~86_combout\,
	combout => \rnd_generator|rnd_gen|next_state[58]~128_combout\);

-- Location: FF_X73_Y57_N5
\rnd_generator|rnd_gen|state[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[58]~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(58));

-- Location: LCCOMB_X70_Y55_N6
\rnd_generator|rnd_gen|next_state[34]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[34]~98_combout\ = \rnd_generator|rnd_gen|state\(44) $ (\rnd_generator|rnd_gen|state\(42) $ (\rnd_generator|rnd_gen|state\(55) $ (\rnd_generator|rnd_gen|state\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(44),
	datab => \rnd_generator|rnd_gen|state\(42),
	datac => \rnd_generator|rnd_gen|state\(55),
	datad => \rnd_generator|rnd_gen|state\(34),
	combout => \rnd_generator|rnd_gen|next_state[34]~98_combout\);

-- Location: LCCOMB_X75_Y56_N4
\rnd_generator|rnd_gen|next_state[34]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[34]~97_combout\ = \rnd_generator|rnd_gen|state\(48) $ (\rnd_generator|rnd_gen|state\(57) $ (\rnd_generator|rnd_gen|state\(29) $ (\rnd_generator|rnd_gen|state\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(48),
	datab => \rnd_generator|rnd_gen|state\(57),
	datac => \rnd_generator|rnd_gen|state\(29),
	datad => \rnd_generator|rnd_gen|state\(8),
	combout => \rnd_generator|rnd_gen|next_state[34]~97_combout\);

-- Location: LCCOMB_X74_Y55_N26
\rnd_generator|rnd_gen|next_state[34]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[34]~99_combout\ = \rnd_generator|rnd_gen|state\(58) $ (\rnd_generator|rnd_gen|next_state[34]~98_combout\ $ (\rnd_generator|rnd_gen|state\(56) $ (\rnd_generator|rnd_gen|next_state[34]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(58),
	datab => \rnd_generator|rnd_gen|next_state[34]~98_combout\,
	datac => \rnd_generator|rnd_gen|state\(56),
	datad => \rnd_generator|rnd_gen|next_state[34]~97_combout\,
	combout => \rnd_generator|rnd_gen|next_state[34]~99_combout\);

-- Location: FF_X74_Y55_N27
\rnd_generator|rnd_gen|state[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[34]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(34));

-- Location: LCCOMB_X73_Y57_N22
\rnd_generator|rnd_gen|next_state[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[15]~61_combout\ = \rnd_generator|rnd_gen|state\(62) $ (\rnd_generator|rnd_gen|state\(18) $ (\rnd_generator|rnd_gen|state\(33) $ (!\rnd_generator|rnd_gen|state\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(62),
	datab => \rnd_generator|rnd_gen|state\(18),
	datac => \rnd_generator|rnd_gen|state\(33),
	datad => \rnd_generator|rnd_gen|state\(51),
	combout => \rnd_generator|rnd_gen|next_state[15]~61_combout\);

-- Location: LCCOMB_X72_Y55_N8
\rnd_generator|rnd_gen|next_state[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(15) = \rnd_generator|rnd_gen|state\(34) $ (\rnd_generator|rnd_gen|state\(40) $ (\rnd_generator|rnd_gen|state\(15) $ (\rnd_generator|rnd_gen|next_state[15]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(34),
	datab => \rnd_generator|rnd_gen|state\(40),
	datac => \rnd_generator|rnd_gen|state\(15),
	datad => \rnd_generator|rnd_gen|next_state[15]~61_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(15));

-- Location: FF_X72_Y55_N9
\rnd_generator|rnd_gen|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(15));

-- Location: LCCOMB_X75_Y55_N16
\rnd_generator|rnd_gen|next_state[49]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[49]~116_combout\ = \rnd_generator|rnd_gen|state\(5) $ (\rnd_generator|rnd_gen|state\(15) $ (\rnd_generator|rnd_gen|state\(35) $ (!\rnd_generator|rnd_gen|state\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(5),
	datab => \rnd_generator|rnd_gen|state\(15),
	datac => \rnd_generator|rnd_gen|state\(35),
	datad => \rnd_generator|rnd_gen|state\(37),
	combout => \rnd_generator|rnd_gen|next_state[49]~116_combout\);

-- Location: LCCOMB_X76_Y55_N2
\rnd_generator|rnd_gen|next_state[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(49) = \rnd_generator|rnd_gen|next_state[49]~116_combout\ $ (\rnd_generator|rnd_gen|state\(55) $ (\rnd_generator|rnd_gen|state\(19) $ (\rnd_generator|rnd_gen|next_state[56]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[49]~116_combout\,
	datab => \rnd_generator|rnd_gen|state\(55),
	datac => \rnd_generator|rnd_gen|state\(19),
	datad => \rnd_generator|rnd_gen|next_state[56]~23_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(49));

-- Location: FF_X76_Y55_N3
\rnd_generator|rnd_gen|state[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(49));

-- Location: LCCOMB_X74_Y57_N22
\rnd_generator|rnd_gen|next_state[43]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[43]~109_combout\ = \rnd_generator|rnd_gen|state\(16) $ (\rnd_generator|rnd_gen|state\(27) $ (\rnd_generator|rnd_gen|state\(51) $ (\rnd_generator|rnd_gen|state\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(16),
	datab => \rnd_generator|rnd_gen|state\(27),
	datac => \rnd_generator|rnd_gen|state\(51),
	datad => \rnd_generator|rnd_gen|state\(41),
	combout => \rnd_generator|rnd_gen|next_state[43]~109_combout\);

-- Location: LCCOMB_X73_Y57_N16
\rnd_generator|rnd_gen|next_state[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(43) = \rnd_generator|rnd_gen|state\(49) $ (\rnd_generator|rnd_gen|next_state[43]~59_combout\ $ (\rnd_generator|rnd_gen|state\(58) $ (!\rnd_generator|rnd_gen|next_state[43]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(49),
	datab => \rnd_generator|rnd_gen|next_state[43]~59_combout\,
	datac => \rnd_generator|rnd_gen|state\(58),
	datad => \rnd_generator|rnd_gen|next_state[43]~109_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(43));

-- Location: FF_X73_Y57_N17
\rnd_generator|rnd_gen|state[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(43));

-- Location: LCCOMB_X72_Y55_N20
\rnd_generator|rnd_gen|next_state[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[11]~57_combout\ = \rnd_generator|rnd_gen|state\(22) $ (\rnd_generator|rnd_gen|state\(10) $ (\rnd_generator|rnd_gen|state\(56) $ (\rnd_generator|rnd_gen|state\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(22),
	datab => \rnd_generator|rnd_gen|state\(10),
	datac => \rnd_generator|rnd_gen|state\(56),
	datad => \rnd_generator|rnd_gen|state\(36),
	combout => \rnd_generator|rnd_gen|next_state[11]~57_combout\);

-- Location: LCCOMB_X72_Y55_N2
\rnd_generator|rnd_gen|next_state[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(11) = \rnd_generator|rnd_gen|state\(43) $ (\rnd_generator|rnd_gen|next_state[56]~56_combout\ $ (!\rnd_generator|rnd_gen|next_state[11]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(43),
	datac => \rnd_generator|rnd_gen|next_state[56]~56_combout\,
	datad => \rnd_generator|rnd_gen|next_state[11]~57_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(11));

-- Location: FF_X72_Y55_N3
\rnd_generator|rnd_gen|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(11));

-- Location: LCCOMB_X74_Y55_N22
\rnd_generator|rnd_gen|next_state[63]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[63]~31_combout\ = \rnd_generator|rnd_gen|state\(11) $ (!\rnd_generator|rnd_gen|state\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|rnd_gen|state\(11),
	datad => \rnd_generator|rnd_gen|state\(25),
	combout => \rnd_generator|rnd_gen|next_state[63]~31_combout\);

-- Location: LCCOMB_X74_Y55_N2
\rnd_generator|rnd_gen|next_state[32]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[32]~94_combout\ = \rnd_generator|rnd_gen|state\(34) $ (\rnd_generator|rnd_gen|state\(56) $ (\rnd_generator|rnd_gen|state\(55) $ (\rnd_generator|rnd_gen|state\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(34),
	datab => \rnd_generator|rnd_gen|state\(56),
	datac => \rnd_generator|rnd_gen|state\(55),
	datad => \rnd_generator|rnd_gen|state\(47),
	combout => \rnd_generator|rnd_gen|next_state[32]~94_combout\);

-- Location: LCCOMB_X74_Y55_N12
\rnd_generator|rnd_gen|next_state[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(32) = \rnd_generator|rnd_gen|next_state[63]~31_combout\ $ (\rnd_generator|rnd_gen|state\(59) $ (\rnd_generator|rnd_gen|state\(35) $ (!\rnd_generator|rnd_gen|next_state[32]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[63]~31_combout\,
	datab => \rnd_generator|rnd_gen|state\(59),
	datac => \rnd_generator|rnd_gen|state\(35),
	datad => \rnd_generator|rnd_gen|next_state[32]~94_combout\,
	combout => \rnd_generator|rnd_gen|next_state\(32));

-- Location: FF_X74_Y55_N13
\rnd_generator|rnd_gen|state[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(32));

-- Location: LCCOMB_X75_Y55_N26
\rnd_generator|rnd_gen|next_state[46]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[46]~41_combout\ = \rnd_generator|rnd_gen|state\(32) $ (\rnd_generator|rnd_gen|state\(50) $ (\rnd_generator|rnd_gen|state\(20) $ (!\rnd_generator|rnd_gen|state\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(32),
	datab => \rnd_generator|rnd_gen|state\(50),
	datac => \rnd_generator|rnd_gen|state\(20),
	datad => \rnd_generator|rnd_gen|state\(51),
	combout => \rnd_generator|rnd_gen|next_state[46]~41_combout\);

-- Location: LCCOMB_X74_Y55_N20
\rnd_generator|rnd_gen|next_state[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state\(46) = \rnd_generator|rnd_gen|next_state[46]~41_combout\ $ (\rnd_generator|rnd_gen|state\(11) $ (\rnd_generator|rnd_gen|state\(59) $ (\rnd_generator|rnd_gen|state\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[46]~41_combout\,
	datab => \rnd_generator|rnd_gen|state\(11),
	datac => \rnd_generator|rnd_gen|state\(59),
	datad => \rnd_generator|rnd_gen|state\(25),
	combout => \rnd_generator|rnd_gen|next_state\(46));

-- Location: FF_X74_Y55_N21
\rnd_generator|rnd_gen|state[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(46));

-- Location: LCCOMB_X73_Y56_N0
\rnd_generator|rnd_gen|next_state[57]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[57]~19_combout\ = \rnd_generator|rnd_gen|state\(47) $ (\rnd_generator|rnd_gen|state\(35) $ (!\rnd_generator|rnd_gen|state\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(47),
	datac => \rnd_generator|rnd_gen|state\(35),
	datad => \rnd_generator|rnd_gen|state\(14),
	combout => \rnd_generator|rnd_gen|next_state[57]~19_combout\);

-- Location: LCCOMB_X73_Y56_N2
\rnd_generator|rnd_gen|next_state[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[19]~71_combout\ = \rnd_generator|rnd_gen|state\(22) $ (\rnd_generator|rnd_gen|state\(41) $ (\rnd_generator|rnd_gen|state\(59) $ (\rnd_generator|rnd_gen|next_state[57]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(22),
	datab => \rnd_generator|rnd_gen|state\(41),
	datac => \rnd_generator|rnd_gen|state\(59),
	datad => \rnd_generator|rnd_gen|next_state[57]~19_combout\,
	combout => \rnd_generator|rnd_gen|next_state[19]~71_combout\);

-- Location: LCCOMB_X73_Y56_N26
\rnd_generator|rnd_gen|next_state[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[19]~72_combout\ = \rnd_generator|rnd_gen|state\(46) $ (\rnd_generator|rnd_gen|next_state[56]~56_combout\ $ (\rnd_generator|rnd_gen|next_state[19]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(46),
	datac => \rnd_generator|rnd_gen|next_state[56]~56_combout\,
	datad => \rnd_generator|rnd_gen|next_state[19]~71_combout\,
	combout => \rnd_generator|rnd_gen|next_state[19]~72_combout\);

-- Location: FF_X73_Y56_N27
\rnd_generator|rnd_gen|state[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[19]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(19));

-- Location: LCCOMB_X73_Y56_N10
\rnd_generator|rnd_gen|next_state[38]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[38]~101_combout\ = \rnd_generator|rnd_gen|state\(19) $ (\rnd_generator|rnd_gen|state\(17) $ (\rnd_generator|rnd_gen|state\(23) $ (!\rnd_generator|rnd_gen|state\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(19),
	datab => \rnd_generator|rnd_gen|state\(17),
	datac => \rnd_generator|rnd_gen|state\(23),
	datad => \rnd_generator|rnd_gen|state\(61),
	combout => \rnd_generator|rnd_gen|next_state[38]~101_combout\);

-- Location: LCCOMB_X75_Y55_N30
\rnd_generator|rnd_gen|next_state[38]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[38]~102_combout\ = \rnd_generator|rnd_gen|state\(41) $ (\rnd_generator|rnd_gen|state\(35) $ (\rnd_generator|rnd_gen|state\(7) $ (!\rnd_generator|rnd_gen|state\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(41),
	datab => \rnd_generator|rnd_gen|state\(35),
	datac => \rnd_generator|rnd_gen|state\(7),
	datad => \rnd_generator|rnd_gen|state\(29),
	combout => \rnd_generator|rnd_gen|next_state[38]~102_combout\);

-- Location: LCCOMB_X74_Y55_N24
\rnd_generator|rnd_gen|next_state[38]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[38]~103_combout\ = \rnd_generator|rnd_gen|next_state[38]~101_combout\ $ (\rnd_generator|rnd_gen|next_state[38]~102_combout\ $ (!\rnd_generator|rnd_gen|state\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[38]~101_combout\,
	datac => \rnd_generator|rnd_gen|next_state[38]~102_combout\,
	datad => \rnd_generator|rnd_gen|state\(52),
	combout => \rnd_generator|rnd_gen|next_state[38]~103_combout\);

-- Location: FF_X74_Y55_N25
\rnd_generator|rnd_gen|state[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[38]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(38));

-- Location: LCCOMB_X75_Y57_N24
\rnd_generator|rnd_gen|next_state[57]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[57]~125_combout\ = \rnd_generator|rnd_gen|state\(51) $ (\rnd_generator|rnd_gen|state\(60) $ (\rnd_generator|rnd_gen|state\(30) $ (\rnd_generator|rnd_gen|next_state[57]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(51),
	datab => \rnd_generator|rnd_gen|state\(60),
	datac => \rnd_generator|rnd_gen|state\(30),
	datad => \rnd_generator|rnd_gen|next_state[57]~77_combout\,
	combout => \rnd_generator|rnd_gen|next_state[57]~125_combout\);

-- Location: LCCOMB_X75_Y57_N10
\rnd_generator|rnd_gen|next_state[57]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[57]~126_combout\ = \rnd_generator|rnd_gen|state\(38) $ (\rnd_generator|rnd_gen|next_state[57]~19_combout\ $ (!\rnd_generator|rnd_gen|next_state[57]~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(38),
	datac => \rnd_generator|rnd_gen|next_state[57]~19_combout\,
	datad => \rnd_generator|rnd_gen|next_state[57]~125_combout\,
	combout => \rnd_generator|rnd_gen|next_state[57]~126_combout\);

-- Location: FF_X75_Y57_N11
\rnd_generator|rnd_gen|state[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[57]~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(57));

-- Location: LCCOMB_X74_Y57_N28
\rnd_generator|rnd_gen|next_state[53]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[53]~43_combout\ = \rnd_generator|rnd_gen|state\(24) $ (\rnd_generator|rnd_gen|state\(34) $ (\rnd_generator|rnd_gen|state\(17) $ (\rnd_generator|rnd_gen|state\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(24),
	datab => \rnd_generator|rnd_gen|state\(34),
	datac => \rnd_generator|rnd_gen|state\(17),
	datad => \rnd_generator|rnd_gen|state\(16),
	combout => \rnd_generator|rnd_gen|next_state[53]~43_combout\);

-- Location: LCCOMB_X75_Y57_N20
\rnd_generator|rnd_gen|next_state[53]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[53]~42_combout\ = \rnd_generator|rnd_gen|state\(52) $ (\rnd_generator|rnd_gen|state\(5) $ (\rnd_generator|rnd_gen|state\(33) $ (\rnd_generator|rnd_gen|state\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(52),
	datab => \rnd_generator|rnd_gen|state\(5),
	datac => \rnd_generator|rnd_gen|state\(33),
	datad => \rnd_generator|rnd_gen|state\(43),
	combout => \rnd_generator|rnd_gen|next_state[53]~42_combout\);

-- Location: LCCOMB_X74_Y57_N16
\rnd_generator|rnd_gen|next_state[53]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[53]~44_combout\ = \rnd_generator|rnd_gen|state\(57) $ (\rnd_generator|rnd_gen|next_state[53]~43_combout\ $ (\rnd_generator|rnd_gen|next_state[53]~42_combout\ $ (\rnd_generator|rnd_gen|state\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(57),
	datab => \rnd_generator|rnd_gen|next_state[53]~43_combout\,
	datac => \rnd_generator|rnd_gen|next_state[53]~42_combout\,
	datad => \rnd_generator|rnd_gen|state\(38),
	combout => \rnd_generator|rnd_gen|next_state[53]~44_combout\);

-- Location: FF_X74_Y57_N17
\rnd_generator|rnd_gen|state[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[53]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(53));

-- Location: LCCOMB_X75_Y57_N4
\rnd_generator|rnd_gen|next_state[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[24]~11_combout\ = \rnd_generator|rnd_gen|state\(53) $ (\rnd_generator|rnd_gen|state\(5) $ (\rnd_generator|rnd_gen|state\(46) $ (\rnd_generator|rnd_gen|state\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(53),
	datab => \rnd_generator|rnd_gen|state\(5),
	datac => \rnd_generator|rnd_gen|state\(46),
	datad => \rnd_generator|rnd_gen|state\(31),
	combout => \rnd_generator|rnd_gen|next_state[24]~11_combout\);

-- Location: LCCOMB_X74_Y57_N12
\rnd_generator|rnd_gen|next_state[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[24]~33_combout\ = \rnd_generator|rnd_gen|next_state[24]~11_combout\ $ (\rnd_generator|rnd_gen|next_state[45]~32_combout\ $ (\rnd_generator|rnd_gen|state\(17) $ (\rnd_generator|rnd_gen|state\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|next_state[24]~11_combout\,
	datab => \rnd_generator|rnd_gen|next_state[45]~32_combout\,
	datac => \rnd_generator|rnd_gen|state\(17),
	datad => \rnd_generator|rnd_gen|state\(60),
	combout => \rnd_generator|rnd_gen|next_state[24]~33_combout\);

-- Location: FF_X74_Y57_N13
\rnd_generator|rnd_gen|state[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[24]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(24));

-- Location: LCCOMB_X75_Y57_N28
\rnd_generator|rnd_gen|next_state[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[5]~20_combout\ = \rnd_generator|rnd_gen|state\(21) $ (\rnd_generator|rnd_gen|state\(42))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|rnd_gen|state\(21),
	datad => \rnd_generator|rnd_gen|state\(42),
	combout => \rnd_generator|rnd_gen|next_state[5]~20_combout\);

-- Location: LCCOMB_X76_Y55_N20
\rnd_generator|rnd_gen|next_state[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|rnd_gen|next_state[5]~22_combout\ = \rnd_generator|rnd_gen|state\(24) $ (\rnd_generator|rnd_gen|next_state[5]~21_combout\ $ (\rnd_generator|rnd_gen|next_state[57]~19_combout\ $ (\rnd_generator|rnd_gen|next_state[5]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|rnd_gen|state\(24),
	datab => \rnd_generator|rnd_gen|next_state[5]~21_combout\,
	datac => \rnd_generator|rnd_gen|next_state[57]~19_combout\,
	datad => \rnd_generator|rnd_gen|next_state[5]~20_combout\,
	combout => \rnd_generator|rnd_gen|next_state[5]~22_combout\);

-- Location: FF_X76_Y55_N21
\rnd_generator|rnd_gen|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|rnd_gen|next_state[5]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|rnd_gen|state\(5));

-- Location: LCCOMB_X77_Y55_N0
\rnd_generator|shiftreg|dataOut[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|shiftreg|dataOut[5]~4_combout\ = !\rnd_generator|rnd_gen|state\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rnd_generator|rnd_gen|state\(5),
	combout => \rnd_generator|shiftreg|dataOut[5]~4_combout\);

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

-- Location: LCCOMB_X77_Y55_N2
\rnd_generator|shiftreg|dataOut[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|shiftreg|dataOut[0]~2_combout\ = !\rnd_generator|rnd_gen|state\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rnd_generator|rnd_gen|state\(0),
	combout => \rnd_generator|shiftreg|dataOut[0]~2_combout\);

-- Location: FF_X77_Y55_N3
\rnd_generator|shiftreg|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~clkctrl_outclk\,
	d => \rnd_generator|shiftreg|dataOut[0]~2_combout\,
	ena => \rnd_generator|s_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|shiftreg|dataOut\(0));

-- Location: LCCOMB_X77_Y55_N30
\rnd_generator|shiftreg|dataOut[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|shiftreg|dataOut[2]~1_combout\ = !\rnd_generator|rnd_gen|state\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rnd_generator|rnd_gen|state\(2),
	combout => \rnd_generator|shiftreg|dataOut[2]~1_combout\);

-- Location: FF_X77_Y55_N31
\rnd_generator|shiftreg|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~q\,
	d => \rnd_generator|shiftreg|dataOut[2]~1_combout\,
	ena => \rnd_generator|s_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|shiftreg|dataOut\(2));

-- Location: LCCOMB_X77_Y55_N6
\rnd_generator|shiftreg|dataOut[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|shiftreg|dataOut[1]~3_combout\ = !\rnd_generator|rnd_gen|state\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rnd_generator|rnd_gen|state\(1),
	combout => \rnd_generator|shiftreg|dataOut[1]~3_combout\);

-- Location: FF_X77_Y55_N7
\rnd_generator|shiftreg|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~q\,
	d => \rnd_generator|shiftreg|dataOut[1]~3_combout\,
	ena => \rnd_generator|s_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|shiftreg|dataOut\(1));

-- Location: LCCOMB_X77_Y55_N14
\rnd_generator|checkrng|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|checkrng|process_0~0_combout\ = (\rnd_generator|shiftreg|dataOut\(2) & ((\rnd_generator|shiftreg|dataOut\(0)) # (\rnd_generator|shiftreg|dataOut\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|shiftreg|dataOut\(0),
	datac => \rnd_generator|shiftreg|dataOut\(2),
	datad => \rnd_generator|shiftreg|dataOut\(1),
	combout => \rnd_generator|checkrng|process_0~0_combout\);

-- Location: LCCOMB_X77_Y55_N24
\rnd_generator|shiftreg|dataOut[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|shiftreg|dataOut[3]~0_combout\ = !\rnd_generator|rnd_gen|state\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rnd_generator|rnd_gen|state\(3),
	combout => \rnd_generator|shiftreg|dataOut[3]~0_combout\);

-- Location: FF_X77_Y55_N25
\rnd_generator|shiftreg|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~q\,
	d => \rnd_generator|shiftreg|dataOut[3]~0_combout\,
	ena => \rnd_generator|s_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|shiftreg|dataOut\(3));

-- Location: FF_X77_Y55_N23
\rnd_generator|shiftreg|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~q\,
	asdata => \rnd_generator|rnd_gen|state\(4),
	sload => VCC,
	ena => \rnd_generator|s_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|shiftreg|dataOut\(4));

-- Location: LCCOMB_X77_Y55_N10
\rnd_generator|s_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|s_en~0_combout\ = (\rnd_generator|shiftreg|dataOut\(3) & ((!\rnd_generator|shiftreg|dataOut\(5)) # (!\rnd_generator|shiftreg|dataOut\(4)))) # (!\rnd_generator|shiftreg|dataOut\(3) & ((\rnd_generator|shiftreg|dataOut\(4)) # 
-- (\rnd_generator|shiftreg|dataOut\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|shiftreg|dataOut\(3),
	datac => \rnd_generator|shiftreg|dataOut\(4),
	datad => \rnd_generator|shiftreg|dataOut\(5),
	combout => \rnd_generator|s_en~0_combout\);

-- Location: LCCOMB_X77_Y55_N16
\rnd_generator|s_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|s_en~combout\ = \SW[0]~input_o\ $ (((!\rnd_generator|s_en~0_combout\ & (\rnd_generator|shiftreg|dataOut\(5) $ (!\rnd_generator|checkrng|process_0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \rnd_generator|shiftreg|dataOut\(5),
	datac => \rnd_generator|checkrng|process_0~0_combout\,
	datad => \rnd_generator|s_en~0_combout\,
	combout => \rnd_generator|s_en~combout\);

-- Location: FF_X77_Y55_N1
\rnd_generator|shiftreg|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_50000hz|clkOut~q\,
	d => \rnd_generator|shiftreg|dataOut[5]~4_combout\,
	ena => \rnd_generator|s_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rnd_generator|shiftreg|dataOut\(5));

-- Location: LCCOMB_X77_Y55_N26
\rnd_generator|checkrng|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|checkrng|process_0~1_combout\ = (\rnd_generator|shiftreg|dataOut\(5) & (\rnd_generator|checkrng|process_0~0_combout\ & (\rnd_generator|shiftreg|dataOut\(4) & \rnd_generator|shiftreg|dataOut\(3)))) # (!\rnd_generator|shiftreg|dataOut\(5) & 
-- (!\rnd_generator|checkrng|process_0~0_combout\ & (!\rnd_generator|shiftreg|dataOut\(4) & !\rnd_generator|shiftreg|dataOut\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|shiftreg|dataOut\(5),
	datab => \rnd_generator|checkrng|process_0~0_combout\,
	datac => \rnd_generator|shiftreg|dataOut\(4),
	datad => \rnd_generator|shiftreg|dataOut\(3),
	combout => \rnd_generator|checkrng|process_0~1_combout\);

-- Location: CLKCTRL_G12
\rnd_generator|checkrng|process_0~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rnd_generator|checkrng|process_0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rnd_generator|checkrng|process_0~1clkctrl_outclk\);

-- Location: LCCOMB_X77_Y55_N12
\rnd_generator|checkrng|dataOut[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|checkrng|dataOut\(0) = (GLOBAL(\rnd_generator|checkrng|process_0~1clkctrl_outclk\) & (\rnd_generator|checkrng|dataOut\(0))) # (!GLOBAL(\rnd_generator|checkrng|process_0~1clkctrl_outclk\) & ((\rnd_generator|shiftreg|dataOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|checkrng|dataOut\(0),
	datab => \rnd_generator|shiftreg|dataOut\(0),
	datad => \rnd_generator|checkrng|process_0~1clkctrl_outclk\,
	combout => \rnd_generator|checkrng|dataOut\(0));

-- Location: LCCOMB_X77_Y55_N20
\rnd_generator|checkrng|dataOut[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|checkrng|dataOut\(1) = (GLOBAL(\rnd_generator|checkrng|process_0~1clkctrl_outclk\) & ((\rnd_generator|checkrng|dataOut\(1)))) # (!GLOBAL(\rnd_generator|checkrng|process_0~1clkctrl_outclk\) & (\rnd_generator|shiftreg|dataOut\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|shiftreg|dataOut\(1),
	datab => \rnd_generator|checkrng|dataOut\(1),
	datad => \rnd_generator|checkrng|process_0~1clkctrl_outclk\,
	combout => \rnd_generator|checkrng|dataOut\(1));

-- Location: LCCOMB_X77_Y55_N18
\rnd_generator|checkrng|dataOut[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|checkrng|dataOut\(2) = (GLOBAL(\rnd_generator|checkrng|process_0~1clkctrl_outclk\) & (\rnd_generator|checkrng|dataOut\(2))) # (!GLOBAL(\rnd_generator|checkrng|process_0~1clkctrl_outclk\) & ((\rnd_generator|shiftreg|dataOut\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|checkrng|dataOut\(2),
	datac => \rnd_generator|shiftreg|dataOut\(2),
	datad => \rnd_generator|checkrng|process_0~1clkctrl_outclk\,
	combout => \rnd_generator|checkrng|dataOut\(2));

-- Location: LCCOMB_X77_Y55_N8
\rnd_generator|checkrng|dataOut[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|checkrng|dataOut\(3) = (GLOBAL(\rnd_generator|checkrng|process_0~1clkctrl_outclk\) & (\rnd_generator|checkrng|dataOut\(3))) # (!GLOBAL(\rnd_generator|checkrng|process_0~1clkctrl_outclk\) & ((\rnd_generator|shiftreg|dataOut\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|checkrng|dataOut\(3),
	datac => \rnd_generator|shiftreg|dataOut\(3),
	datad => \rnd_generator|checkrng|process_0~1clkctrl_outclk\,
	combout => \rnd_generator|checkrng|dataOut\(3));

-- Location: LCCOMB_X77_Y55_N28
\rnd_generator|checkrng|dataOut[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|checkrng|dataOut\(4) = (GLOBAL(\rnd_generator|checkrng|process_0~1clkctrl_outclk\) & (\rnd_generator|checkrng|dataOut\(4))) # (!GLOBAL(\rnd_generator|checkrng|process_0~1clkctrl_outclk\) & ((\rnd_generator|shiftreg|dataOut\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rnd_generator|checkrng|dataOut\(4),
	datac => \rnd_generator|shiftreg|dataOut\(4),
	datad => \rnd_generator|checkrng|process_0~1clkctrl_outclk\,
	combout => \rnd_generator|checkrng|dataOut\(4));

-- Location: LCCOMB_X77_Y55_N4
\rnd_generator|checkrng|dataOut[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \rnd_generator|checkrng|dataOut\(5) = (GLOBAL(\rnd_generator|checkrng|process_0~1clkctrl_outclk\) & ((\rnd_generator|checkrng|dataOut\(5)))) # (!GLOBAL(\rnd_generator|checkrng|process_0~1clkctrl_outclk\) & (\rnd_generator|shiftreg|dataOut\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_generator|shiftreg|dataOut\(5),
	datac => \rnd_generator|checkrng|dataOut\(5),
	datad => \rnd_generator|checkrng|process_0~1clkctrl_outclk\,
	combout => \rnd_generator|checkrng|dataOut\(5));

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

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;
END structure;


