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

-- DATE "05/29/2015 16:14:32"

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
	LEDR : BUFFER std_logic_vector(3 DOWNTO 0);
	AUD_ADCLRCK : BUFFER std_logic;
	AUD_ADCDAT : IN std_logic;
	AUD_DACLRCK : BUFFER std_logic;
	AUD_DACDAT : BUFFER std_logic;
	AUD_BCLK : BUFFER std_logic;
	AUD_XCK : BUFFER std_logic;
	I2C_SCLK : BUFFER std_logic;
	I2C_SDAT : BUFFER std_logic
	);
END LEDCounterFSM_DEMO;

-- Design Ports Information
-- AUD_DACDAT	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_XCK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SCLK	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCLRCK	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SDAT	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_AUD_ADCLRCK : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL ww_I2C_SDAT : std_logic;
SIGNAL \audio|audio_interface|p1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \audio|audio_interface|p1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \audio|audio_interface|u2|AUD_BCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkdivider_1hz|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \audio|audio_interface|AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \audio|audio_interface|AUD_DACLRCK~input_o\ : std_logic;
SIGNAL \audio|audio_interface|AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[0]~57_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[1]~19_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[1]~20\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[2]~21_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[2]~22\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[3]~23_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[3]~24\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[4]~25_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[4]~26\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[5]~27_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[5]~28\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[6]~29_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[6]~30\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[7]~31_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[7]~32\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[8]~33_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[8]~34\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[9]~35_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[9]~36\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[10]~37_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[10]~38\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[11]~39_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Equal0~4_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[11]~40\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[12]~41_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[12]~42\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[13]~43_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[13]~44\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[14]~45_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[14]~46\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[15]~47_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Equal0~5_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Equal0~2_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Equal0~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Equal0~3_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[15]~48\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[16]~49_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[16]~50\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[17]~51_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[17]~52\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[18]~53_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[18]~54\ : std_logic;
SIGNAL \audio|audio_interface|r1|Cont[19]~55_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Equal0~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|Equal0~6_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|oRESET~feeder_combout\ : std_logic;
SIGNAL \audio|audio_interface|r1|oRESET~q\ : std_logic;
SIGNAL \audio|audio_interface|p1|altpll_component|auto_generated|pll1~FBOUT\ : std_logic;
SIGNAL \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[0]~9_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|LessThan1~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|LessThan1~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[7]~24\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[8]~25_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|LessThan1~2_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[0]~10\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[1]~11_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[1]~12\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[2]~13_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[2]~14\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[3]~15_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[3]~16\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[4]~17_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[4]~18\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[5]~19_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[5]~20\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[6]~21_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[6]~22\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV[7]~23_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|LRCK_1X~q\ : std_logic;
SIGNAL \audio|audio_interface|u2|BCK_DIV~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|BCK_DIV~2_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|BCK_DIV~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|AUD_BCK~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|AUD_BCK~q\ : std_logic;
SIGNAL \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[0]~16_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[0]~17\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[1]~18_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[1]~19\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[2]~20_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[2]~21\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[3]~22_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[3]~23\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[4]~24_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[4]~25\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[5]~26_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LessThan0~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[5]~27\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[6]~28_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[6]~29\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[7]~30_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[7]~31\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[8]~32_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LessThan0~2_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[8]~33\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[9]~34_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[9]~35\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[10]~36_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[10]~37\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[11]~38_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[11]~39\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[12]~40_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[12]~41\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[13]~42_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[13]~43\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[14]~44_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[14]~45\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV[15]~46_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LessThan0~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LessThan0~3_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LessThan0~4_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CTRL_CLK~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CTRL_CLK~feeder_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CTRL_CLK~q\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD_COUNTER[0]~6_combout\ : std_logic;
SIGNAL \audio|audio_interface|I2C_SDAT~input_o\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD_COUNTER[2]~13\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD_COUNTER[3]~14_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD_COUNTER[4]~17\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD_COUNTER[5]~18_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD_COUNTER[2]~8_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD_COUNTER[2]~9_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD_COUNTER[3]~15\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD_COUNTER[4]~16_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|ACK2~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|ACK2~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|ACK2~2_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|ACK2~q\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|ACK3~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|ACK3~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|ACK3~2_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|ACK3~q\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Selector4~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|ACK1~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|ACK1~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|ACK1~q\ : std_logic;
SIGNAL \audio|audio_interface|u1|mSetup_ST~12_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Selector1~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|END~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|END~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|END~q\ : std_logic;
SIGNAL \audio|audio_interface|u1|Selector1~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LUT_INDEX[0]~5_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LUT_INDEX[1]~6_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LUT_INDEX[5]~8_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LUT_INDEX[1]~7\ : std_logic;
SIGNAL \audio|audio_interface|u1|LUT_INDEX[2]~9_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LUT_INDEX[2]~10\ : std_logic;
SIGNAL \audio|audio_interface|u1|LUT_INDEX[3]~11_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LUT_INDEX[3]~12\ : std_logic;
SIGNAL \audio|audio_interface|u1|LUT_INDEX[4]~13_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LUT_INDEX[4]~14\ : std_logic;
SIGNAL \audio|audio_interface|u1|LUT_INDEX[5]~15_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LessThan1~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LessThan1~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mSetup_ST.0000~q\ : std_logic;
SIGNAL \audio|audio_interface|u1|Selector2~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mSetup_ST.0001~q\ : std_logic;
SIGNAL \audio|audio_interface|u1|mSetup_ST~13_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mSetup_ST.0010~q\ : std_logic;
SIGNAL \audio|audio_interface|u1|Selector0~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_GO~q\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD_COUNTER[0]~7\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD_COUNTER[1]~10_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD_COUNTER[1]~11\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD_COUNTER[2]~12_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~10_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~9_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LessThan2~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD[22]~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD[22]~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LUT_DATA~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|LUT_DATA~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~11_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_DATA[22]~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~12_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~13_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr3~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr3~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~7_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr6~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr6~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|Decoder0~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|Decoder0~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr2~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr2~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD[9]~feeder_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~2_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|Decoder0~2_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD[7]~feeder_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr7~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr7~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~3_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr4~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr4~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD[4]~feeder_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr5~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr5~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr1~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr1~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SD[10]~feeder_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr0~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|WideOr0~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~4_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~5_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~6_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~8_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~14_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|Mux0~15_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SDO~q\ : std_logic;
SIGNAL \audio|audio_interface|u2|SEL_Cont[0]~3_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|SEL_Cont[1]~2_combout\ : std_logic;
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
SIGNAL \clkdivider_1hz|s_counter~7_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~13\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~14_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~15\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~16_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~17\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~18_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~19\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~20_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~21\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~22_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~6_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~23\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~24_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~5_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~25\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~26_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~4_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~27\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~28_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~11_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~29\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~30_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~31\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~32_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~10_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal1~1_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~33\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~34_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~35\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~36_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~3_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~37\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~38_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~2_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~39\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~40_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~1_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~41\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~42_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~0_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~43\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~44_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~9_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~45\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~46_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~47\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~48_combout\ : std_logic;
SIGNAL \clkdivider_1hz|s_counter~8_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal1~0_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~3_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~49\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~50_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~51\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~52_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~1_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~53\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~54_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~55\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~56_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~57\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~58_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~59\ : std_logic;
SIGNAL \clkdivider_1hz|Add0~60_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~0_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~2_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~4_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~5_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~6_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal1~2_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~8_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~7_combout\ : std_logic;
SIGNAL \clkdivider_1hz|Equal0~9_combout\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~0_combout\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~feeder_combout\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~q\ : std_logic;
SIGNAL \clkdivider_1hz|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \uut|s_currentState.A~0_combout\ : std_logic;
SIGNAL \uut|s_currentState.A~q\ : std_logic;
SIGNAL \uut|s_nextState.B~0_combout\ : std_logic;
SIGNAL \uut|s_currentState.B~q\ : std_logic;
SIGNAL \uut|s_currentState.C~feeder_combout\ : std_logic;
SIGNAL \uut|s_currentState.C~q\ : std_logic;
SIGNAL \uut|s_currentState.D~feeder_combout\ : std_logic;
SIGNAL \uut|s_currentState.D~q\ : std_logic;
SIGNAL \uut|s_currentState.E~q\ : std_logic;
SIGNAL \uut|s_currentState.F~feeder_combout\ : std_logic;
SIGNAL \uut|s_currentState.F~q\ : std_logic;
SIGNAL \uut|s_currentState.G~q\ : std_logic;
SIGNAL \uut|s_currentState.H~0_combout\ : std_logic;
SIGNAL \uut|s_currentState.H~q\ : std_logic;
SIGNAL \uut|WideOr1~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|AUD_BCLK~input_o\ : std_logic;
SIGNAL \audio|audio_interface|u2|SEL_Cont[2]~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|oOUT_SAMPLE_RQST~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|SEL_Cont[3]~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\ : std_logic;
SIGNAL \audio|s_leftSinArg[0]~0_combout\ : std_logic;
SIGNAL \audio|s_leftSinArg[1]~1_combout\ : std_logic;
SIGNAL \audio|s_leftSinArg[2]~2_combout\ : std_logic;
SIGNAL \audio|s_leftSinArg[3]~3_combout\ : std_logic;
SIGNAL \audio|s_leftSinArg[3]~4_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux12~0_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux12~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|CH_L_OUT_SAMPLE[5]~feeder_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux2~0_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux2~1_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux8~0_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux8~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~1_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux5~0_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux5~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|CH_L_OUT_SAMPLE[10]~feeder_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux1~0_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux1~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|CH_L_OUT_SAMPLE[9]~feeder_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux4~0_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux4~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~2_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux13~0_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux13~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~3_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|CH_L_OUT_SAMPLE[14]~feeder_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux3~0_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux3~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|CH_L_OUT_SAMPLE[13]~feeder_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux0~0_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux0~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~4_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~5_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~6_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux14~0_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux14~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|CH_L_OUT_SAMPLE[1]~feeder_combout\ : std_logic;
SIGNAL \audio|left_sin_rom|Mux15~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|CH_L_OUT_SAMPLE[2]~feeder_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~7_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~8_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~9_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~17_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~18_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~12_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~13_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~14_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~15_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~16_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|CH_R_OUT_SAMPLE[5]~feeder_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~10_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~11_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~19_combout\ : std_logic;
SIGNAL \audio|audio_interface|u2|Mux1~20_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SCLK~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SCLK~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SCLK~2_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SCLK~3_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|SCLK~q\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|I2C_SCLK~0_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|I2C_SCLK~1_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|I2C_SCLK~2_combout\ : std_logic;
SIGNAL \uut|ledRed0~2_combout\ : std_logic;
SIGNAL \uut|WideOr0~0_combout\ : std_logic;
SIGNAL \uut|ledRed2~combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|mI2C_DATA\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \audio|audio_interface|u2|BCK_DIV\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \audio|s_leftSinArg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \audio|audio_interface|p1|altpll_component|auto_generated|clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \audio|audio_interface|u2|CH_L_OUT_SAMPLE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \audio|audio_interface|u1|u1|SD_COUNTER\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \clkdivider_1hz|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \audio|audio_interface|u2|LRCK_1X_DIV\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \audio|audio_interface|u1|mI2C_CLK_DIV\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \audio|audio_interface|r1|Cont\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \audio|audio_interface|u1|LUT_INDEX\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \audio|audio_interface|u2|SEL_Cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \audio|audio_interface|u1|u1|SD\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \audio|audio_interface|u2|CH_R_OUT_SAMPLE\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \audio|audio_interface|u2|ALT_INV_AUD_BCK~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \audio|audio_interface|u1|u1|ALT_INV_SDO~q\ : std_logic;
SIGNAL \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \audio|audio_interface|u1|ALT_INV_mI2C_GO~q\ : std_logic;
SIGNAL \audio|audio_interface|r1|ALT_INV_oRESET~q\ : std_logic;
SIGNAL \uut|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
AUD_ADCLRCK <= ww_AUD_ADCLRCK;
ww_AUD_ADCDAT <= AUD_ADCDAT;
AUD_DACLRCK <= ww_AUD_DACLRCK;
AUD_DACDAT <= ww_AUD_DACDAT;
AUD_BCLK <= ww_AUD_BCLK;
AUD_XCK <= ww_AUD_XCK;
I2C_SCLK <= ww_I2C_SCLK;
I2C_SDAT <= ww_I2C_SDAT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\audio|audio_interface|p1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\audio|audio_interface|p1|altpll_component|auto_generated|clk\(0) <= \audio|audio_interface|p1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\audio|audio_interface|p1|altpll_component|auto_generated|clk\(1) <= \audio|audio_interface|p1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\audio|audio_interface|p1|altpll_component|auto_generated|clk\(2) <= \audio|audio_interface|p1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\audio|audio_interface|p1|altpll_component|auto_generated|clk\(3) <= \audio|audio_interface|p1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\audio|audio_interface|p1|altpll_component|auto_generated|clk\(4) <= \audio|audio_interface|p1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\audio|audio_interface|u2|AUD_BCK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \audio|audio_interface|u2|AUD_BCK~q\);

\audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \audio|audio_interface|p1|altpll_component|auto_generated|clk\(0));

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \audio|audio_interface|u1|mI2C_CTRL_CLK~q\);

\clkdivider_1hz|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkdivider_1hz|clkOut~q\);
\audio|audio_interface|u2|ALT_INV_AUD_BCK~clkctrl_outclk\ <= NOT \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\audio|audio_interface|u1|u1|ALT_INV_SDO~q\ <= NOT \audio|audio_interface|u1|u1|SDO~q\;
\audio|audio_interface|r1|ALT_INV_Equal0~6_combout\ <= NOT \audio|audio_interface|r1|Equal0~6_combout\;
\audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\ <= NOT \audio|audio_interface|u1|LessThan0~4_combout\;
\audio|audio_interface|u1|ALT_INV_mI2C_GO~q\ <= NOT \audio|audio_interface|u1|mI2C_GO~q\;
\audio|audio_interface|r1|ALT_INV_oRESET~q\ <= NOT \audio|audio_interface|r1|oRESET~q\;
\uut|ALT_INV_WideOr0~0_combout\ <= NOT \uut|WideOr0~0_combout\;

-- Location: IOOBUF_X0_Y68_N9
\audio|audio_interface|AUD_DACDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \audio|audio_interface|u2|Mux1~20_combout\,
	devoe => ww_devoe,
	o => ww_AUD_DACDAT);

-- Location: IOOBUF_X0_Y61_N23
\audio|audio_interface|AUD_XCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_AUD_XCK);

-- Location: IOOBUF_X29_Y73_N9
\audio|audio_interface|I2C_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \audio|audio_interface|u1|u1|I2C_SCLK~2_combout\,
	devoe => ww_devoe,
	o => ww_I2C_SCLK);

-- Location: IOOBUF_X0_Y69_N9
\audio|audio_interface|AUD_ADCLRCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \audio|audio_interface|u2|LRCK_1X~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_AUD_ADCLRCK);

-- Location: IOOBUF_X0_Y66_N16
\audio|audio_interface|AUD_DACLRCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \audio|audio_interface|u2|LRCK_1X~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_AUD_DACLRCK);

-- Location: IOOBUF_X0_Y60_N16
\audio|audio_interface|AUD_BCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_AUD_BCLK);

-- Location: IOOBUF_X18_Y73_N23
\audio|audio_interface|I2C_SDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \audio|audio_interface|u1|u1|ALT_INV_SDO~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_I2C_SDAT);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|ledRed0~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|ledRed2~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uut|s_currentState.H~q\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

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

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X26_Y20_N12
\audio|audio_interface|r1|Cont[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[0]~57_combout\ = (\audio|audio_interface|r1|Equal0~6_combout\) # (!\audio|audio_interface|r1|Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|r1|Equal0~6_combout\,
	datac => \audio|audio_interface|r1|Cont\(0),
	combout => \audio|audio_interface|r1|Cont[0]~57_combout\);

-- Location: FF_X26_Y20_N13
\audio|audio_interface|r1|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(0));

-- Location: LCCOMB_X26_Y20_N14
\audio|audio_interface|r1|Cont[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[1]~19_combout\ = (\audio|audio_interface|r1|Cont\(0) & (\audio|audio_interface|r1|Cont\(1) $ (VCC))) # (!\audio|audio_interface|r1|Cont\(0) & (\audio|audio_interface|r1|Cont\(1) & VCC))
-- \audio|audio_interface|r1|Cont[1]~20\ = CARRY((\audio|audio_interface|r1|Cont\(0) & \audio|audio_interface|r1|Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|r1|Cont\(0),
	datab => \audio|audio_interface|r1|Cont\(1),
	datad => VCC,
	combout => \audio|audio_interface|r1|Cont[1]~19_combout\,
	cout => \audio|audio_interface|r1|Cont[1]~20\);

-- Location: FF_X26_Y20_N15
\audio|audio_interface|r1|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[1]~19_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(1));

-- Location: LCCOMB_X26_Y20_N16
\audio|audio_interface|r1|Cont[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[2]~21_combout\ = (\audio|audio_interface|r1|Cont\(2) & (!\audio|audio_interface|r1|Cont[1]~20\)) # (!\audio|audio_interface|r1|Cont\(2) & ((\audio|audio_interface|r1|Cont[1]~20\) # (GND)))
-- \audio|audio_interface|r1|Cont[2]~22\ = CARRY((!\audio|audio_interface|r1|Cont[1]~20\) # (!\audio|audio_interface|r1|Cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|r1|Cont\(2),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[1]~20\,
	combout => \audio|audio_interface|r1|Cont[2]~21_combout\,
	cout => \audio|audio_interface|r1|Cont[2]~22\);

-- Location: FF_X26_Y20_N17
\audio|audio_interface|r1|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[2]~21_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(2));

-- Location: LCCOMB_X26_Y20_N18
\audio|audio_interface|r1|Cont[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[3]~23_combout\ = (\audio|audio_interface|r1|Cont\(3) & (\audio|audio_interface|r1|Cont[2]~22\ $ (GND))) # (!\audio|audio_interface|r1|Cont\(3) & (!\audio|audio_interface|r1|Cont[2]~22\ & VCC))
-- \audio|audio_interface|r1|Cont[3]~24\ = CARRY((\audio|audio_interface|r1|Cont\(3) & !\audio|audio_interface|r1|Cont[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|r1|Cont\(3),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[2]~22\,
	combout => \audio|audio_interface|r1|Cont[3]~23_combout\,
	cout => \audio|audio_interface|r1|Cont[3]~24\);

-- Location: FF_X26_Y20_N19
\audio|audio_interface|r1|Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[3]~23_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(3));

-- Location: LCCOMB_X26_Y20_N20
\audio|audio_interface|r1|Cont[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[4]~25_combout\ = (\audio|audio_interface|r1|Cont\(4) & (!\audio|audio_interface|r1|Cont[3]~24\)) # (!\audio|audio_interface|r1|Cont\(4) & ((\audio|audio_interface|r1|Cont[3]~24\) # (GND)))
-- \audio|audio_interface|r1|Cont[4]~26\ = CARRY((!\audio|audio_interface|r1|Cont[3]~24\) # (!\audio|audio_interface|r1|Cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|r1|Cont\(4),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[3]~24\,
	combout => \audio|audio_interface|r1|Cont[4]~25_combout\,
	cout => \audio|audio_interface|r1|Cont[4]~26\);

-- Location: FF_X26_Y20_N21
\audio|audio_interface|r1|Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[4]~25_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(4));

-- Location: LCCOMB_X26_Y20_N22
\audio|audio_interface|r1|Cont[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[5]~27_combout\ = (\audio|audio_interface|r1|Cont\(5) & (\audio|audio_interface|r1|Cont[4]~26\ $ (GND))) # (!\audio|audio_interface|r1|Cont\(5) & (!\audio|audio_interface|r1|Cont[4]~26\ & VCC))
-- \audio|audio_interface|r1|Cont[5]~28\ = CARRY((\audio|audio_interface|r1|Cont\(5) & !\audio|audio_interface|r1|Cont[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|r1|Cont\(5),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[4]~26\,
	combout => \audio|audio_interface|r1|Cont[5]~27_combout\,
	cout => \audio|audio_interface|r1|Cont[5]~28\);

-- Location: FF_X26_Y20_N23
\audio|audio_interface|r1|Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[5]~27_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(5));

-- Location: LCCOMB_X26_Y20_N24
\audio|audio_interface|r1|Cont[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[6]~29_combout\ = (\audio|audio_interface|r1|Cont\(6) & (!\audio|audio_interface|r1|Cont[5]~28\)) # (!\audio|audio_interface|r1|Cont\(6) & ((\audio|audio_interface|r1|Cont[5]~28\) # (GND)))
-- \audio|audio_interface|r1|Cont[6]~30\ = CARRY((!\audio|audio_interface|r1|Cont[5]~28\) # (!\audio|audio_interface|r1|Cont\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|r1|Cont\(6),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[5]~28\,
	combout => \audio|audio_interface|r1|Cont[6]~29_combout\,
	cout => \audio|audio_interface|r1|Cont[6]~30\);

-- Location: FF_X26_Y20_N25
\audio|audio_interface|r1|Cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[6]~29_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(6));

-- Location: LCCOMB_X26_Y20_N26
\audio|audio_interface|r1|Cont[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[7]~31_combout\ = (\audio|audio_interface|r1|Cont\(7) & (\audio|audio_interface|r1|Cont[6]~30\ $ (GND))) # (!\audio|audio_interface|r1|Cont\(7) & (!\audio|audio_interface|r1|Cont[6]~30\ & VCC))
-- \audio|audio_interface|r1|Cont[7]~32\ = CARRY((\audio|audio_interface|r1|Cont\(7) & !\audio|audio_interface|r1|Cont[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|r1|Cont\(7),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[6]~30\,
	combout => \audio|audio_interface|r1|Cont[7]~31_combout\,
	cout => \audio|audio_interface|r1|Cont[7]~32\);

-- Location: FF_X26_Y20_N27
\audio|audio_interface|r1|Cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[7]~31_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(7));

-- Location: LCCOMB_X26_Y20_N28
\audio|audio_interface|r1|Cont[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[8]~33_combout\ = (\audio|audio_interface|r1|Cont\(8) & (!\audio|audio_interface|r1|Cont[7]~32\)) # (!\audio|audio_interface|r1|Cont\(8) & ((\audio|audio_interface|r1|Cont[7]~32\) # (GND)))
-- \audio|audio_interface|r1|Cont[8]~34\ = CARRY((!\audio|audio_interface|r1|Cont[7]~32\) # (!\audio|audio_interface|r1|Cont\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|r1|Cont\(8),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[7]~32\,
	combout => \audio|audio_interface|r1|Cont[8]~33_combout\,
	cout => \audio|audio_interface|r1|Cont[8]~34\);

-- Location: FF_X26_Y20_N29
\audio|audio_interface|r1|Cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[8]~33_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(8));

-- Location: LCCOMB_X26_Y20_N30
\audio|audio_interface|r1|Cont[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[9]~35_combout\ = (\audio|audio_interface|r1|Cont\(9) & (\audio|audio_interface|r1|Cont[8]~34\ $ (GND))) # (!\audio|audio_interface|r1|Cont\(9) & (!\audio|audio_interface|r1|Cont[8]~34\ & VCC))
-- \audio|audio_interface|r1|Cont[9]~36\ = CARRY((\audio|audio_interface|r1|Cont\(9) & !\audio|audio_interface|r1|Cont[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|r1|Cont\(9),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[8]~34\,
	combout => \audio|audio_interface|r1|Cont[9]~35_combout\,
	cout => \audio|audio_interface|r1|Cont[9]~36\);

-- Location: FF_X26_Y20_N31
\audio|audio_interface|r1|Cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[9]~35_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(9));

-- Location: LCCOMB_X26_Y19_N0
\audio|audio_interface|r1|Cont[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[10]~37_combout\ = (\audio|audio_interface|r1|Cont\(10) & (!\audio|audio_interface|r1|Cont[9]~36\)) # (!\audio|audio_interface|r1|Cont\(10) & ((\audio|audio_interface|r1|Cont[9]~36\) # (GND)))
-- \audio|audio_interface|r1|Cont[10]~38\ = CARRY((!\audio|audio_interface|r1|Cont[9]~36\) # (!\audio|audio_interface|r1|Cont\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|r1|Cont\(10),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[9]~36\,
	combout => \audio|audio_interface|r1|Cont[10]~37_combout\,
	cout => \audio|audio_interface|r1|Cont[10]~38\);

-- Location: FF_X26_Y19_N1
\audio|audio_interface|r1|Cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[10]~37_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(10));

-- Location: LCCOMB_X26_Y19_N2
\audio|audio_interface|r1|Cont[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[11]~39_combout\ = (\audio|audio_interface|r1|Cont\(11) & (\audio|audio_interface|r1|Cont[10]~38\ $ (GND))) # (!\audio|audio_interface|r1|Cont\(11) & (!\audio|audio_interface|r1|Cont[10]~38\ & VCC))
-- \audio|audio_interface|r1|Cont[11]~40\ = CARRY((\audio|audio_interface|r1|Cont\(11) & !\audio|audio_interface|r1|Cont[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|r1|Cont\(11),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[10]~38\,
	combout => \audio|audio_interface|r1|Cont[11]~39_combout\,
	cout => \audio|audio_interface|r1|Cont[11]~40\);

-- Location: FF_X26_Y19_N3
\audio|audio_interface|r1|Cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[11]~39_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(11));

-- Location: LCCOMB_X26_Y19_N22
\audio|audio_interface|r1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Equal0~4_combout\ = (\audio|audio_interface|r1|Cont\(8) & (\audio|audio_interface|r1|Cont\(11) & (\audio|audio_interface|r1|Cont\(9) & \audio|audio_interface|r1|Cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|r1|Cont\(8),
	datab => \audio|audio_interface|r1|Cont\(11),
	datac => \audio|audio_interface|r1|Cont\(9),
	datad => \audio|audio_interface|r1|Cont\(10),
	combout => \audio|audio_interface|r1|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y19_N4
\audio|audio_interface|r1|Cont[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[12]~41_combout\ = (\audio|audio_interface|r1|Cont\(12) & (!\audio|audio_interface|r1|Cont[11]~40\)) # (!\audio|audio_interface|r1|Cont\(12) & ((\audio|audio_interface|r1|Cont[11]~40\) # (GND)))
-- \audio|audio_interface|r1|Cont[12]~42\ = CARRY((!\audio|audio_interface|r1|Cont[11]~40\) # (!\audio|audio_interface|r1|Cont\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|r1|Cont\(12),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[11]~40\,
	combout => \audio|audio_interface|r1|Cont[12]~41_combout\,
	cout => \audio|audio_interface|r1|Cont[12]~42\);

-- Location: FF_X26_Y19_N5
\audio|audio_interface|r1|Cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[12]~41_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(12));

-- Location: LCCOMB_X26_Y19_N6
\audio|audio_interface|r1|Cont[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[13]~43_combout\ = (\audio|audio_interface|r1|Cont\(13) & (\audio|audio_interface|r1|Cont[12]~42\ $ (GND))) # (!\audio|audio_interface|r1|Cont\(13) & (!\audio|audio_interface|r1|Cont[12]~42\ & VCC))
-- \audio|audio_interface|r1|Cont[13]~44\ = CARRY((\audio|audio_interface|r1|Cont\(13) & !\audio|audio_interface|r1|Cont[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|r1|Cont\(13),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[12]~42\,
	combout => \audio|audio_interface|r1|Cont[13]~43_combout\,
	cout => \audio|audio_interface|r1|Cont[13]~44\);

-- Location: FF_X26_Y19_N7
\audio|audio_interface|r1|Cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[13]~43_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(13));

-- Location: LCCOMB_X26_Y19_N8
\audio|audio_interface|r1|Cont[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[14]~45_combout\ = (\audio|audio_interface|r1|Cont\(14) & (!\audio|audio_interface|r1|Cont[13]~44\)) # (!\audio|audio_interface|r1|Cont\(14) & ((\audio|audio_interface|r1|Cont[13]~44\) # (GND)))
-- \audio|audio_interface|r1|Cont[14]~46\ = CARRY((!\audio|audio_interface|r1|Cont[13]~44\) # (!\audio|audio_interface|r1|Cont\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|r1|Cont\(14),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[13]~44\,
	combout => \audio|audio_interface|r1|Cont[14]~45_combout\,
	cout => \audio|audio_interface|r1|Cont[14]~46\);

-- Location: FF_X26_Y19_N9
\audio|audio_interface|r1|Cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[14]~45_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(14));

-- Location: LCCOMB_X26_Y19_N10
\audio|audio_interface|r1|Cont[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[15]~47_combout\ = (\audio|audio_interface|r1|Cont\(15) & (\audio|audio_interface|r1|Cont[14]~46\ $ (GND))) # (!\audio|audio_interface|r1|Cont\(15) & (!\audio|audio_interface|r1|Cont[14]~46\ & VCC))
-- \audio|audio_interface|r1|Cont[15]~48\ = CARRY((\audio|audio_interface|r1|Cont\(15) & !\audio|audio_interface|r1|Cont[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|r1|Cont\(15),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[14]~46\,
	combout => \audio|audio_interface|r1|Cont[15]~47_combout\,
	cout => \audio|audio_interface|r1|Cont[15]~48\);

-- Location: FF_X26_Y19_N11
\audio|audio_interface|r1|Cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[15]~47_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(15));

-- Location: LCCOMB_X26_Y19_N24
\audio|audio_interface|r1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Equal0~5_combout\ = (\audio|audio_interface|r1|Cont\(15) & (\audio|audio_interface|r1|Cont\(14) & (\audio|audio_interface|r1|Cont\(12) & \audio|audio_interface|r1|Cont\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|r1|Cont\(15),
	datab => \audio|audio_interface|r1|Cont\(14),
	datac => \audio|audio_interface|r1|Cont\(12),
	datad => \audio|audio_interface|r1|Cont\(13),
	combout => \audio|audio_interface|r1|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y20_N4
\audio|audio_interface|r1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Equal0~2_combout\ = (\audio|audio_interface|r1|Cont\(5) & (\audio|audio_interface|r1|Cont\(4) & (\audio|audio_interface|r1|Cont\(7) & \audio|audio_interface|r1|Cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|r1|Cont\(5),
	datab => \audio|audio_interface|r1|Cont\(4),
	datac => \audio|audio_interface|r1|Cont\(7),
	datad => \audio|audio_interface|r1|Cont\(6),
	combout => \audio|audio_interface|r1|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y20_N2
\audio|audio_interface|r1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Equal0~1_combout\ = (\audio|audio_interface|r1|Cont\(0) & (\audio|audio_interface|r1|Cont\(3) & (\audio|audio_interface|r1|Cont\(1) & \audio|audio_interface|r1|Cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|r1|Cont\(0),
	datab => \audio|audio_interface|r1|Cont\(3),
	datac => \audio|audio_interface|r1|Cont\(1),
	datad => \audio|audio_interface|r1|Cont\(2),
	combout => \audio|audio_interface|r1|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y20_N10
\audio|audio_interface|r1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Equal0~3_combout\ = (\audio|audio_interface|r1|Equal0~2_combout\ & \audio|audio_interface|r1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|audio_interface|r1|Equal0~2_combout\,
	datad => \audio|audio_interface|r1|Equal0~1_combout\,
	combout => \audio|audio_interface|r1|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y19_N12
\audio|audio_interface|r1|Cont[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[16]~49_combout\ = (\audio|audio_interface|r1|Cont\(16) & (!\audio|audio_interface|r1|Cont[15]~48\)) # (!\audio|audio_interface|r1|Cont\(16) & ((\audio|audio_interface|r1|Cont[15]~48\) # (GND)))
-- \audio|audio_interface|r1|Cont[16]~50\ = CARRY((!\audio|audio_interface|r1|Cont[15]~48\) # (!\audio|audio_interface|r1|Cont\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|r1|Cont\(16),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[15]~48\,
	combout => \audio|audio_interface|r1|Cont[16]~49_combout\,
	cout => \audio|audio_interface|r1|Cont[16]~50\);

-- Location: FF_X26_Y19_N13
\audio|audio_interface|r1|Cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[16]~49_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(16));

-- Location: LCCOMB_X26_Y19_N14
\audio|audio_interface|r1|Cont[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[17]~51_combout\ = (\audio|audio_interface|r1|Cont\(17) & (\audio|audio_interface|r1|Cont[16]~50\ $ (GND))) # (!\audio|audio_interface|r1|Cont\(17) & (!\audio|audio_interface|r1|Cont[16]~50\ & VCC))
-- \audio|audio_interface|r1|Cont[17]~52\ = CARRY((\audio|audio_interface|r1|Cont\(17) & !\audio|audio_interface|r1|Cont[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|r1|Cont\(17),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[16]~50\,
	combout => \audio|audio_interface|r1|Cont[17]~51_combout\,
	cout => \audio|audio_interface|r1|Cont[17]~52\);

-- Location: FF_X26_Y19_N15
\audio|audio_interface|r1|Cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[17]~51_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(17));

-- Location: LCCOMB_X26_Y19_N16
\audio|audio_interface|r1|Cont[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[18]~53_combout\ = (\audio|audio_interface|r1|Cont\(18) & (!\audio|audio_interface|r1|Cont[17]~52\)) # (!\audio|audio_interface|r1|Cont\(18) & ((\audio|audio_interface|r1|Cont[17]~52\) # (GND)))
-- \audio|audio_interface|r1|Cont[18]~54\ = CARRY((!\audio|audio_interface|r1|Cont[17]~52\) # (!\audio|audio_interface|r1|Cont\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|r1|Cont\(18),
	datad => VCC,
	cin => \audio|audio_interface|r1|Cont[17]~52\,
	combout => \audio|audio_interface|r1|Cont[18]~53_combout\,
	cout => \audio|audio_interface|r1|Cont[18]~54\);

-- Location: FF_X26_Y19_N17
\audio|audio_interface|r1|Cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[18]~53_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(18));

-- Location: LCCOMB_X26_Y19_N18
\audio|audio_interface|r1|Cont[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Cont[19]~55_combout\ = \audio|audio_interface|r1|Cont[18]~54\ $ (!\audio|audio_interface|r1|Cont\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \audio|audio_interface|r1|Cont\(19),
	cin => \audio|audio_interface|r1|Cont[18]~54\,
	combout => \audio|audio_interface|r1|Cont[19]~55_combout\);

-- Location: FF_X26_Y19_N19
\audio|audio_interface|r1|Cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|Cont[19]~55_combout\,
	ena => \audio|audio_interface|r1|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|Cont\(19));

-- Location: LCCOMB_X26_Y19_N28
\audio|audio_interface|r1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Equal0~0_combout\ = (\audio|audio_interface|r1|Cont\(16) & (\audio|audio_interface|r1|Cont\(19) & (\audio|audio_interface|r1|Cont\(17) & \audio|audio_interface|r1|Cont\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|r1|Cont\(16),
	datab => \audio|audio_interface|r1|Cont\(19),
	datac => \audio|audio_interface|r1|Cont\(17),
	datad => \audio|audio_interface|r1|Cont\(18),
	combout => \audio|audio_interface|r1|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y19_N26
\audio|audio_interface|r1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|Equal0~6_combout\ = (\audio|audio_interface|r1|Equal0~4_combout\ & (\audio|audio_interface|r1|Equal0~5_combout\ & (\audio|audio_interface|r1|Equal0~3_combout\ & \audio|audio_interface|r1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|r1|Equal0~4_combout\,
	datab => \audio|audio_interface|r1|Equal0~5_combout\,
	datac => \audio|audio_interface|r1|Equal0~3_combout\,
	datad => \audio|audio_interface|r1|Equal0~0_combout\,
	combout => \audio|audio_interface|r1|Equal0~6_combout\);

-- Location: LCCOMB_X26_Y21_N30
\audio|audio_interface|r1|oRESET~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|r1|oRESET~feeder_combout\ = \audio|audio_interface|r1|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio|audio_interface|r1|Equal0~6_combout\,
	combout => \audio|audio_interface|r1|oRESET~feeder_combout\);

-- Location: FF_X26_Y21_N31
\audio|audio_interface|r1|oRESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|r1|oRESET~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|r1|oRESET~q\);

-- Location: PLL_1
\audio|audio_interface|p1|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 13,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 25,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 9,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 9,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "source synchronous",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 4555,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 277,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \audio|audio_interface|r1|ALT_INV_oRESET~q\,
	fbin => \audio|audio_interface|p1|altpll_component|auto_generated|pll1~FBOUT\,
	inclk => \audio|audio_interface|p1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \audio|audio_interface|p1|altpll_component|auto_generated|pll1~FBOUT\,
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y21_N12
\audio|audio_interface|u2|LRCK_1X_DIV[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|LRCK_1X_DIV[0]~9_combout\ = \audio|audio_interface|u2|LRCK_1X_DIV\(0) $ (VCC)
-- \audio|audio_interface|u2|LRCK_1X_DIV[0]~10\ = CARRY(\audio|audio_interface|u2|LRCK_1X_DIV\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u2|LRCK_1X_DIV\(0),
	datad => VCC,
	combout => \audio|audio_interface|u2|LRCK_1X_DIV[0]~9_combout\,
	cout => \audio|audio_interface|u2|LRCK_1X_DIV[0]~10\);

-- Location: LCCOMB_X26_Y21_N4
\audio|audio_interface|u2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|LessThan1~0_combout\ = (((!\audio|audio_interface|u2|LRCK_1X_DIV\(2)) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(0))) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(1))) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|LRCK_1X_DIV\(3),
	datab => \audio|audio_interface|u2|LRCK_1X_DIV\(1),
	datac => \audio|audio_interface|u2|LRCK_1X_DIV\(0),
	datad => \audio|audio_interface|u2|LRCK_1X_DIV\(2),
	combout => \audio|audio_interface|u2|LessThan1~0_combout\);

-- Location: LCCOMB_X26_Y21_N0
\audio|audio_interface|u2|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|LessThan1~1_combout\ = (!\audio|audio_interface|u2|LRCK_1X_DIV\(6) & (((\audio|audio_interface|u2|LessThan1~0_combout\) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(4))) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|LRCK_1X_DIV\(5),
	datab => \audio|audio_interface|u2|LRCK_1X_DIV\(4),
	datac => \audio|audio_interface|u2|LessThan1~0_combout\,
	datad => \audio|audio_interface|u2|LRCK_1X_DIV\(6),
	combout => \audio|audio_interface|u2|LessThan1~1_combout\);

-- Location: LCCOMB_X26_Y21_N26
\audio|audio_interface|u2|LRCK_1X_DIV[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|LRCK_1X_DIV[7]~23_combout\ = (\audio|audio_interface|u2|LRCK_1X_DIV\(7) & (!\audio|audio_interface|u2|LRCK_1X_DIV[6]~22\)) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(7) & ((\audio|audio_interface|u2|LRCK_1X_DIV[6]~22\) # (GND)))
-- \audio|audio_interface|u2|LRCK_1X_DIV[7]~24\ = CARRY((!\audio|audio_interface|u2|LRCK_1X_DIV[6]~22\) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u2|LRCK_1X_DIV\(7),
	datad => VCC,
	cin => \audio|audio_interface|u2|LRCK_1X_DIV[6]~22\,
	combout => \audio|audio_interface|u2|LRCK_1X_DIV[7]~23_combout\,
	cout => \audio|audio_interface|u2|LRCK_1X_DIV[7]~24\);

-- Location: LCCOMB_X26_Y21_N28
\audio|audio_interface|u2|LRCK_1X_DIV[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|LRCK_1X_DIV[8]~25_combout\ = \audio|audio_interface|u2|LRCK_1X_DIV[7]~24\ $ (!\audio|audio_interface|u2|LRCK_1X_DIV\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \audio|audio_interface|u2|LRCK_1X_DIV\(8),
	cin => \audio|audio_interface|u2|LRCK_1X_DIV[7]~24\,
	combout => \audio|audio_interface|u2|LRCK_1X_DIV[8]~25_combout\);

-- Location: FF_X26_Y21_N29
\audio|audio_interface|u2|LRCK_1X_DIV[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \audio|audio_interface|u2|LRCK_1X_DIV[8]~25_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sclr => \audio|audio_interface|u2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|LRCK_1X_DIV\(8));

-- Location: LCCOMB_X27_Y21_N12
\audio|audio_interface|u2|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|LessThan1~2_combout\ = (\audio|audio_interface|u2|LRCK_1X_DIV\(8)) # ((!\audio|audio_interface|u2|LessThan1~1_combout\ & \audio|audio_interface|u2|LRCK_1X_DIV\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u2|LessThan1~1_combout\,
	datac => \audio|audio_interface|u2|LRCK_1X_DIV\(7),
	datad => \audio|audio_interface|u2|LRCK_1X_DIV\(8),
	combout => \audio|audio_interface|u2|LessThan1~2_combout\);

-- Location: FF_X26_Y21_N13
\audio|audio_interface|u2|LRCK_1X_DIV[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \audio|audio_interface|u2|LRCK_1X_DIV[0]~9_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sclr => \audio|audio_interface|u2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|LRCK_1X_DIV\(0));

-- Location: LCCOMB_X26_Y21_N14
\audio|audio_interface|u2|LRCK_1X_DIV[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|LRCK_1X_DIV[1]~11_combout\ = (\audio|audio_interface|u2|LRCK_1X_DIV\(1) & (!\audio|audio_interface|u2|LRCK_1X_DIV[0]~10\)) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(1) & ((\audio|audio_interface|u2|LRCK_1X_DIV[0]~10\) # (GND)))
-- \audio|audio_interface|u2|LRCK_1X_DIV[1]~12\ = CARRY((!\audio|audio_interface|u2|LRCK_1X_DIV[0]~10\) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u2|LRCK_1X_DIV\(1),
	datad => VCC,
	cin => \audio|audio_interface|u2|LRCK_1X_DIV[0]~10\,
	combout => \audio|audio_interface|u2|LRCK_1X_DIV[1]~11_combout\,
	cout => \audio|audio_interface|u2|LRCK_1X_DIV[1]~12\);

-- Location: FF_X26_Y21_N15
\audio|audio_interface|u2|LRCK_1X_DIV[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \audio|audio_interface|u2|LRCK_1X_DIV[1]~11_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sclr => \audio|audio_interface|u2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|LRCK_1X_DIV\(1));

-- Location: LCCOMB_X26_Y21_N16
\audio|audio_interface|u2|LRCK_1X_DIV[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|LRCK_1X_DIV[2]~13_combout\ = (\audio|audio_interface|u2|LRCK_1X_DIV\(2) & (\audio|audio_interface|u2|LRCK_1X_DIV[1]~12\ $ (GND))) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(2) & (!\audio|audio_interface|u2|LRCK_1X_DIV[1]~12\ & 
-- VCC))
-- \audio|audio_interface|u2|LRCK_1X_DIV[2]~14\ = CARRY((\audio|audio_interface|u2|LRCK_1X_DIV\(2) & !\audio|audio_interface|u2|LRCK_1X_DIV[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u2|LRCK_1X_DIV\(2),
	datad => VCC,
	cin => \audio|audio_interface|u2|LRCK_1X_DIV[1]~12\,
	combout => \audio|audio_interface|u2|LRCK_1X_DIV[2]~13_combout\,
	cout => \audio|audio_interface|u2|LRCK_1X_DIV[2]~14\);

-- Location: FF_X26_Y21_N17
\audio|audio_interface|u2|LRCK_1X_DIV[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \audio|audio_interface|u2|LRCK_1X_DIV[2]~13_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sclr => \audio|audio_interface|u2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|LRCK_1X_DIV\(2));

-- Location: LCCOMB_X26_Y21_N18
\audio|audio_interface|u2|LRCK_1X_DIV[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|LRCK_1X_DIV[3]~15_combout\ = (\audio|audio_interface|u2|LRCK_1X_DIV\(3) & (!\audio|audio_interface|u2|LRCK_1X_DIV[2]~14\)) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(3) & ((\audio|audio_interface|u2|LRCK_1X_DIV[2]~14\) # (GND)))
-- \audio|audio_interface|u2|LRCK_1X_DIV[3]~16\ = CARRY((!\audio|audio_interface|u2|LRCK_1X_DIV[2]~14\) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|LRCK_1X_DIV\(3),
	datad => VCC,
	cin => \audio|audio_interface|u2|LRCK_1X_DIV[2]~14\,
	combout => \audio|audio_interface|u2|LRCK_1X_DIV[3]~15_combout\,
	cout => \audio|audio_interface|u2|LRCK_1X_DIV[3]~16\);

-- Location: FF_X26_Y21_N19
\audio|audio_interface|u2|LRCK_1X_DIV[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \audio|audio_interface|u2|LRCK_1X_DIV[3]~15_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sclr => \audio|audio_interface|u2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|LRCK_1X_DIV\(3));

-- Location: LCCOMB_X26_Y21_N20
\audio|audio_interface|u2|LRCK_1X_DIV[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|LRCK_1X_DIV[4]~17_combout\ = (\audio|audio_interface|u2|LRCK_1X_DIV\(4) & (\audio|audio_interface|u2|LRCK_1X_DIV[3]~16\ $ (GND))) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(4) & (!\audio|audio_interface|u2|LRCK_1X_DIV[3]~16\ & 
-- VCC))
-- \audio|audio_interface|u2|LRCK_1X_DIV[4]~18\ = CARRY((\audio|audio_interface|u2|LRCK_1X_DIV\(4) & !\audio|audio_interface|u2|LRCK_1X_DIV[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u2|LRCK_1X_DIV\(4),
	datad => VCC,
	cin => \audio|audio_interface|u2|LRCK_1X_DIV[3]~16\,
	combout => \audio|audio_interface|u2|LRCK_1X_DIV[4]~17_combout\,
	cout => \audio|audio_interface|u2|LRCK_1X_DIV[4]~18\);

-- Location: FF_X26_Y21_N21
\audio|audio_interface|u2|LRCK_1X_DIV[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \audio|audio_interface|u2|LRCK_1X_DIV[4]~17_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sclr => \audio|audio_interface|u2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|LRCK_1X_DIV\(4));

-- Location: LCCOMB_X26_Y21_N22
\audio|audio_interface|u2|LRCK_1X_DIV[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|LRCK_1X_DIV[5]~19_combout\ = (\audio|audio_interface|u2|LRCK_1X_DIV\(5) & (!\audio|audio_interface|u2|LRCK_1X_DIV[4]~18\)) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(5) & ((\audio|audio_interface|u2|LRCK_1X_DIV[4]~18\) # (GND)))
-- \audio|audio_interface|u2|LRCK_1X_DIV[5]~20\ = CARRY((!\audio|audio_interface|u2|LRCK_1X_DIV[4]~18\) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|LRCK_1X_DIV\(5),
	datad => VCC,
	cin => \audio|audio_interface|u2|LRCK_1X_DIV[4]~18\,
	combout => \audio|audio_interface|u2|LRCK_1X_DIV[5]~19_combout\,
	cout => \audio|audio_interface|u2|LRCK_1X_DIV[5]~20\);

-- Location: FF_X26_Y21_N23
\audio|audio_interface|u2|LRCK_1X_DIV[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \audio|audio_interface|u2|LRCK_1X_DIV[5]~19_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sclr => \audio|audio_interface|u2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|LRCK_1X_DIV\(5));

-- Location: LCCOMB_X26_Y21_N24
\audio|audio_interface|u2|LRCK_1X_DIV[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|LRCK_1X_DIV[6]~21_combout\ = (\audio|audio_interface|u2|LRCK_1X_DIV\(6) & (\audio|audio_interface|u2|LRCK_1X_DIV[5]~20\ $ (GND))) # (!\audio|audio_interface|u2|LRCK_1X_DIV\(6) & (!\audio|audio_interface|u2|LRCK_1X_DIV[5]~20\ & 
-- VCC))
-- \audio|audio_interface|u2|LRCK_1X_DIV[6]~22\ = CARRY((\audio|audio_interface|u2|LRCK_1X_DIV\(6) & !\audio|audio_interface|u2|LRCK_1X_DIV[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u2|LRCK_1X_DIV\(6),
	datad => VCC,
	cin => \audio|audio_interface|u2|LRCK_1X_DIV[5]~20\,
	combout => \audio|audio_interface|u2|LRCK_1X_DIV[6]~21_combout\,
	cout => \audio|audio_interface|u2|LRCK_1X_DIV[6]~22\);

-- Location: FF_X26_Y21_N25
\audio|audio_interface|u2|LRCK_1X_DIV[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \audio|audio_interface|u2|LRCK_1X_DIV[6]~21_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sclr => \audio|audio_interface|u2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|LRCK_1X_DIV\(6));

-- Location: FF_X26_Y21_N27
\audio|audio_interface|u2|LRCK_1X_DIV[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \audio|audio_interface|u2|LRCK_1X_DIV[7]~23_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sclr => \audio|audio_interface|u2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|LRCK_1X_DIV\(7));

-- Location: LCCOMB_X27_Y21_N20
\audio|audio_interface|u2|LRCK_1X~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|LRCK_1X~0_combout\ = \audio|audio_interface|u2|LRCK_1X~q\ $ (((\audio|audio_interface|u2|LRCK_1X_DIV\(8)) # ((\audio|audio_interface|u2|LRCK_1X_DIV\(7) & !\audio|audio_interface|u2|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|LRCK_1X_DIV\(7),
	datab => \audio|audio_interface|u2|LessThan1~1_combout\,
	datac => \audio|audio_interface|u2|LRCK_1X~q\,
	datad => \audio|audio_interface|u2|LRCK_1X_DIV\(8),
	combout => \audio|audio_interface|u2|LRCK_1X~0_combout\);

-- Location: FF_X27_Y21_N21
\audio|audio_interface|u2|LRCK_1X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \audio|audio_interface|u2|LRCK_1X~0_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|LRCK_1X~q\);

-- Location: LCCOMB_X26_Y21_N2
\audio|audio_interface|u2|BCK_DIV~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|BCK_DIV~0_combout\ = (\audio|audio_interface|u2|BCK_DIV\(0) & (!\audio|audio_interface|u2|BCK_DIV\(2) & \audio|audio_interface|u2|BCK_DIV\(1))) # (!\audio|audio_interface|u2|BCK_DIV\(0) & (\audio|audio_interface|u2|BCK_DIV\(2) & 
-- !\audio|audio_interface|u2|BCK_DIV\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|BCK_DIV\(0),
	datac => \audio|audio_interface|u2|BCK_DIV\(2),
	datad => \audio|audio_interface|u2|BCK_DIV\(1),
	combout => \audio|audio_interface|u2|BCK_DIV~0_combout\);

-- Location: FF_X26_Y21_N3
\audio|audio_interface|u2|BCK_DIV[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \audio|audio_interface|u2|BCK_DIV~0_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|BCK_DIV\(2));

-- Location: LCCOMB_X26_Y21_N8
\audio|audio_interface|u2|BCK_DIV~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|BCK_DIV~2_combout\ = (!\audio|audio_interface|u2|BCK_DIV\(0) & ((!\audio|audio_interface|u2|BCK_DIV\(1)) # (!\audio|audio_interface|u2|BCK_DIV\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u2|BCK_DIV\(2),
	datac => \audio|audio_interface|u2|BCK_DIV\(0),
	datad => \audio|audio_interface|u2|BCK_DIV\(1),
	combout => \audio|audio_interface|u2|BCK_DIV~2_combout\);

-- Location: FF_X26_Y21_N9
\audio|audio_interface|u2|BCK_DIV[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \audio|audio_interface|u2|BCK_DIV~2_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|BCK_DIV\(0));

-- Location: LCCOMB_X26_Y21_N10
\audio|audio_interface|u2|BCK_DIV~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|BCK_DIV~1_combout\ = (!\audio|audio_interface|u2|BCK_DIV\(2) & (\audio|audio_interface|u2|BCK_DIV\(0) $ (\audio|audio_interface|u2|BCK_DIV\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|BCK_DIV\(0),
	datac => \audio|audio_interface|u2|BCK_DIV\(1),
	datad => \audio|audio_interface|u2|BCK_DIV\(2),
	combout => \audio|audio_interface|u2|BCK_DIV~1_combout\);

-- Location: FF_X26_Y21_N11
\audio|audio_interface|u2|BCK_DIV[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \audio|audio_interface|u2|BCK_DIV~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|BCK_DIV\(1));

-- Location: LCCOMB_X26_Y21_N6
\audio|audio_interface|u2|AUD_BCK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|AUD_BCK~0_combout\ = \audio|audio_interface|u2|AUD_BCK~q\ $ (((\audio|audio_interface|u2|BCK_DIV\(2) & ((\audio|audio_interface|u2|BCK_DIV\(1)) # (\audio|audio_interface|u2|BCK_DIV\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|BCK_DIV\(1),
	datab => \audio|audio_interface|u2|BCK_DIV\(2),
	datac => \audio|audio_interface|u2|AUD_BCK~q\,
	datad => \audio|audio_interface|u2|BCK_DIV\(0),
	combout => \audio|audio_interface|u2|AUD_BCK~0_combout\);

-- Location: FF_X26_Y21_N7
\audio|audio_interface|u2|AUD_BCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \audio|audio_interface|u2|AUD_BCK~0_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|AUD_BCK~q\);

-- Location: CLKCTRL_G0
\audio|audio_interface|u2|AUD_BCK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \audio|audio_interface|u2|AUD_BCK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y67_N0
\audio|audio_interface|u1|mI2C_CLK_DIV[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[0]~16_combout\ = \audio|audio_interface|u1|mI2C_CLK_DIV\(0) $ (VCC)
-- \audio|audio_interface|u1|mI2C_CLK_DIV[0]~17\ = CARRY(\audio|audio_interface|u1|mI2C_CLK_DIV\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mI2C_CLK_DIV\(0),
	datad => VCC,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[0]~16_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[0]~17\);

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

-- Location: FF_X34_Y67_N1
\audio|audio_interface|u1|mI2C_CLK_DIV[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[0]~16_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(0));

-- Location: LCCOMB_X34_Y67_N2
\audio|audio_interface|u1|mI2C_CLK_DIV[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[1]~18_combout\ = (\audio|audio_interface|u1|mI2C_CLK_DIV\(1) & (!\audio|audio_interface|u1|mI2C_CLK_DIV[0]~17\)) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(1) & ((\audio|audio_interface|u1|mI2C_CLK_DIV[0]~17\) # 
-- (GND)))
-- \audio|audio_interface|u1|mI2C_CLK_DIV[1]~19\ = CARRY((!\audio|audio_interface|u1|mI2C_CLK_DIV[0]~17\) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mI2C_CLK_DIV\(1),
	datad => VCC,
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[0]~17\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[1]~18_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[1]~19\);

-- Location: FF_X34_Y67_N3
\audio|audio_interface|u1|mI2C_CLK_DIV[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[1]~18_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(1));

-- Location: LCCOMB_X34_Y67_N4
\audio|audio_interface|u1|mI2C_CLK_DIV[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[2]~20_combout\ = (\audio|audio_interface|u1|mI2C_CLK_DIV\(2) & (\audio|audio_interface|u1|mI2C_CLK_DIV[1]~19\ $ (GND))) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(2) & (!\audio|audio_interface|u1|mI2C_CLK_DIV[1]~19\ 
-- & VCC))
-- \audio|audio_interface|u1|mI2C_CLK_DIV[2]~21\ = CARRY((\audio|audio_interface|u1|mI2C_CLK_DIV\(2) & !\audio|audio_interface|u1|mI2C_CLK_DIV[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mI2C_CLK_DIV\(2),
	datad => VCC,
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[1]~19\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[2]~20_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[2]~21\);

-- Location: FF_X34_Y67_N5
\audio|audio_interface|u1|mI2C_CLK_DIV[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[2]~20_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(2));

-- Location: LCCOMB_X34_Y67_N6
\audio|audio_interface|u1|mI2C_CLK_DIV[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[3]~22_combout\ = (\audio|audio_interface|u1|mI2C_CLK_DIV\(3) & (!\audio|audio_interface|u1|mI2C_CLK_DIV[2]~21\)) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(3) & ((\audio|audio_interface|u1|mI2C_CLK_DIV[2]~21\) # 
-- (GND)))
-- \audio|audio_interface|u1|mI2C_CLK_DIV[3]~23\ = CARRY((!\audio|audio_interface|u1|mI2C_CLK_DIV[2]~21\) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|mI2C_CLK_DIV\(3),
	datad => VCC,
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[2]~21\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[3]~22_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[3]~23\);

-- Location: FF_X34_Y67_N7
\audio|audio_interface|u1|mI2C_CLK_DIV[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[3]~22_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(3));

-- Location: LCCOMB_X34_Y67_N8
\audio|audio_interface|u1|mI2C_CLK_DIV[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[4]~24_combout\ = (\audio|audio_interface|u1|mI2C_CLK_DIV\(4) & (\audio|audio_interface|u1|mI2C_CLK_DIV[3]~23\ $ (GND))) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(4) & (!\audio|audio_interface|u1|mI2C_CLK_DIV[3]~23\ 
-- & VCC))
-- \audio|audio_interface|u1|mI2C_CLK_DIV[4]~25\ = CARRY((\audio|audio_interface|u1|mI2C_CLK_DIV\(4) & !\audio|audio_interface|u1|mI2C_CLK_DIV[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mI2C_CLK_DIV\(4),
	datad => VCC,
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[3]~23\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[4]~24_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[4]~25\);

-- Location: FF_X34_Y67_N9
\audio|audio_interface|u1|mI2C_CLK_DIV[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[4]~24_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(4));

-- Location: LCCOMB_X34_Y67_N10
\audio|audio_interface|u1|mI2C_CLK_DIV[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[5]~26_combout\ = (\audio|audio_interface|u1|mI2C_CLK_DIV\(5) & (!\audio|audio_interface|u1|mI2C_CLK_DIV[4]~25\)) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(5) & ((\audio|audio_interface|u1|mI2C_CLK_DIV[4]~25\) # 
-- (GND)))
-- \audio|audio_interface|u1|mI2C_CLK_DIV[5]~27\ = CARRY((!\audio|audio_interface|u1|mI2C_CLK_DIV[4]~25\) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|mI2C_CLK_DIV\(5),
	datad => VCC,
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[4]~25\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[5]~26_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[5]~27\);

-- Location: FF_X34_Y67_N11
\audio|audio_interface|u1|mI2C_CLK_DIV[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[5]~26_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(5));

-- Location: LCCOMB_X33_Y67_N6
\audio|audio_interface|u1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LessThan0~1_combout\ = (!\audio|audio_interface|u1|mI2C_CLK_DIV\(3) & (!\audio|audio_interface|u1|mI2C_CLK_DIV\(5) & (!\audio|audio_interface|u1|mI2C_CLK_DIV\(4) & !\audio|audio_interface|u1|mI2C_CLK_DIV\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|mI2C_CLK_DIV\(3),
	datab => \audio|audio_interface|u1|mI2C_CLK_DIV\(5),
	datac => \audio|audio_interface|u1|mI2C_CLK_DIV\(4),
	datad => \audio|audio_interface|u1|mI2C_CLK_DIV\(2),
	combout => \audio|audio_interface|u1|LessThan0~1_combout\);

-- Location: LCCOMB_X34_Y67_N12
\audio|audio_interface|u1|mI2C_CLK_DIV[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[6]~28_combout\ = (\audio|audio_interface|u1|mI2C_CLK_DIV\(6) & (\audio|audio_interface|u1|mI2C_CLK_DIV[5]~27\ $ (GND))) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(6) & (!\audio|audio_interface|u1|mI2C_CLK_DIV[5]~27\ 
-- & VCC))
-- \audio|audio_interface|u1|mI2C_CLK_DIV[6]~29\ = CARRY((\audio|audio_interface|u1|mI2C_CLK_DIV\(6) & !\audio|audio_interface|u1|mI2C_CLK_DIV[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|mI2C_CLK_DIV\(6),
	datad => VCC,
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[5]~27\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[6]~28_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[6]~29\);

-- Location: FF_X34_Y67_N13
\audio|audio_interface|u1|mI2C_CLK_DIV[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[6]~28_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(6));

-- Location: LCCOMB_X34_Y67_N14
\audio|audio_interface|u1|mI2C_CLK_DIV[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[7]~30_combout\ = (\audio|audio_interface|u1|mI2C_CLK_DIV\(7) & (!\audio|audio_interface|u1|mI2C_CLK_DIV[6]~29\)) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(7) & ((\audio|audio_interface|u1|mI2C_CLK_DIV[6]~29\) # 
-- (GND)))
-- \audio|audio_interface|u1|mI2C_CLK_DIV[7]~31\ = CARRY((!\audio|audio_interface|u1|mI2C_CLK_DIV[6]~29\) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mI2C_CLK_DIV\(7),
	datad => VCC,
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[6]~29\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[7]~30_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[7]~31\);

-- Location: FF_X34_Y67_N15
\audio|audio_interface|u1|mI2C_CLK_DIV[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[7]~30_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(7));

-- Location: LCCOMB_X34_Y67_N16
\audio|audio_interface|u1|mI2C_CLK_DIV[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[8]~32_combout\ = (\audio|audio_interface|u1|mI2C_CLK_DIV\(8) & (\audio|audio_interface|u1|mI2C_CLK_DIV[7]~31\ $ (GND))) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(8) & (!\audio|audio_interface|u1|mI2C_CLK_DIV[7]~31\ 
-- & VCC))
-- \audio|audio_interface|u1|mI2C_CLK_DIV[8]~33\ = CARRY((\audio|audio_interface|u1|mI2C_CLK_DIV\(8) & !\audio|audio_interface|u1|mI2C_CLK_DIV[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mI2C_CLK_DIV\(8),
	datad => VCC,
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[7]~31\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[8]~32_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[8]~33\);

-- Location: FF_X34_Y67_N17
\audio|audio_interface|u1|mI2C_CLK_DIV[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[8]~32_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(8));

-- Location: LCCOMB_X33_Y67_N12
\audio|audio_interface|u1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LessThan0~2_combout\ = (\audio|audio_interface|u1|LessThan0~1_combout\) # (((!\audio|audio_interface|u1|mI2C_CLK_DIV\(8)) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(6))) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LessThan0~1_combout\,
	datab => \audio|audio_interface|u1|mI2C_CLK_DIV\(7),
	datac => \audio|audio_interface|u1|mI2C_CLK_DIV\(6),
	datad => \audio|audio_interface|u1|mI2C_CLK_DIV\(8),
	combout => \audio|audio_interface|u1|LessThan0~2_combout\);

-- Location: LCCOMB_X34_Y67_N18
\audio|audio_interface|u1|mI2C_CLK_DIV[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[9]~34_combout\ = (\audio|audio_interface|u1|mI2C_CLK_DIV\(9) & (!\audio|audio_interface|u1|mI2C_CLK_DIV[8]~33\)) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(9) & ((\audio|audio_interface|u1|mI2C_CLK_DIV[8]~33\) # 
-- (GND)))
-- \audio|audio_interface|u1|mI2C_CLK_DIV[9]~35\ = CARRY((!\audio|audio_interface|u1|mI2C_CLK_DIV[8]~33\) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mI2C_CLK_DIV\(9),
	datad => VCC,
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[8]~33\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[9]~34_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[9]~35\);

-- Location: FF_X34_Y67_N19
\audio|audio_interface|u1|mI2C_CLK_DIV[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[9]~34_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(9));

-- Location: LCCOMB_X34_Y67_N20
\audio|audio_interface|u1|mI2C_CLK_DIV[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[10]~36_combout\ = (\audio|audio_interface|u1|mI2C_CLK_DIV\(10) & (\audio|audio_interface|u1|mI2C_CLK_DIV[9]~35\ $ (GND))) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(10) & 
-- (!\audio|audio_interface|u1|mI2C_CLK_DIV[9]~35\ & VCC))
-- \audio|audio_interface|u1|mI2C_CLK_DIV[10]~37\ = CARRY((\audio|audio_interface|u1|mI2C_CLK_DIV\(10) & !\audio|audio_interface|u1|mI2C_CLK_DIV[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mI2C_CLK_DIV\(10),
	datad => VCC,
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[9]~35\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[10]~36_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[10]~37\);

-- Location: FF_X34_Y67_N21
\audio|audio_interface|u1|mI2C_CLK_DIV[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[10]~36_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(10));

-- Location: LCCOMB_X34_Y67_N22
\audio|audio_interface|u1|mI2C_CLK_DIV[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[11]~38_combout\ = (\audio|audio_interface|u1|mI2C_CLK_DIV\(11) & (!\audio|audio_interface|u1|mI2C_CLK_DIV[10]~37\)) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(11) & ((\audio|audio_interface|u1|mI2C_CLK_DIV[10]~37\) 
-- # (GND)))
-- \audio|audio_interface|u1|mI2C_CLK_DIV[11]~39\ = CARRY((!\audio|audio_interface|u1|mI2C_CLK_DIV[10]~37\) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|mI2C_CLK_DIV\(11),
	datad => VCC,
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[10]~37\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[11]~38_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[11]~39\);

-- Location: FF_X34_Y67_N23
\audio|audio_interface|u1|mI2C_CLK_DIV[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[11]~38_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(11));

-- Location: LCCOMB_X34_Y67_N24
\audio|audio_interface|u1|mI2C_CLK_DIV[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[12]~40_combout\ = (\audio|audio_interface|u1|mI2C_CLK_DIV\(12) & (\audio|audio_interface|u1|mI2C_CLK_DIV[11]~39\ $ (GND))) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(12) & 
-- (!\audio|audio_interface|u1|mI2C_CLK_DIV[11]~39\ & VCC))
-- \audio|audio_interface|u1|mI2C_CLK_DIV[12]~41\ = CARRY((\audio|audio_interface|u1|mI2C_CLK_DIV\(12) & !\audio|audio_interface|u1|mI2C_CLK_DIV[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mI2C_CLK_DIV\(12),
	datad => VCC,
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[11]~39\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[12]~40_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[12]~41\);

-- Location: FF_X34_Y67_N25
\audio|audio_interface|u1|mI2C_CLK_DIV[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[12]~40_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(12));

-- Location: LCCOMB_X34_Y67_N26
\audio|audio_interface|u1|mI2C_CLK_DIV[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[13]~42_combout\ = (\audio|audio_interface|u1|mI2C_CLK_DIV\(13) & (!\audio|audio_interface|u1|mI2C_CLK_DIV[12]~41\)) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(13) & ((\audio|audio_interface|u1|mI2C_CLK_DIV[12]~41\) 
-- # (GND)))
-- \audio|audio_interface|u1|mI2C_CLK_DIV[13]~43\ = CARRY((!\audio|audio_interface|u1|mI2C_CLK_DIV[12]~41\) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|mI2C_CLK_DIV\(13),
	datad => VCC,
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[12]~41\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[13]~42_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[13]~43\);

-- Location: FF_X34_Y67_N27
\audio|audio_interface|u1|mI2C_CLK_DIV[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[13]~42_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(13));

-- Location: LCCOMB_X34_Y67_N28
\audio|audio_interface|u1|mI2C_CLK_DIV[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[14]~44_combout\ = (\audio|audio_interface|u1|mI2C_CLK_DIV\(14) & (\audio|audio_interface|u1|mI2C_CLK_DIV[13]~43\ $ (GND))) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(14) & 
-- (!\audio|audio_interface|u1|mI2C_CLK_DIV[13]~43\ & VCC))
-- \audio|audio_interface|u1|mI2C_CLK_DIV[14]~45\ = CARRY((\audio|audio_interface|u1|mI2C_CLK_DIV\(14) & !\audio|audio_interface|u1|mI2C_CLK_DIV[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mI2C_CLK_DIV\(14),
	datad => VCC,
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[13]~43\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[14]~44_combout\,
	cout => \audio|audio_interface|u1|mI2C_CLK_DIV[14]~45\);

-- Location: FF_X34_Y67_N29
\audio|audio_interface|u1|mI2C_CLK_DIV[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[14]~44_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(14));

-- Location: LCCOMB_X34_Y67_N30
\audio|audio_interface|u1|mI2C_CLK_DIV[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CLK_DIV[15]~46_combout\ = \audio|audio_interface|u1|mI2C_CLK_DIV\(15) $ (\audio|audio_interface|u1|mI2C_CLK_DIV[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|mI2C_CLK_DIV\(15),
	cin => \audio|audio_interface|u1|mI2C_CLK_DIV[14]~45\,
	combout => \audio|audio_interface|u1|mI2C_CLK_DIV[15]~46_combout\);

-- Location: FF_X34_Y67_N31
\audio|audio_interface|u1|mI2C_CLK_DIV[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CLK_DIV[15]~46_combout\,
	clrn => \SW[1]~input_o\,
	sclr => \audio|audio_interface|u1|ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CLK_DIV\(15));

-- Location: LCCOMB_X33_Y67_N28
\audio|audio_interface|u1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LessThan0~0_combout\ = (!\audio|audio_interface|u1|mI2C_CLK_DIV\(13) & (!\audio|audio_interface|u1|mI2C_CLK_DIV\(14) & (!\audio|audio_interface|u1|mI2C_CLK_DIV\(15) & !\audio|audio_interface|u1|mI2C_CLK_DIV\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|mI2C_CLK_DIV\(13),
	datab => \audio|audio_interface|u1|mI2C_CLK_DIV\(14),
	datac => \audio|audio_interface|u1|mI2C_CLK_DIV\(15),
	datad => \audio|audio_interface|u1|mI2C_CLK_DIV\(12),
	combout => \audio|audio_interface|u1|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y67_N30
\audio|audio_interface|u1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LessThan0~3_combout\ = (!\audio|audio_interface|u1|mI2C_CLK_DIV\(10) & !\audio|audio_interface|u1|mI2C_CLK_DIV\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|audio_interface|u1|mI2C_CLK_DIV\(10),
	datad => \audio|audio_interface|u1|mI2C_CLK_DIV\(9),
	combout => \audio|audio_interface|u1|LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y67_N24
\audio|audio_interface|u1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LessThan0~4_combout\ = (\audio|audio_interface|u1|LessThan0~0_combout\ & (((\audio|audio_interface|u1|LessThan0~2_combout\ & \audio|audio_interface|u1|LessThan0~3_combout\)) # (!\audio|audio_interface|u1|mI2C_CLK_DIV\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LessThan0~2_combout\,
	datab => \audio|audio_interface|u1|LessThan0~0_combout\,
	datac => \audio|audio_interface|u1|LessThan0~3_combout\,
	datad => \audio|audio_interface|u1|mI2C_CLK_DIV\(11),
	combout => \audio|audio_interface|u1|LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y67_N24
\audio|audio_interface|u1|mI2C_CTRL_CLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CTRL_CLK~0_combout\ = \audio|audio_interface|u1|mI2C_CTRL_CLK~q\ $ (!\audio|audio_interface|u1|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mI2C_CTRL_CLK~q\,
	datad => \audio|audio_interface|u1|LessThan0~4_combout\,
	combout => \audio|audio_interface|u1|mI2C_CTRL_CLK~0_combout\);

-- Location: LCCOMB_X32_Y67_N28
\audio|audio_interface|u1|mI2C_CTRL_CLK~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_CTRL_CLK~feeder_combout\ = \audio|audio_interface|u1|mI2C_CTRL_CLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|audio_interface|u1|mI2C_CTRL_CLK~0_combout\,
	combout => \audio|audio_interface|u1|mI2C_CTRL_CLK~feeder_combout\);

-- Location: FF_X32_Y67_N29
\audio|audio_interface|u1|mI2C_CTRL_CLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_CTRL_CLK~feeder_combout\,
	clrn => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_CTRL_CLK~q\);

-- Location: CLKCTRL_G10
\audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y67_N0
\audio|audio_interface|u1|u1|SD_COUNTER[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SD_COUNTER[0]~6_combout\ = !\audio|audio_interface|u1|u1|SD_COUNTER\(0)
-- \audio|audio_interface|u1|u1|SD_COUNTER[0]~7\ = CARRY(!\audio|audio_interface|u1|u1|SD_COUNTER\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	combout => \audio|audio_interface|u1|u1|SD_COUNTER[0]~6_combout\,
	cout => \audio|audio_interface|u1|u1|SD_COUNTER[0]~7\);

-- Location: IOIBUF_X18_Y73_N22
\audio|audio_interface|I2C_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2C_SDAT,
	o => \audio|audio_interface|I2C_SDAT~input_o\);

-- Location: LCCOMB_X30_Y67_N4
\audio|audio_interface|u1|u1|SD_COUNTER[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SD_COUNTER[2]~12_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(2) & (\audio|audio_interface|u1|u1|SD_COUNTER[1]~11\ & VCC)) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(2) & 
-- (!\audio|audio_interface|u1|u1|SD_COUNTER[1]~11\))
-- \audio|audio_interface|u1|u1|SD_COUNTER[2]~13\ = CARRY((!\audio|audio_interface|u1|u1|SD_COUNTER\(2) & !\audio|audio_interface|u1|u1|SD_COUNTER[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datad => VCC,
	cin => \audio|audio_interface|u1|u1|SD_COUNTER[1]~11\,
	combout => \audio|audio_interface|u1|u1|SD_COUNTER[2]~12_combout\,
	cout => \audio|audio_interface|u1|u1|SD_COUNTER[2]~13\);

-- Location: LCCOMB_X30_Y67_N6
\audio|audio_interface|u1|u1|SD_COUNTER[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SD_COUNTER[3]~14_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(3) & ((GND) # (!\audio|audio_interface|u1|u1|SD_COUNTER[2]~13\))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(3) & 
-- (\audio|audio_interface|u1|u1|SD_COUNTER[2]~13\ $ (GND)))
-- \audio|audio_interface|u1|u1|SD_COUNTER[3]~15\ = CARRY((\audio|audio_interface|u1|u1|SD_COUNTER\(3)) # (!\audio|audio_interface|u1|u1|SD_COUNTER[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datad => VCC,
	cin => \audio|audio_interface|u1|u1|SD_COUNTER[2]~13\,
	combout => \audio|audio_interface|u1|u1|SD_COUNTER[3]~14_combout\,
	cout => \audio|audio_interface|u1|u1|SD_COUNTER[3]~15\);

-- Location: LCCOMB_X30_Y67_N8
\audio|audio_interface|u1|u1|SD_COUNTER[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SD_COUNTER[4]~16_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(4) & (\audio|audio_interface|u1|u1|SD_COUNTER[3]~15\ & VCC)) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(4) & 
-- (!\audio|audio_interface|u1|u1|SD_COUNTER[3]~15\))
-- \audio|audio_interface|u1|u1|SD_COUNTER[4]~17\ = CARRY((!\audio|audio_interface|u1|u1|SD_COUNTER\(4) & !\audio|audio_interface|u1|u1|SD_COUNTER[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(4),
	datad => VCC,
	cin => \audio|audio_interface|u1|u1|SD_COUNTER[3]~15\,
	combout => \audio|audio_interface|u1|u1|SD_COUNTER[4]~16_combout\,
	cout => \audio|audio_interface|u1|u1|SD_COUNTER[4]~17\);

-- Location: LCCOMB_X30_Y67_N10
\audio|audio_interface|u1|u1|SD_COUNTER[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SD_COUNTER[5]~18_combout\ = \audio|audio_interface|u1|u1|SD_COUNTER[4]~17\ $ (\audio|audio_interface|u1|u1|SD_COUNTER\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(5),
	cin => \audio|audio_interface|u1|u1|SD_COUNTER[4]~17\,
	combout => \audio|audio_interface|u1|u1|SD_COUNTER[5]~18_combout\);

-- Location: FF_X30_Y67_N11
\audio|audio_interface|u1|u1|SD_COUNTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|SD_COUNTER[5]~18_combout\,
	asdata => VCC,
	clrn => \SW[1]~input_o\,
	sload => \audio|audio_interface|u1|ALT_INV_mI2C_GO~q\,
	ena => \audio|audio_interface|u1|u1|SD_COUNTER[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD_COUNTER\(5));

-- Location: LCCOMB_X30_Y67_N12
\audio|audio_interface|u1|u1|SD_COUNTER[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SD_COUNTER[2]~8_combout\ = (!\audio|audio_interface|u1|u1|SD_COUNTER\(3) & (\audio|audio_interface|u1|mI2C_GO~q\ & (!\audio|audio_interface|u1|u1|SD_COUNTER\(2) & !\audio|audio_interface|u1|u1|SD_COUNTER\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datab => \audio|audio_interface|u1|mI2C_GO~q\,
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(1),
	combout => \audio|audio_interface|u1|u1|SD_COUNTER[2]~8_combout\);

-- Location: LCCOMB_X30_Y67_N30
\audio|audio_interface|u1|u1|SD_COUNTER[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SD_COUNTER[2]~9_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(5)) # ((\audio|audio_interface|u1|u1|SD_COUNTER\(0)) # ((\audio|audio_interface|u1|u1|SD_COUNTER\(4)) # 
-- (!\audio|audio_interface|u1|u1|SD_COUNTER[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(5),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(4),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER[2]~8_combout\,
	combout => \audio|audio_interface|u1|u1|SD_COUNTER[2]~9_combout\);

-- Location: FF_X30_Y67_N7
\audio|audio_interface|u1|u1|SD_COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|SD_COUNTER[3]~14_combout\,
	asdata => VCC,
	clrn => \SW[1]~input_o\,
	sload => \audio|audio_interface|u1|ALT_INV_mI2C_GO~q\,
	ena => \audio|audio_interface|u1|u1|SD_COUNTER[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD_COUNTER\(3));

-- Location: FF_X30_Y67_N9
\audio|audio_interface|u1|u1|SD_COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|SD_COUNTER[4]~16_combout\,
	asdata => VCC,
	clrn => \SW[1]~input_o\,
	sload => \audio|audio_interface|u1|ALT_INV_mI2C_GO~q\,
	ena => \audio|audio_interface|u1|u1|SD_COUNTER[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD_COUNTER\(4));

-- Location: LCCOMB_X30_Y67_N18
\audio|audio_interface|u1|u1|ACK2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|ACK2~0_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(3) & (\audio|audio_interface|u1|u1|SD_COUNTER\(1) & \audio|audio_interface|u1|u1|SD_COUNTER\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(1),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(5),
	combout => \audio|audio_interface|u1|u1|ACK2~0_combout\);

-- Location: LCCOMB_X29_Y67_N20
\audio|audio_interface|u1|u1|ACK2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|ACK2~1_combout\ = (\audio|audio_interface|u1|u1|ACK2~0_combout\ & ((\audio|audio_interface|u1|u1|SD_COUNTER\(2) & (\audio|audio_interface|u1|u1|SD_COUNTER\(0) & \audio|audio_interface|u1|u1|SD_COUNTER\(4))) # 
-- (!\audio|audio_interface|u1|u1|SD_COUNTER\(2) & (!\audio|audio_interface|u1|u1|SD_COUNTER\(0) & !\audio|audio_interface|u1|u1|SD_COUNTER\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(4),
	datad => \audio|audio_interface|u1|u1|ACK2~0_combout\,
	combout => \audio|audio_interface|u1|u1|ACK2~1_combout\);

-- Location: LCCOMB_X29_Y67_N10
\audio|audio_interface|u1|u1|ACK2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|ACK2~2_combout\ = (\audio|audio_interface|u1|u1|ACK2~1_combout\ & (\audio|audio_interface|I2C_SDAT~input_o\ & (!\audio|audio_interface|u1|u1|SD_COUNTER\(4)))) # (!\audio|audio_interface|u1|u1|ACK2~1_combout\ & 
-- (((\audio|audio_interface|u1|u1|ACK2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|I2C_SDAT~input_o\,
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(4),
	datac => \audio|audio_interface|u1|u1|ACK2~q\,
	datad => \audio|audio_interface|u1|u1|ACK2~1_combout\,
	combout => \audio|audio_interface|u1|u1|ACK2~2_combout\);

-- Location: FF_X29_Y67_N11
\audio|audio_interface|u1|u1|ACK2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|ACK2~2_combout\,
	clrn => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|ACK2~q\);

-- Location: LCCOMB_X30_Y67_N20
\audio|audio_interface|u1|u1|ACK3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|ACK3~0_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(5) & (\audio|audio_interface|u1|u1|SD_COUNTER\(0) & (\audio|audio_interface|u1|u1|SD_COUNTER\(2) $ (!\audio|audio_interface|u1|u1|SD_COUNTER\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(5),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(1),
	combout => \audio|audio_interface|u1|u1|ACK3~0_combout\);

-- Location: LCCOMB_X30_Y67_N22
\audio|audio_interface|u1|u1|ACK3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|ACK3~1_combout\ = (\audio|audio_interface|u1|u1|ACK3~0_combout\ & ((\audio|audio_interface|u1|u1|SD_COUNTER\(3) & (\audio|audio_interface|u1|u1|SD_COUNTER\(2) & \audio|audio_interface|u1|u1|SD_COUNTER\(4))) # 
-- (!\audio|audio_interface|u1|u1|SD_COUNTER\(3) & (!\audio|audio_interface|u1|u1|SD_COUNTER\(2) & !\audio|audio_interface|u1|u1|SD_COUNTER\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(4),
	datad => \audio|audio_interface|u1|u1|ACK3~0_combout\,
	combout => \audio|audio_interface|u1|u1|ACK3~1_combout\);

-- Location: LCCOMB_X29_Y67_N4
\audio|audio_interface|u1|u1|ACK3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|ACK3~2_combout\ = (\audio|audio_interface|u1|u1|ACK3~1_combout\ & (\audio|audio_interface|I2C_SDAT~input_o\ & (!\audio|audio_interface|u1|u1|SD_COUNTER\(4)))) # (!\audio|audio_interface|u1|u1|ACK3~1_combout\ & 
-- (((\audio|audio_interface|u1|u1|ACK3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|I2C_SDAT~input_o\,
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(4),
	datac => \audio|audio_interface|u1|u1|ACK3~q\,
	datad => \audio|audio_interface|u1|u1|ACK3~1_combout\,
	combout => \audio|audio_interface|u1|u1|ACK3~2_combout\);

-- Location: FF_X29_Y67_N5
\audio|audio_interface|u1|u1|ACK3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|ACK3~2_combout\,
	clrn => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|ACK3~q\);

-- Location: LCCOMB_X29_Y67_N22
\audio|audio_interface|u1|u1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Selector4~0_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(0) & (!\audio|audio_interface|u1|u1|SD_COUNTER\(2) & (\audio|audio_interface|I2C_SDAT~input_o\))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(0) & 
-- (((\audio|audio_interface|u1|u1|ACK1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datab => \audio|audio_interface|I2C_SDAT~input_o\,
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	datad => \audio|audio_interface|u1|u1|ACK1~q\,
	combout => \audio|audio_interface|u1|u1|Selector4~0_combout\);

-- Location: LCCOMB_X30_Y67_N16
\audio|audio_interface|u1|u1|ACK1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|ACK1~0_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(5) & (\audio|audio_interface|u1|u1|SD_COUNTER\(1) & (\audio|audio_interface|u1|u1|SD_COUNTER\(2) $ (!\audio|audio_interface|u1|u1|SD_COUNTER\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(5),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(1),
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	combout => \audio|audio_interface|u1|u1|ACK1~0_combout\);

-- Location: LCCOMB_X29_Y67_N12
\audio|audio_interface|u1|u1|ACK1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|ACK1~1_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(4) & ((\audio|audio_interface|u1|u1|ACK1~0_combout\ & (\audio|audio_interface|u1|u1|Selector4~0_combout\)) # (!\audio|audio_interface|u1|u1|ACK1~0_combout\ & 
-- ((\audio|audio_interface|u1|u1|ACK1~q\))))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(4) & (((\audio|audio_interface|u1|u1|ACK1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|Selector4~0_combout\,
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(4),
	datac => \audio|audio_interface|u1|u1|ACK1~q\,
	datad => \audio|audio_interface|u1|u1|ACK1~0_combout\,
	combout => \audio|audio_interface|u1|u1|ACK1~1_combout\);

-- Location: FF_X29_Y67_N13
\audio|audio_interface|u1|u1|ACK1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|ACK1~1_combout\,
	clrn => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|ACK1~q\);

-- Location: LCCOMB_X29_Y67_N18
\audio|audio_interface|u1|mSetup_ST~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mSetup_ST~12_combout\ = (!\audio|audio_interface|u1|u1|ACK2~q\ & (!\audio|audio_interface|u1|u1|ACK3~q\ & !\audio|audio_interface|u1|u1|ACK1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|ACK2~q\,
	datac => \audio|audio_interface|u1|u1|ACK3~q\,
	datad => \audio|audio_interface|u1|u1|ACK1~q\,
	combout => \audio|audio_interface|u1|mSetup_ST~12_combout\);

-- Location: LCCOMB_X32_Y67_N20
\audio|audio_interface|u1|u1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Selector1~0_combout\ = (!\audio|audio_interface|u1|u1|SD_COUNTER\(4)) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(4),
	combout => \audio|audio_interface|u1|u1|Selector1~0_combout\);

-- Location: LCCOMB_X32_Y67_N2
\audio|audio_interface|u1|u1|END~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|END~0_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(0) & (\audio|audio_interface|u1|u1|SD_COUNTER\(2) & (\audio|audio_interface|u1|u1|SD_COUNTER\(1) & !\audio|audio_interface|u1|u1|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(1),
	datad => \audio|audio_interface|u1|u1|Selector1~0_combout\,
	combout => \audio|audio_interface|u1|u1|END~0_combout\);

-- Location: LCCOMB_X32_Y67_N22
\audio|audio_interface|u1|u1|END~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|END~1_combout\ = (\audio|audio_interface|u1|u1|END~0_combout\ & (\audio|audio_interface|u1|u1|SD_COUNTER\(5))) # (!\audio|audio_interface|u1|u1|END~0_combout\ & ((\audio|audio_interface|u1|u1|END~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(5),
	datac => \audio|audio_interface|u1|u1|END~q\,
	datad => \audio|audio_interface|u1|u1|END~0_combout\,
	combout => \audio|audio_interface|u1|u1|END~1_combout\);

-- Location: FF_X32_Y67_N23
\audio|audio_interface|u1|u1|END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|END~1_combout\,
	clrn => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|END~q\);

-- Location: LCCOMB_X29_Y67_N28
\audio|audio_interface|u1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|Selector1~0_combout\ = (!\audio|audio_interface|u1|mSetup_ST.0010~q\ & ((\audio|audio_interface|u1|mSetup_ST~12_combout\) # ((\audio|audio_interface|u1|u1|END~q\) # (!\audio|audio_interface|u1|mSetup_ST.0001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|mSetup_ST.0010~q\,
	datab => \audio|audio_interface|u1|mSetup_ST~12_combout\,
	datac => \audio|audio_interface|u1|mSetup_ST.0001~q\,
	datad => \audio|audio_interface|u1|u1|END~q\,
	combout => \audio|audio_interface|u1|Selector1~0_combout\);

-- Location: LCCOMB_X29_Y67_N6
\audio|audio_interface|u1|LUT_INDEX[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LUT_INDEX[0]~5_combout\ = \audio|audio_interface|u1|LUT_INDEX\(0) $ (((\audio|audio_interface|u1|mSetup_ST.0010~q\ & \audio|audio_interface|u1|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|mSetup_ST.0010~q\,
	datab => \audio|audio_interface|u1|LessThan1~1_combout\,
	datac => \audio|audio_interface|u1|LUT_INDEX\(0),
	combout => \audio|audio_interface|u1|LUT_INDEX[0]~5_combout\);

-- Location: FF_X29_Y67_N7
\audio|audio_interface|u1|LUT_INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|LUT_INDEX[0]~5_combout\,
	clrn => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|LUT_INDEX\(0));

-- Location: LCCOMB_X28_Y67_N14
\audio|audio_interface|u1|LUT_INDEX[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LUT_INDEX[1]~6_combout\ = (\audio|audio_interface|u1|LUT_INDEX\(0) & (\audio|audio_interface|u1|LUT_INDEX\(1) $ (VCC))) # (!\audio|audio_interface|u1|LUT_INDEX\(0) & (\audio|audio_interface|u1|LUT_INDEX\(1) & VCC))
-- \audio|audio_interface|u1|LUT_INDEX[1]~7\ = CARRY((\audio|audio_interface|u1|LUT_INDEX\(0) & \audio|audio_interface|u1|LUT_INDEX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(0),
	datab => \audio|audio_interface|u1|LUT_INDEX\(1),
	datad => VCC,
	combout => \audio|audio_interface|u1|LUT_INDEX[1]~6_combout\,
	cout => \audio|audio_interface|u1|LUT_INDEX[1]~7\);

-- Location: LCCOMB_X28_Y67_N4
\audio|audio_interface|u1|LUT_INDEX[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LUT_INDEX[5]~8_combout\ = (\audio|audio_interface|u1|mSetup_ST.0010~q\ & \audio|audio_interface|u1|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mSetup_ST.0010~q\,
	datad => \audio|audio_interface|u1|LessThan1~1_combout\,
	combout => \audio|audio_interface|u1|LUT_INDEX[5]~8_combout\);

-- Location: FF_X28_Y67_N15
\audio|audio_interface|u1|LUT_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|LUT_INDEX[1]~6_combout\,
	clrn => \SW[1]~input_o\,
	ena => \audio|audio_interface|u1|LUT_INDEX[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|LUT_INDEX\(1));

-- Location: LCCOMB_X28_Y67_N16
\audio|audio_interface|u1|LUT_INDEX[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LUT_INDEX[2]~9_combout\ = (\audio|audio_interface|u1|LUT_INDEX\(2) & (!\audio|audio_interface|u1|LUT_INDEX[1]~7\)) # (!\audio|audio_interface|u1|LUT_INDEX\(2) & ((\audio|audio_interface|u1|LUT_INDEX[1]~7\) # (GND)))
-- \audio|audio_interface|u1|LUT_INDEX[2]~10\ = CARRY((!\audio|audio_interface|u1|LUT_INDEX[1]~7\) # (!\audio|audio_interface|u1|LUT_INDEX\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|LUT_INDEX\(2),
	datad => VCC,
	cin => \audio|audio_interface|u1|LUT_INDEX[1]~7\,
	combout => \audio|audio_interface|u1|LUT_INDEX[2]~9_combout\,
	cout => \audio|audio_interface|u1|LUT_INDEX[2]~10\);

-- Location: FF_X28_Y67_N17
\audio|audio_interface|u1|LUT_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|LUT_INDEX[2]~9_combout\,
	clrn => \SW[1]~input_o\,
	ena => \audio|audio_interface|u1|LUT_INDEX[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|LUT_INDEX\(2));

-- Location: LCCOMB_X28_Y67_N18
\audio|audio_interface|u1|LUT_INDEX[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LUT_INDEX[3]~11_combout\ = (\audio|audio_interface|u1|LUT_INDEX\(3) & (\audio|audio_interface|u1|LUT_INDEX[2]~10\ $ (GND))) # (!\audio|audio_interface|u1|LUT_INDEX\(3) & (!\audio|audio_interface|u1|LUT_INDEX[2]~10\ & VCC))
-- \audio|audio_interface|u1|LUT_INDEX[3]~12\ = CARRY((\audio|audio_interface|u1|LUT_INDEX\(3) & !\audio|audio_interface|u1|LUT_INDEX[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|LUT_INDEX\(3),
	datad => VCC,
	cin => \audio|audio_interface|u1|LUT_INDEX[2]~10\,
	combout => \audio|audio_interface|u1|LUT_INDEX[3]~11_combout\,
	cout => \audio|audio_interface|u1|LUT_INDEX[3]~12\);

-- Location: FF_X28_Y67_N19
\audio|audio_interface|u1|LUT_INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|LUT_INDEX[3]~11_combout\,
	clrn => \SW[1]~input_o\,
	ena => \audio|audio_interface|u1|LUT_INDEX[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|LUT_INDEX\(3));

-- Location: LCCOMB_X28_Y67_N20
\audio|audio_interface|u1|LUT_INDEX[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LUT_INDEX[4]~13_combout\ = (\audio|audio_interface|u1|LUT_INDEX\(4) & (!\audio|audio_interface|u1|LUT_INDEX[3]~12\)) # (!\audio|audio_interface|u1|LUT_INDEX\(4) & ((\audio|audio_interface|u1|LUT_INDEX[3]~12\) # (GND)))
-- \audio|audio_interface|u1|LUT_INDEX[4]~14\ = CARRY((!\audio|audio_interface|u1|LUT_INDEX[3]~12\) # (!\audio|audio_interface|u1|LUT_INDEX\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|LUT_INDEX\(4),
	datad => VCC,
	cin => \audio|audio_interface|u1|LUT_INDEX[3]~12\,
	combout => \audio|audio_interface|u1|LUT_INDEX[4]~13_combout\,
	cout => \audio|audio_interface|u1|LUT_INDEX[4]~14\);

-- Location: FF_X28_Y67_N21
\audio|audio_interface|u1|LUT_INDEX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|LUT_INDEX[4]~13_combout\,
	clrn => \SW[1]~input_o\,
	ena => \audio|audio_interface|u1|LUT_INDEX[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|LUT_INDEX\(4));

-- Location: LCCOMB_X28_Y67_N22
\audio|audio_interface|u1|LUT_INDEX[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LUT_INDEX[5]~15_combout\ = \audio|audio_interface|u1|LUT_INDEX\(5) $ (!\audio|audio_interface|u1|LUT_INDEX[4]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(5),
	cin => \audio|audio_interface|u1|LUT_INDEX[4]~14\,
	combout => \audio|audio_interface|u1|LUT_INDEX[5]~15_combout\);

-- Location: FF_X28_Y67_N23
\audio|audio_interface|u1|LUT_INDEX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|LUT_INDEX[5]~15_combout\,
	clrn => \SW[1]~input_o\,
	ena => \audio|audio_interface|u1|LUT_INDEX[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|LUT_INDEX\(5));

-- Location: LCCOMB_X28_Y67_N8
\audio|audio_interface|u1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LessThan1~0_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(2) & ((!\audio|audio_interface|u1|LUT_INDEX\(0)) # (!\audio|audio_interface|u1|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|LUT_INDEX\(2),
	datac => \audio|audio_interface|u1|LUT_INDEX\(1),
	datad => \audio|audio_interface|u1|LUT_INDEX\(0),
	combout => \audio|audio_interface|u1|LessThan1~0_combout\);

-- Location: LCCOMB_X28_Y67_N6
\audio|audio_interface|u1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LessThan1~1_combout\ = (((!\audio|audio_interface|u1|LUT_INDEX\(3) & \audio|audio_interface|u1|LessThan1~0_combout\)) # (!\audio|audio_interface|u1|LUT_INDEX\(4))) # (!\audio|audio_interface|u1|LUT_INDEX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(5),
	datab => \audio|audio_interface|u1|LUT_INDEX\(3),
	datac => \audio|audio_interface|u1|LessThan1~0_combout\,
	datad => \audio|audio_interface|u1|LUT_INDEX\(4),
	combout => \audio|audio_interface|u1|LessThan1~1_combout\);

-- Location: FF_X29_Y67_N29
\audio|audio_interface|u1|mSetup_ST.0000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|Selector1~0_combout\,
	clrn => \SW[1]~input_o\,
	ena => \audio|audio_interface|u1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mSetup_ST.0000~q\);

-- Location: LCCOMB_X29_Y67_N8
\audio|audio_interface|u1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|Selector2~0_combout\ = ((\audio|audio_interface|u1|mSetup_ST.0001~q\ & \audio|audio_interface|u1|u1|END~q\)) # (!\audio|audio_interface|u1|mSetup_ST.0000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mSetup_ST.0000~q\,
	datac => \audio|audio_interface|u1|mSetup_ST.0001~q\,
	datad => \audio|audio_interface|u1|u1|END~q\,
	combout => \audio|audio_interface|u1|Selector2~0_combout\);

-- Location: FF_X29_Y67_N9
\audio|audio_interface|u1|mSetup_ST.0001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|Selector2~0_combout\,
	clrn => \SW[1]~input_o\,
	ena => \audio|audio_interface|u1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mSetup_ST.0001~q\);

-- Location: LCCOMB_X29_Y67_N26
\audio|audio_interface|u1|mSetup_ST~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mSetup_ST~13_combout\ = (\audio|audio_interface|u1|mSetup_ST~12_combout\ & (\audio|audio_interface|u1|mSetup_ST.0001~q\ & !\audio|audio_interface|u1|u1|END~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mSetup_ST~12_combout\,
	datac => \audio|audio_interface|u1|mSetup_ST.0001~q\,
	datad => \audio|audio_interface|u1|u1|END~q\,
	combout => \audio|audio_interface|u1|mSetup_ST~13_combout\);

-- Location: FF_X29_Y67_N27
\audio|audio_interface|u1|mSetup_ST.0010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|mSetup_ST~13_combout\,
	clrn => \SW[1]~input_o\,
	ena => \audio|audio_interface|u1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mSetup_ST.0010~q\);

-- Location: LCCOMB_X29_Y67_N24
\audio|audio_interface|u1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|Selector0~0_combout\ = (\audio|audio_interface|u1|mSetup_ST.0001~q\ & (((\audio|audio_interface|u1|mI2C_GO~q\ & \audio|audio_interface|u1|u1|END~q\)))) # (!\audio|audio_interface|u1|mSetup_ST.0001~q\ & 
-- (((\audio|audio_interface|u1|mI2C_GO~q\)) # (!\audio|audio_interface|u1|mSetup_ST.0010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|mSetup_ST.0010~q\,
	datab => \audio|audio_interface|u1|mSetup_ST.0001~q\,
	datac => \audio|audio_interface|u1|mI2C_GO~q\,
	datad => \audio|audio_interface|u1|u1|END~q\,
	combout => \audio|audio_interface|u1|Selector0~0_combout\);

-- Location: FF_X29_Y67_N25
\audio|audio_interface|u1|mI2C_GO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|Selector0~0_combout\,
	clrn => \SW[1]~input_o\,
	ena => \audio|audio_interface|u1|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_GO~q\);

-- Location: FF_X30_Y67_N1
\audio|audio_interface|u1|u1|SD_COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|SD_COUNTER[0]~6_combout\,
	asdata => VCC,
	clrn => \SW[1]~input_o\,
	sload => \audio|audio_interface|u1|ALT_INV_mI2C_GO~q\,
	ena => \audio|audio_interface|u1|u1|SD_COUNTER[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD_COUNTER\(0));

-- Location: LCCOMB_X30_Y67_N2
\audio|audio_interface|u1|u1|SD_COUNTER[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SD_COUNTER[1]~10_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(1) & ((GND) # (!\audio|audio_interface|u1|u1|SD_COUNTER[0]~7\))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(1) & 
-- (\audio|audio_interface|u1|u1|SD_COUNTER[0]~7\ $ (GND)))
-- \audio|audio_interface|u1|u1|SD_COUNTER[1]~11\ = CARRY((\audio|audio_interface|u1|u1|SD_COUNTER\(1)) # (!\audio|audio_interface|u1|u1|SD_COUNTER[0]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(1),
	datad => VCC,
	cin => \audio|audio_interface|u1|u1|SD_COUNTER[0]~7\,
	combout => \audio|audio_interface|u1|u1|SD_COUNTER[1]~10_combout\,
	cout => \audio|audio_interface|u1|u1|SD_COUNTER[1]~11\);

-- Location: FF_X30_Y67_N3
\audio|audio_interface|u1|u1|SD_COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|SD_COUNTER[1]~10_combout\,
	asdata => VCC,
	clrn => \SW[1]~input_o\,
	sload => \audio|audio_interface|u1|ALT_INV_mI2C_GO~q\,
	ena => \audio|audio_interface|u1|u1|SD_COUNTER[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD_COUNTER\(1));

-- Location: FF_X30_Y67_N5
\audio|audio_interface|u1|u1|SD_COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|SD_COUNTER[2]~12_combout\,
	asdata => VCC,
	clrn => \SW[1]~input_o\,
	sload => \audio|audio_interface|u1|ALT_INV_mI2C_GO~q\,
	ena => \audio|audio_interface|u1|u1|SD_COUNTER[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD_COUNTER\(2));

-- Location: LCCOMB_X32_Y67_N30
\audio|audio_interface|u1|u1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~0_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(2) & (\audio|audio_interface|u1|u1|SD_COUNTER\(1) & (\audio|audio_interface|u1|u1|SD_COUNTER\(3) & \audio|audio_interface|u1|u1|SD_COUNTER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(1),
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	combout => \audio|audio_interface|u1|u1|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y67_N14
\audio|audio_interface|u1|u1|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~10_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(1) & ((\audio|audio_interface|u1|u1|SD_COUNTER\(2) & (\audio|audio_interface|u1|u1|SD_COUNTER\(0) & !\audio|audio_interface|u1|u1|SD_COUNTER\(3))) # 
-- (!\audio|audio_interface|u1|u1|SD_COUNTER\(2) & ((\audio|audio_interface|u1|u1|SD_COUNTER\(3)))))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(1) & (\audio|audio_interface|u1|u1|SD_COUNTER\(0) & ((\audio|audio_interface|u1|u1|SD_COUNTER\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(1),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	combout => \audio|audio_interface|u1|u1|Mux0~10_combout\);

-- Location: LCCOMB_X30_Y67_N28
\audio|audio_interface|u1|u1|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~9_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(0) & ((\audio|audio_interface|u1|u1|SD_COUNTER\(2) & ((!\audio|audio_interface|u1|u1|SD_COUNTER\(1)))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(2) & 
-- ((\audio|audio_interface|u1|u1|SD_COUNTER\(1)) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(3)))))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(0) & ((\audio|audio_interface|u1|u1|SD_COUNTER\(3) & ((\audio|audio_interface|u1|u1|SD_COUNTER\(2)) # 
-- (!\audio|audio_interface|u1|u1|SD_COUNTER\(1)))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(3) & ((\audio|audio_interface|u1|u1|SD_COUNTER\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(1),
	combout => \audio|audio_interface|u1|u1|Mux0~9_combout\);

-- Location: LCCOMB_X28_Y67_N24
\audio|audio_interface|u1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LessThan2~0_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(5) & (!\audio|audio_interface|u1|LUT_INDEX\(4) & ((\audio|audio_interface|u1|LessThan1~0_combout\) # (!\audio|audio_interface|u1|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(5),
	datab => \audio|audio_interface|u1|LUT_INDEX\(4),
	datac => \audio|audio_interface|u1|LessThan1~0_combout\,
	datad => \audio|audio_interface|u1|LUT_INDEX\(3),
	combout => \audio|audio_interface|u1|LessThan2~0_combout\);

-- Location: LCCOMB_X28_Y67_N26
\audio|audio_interface|u1|mI2C_DATA[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\ = (!\audio|audio_interface|u1|mSetup_ST.0000~q\ & (\SW[1]~input_o\ & \audio|audio_interface|u1|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|mSetup_ST.0000~q\,
	datac => \SW[1]~input_o\,
	datad => \audio|audio_interface|u1|LessThan1~1_combout\,
	combout => \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\);

-- Location: FF_X28_Y67_N25
\audio|audio_interface|u1|mI2C_DATA[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|LessThan2~0_combout\,
	ena => \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_DATA\(18));

-- Location: LCCOMB_X30_Y67_N26
\audio|audio_interface|u1|u1|SD[22]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SD[22]~0_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(3) & (\audio|audio_interface|u1|u1|SD_COUNTER\(2) & (\audio|audio_interface|u1|u1|SD_COUNTER\(4) & \audio|audio_interface|u1|u1|SD_COUNTER\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(4),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(1),
	combout => \audio|audio_interface|u1|u1|SD[22]~0_combout\);

-- Location: LCCOMB_X31_Y67_N22
\audio|audio_interface|u1|u1|SD[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SD[22]~1_combout\ = (!\audio|audio_interface|u1|u1|SD_COUNTER\(0) & (\SW[1]~input_o\ & (\audio|audio_interface|u1|u1|SD[22]~0_combout\ & \audio|audio_interface|u1|u1|SD_COUNTER\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	datab => \SW[1]~input_o\,
	datac => \audio|audio_interface|u1|u1|SD[22]~0_combout\,
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(5),
	combout => \audio|audio_interface|u1|u1|SD[22]~1_combout\);

-- Location: FF_X31_Y67_N1
\audio|audio_interface|u1|u1|SD[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	asdata => \audio|audio_interface|u1|mI2C_DATA\(18),
	sload => VCC,
	ena => \audio|audio_interface|u1|u1|SD[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD\(18));

-- Location: LCCOMB_X27_Y67_N30
\audio|audio_interface|u1|LUT_DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LUT_DATA~0_combout\ = (\audio|audio_interface|u1|LUT_INDEX\(3) & (!\audio|audio_interface|u1|LUT_INDEX\(2) & (\audio|audio_interface|u1|LUT_INDEX\(0) $ (\audio|audio_interface|u1|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(0),
	datab => \audio|audio_interface|u1|LUT_INDEX\(3),
	datac => \audio|audio_interface|u1|LUT_INDEX\(1),
	datad => \audio|audio_interface|u1|LUT_INDEX\(2),
	combout => \audio|audio_interface|u1|LUT_DATA~0_combout\);

-- Location: LCCOMB_X28_Y67_N0
\audio|audio_interface|u1|LUT_DATA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|LUT_DATA~1_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(4) & (!\audio|audio_interface|u1|LUT_INDEX\(5) & \audio|audio_interface|u1|LUT_DATA~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|LUT_INDEX\(4),
	datac => \audio|audio_interface|u1|LUT_INDEX\(5),
	datad => \audio|audio_interface|u1|LUT_DATA~0_combout\,
	combout => \audio|audio_interface|u1|LUT_DATA~1_combout\);

-- Location: FF_X28_Y67_N1
\audio|audio_interface|u1|mI2C_DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|LUT_DATA~1_combout\,
	ena => \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_DATA\(12));

-- Location: FF_X31_Y67_N17
\audio|audio_interface|u1|u1|SD[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	asdata => \audio|audio_interface|u1|mI2C_DATA\(12),
	sload => VCC,
	ena => \audio|audio_interface|u1|u1|SD[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD\(12));

-- Location: LCCOMB_X31_Y67_N16
\audio|audio_interface|u1|u1|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~11_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(3) & ((\audio|audio_interface|u1|u1|SDO~q\))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(3) & (\audio|audio_interface|u1|u1|SD\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datac => \audio|audio_interface|u1|u1|SD\(12),
	datad => \audio|audio_interface|u1|u1|SDO~q\,
	combout => \audio|audio_interface|u1|u1|Mux0~11_combout\);

-- Location: LCCOMB_X28_Y67_N30
\audio|audio_interface|u1|mI2C_DATA[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|mI2C_DATA[22]~1_combout\ = !\audio|audio_interface|u1|LessThan2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio|audio_interface|u1|LessThan2~0_combout\,
	combout => \audio|audio_interface|u1|mI2C_DATA[22]~1_combout\);

-- Location: FF_X28_Y67_N31
\audio|audio_interface|u1|mI2C_DATA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|mI2C_DATA[22]~1_combout\,
	ena => \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_DATA\(22));

-- Location: FF_X31_Y67_N3
\audio|audio_interface|u1|u1|SD[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	asdata => \audio|audio_interface|u1|mI2C_DATA\(22),
	sload => VCC,
	ena => \audio|audio_interface|u1|u1|SD[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD\(22));

-- Location: LCCOMB_X31_Y67_N2
\audio|audio_interface|u1|u1|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~12_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(2) & (((!\audio|audio_interface|u1|u1|Mux0~10_combout\)) # (!\audio|audio_interface|u1|u1|Mux0~11_combout\))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(2) & 
-- ((\audio|audio_interface|u1|u1|Mux0~10_combout\ & ((\audio|audio_interface|u1|u1|SD\(22)))) # (!\audio|audio_interface|u1|u1|Mux0~10_combout\ & (\audio|audio_interface|u1|u1|Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datab => \audio|audio_interface|u1|u1|Mux0~11_combout\,
	datac => \audio|audio_interface|u1|u1|SD\(22),
	datad => \audio|audio_interface|u1|u1|Mux0~10_combout\,
	combout => \audio|audio_interface|u1|u1|Mux0~12_combout\);

-- Location: LCCOMB_X31_Y67_N0
\audio|audio_interface|u1|u1|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~13_combout\ = (\audio|audio_interface|u1|u1|Mux0~10_combout\ & ((\audio|audio_interface|u1|u1|Mux0~9_combout\ & ((\audio|audio_interface|u1|u1|Mux0~12_combout\))) # (!\audio|audio_interface|u1|u1|Mux0~9_combout\ & 
-- (\audio|audio_interface|u1|u1|SD\(18))))) # (!\audio|audio_interface|u1|u1|Mux0~10_combout\ & (!\audio|audio_interface|u1|u1|Mux0~9_combout\ & ((\audio|audio_interface|u1|u1|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|Mux0~10_combout\,
	datab => \audio|audio_interface|u1|u1|Mux0~9_combout\,
	datac => \audio|audio_interface|u1|u1|SD\(18),
	datad => \audio|audio_interface|u1|u1|Mux0~12_combout\,
	combout => \audio|audio_interface|u1|u1|Mux0~13_combout\);

-- Location: LCCOMB_X27_Y67_N12
\audio|audio_interface|u1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr3~0_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(3) & ((\audio|audio_interface|u1|LUT_INDEX\(2) & ((!\audio|audio_interface|u1|LUT_INDEX\(1)))) # (!\audio|audio_interface|u1|LUT_INDEX\(2) & 
-- (\audio|audio_interface|u1|LUT_INDEX\(0) & \audio|audio_interface|u1|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(0),
	datab => \audio|audio_interface|u1|LUT_INDEX\(2),
	datac => \audio|audio_interface|u1|LUT_INDEX\(1),
	datad => \audio|audio_interface|u1|LUT_INDEX\(3),
	combout => \audio|audio_interface|u1|WideOr3~0_combout\);

-- Location: LCCOMB_X27_Y67_N22
\audio|audio_interface|u1|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr3~1_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(5) & (!\audio|audio_interface|u1|LUT_INDEX\(4) & \audio|audio_interface|u1|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|LUT_INDEX\(5),
	datac => \audio|audio_interface|u1|LUT_INDEX\(4),
	datad => \audio|audio_interface|u1|WideOr3~0_combout\,
	combout => \audio|audio_interface|u1|WideOr3~1_combout\);

-- Location: FF_X27_Y67_N23
\audio|audio_interface|u1|mI2C_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|WideOr3~1_combout\,
	ena => \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_DATA\(5));

-- Location: FF_X31_Y67_N25
\audio|audio_interface|u1|u1|SD[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	asdata => \audio|audio_interface|u1|mI2C_DATA\(5),
	sload => VCC,
	ena => \audio|audio_interface|u1|u1|SD[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD\(5));

-- Location: LCCOMB_X31_Y67_N24
\audio|audio_interface|u1|u1|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~7_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(3) & (((\audio|audio_interface|u1|u1|SD\(5))))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(3) & (!\audio|audio_interface|u1|u1|SDO~q\ & 
-- ((!\audio|audio_interface|u1|u1|SD_COUNTER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SDO~q\,
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datac => \audio|audio_interface|u1|u1|SD\(5),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	combout => \audio|audio_interface|u1|u1|Mux0~7_combout\);

-- Location: LCCOMB_X27_Y67_N4
\audio|audio_interface|u1|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr6~0_combout\ = (\audio|audio_interface|u1|LUT_INDEX\(2) & (!\audio|audio_interface|u1|LUT_INDEX\(0) & ((!\audio|audio_interface|u1|LUT_INDEX\(3))))) # (!\audio|audio_interface|u1|LUT_INDEX\(2) & 
-- ((\audio|audio_interface|u1|LUT_INDEX\(1) & ((!\audio|audio_interface|u1|LUT_INDEX\(3)))) # (!\audio|audio_interface|u1|LUT_INDEX\(1) & (\audio|audio_interface|u1|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(0),
	datab => \audio|audio_interface|u1|LUT_INDEX\(2),
	datac => \audio|audio_interface|u1|LUT_INDEX\(1),
	datad => \audio|audio_interface|u1|LUT_INDEX\(3),
	combout => \audio|audio_interface|u1|WideOr6~0_combout\);

-- Location: LCCOMB_X27_Y67_N14
\audio|audio_interface|u1|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr6~1_combout\ = (\audio|audio_interface|u1|WideOr6~0_combout\ & (!\audio|audio_interface|u1|LUT_INDEX\(4) & !\audio|audio_interface|u1|LUT_INDEX\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|WideOr6~0_combout\,
	datac => \audio|audio_interface|u1|LUT_INDEX\(4),
	datad => \audio|audio_interface|u1|LUT_INDEX\(5),
	combout => \audio|audio_interface|u1|WideOr6~1_combout\);

-- Location: FF_X27_Y67_N15
\audio|audio_interface|u1|mI2C_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|WideOr6~1_combout\,
	ena => \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_DATA\(1));

-- Location: FF_X31_Y67_N9
\audio|audio_interface|u1|u1|SD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	asdata => \audio|audio_interface|u1|mI2C_DATA\(1),
	sload => VCC,
	ena => \audio|audio_interface|u1|u1|SD[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD\(1));

-- Location: LCCOMB_X27_Y67_N2
\audio|audio_interface|u1|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|Decoder0~0_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(5) & (!\audio|audio_interface|u1|LUT_INDEX\(3) & (!\audio|audio_interface|u1|LUT_INDEX\(4) & \audio|audio_interface|u1|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(5),
	datab => \audio|audio_interface|u1|LUT_INDEX\(3),
	datac => \audio|audio_interface|u1|LUT_INDEX\(4),
	datad => \audio|audio_interface|u1|LUT_INDEX\(2),
	combout => \audio|audio_interface|u1|Decoder0~0_combout\);

-- Location: LCCOMB_X28_Y67_N10
\audio|audio_interface|u1|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|Decoder0~1_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(0) & (\audio|audio_interface|u1|LUT_INDEX\(1) & \audio|audio_interface|u1|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(0),
	datac => \audio|audio_interface|u1|LUT_INDEX\(1),
	datad => \audio|audio_interface|u1|Decoder0~0_combout\,
	combout => \audio|audio_interface|u1|Decoder0~1_combout\);

-- Location: FF_X28_Y67_N11
\audio|audio_interface|u1|mI2C_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|Decoder0~1_combout\,
	ena => \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_DATA\(2));

-- Location: FF_X31_Y67_N7
\audio|audio_interface|u1|u1|SD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	asdata => \audio|audio_interface|u1|mI2C_DATA\(2),
	sload => VCC,
	ena => \audio|audio_interface|u1|u1|SD[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD\(2));

-- Location: LCCOMB_X27_Y67_N0
\audio|audio_interface|u1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr2~0_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(0) & ((\audio|audio_interface|u1|LUT_INDEX\(2) & ((!\audio|audio_interface|u1|LUT_INDEX\(3)))) # (!\audio|audio_interface|u1|LUT_INDEX\(2) & 
-- ((\audio|audio_interface|u1|LUT_INDEX\(1)) # (\audio|audio_interface|u1|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(0),
	datab => \audio|audio_interface|u1|LUT_INDEX\(2),
	datac => \audio|audio_interface|u1|LUT_INDEX\(1),
	datad => \audio|audio_interface|u1|LUT_INDEX\(3),
	combout => \audio|audio_interface|u1|WideOr2~0_combout\);

-- Location: LCCOMB_X27_Y67_N20
\audio|audio_interface|u1|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr2~1_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(5) & (!\audio|audio_interface|u1|LUT_INDEX\(4) & \audio|audio_interface|u1|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|LUT_INDEX\(5),
	datac => \audio|audio_interface|u1|LUT_INDEX\(4),
	datad => \audio|audio_interface|u1|WideOr2~0_combout\,
	combout => \audio|audio_interface|u1|WideOr2~1_combout\);

-- Location: FF_X27_Y67_N21
\audio|audio_interface|u1|mI2C_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|WideOr2~1_combout\,
	ena => \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_DATA\(9));

-- Location: LCCOMB_X31_Y67_N28
\audio|audio_interface|u1|u1|SD[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SD[9]~feeder_combout\ = \audio|audio_interface|u1|mI2C_DATA\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio|audio_interface|u1|mI2C_DATA\(9),
	combout => \audio|audio_interface|u1|u1|SD[9]~feeder_combout\);

-- Location: FF_X31_Y67_N29
\audio|audio_interface|u1|u1|SD[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|SD[9]~feeder_combout\,
	ena => \audio|audio_interface|u1|u1|SD[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD\(9));

-- Location: LCCOMB_X31_Y67_N6
\audio|audio_interface|u1|u1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~1_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(0) & ((\audio|audio_interface|u1|u1|SD_COUNTER\(3) & ((\audio|audio_interface|u1|u1|SD\(9)))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(3) & 
-- (\audio|audio_interface|u1|u1|SD\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datac => \audio|audio_interface|u1|u1|SD\(2),
	datad => \audio|audio_interface|u1|u1|SD\(9),
	combout => \audio|audio_interface|u1|u1|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y67_N8
\audio|audio_interface|u1|u1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~2_combout\ = (\audio|audio_interface|u1|u1|Mux0~1_combout\) # ((!\audio|audio_interface|u1|u1|SD_COUNTER\(0) & (!\audio|audio_interface|u1|u1|SD_COUNTER\(3) & \audio|audio_interface|u1|u1|SD\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datac => \audio|audio_interface|u1|u1|SD\(1),
	datad => \audio|audio_interface|u1|u1|Mux0~1_combout\,
	combout => \audio|audio_interface|u1|u1|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y67_N28
\audio|audio_interface|u1|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|Decoder0~2_combout\ = (\audio|audio_interface|u1|LUT_INDEX\(0) & (!\audio|audio_interface|u1|LUT_INDEX\(1) & \audio|audio_interface|u1|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(0),
	datac => \audio|audio_interface|u1|LUT_INDEX\(1),
	datad => \audio|audio_interface|u1|Decoder0~0_combout\,
	combout => \audio|audio_interface|u1|Decoder0~2_combout\);

-- Location: FF_X28_Y67_N29
\audio|audio_interface|u1|mI2C_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|Decoder0~2_combout\,
	ena => \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_DATA\(7));

-- Location: LCCOMB_X31_Y67_N26
\audio|audio_interface|u1|u1|SD[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SD[7]~feeder_combout\ = \audio|audio_interface|u1|mI2C_DATA\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio|audio_interface|u1|mI2C_DATA\(7),
	combout => \audio|audio_interface|u1|u1|SD[7]~feeder_combout\);

-- Location: FF_X31_Y67_N27
\audio|audio_interface|u1|u1|SD[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|SD[7]~feeder_combout\,
	ena => \audio|audio_interface|u1|u1|SD[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD\(7));

-- Location: LCCOMB_X27_Y67_N26
\audio|audio_interface|u1|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr7~0_combout\ = (\audio|audio_interface|u1|LUT_INDEX\(1) & (!\audio|audio_interface|u1|LUT_INDEX\(2) & (\audio|audio_interface|u1|LUT_INDEX\(0) $ (\audio|audio_interface|u1|LUT_INDEX\(3))))) # 
-- (!\audio|audio_interface|u1|LUT_INDEX\(1) & (!\audio|audio_interface|u1|LUT_INDEX\(0) & (\audio|audio_interface|u1|LUT_INDEX\(2) $ (\audio|audio_interface|u1|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(0),
	datab => \audio|audio_interface|u1|LUT_INDEX\(2),
	datac => \audio|audio_interface|u1|LUT_INDEX\(1),
	datad => \audio|audio_interface|u1|LUT_INDEX\(3),
	combout => \audio|audio_interface|u1|WideOr7~0_combout\);

-- Location: LCCOMB_X27_Y67_N28
\audio|audio_interface|u1|WideOr7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr7~1_combout\ = (\audio|audio_interface|u1|WideOr7~0_combout\ & (!\audio|audio_interface|u1|LUT_INDEX\(5) & !\audio|audio_interface|u1|LUT_INDEX\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|WideOr7~0_combout\,
	datab => \audio|audio_interface|u1|LUT_INDEX\(5),
	datac => \audio|audio_interface|u1|LUT_INDEX\(4),
	combout => \audio|audio_interface|u1|WideOr7~1_combout\);

-- Location: FF_X27_Y67_N29
\audio|audio_interface|u1|mI2C_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|WideOr7~1_combout\,
	ena => \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_DATA\(0));

-- Location: FF_X31_Y67_N5
\audio|audio_interface|u1|u1|SD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	asdata => \audio|audio_interface|u1|mI2C_DATA\(0),
	sload => VCC,
	ena => \audio|audio_interface|u1|u1|SD[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD\(0));

-- Location: LCCOMB_X31_Y67_N4
\audio|audio_interface|u1|u1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~3_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(3) & ((\audio|audio_interface|u1|u1|SD\(7)) # ((\audio|audio_interface|u1|u1|SD_COUNTER\(0))))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(3) & 
-- (((\audio|audio_interface|u1|u1|SD\(0)) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD\(7),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datac => \audio|audio_interface|u1|u1|SD\(0),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	combout => \audio|audio_interface|u1|u1|Mux0~3_combout\);

-- Location: LCCOMB_X27_Y67_N16
\audio|audio_interface|u1|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr4~0_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(3) & ((\audio|audio_interface|u1|LUT_INDEX\(2) & ((!\audio|audio_interface|u1|LUT_INDEX\(1)))) # (!\audio|audio_interface|u1|LUT_INDEX\(2) & 
-- ((\audio|audio_interface|u1|LUT_INDEX\(0)) # (\audio|audio_interface|u1|LUT_INDEX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(0),
	datab => \audio|audio_interface|u1|LUT_INDEX\(2),
	datac => \audio|audio_interface|u1|LUT_INDEX\(1),
	datad => \audio|audio_interface|u1|LUT_INDEX\(3),
	combout => \audio|audio_interface|u1|WideOr4~0_combout\);

-- Location: LCCOMB_X27_Y67_N6
\audio|audio_interface|u1|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr4~1_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(5) & (!\audio|audio_interface|u1|LUT_INDEX\(4) & \audio|audio_interface|u1|WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|LUT_INDEX\(5),
	datac => \audio|audio_interface|u1|LUT_INDEX\(4),
	datad => \audio|audio_interface|u1|WideOr4~0_combout\,
	combout => \audio|audio_interface|u1|WideOr4~1_combout\);

-- Location: FF_X27_Y67_N7
\audio|audio_interface|u1|mI2C_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|WideOr4~1_combout\,
	ena => \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_DATA\(4));

-- Location: LCCOMB_X31_Y67_N30
\audio|audio_interface|u1|u1|SD[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SD[4]~feeder_combout\ = \audio|audio_interface|u1|mI2C_DATA\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio|audio_interface|u1|mI2C_DATA\(4),
	combout => \audio|audio_interface|u1|u1|SD[4]~feeder_combout\);

-- Location: FF_X31_Y67_N31
\audio|audio_interface|u1|u1|SD[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|SD[4]~feeder_combout\,
	ena => \audio|audio_interface|u1|u1|SD[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD\(4));

-- Location: LCCOMB_X27_Y67_N18
\audio|audio_interface|u1|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr5~0_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(3) & (\audio|audio_interface|u1|LUT_INDEX\(2) $ (((\audio|audio_interface|u1|LUT_INDEX\(0)) # (\audio|audio_interface|u1|LUT_INDEX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(0),
	datab => \audio|audio_interface|u1|LUT_INDEX\(3),
	datac => \audio|audio_interface|u1|LUT_INDEX\(1),
	datad => \audio|audio_interface|u1|LUT_INDEX\(2),
	combout => \audio|audio_interface|u1|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y67_N12
\audio|audio_interface|u1|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr5~1_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(4) & (!\audio|audio_interface|u1|LUT_INDEX\(5) & \audio|audio_interface|u1|WideOr5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|LUT_INDEX\(4),
	datac => \audio|audio_interface|u1|LUT_INDEX\(5),
	datad => \audio|audio_interface|u1|WideOr5~0_combout\,
	combout => \audio|audio_interface|u1|WideOr5~1_combout\);

-- Location: FF_X28_Y67_N13
\audio|audio_interface|u1|mI2C_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|WideOr5~1_combout\,
	ena => \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_DATA\(3));

-- Location: FF_X31_Y67_N21
\audio|audio_interface|u1|u1|SD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	asdata => \audio|audio_interface|u1|mI2C_DATA\(3),
	sload => VCC,
	ena => \audio|audio_interface|u1|u1|SD[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD\(3));

-- Location: LCCOMB_X27_Y67_N10
\audio|audio_interface|u1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr1~0_combout\ = (\audio|audio_interface|u1|LUT_INDEX\(0) & (((\audio|audio_interface|u1|LUT_INDEX\(1) & !\audio|audio_interface|u1|LUT_INDEX\(3))))) # (!\audio|audio_interface|u1|LUT_INDEX\(0) & 
-- (!\audio|audio_interface|u1|LUT_INDEX\(1) & (\audio|audio_interface|u1|LUT_INDEX\(2) $ (\audio|audio_interface|u1|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(0),
	datab => \audio|audio_interface|u1|LUT_INDEX\(2),
	datac => \audio|audio_interface|u1|LUT_INDEX\(1),
	datad => \audio|audio_interface|u1|LUT_INDEX\(3),
	combout => \audio|audio_interface|u1|WideOr1~0_combout\);

-- Location: LCCOMB_X27_Y67_N8
\audio|audio_interface|u1|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr1~1_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(5) & (!\audio|audio_interface|u1|LUT_INDEX\(4) & \audio|audio_interface|u1|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|LUT_INDEX\(5),
	datac => \audio|audio_interface|u1|LUT_INDEX\(4),
	datad => \audio|audio_interface|u1|WideOr1~0_combout\,
	combout => \audio|audio_interface|u1|WideOr1~1_combout\);

-- Location: FF_X27_Y67_N9
\audio|audio_interface|u1|mI2C_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|WideOr1~1_combout\,
	ena => \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_DATA\(10));

-- Location: LCCOMB_X31_Y67_N12
\audio|audio_interface|u1|u1|SD[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SD[10]~feeder_combout\ = \audio|audio_interface|u1|mI2C_DATA\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio|audio_interface|u1|mI2C_DATA\(10),
	combout => \audio|audio_interface|u1|u1|SD[10]~feeder_combout\);

-- Location: FF_X31_Y67_N13
\audio|audio_interface|u1|u1|SD[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|SD[10]~feeder_combout\,
	ena => \audio|audio_interface|u1|u1|SD[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD\(10));

-- Location: LCCOMB_X27_Y67_N24
\audio|audio_interface|u1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr0~0_combout\ = (\audio|audio_interface|u1|LUT_INDEX\(3) & (!\audio|audio_interface|u1|LUT_INDEX\(0) & (!\audio|audio_interface|u1|LUT_INDEX\(1) & !\audio|audio_interface|u1|LUT_INDEX\(2)))) # 
-- (!\audio|audio_interface|u1|LUT_INDEX\(3) & (\audio|audio_interface|u1|LUT_INDEX\(2) & ((\audio|audio_interface|u1|LUT_INDEX\(0)) # (\audio|audio_interface|u1|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|LUT_INDEX\(0),
	datab => \audio|audio_interface|u1|LUT_INDEX\(3),
	datac => \audio|audio_interface|u1|LUT_INDEX\(1),
	datad => \audio|audio_interface|u1|LUT_INDEX\(2),
	combout => \audio|audio_interface|u1|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y67_N2
\audio|audio_interface|u1|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|WideOr0~1_combout\ = (!\audio|audio_interface|u1|LUT_INDEX\(4) & (!\audio|audio_interface|u1|LUT_INDEX\(5) & \audio|audio_interface|u1|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|audio_interface|u1|LUT_INDEX\(4),
	datac => \audio|audio_interface|u1|LUT_INDEX\(5),
	datad => \audio|audio_interface|u1|WideOr0~0_combout\,
	combout => \audio|audio_interface|u1|WideOr0~1_combout\);

-- Location: FF_X28_Y67_N3
\audio|audio_interface|u1|mI2C_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|WideOr0~1_combout\,
	ena => \audio|audio_interface|u1|mI2C_DATA[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|mI2C_DATA\(11));

-- Location: FF_X31_Y67_N19
\audio|audio_interface|u1|u1|SD[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	asdata => \audio|audio_interface|u1|mI2C_DATA\(11),
	sload => VCC,
	ena => \audio|audio_interface|u1|u1|SD[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SD\(11));

-- Location: LCCOMB_X31_Y67_N18
\audio|audio_interface|u1|u1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~4_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(3) & ((\audio|audio_interface|u1|u1|SD_COUNTER\(0) & ((\audio|audio_interface|u1|u1|SD\(11)))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(0) & 
-- (\audio|audio_interface|u1|u1|SD\(10))))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(3) & (((!\audio|audio_interface|u1|u1|SD_COUNTER\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD\(10),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datac => \audio|audio_interface|u1|u1|SD\(11),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	combout => \audio|audio_interface|u1|u1|Mux0~4_combout\);

-- Location: LCCOMB_X31_Y67_N20
\audio|audio_interface|u1|u1|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~5_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(3) & (((\audio|audio_interface|u1|u1|Mux0~4_combout\)))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(3) & ((\audio|audio_interface|u1|u1|Mux0~4_combout\ & 
-- ((\audio|audio_interface|u1|u1|SD\(3)))) # (!\audio|audio_interface|u1|u1|Mux0~4_combout\ & (\audio|audio_interface|u1|u1|SD\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD\(4),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datac => \audio|audio_interface|u1|u1|SD\(3),
	datad => \audio|audio_interface|u1|u1|Mux0~4_combout\,
	combout => \audio|audio_interface|u1|u1|Mux0~5_combout\);

-- Location: LCCOMB_X31_Y67_N10
\audio|audio_interface|u1|u1|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~6_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(1) & ((\audio|audio_interface|u1|u1|SD_COUNTER\(2) & ((\audio|audio_interface|u1|u1|Mux0~5_combout\))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(2) & 
-- (\audio|audio_interface|u1|u1|Mux0~3_combout\)))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(1) & (!\audio|audio_interface|u1|u1|SD_COUNTER\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(1),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datac => \audio|audio_interface|u1|u1|Mux0~3_combout\,
	datad => \audio|audio_interface|u1|u1|Mux0~5_combout\,
	combout => \audio|audio_interface|u1|u1|Mux0~6_combout\);

-- Location: LCCOMB_X31_Y67_N14
\audio|audio_interface|u1|u1|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~8_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(1) & (((\audio|audio_interface|u1|u1|Mux0~6_combout\)))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(1) & ((\audio|audio_interface|u1|u1|Mux0~6_combout\ & 
-- (\audio|audio_interface|u1|u1|Mux0~7_combout\)) # (!\audio|audio_interface|u1|u1|Mux0~6_combout\ & ((\audio|audio_interface|u1|u1|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(1),
	datab => \audio|audio_interface|u1|u1|Mux0~7_combout\,
	datac => \audio|audio_interface|u1|u1|Mux0~2_combout\,
	datad => \audio|audio_interface|u1|u1|Mux0~6_combout\,
	combout => \audio|audio_interface|u1|u1|Mux0~8_combout\);

-- Location: LCCOMB_X32_Y67_N12
\audio|audio_interface|u1|u1|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~14_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(4) & (\audio|audio_interface|u1|u1|SD_COUNTER\(5) & (\audio|audio_interface|u1|u1|Mux0~13_combout\))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(4) & 
-- (((\audio|audio_interface|u1|u1|Mux0~8_combout\)) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(4),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(5),
	datac => \audio|audio_interface|u1|u1|Mux0~13_combout\,
	datad => \audio|audio_interface|u1|u1|Mux0~8_combout\,
	combout => \audio|audio_interface|u1|u1|Mux0~14_combout\);

-- Location: LCCOMB_X32_Y67_N4
\audio|audio_interface|u1|u1|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|Mux0~15_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(5) & (((!\audio|audio_interface|u1|u1|Mux0~14_combout\)))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(5) & (\audio|audio_interface|u1|u1|SDO~q\ & 
-- ((\audio|audio_interface|u1|u1|Mux0~14_combout\) # (!\audio|audio_interface|u1|u1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|Mux0~0_combout\,
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(5),
	datac => \audio|audio_interface|u1|u1|SDO~q\,
	datad => \audio|audio_interface|u1|u1|Mux0~14_combout\,
	combout => \audio|audio_interface|u1|u1|Mux0~15_combout\);

-- Location: FF_X32_Y67_N5
\audio|audio_interface|u1|u1|SDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|Mux0~15_combout\,
	clrn => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SDO~q\);

-- Location: LCCOMB_X27_Y21_N8
\audio|audio_interface|u2|SEL_Cont[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|SEL_Cont[0]~3_combout\ = !\audio|audio_interface|u2|SEL_Cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|audio_interface|u2|SEL_Cont\(0),
	combout => \audio|audio_interface|u2|SEL_Cont[0]~3_combout\);

-- Location: FF_X27_Y21_N9
\audio|audio_interface|u2|SEL_Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|ALT_INV_AUD_BCK~clkctrl_outclk\,
	d => \audio|audio_interface|u2|SEL_Cont[0]~3_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|SEL_Cont\(0));

-- Location: LCCOMB_X27_Y21_N22
\audio|audio_interface|u2|SEL_Cont[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|SEL_Cont[1]~2_combout\ = \audio|audio_interface|u2|SEL_Cont\(1) $ (\audio|audio_interface|u2|SEL_Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|audio_interface|u2|SEL_Cont\(1),
	datad => \audio|audio_interface|u2|SEL_Cont\(0),
	combout => \audio|audio_interface|u2|SEL_Cont[1]~2_combout\);

-- Location: FF_X27_Y21_N23
\audio|audio_interface|u2|SEL_Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|ALT_INV_AUD_BCK~clkctrl_outclk\,
	d => \audio|audio_interface|u2|SEL_Cont[1]~2_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|SEL_Cont\(1));

-- Location: LCCOMB_X59_Y30_N2
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

-- Location: FF_X59_Y30_N3
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

-- Location: LCCOMB_X59_Y30_N4
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

-- Location: FF_X59_Y30_N5
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

-- Location: LCCOMB_X59_Y30_N6
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

-- Location: FF_X59_Y30_N7
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

-- Location: LCCOMB_X59_Y30_N8
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

-- Location: FF_X59_Y30_N9
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

-- Location: LCCOMB_X59_Y30_N10
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

-- Location: FF_X59_Y30_N11
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

-- Location: LCCOMB_X59_Y30_N12
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

-- Location: FF_X59_Y30_N13
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

-- Location: LCCOMB_X59_Y30_N14
\clkdivider_1hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~12_combout\ = (\clkdivider_1hz|s_counter\(6) & (\clkdivider_1hz|Add0~11\ $ (GND))) # (!\clkdivider_1hz|s_counter\(6) & (!\clkdivider_1hz|Add0~11\ & VCC))
-- \clkdivider_1hz|Add0~13\ = CARRY((\clkdivider_1hz|s_counter\(6) & !\clkdivider_1hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(6),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~11\,
	combout => \clkdivider_1hz|Add0~12_combout\,
	cout => \clkdivider_1hz|Add0~13\);

-- Location: LCCOMB_X60_Y30_N4
\clkdivider_1hz|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~7_combout\ = (!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|Equal1~2_combout\,
	datad => \clkdivider_1hz|Add0~12_combout\,
	combout => \clkdivider_1hz|s_counter~7_combout\);

-- Location: FF_X60_Y30_N5
\clkdivider_1hz|s_counter[6]\ : dffeas
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
	q => \clkdivider_1hz|s_counter\(6));

-- Location: LCCOMB_X59_Y30_N16
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

-- Location: FF_X59_Y30_N17
\clkdivider_1hz|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(7));

-- Location: LCCOMB_X59_Y30_N18
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

-- Location: FF_X59_Y30_N19
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

-- Location: LCCOMB_X59_Y30_N20
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

-- Location: FF_X59_Y30_N21
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

-- Location: LCCOMB_X59_Y30_N22
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

-- Location: FF_X59_Y30_N23
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

-- Location: LCCOMB_X59_Y30_N24
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

-- Location: LCCOMB_X60_Y30_N22
\clkdivider_1hz|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~6_combout\ = (!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|Equal1~2_combout\,
	datad => \clkdivider_1hz|Add0~22_combout\,
	combout => \clkdivider_1hz|s_counter~6_combout\);

-- Location: FF_X60_Y30_N23
\clkdivider_1hz|s_counter[11]\ : dffeas
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
	q => \clkdivider_1hz|s_counter\(11));

-- Location: LCCOMB_X59_Y30_N26
\clkdivider_1hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~24_combout\ = (\clkdivider_1hz|s_counter\(12) & (\clkdivider_1hz|Add0~23\ $ (GND))) # (!\clkdivider_1hz|s_counter\(12) & (!\clkdivider_1hz|Add0~23\ & VCC))
-- \clkdivider_1hz|Add0~25\ = CARRY((\clkdivider_1hz|s_counter\(12) & !\clkdivider_1hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(12),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~23\,
	combout => \clkdivider_1hz|Add0~24_combout\,
	cout => \clkdivider_1hz|Add0~25\);

-- Location: LCCOMB_X60_Y30_N2
\clkdivider_1hz|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~5_combout\ = (\clkdivider_1hz|Add0~24_combout\ & !\clkdivider_1hz|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Add0~24_combout\,
	datad => \clkdivider_1hz|Equal1~2_combout\,
	combout => \clkdivider_1hz|s_counter~5_combout\);

-- Location: FF_X60_Y30_N3
\clkdivider_1hz|s_counter[12]\ : dffeas
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
	q => \clkdivider_1hz|s_counter\(12));

-- Location: LCCOMB_X59_Y30_N28
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

-- Location: LCCOMB_X60_Y30_N16
\clkdivider_1hz|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~4_combout\ = (!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|Equal1~2_combout\,
	datad => \clkdivider_1hz|Add0~26_combout\,
	combout => \clkdivider_1hz|s_counter~4_combout\);

-- Location: FF_X60_Y30_N17
\clkdivider_1hz|s_counter[13]\ : dffeas
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
	q => \clkdivider_1hz|s_counter\(13));

-- Location: LCCOMB_X59_Y30_N30
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

-- Location: LCCOMB_X59_Y30_N0
\clkdivider_1hz|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~11_combout\ = (\clkdivider_1hz|Add0~28_combout\ & !\clkdivider_1hz|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Add0~28_combout\,
	datad => \clkdivider_1hz|Equal1~2_combout\,
	combout => \clkdivider_1hz|s_counter~11_combout\);

-- Location: FF_X59_Y30_N1
\clkdivider_1hz|s_counter[14]\ : dffeas
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
	q => \clkdivider_1hz|s_counter\(14));

-- Location: LCCOMB_X59_Y29_N0
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

-- Location: FF_X59_Y29_N1
\clkdivider_1hz|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(15));

-- Location: LCCOMB_X59_Y29_N2
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

-- Location: LCCOMB_X58_Y29_N4
\clkdivider_1hz|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~10_combout\ = (!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|Equal1~2_combout\,
	datad => \clkdivider_1hz|Add0~32_combout\,
	combout => \clkdivider_1hz|s_counter~10_combout\);

-- Location: FF_X58_Y29_N5
\clkdivider_1hz|s_counter[16]\ : dffeas
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
	q => \clkdivider_1hz|s_counter\(16));

-- Location: LCCOMB_X58_Y29_N12
\clkdivider_1hz|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal1~1_combout\ = (\clkdivider_1hz|s_counter\(16) & (!\clkdivider_1hz|s_counter\(15) & (\clkdivider_1hz|s_counter\(14) & !\clkdivider_1hz|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(16),
	datab => \clkdivider_1hz|s_counter\(15),
	datac => \clkdivider_1hz|s_counter\(14),
	datad => \clkdivider_1hz|s_counter\(10),
	combout => \clkdivider_1hz|Equal1~1_combout\);

-- Location: LCCOMB_X59_Y29_N4
\clkdivider_1hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~34_combout\ = (\clkdivider_1hz|s_counter\(17) & (!\clkdivider_1hz|Add0~33\)) # (!\clkdivider_1hz|s_counter\(17) & ((\clkdivider_1hz|Add0~33\) # (GND)))
-- \clkdivider_1hz|Add0~35\ = CARRY((!\clkdivider_1hz|Add0~33\) # (!\clkdivider_1hz|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(17),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~33\,
	combout => \clkdivider_1hz|Add0~34_combout\,
	cout => \clkdivider_1hz|Add0~35\);

-- Location: FF_X59_Y29_N5
\clkdivider_1hz|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(17));

-- Location: LCCOMB_X59_Y29_N6
\clkdivider_1hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~36_combout\ = (\clkdivider_1hz|s_counter\(18) & (\clkdivider_1hz|Add0~35\ $ (GND))) # (!\clkdivider_1hz|s_counter\(18) & (!\clkdivider_1hz|Add0~35\ & VCC))
-- \clkdivider_1hz|Add0~37\ = CARRY((\clkdivider_1hz|s_counter\(18) & !\clkdivider_1hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|s_counter\(18),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~35\,
	combout => \clkdivider_1hz|Add0~36_combout\,
	cout => \clkdivider_1hz|Add0~37\);

-- Location: LCCOMB_X60_Y29_N0
\clkdivider_1hz|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~3_combout\ = (!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|Equal1~2_combout\,
	datac => \clkdivider_1hz|Add0~36_combout\,
	combout => \clkdivider_1hz|s_counter~3_combout\);

-- Location: FF_X60_Y29_N1
\clkdivider_1hz|s_counter[18]\ : dffeas
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
	q => \clkdivider_1hz|s_counter\(18));

-- Location: LCCOMB_X59_Y29_N8
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

-- Location: LCCOMB_X60_Y29_N2
\clkdivider_1hz|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~2_combout\ = (!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Equal1~2_combout\,
	datad => \clkdivider_1hz|Add0~38_combout\,
	combout => \clkdivider_1hz|s_counter~2_combout\);

-- Location: FF_X60_Y29_N3
\clkdivider_1hz|s_counter[19]\ : dffeas
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
	q => \clkdivider_1hz|s_counter\(19));

-- Location: LCCOMB_X59_Y29_N10
\clkdivider_1hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Add0~40_combout\ = (\clkdivider_1hz|s_counter\(20) & (\clkdivider_1hz|Add0~39\ $ (GND))) # (!\clkdivider_1hz|s_counter\(20) & (!\clkdivider_1hz|Add0~39\ & VCC))
-- \clkdivider_1hz|Add0~41\ = CARRY((\clkdivider_1hz|s_counter\(20) & !\clkdivider_1hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(20),
	datad => VCC,
	cin => \clkdivider_1hz|Add0~39\,
	combout => \clkdivider_1hz|Add0~40_combout\,
	cout => \clkdivider_1hz|Add0~41\);

-- Location: LCCOMB_X58_Y29_N6
\clkdivider_1hz|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~1_combout\ = (\clkdivider_1hz|Add0~40_combout\ & !\clkdivider_1hz|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Add0~40_combout\,
	datad => \clkdivider_1hz|Equal1~2_combout\,
	combout => \clkdivider_1hz|s_counter~1_combout\);

-- Location: FF_X58_Y29_N7
\clkdivider_1hz|s_counter[20]\ : dffeas
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
	q => \clkdivider_1hz|s_counter\(20));

-- Location: LCCOMB_X59_Y29_N12
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

-- Location: LCCOMB_X58_Y29_N8
\clkdivider_1hz|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~0_combout\ = (\clkdivider_1hz|Add0~42_combout\ & !\clkdivider_1hz|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Add0~42_combout\,
	datad => \clkdivider_1hz|Equal1~2_combout\,
	combout => \clkdivider_1hz|s_counter~0_combout\);

-- Location: FF_X58_Y29_N9
\clkdivider_1hz|s_counter[21]\ : dffeas
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
	q => \clkdivider_1hz|s_counter\(21));

-- Location: LCCOMB_X59_Y29_N14
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

-- Location: LCCOMB_X58_Y29_N16
\clkdivider_1hz|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~9_combout\ = (\clkdivider_1hz|Add0~44_combout\ & !\clkdivider_1hz|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdivider_1hz|Add0~44_combout\,
	datad => \clkdivider_1hz|Equal1~2_combout\,
	combout => \clkdivider_1hz|s_counter~9_combout\);

-- Location: FF_X58_Y29_N17
\clkdivider_1hz|s_counter[22]\ : dffeas
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
	q => \clkdivider_1hz|s_counter\(22));

-- Location: LCCOMB_X59_Y29_N16
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

-- Location: FF_X59_Y29_N17
\clkdivider_1hz|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(23));

-- Location: LCCOMB_X59_Y29_N18
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

-- Location: LCCOMB_X58_Y29_N18
\clkdivider_1hz|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|s_counter~8_combout\ = (!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|Equal1~2_combout\,
	datad => \clkdivider_1hz|Add0~48_combout\,
	combout => \clkdivider_1hz|s_counter~8_combout\);

-- Location: FF_X58_Y29_N19
\clkdivider_1hz|s_counter[24]\ : dffeas
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
	q => \clkdivider_1hz|s_counter\(24));

-- Location: LCCOMB_X58_Y29_N14
\clkdivider_1hz|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal1~0_combout\ = (!\clkdivider_1hz|s_counter\(17) & (\clkdivider_1hz|s_counter\(22) & (!\clkdivider_1hz|s_counter\(23) & \clkdivider_1hz|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(17),
	datab => \clkdivider_1hz|s_counter\(22),
	datac => \clkdivider_1hz|s_counter\(23),
	datad => \clkdivider_1hz|s_counter\(24),
	combout => \clkdivider_1hz|Equal1~0_combout\);

-- Location: LCCOMB_X60_Y30_N12
\clkdivider_1hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~3_combout\ = (\clkdivider_1hz|s_counter\(11) & (!\clkdivider_1hz|s_counter\(9) & (!\clkdivider_1hz|s_counter\(7) & !\clkdivider_1hz|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(11),
	datab => \clkdivider_1hz|s_counter\(9),
	datac => \clkdivider_1hz|s_counter\(7),
	datad => \clkdivider_1hz|s_counter\(8),
	combout => \clkdivider_1hz|Equal0~3_combout\);

-- Location: LCCOMB_X59_Y29_N20
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

-- Location: FF_X59_Y29_N21
\clkdivider_1hz|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkdivider_1hz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdivider_1hz|s_counter\(25));

-- Location: LCCOMB_X59_Y29_N22
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

-- Location: FF_X59_Y29_N23
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

-- Location: LCCOMB_X58_Y29_N24
\clkdivider_1hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~1_combout\ = (\clkdivider_1hz|s_counter\(20) & (\clkdivider_1hz|s_counter\(21) & (!\clkdivider_1hz|s_counter\(25) & !\clkdivider_1hz|s_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(20),
	datab => \clkdivider_1hz|s_counter\(21),
	datac => \clkdivider_1hz|s_counter\(25),
	datad => \clkdivider_1hz|s_counter\(26),
	combout => \clkdivider_1hz|Equal0~1_combout\);

-- Location: LCCOMB_X59_Y29_N24
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

-- Location: FF_X59_Y29_N25
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

-- Location: LCCOMB_X59_Y29_N26
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

-- Location: FF_X59_Y29_N27
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

-- Location: LCCOMB_X59_Y29_N28
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

-- Location: FF_X59_Y29_N29
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

-- Location: LCCOMB_X59_Y29_N30
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

-- Location: FF_X59_Y29_N31
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

-- Location: LCCOMB_X60_Y29_N24
\clkdivider_1hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~0_combout\ = (!\clkdivider_1hz|s_counter\(30) & (!\clkdivider_1hz|s_counter\(29) & (!\clkdivider_1hz|s_counter\(28) & !\clkdivider_1hz|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(30),
	datab => \clkdivider_1hz|s_counter\(29),
	datac => \clkdivider_1hz|s_counter\(28),
	datad => \clkdivider_1hz|s_counter\(27),
	combout => \clkdivider_1hz|Equal0~0_combout\);

-- Location: LCCOMB_X60_Y30_N28
\clkdivider_1hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~2_combout\ = (\clkdivider_1hz|s_counter\(12) & (\clkdivider_1hz|s_counter\(13) & (\clkdivider_1hz|s_counter\(19) & \clkdivider_1hz|s_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(12),
	datab => \clkdivider_1hz|s_counter\(13),
	datac => \clkdivider_1hz|s_counter\(19),
	datad => \clkdivider_1hz|s_counter\(18),
	combout => \clkdivider_1hz|Equal0~2_combout\);

-- Location: LCCOMB_X60_Y30_N18
\clkdivider_1hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~4_combout\ = (\clkdivider_1hz|Equal0~3_combout\ & (\clkdivider_1hz|Equal0~1_combout\ & (\clkdivider_1hz|Equal0~0_combout\ & \clkdivider_1hz|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|Equal0~3_combout\,
	datab => \clkdivider_1hz|Equal0~1_combout\,
	datac => \clkdivider_1hz|Equal0~0_combout\,
	datad => \clkdivider_1hz|Equal0~2_combout\,
	combout => \clkdivider_1hz|Equal0~4_combout\);

-- Location: LCCOMB_X60_Y30_N10
\clkdivider_1hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~5_combout\ = (\clkdivider_1hz|s_counter\(4) & (!\clkdivider_1hz|s_counter\(6) & (\clkdivider_1hz|s_counter\(2) & \clkdivider_1hz|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(4),
	datab => \clkdivider_1hz|s_counter\(6),
	datac => \clkdivider_1hz|s_counter\(2),
	datad => \clkdivider_1hz|s_counter\(3),
	combout => \clkdivider_1hz|Equal0~5_combout\);

-- Location: LCCOMB_X60_Y30_N8
\clkdivider_1hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~6_combout\ = (\clkdivider_1hz|s_counter\(0) & (\clkdivider_1hz|Equal0~4_combout\ & (\clkdivider_1hz|s_counter\(1) & \clkdivider_1hz|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(0),
	datab => \clkdivider_1hz|Equal0~4_combout\,
	datac => \clkdivider_1hz|s_counter\(1),
	datad => \clkdivider_1hz|Equal0~5_combout\,
	combout => \clkdivider_1hz|Equal0~6_combout\);

-- Location: LCCOMB_X58_Y29_N30
\clkdivider_1hz|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal1~2_combout\ = (\clkdivider_1hz|Equal1~1_combout\ & (\clkdivider_1hz|Equal1~0_combout\ & (\clkdivider_1hz|s_counter\(5) & \clkdivider_1hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|Equal1~1_combout\,
	datab => \clkdivider_1hz|Equal1~0_combout\,
	datac => \clkdivider_1hz|s_counter\(5),
	datad => \clkdivider_1hz|Equal0~6_combout\,
	combout => \clkdivider_1hz|Equal1~2_combout\);

-- Location: LCCOMB_X58_Y29_N26
\clkdivider_1hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~8_combout\ = (!\clkdivider_1hz|s_counter\(16) & (\clkdivider_1hz|s_counter\(15) & (!\clkdivider_1hz|s_counter\(14) & \clkdivider_1hz|s_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(16),
	datab => \clkdivider_1hz|s_counter\(15),
	datac => \clkdivider_1hz|s_counter\(14),
	datad => \clkdivider_1hz|s_counter\(10),
	combout => \clkdivider_1hz|Equal0~8_combout\);

-- Location: LCCOMB_X58_Y29_N20
\clkdivider_1hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~7_combout\ = (\clkdivider_1hz|s_counter\(17) & (!\clkdivider_1hz|s_counter\(22) & (\clkdivider_1hz|s_counter\(23) & !\clkdivider_1hz|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|s_counter\(17),
	datab => \clkdivider_1hz|s_counter\(22),
	datac => \clkdivider_1hz|s_counter\(23),
	datad => \clkdivider_1hz|s_counter\(24),
	combout => \clkdivider_1hz|Equal0~7_combout\);

-- Location: LCCOMB_X58_Y29_N28
\clkdivider_1hz|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|Equal0~9_combout\ = (\clkdivider_1hz|Equal0~8_combout\ & (\clkdivider_1hz|Equal0~7_combout\ & (!\clkdivider_1hz|s_counter\(5) & \clkdivider_1hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdivider_1hz|Equal0~8_combout\,
	datab => \clkdivider_1hz|Equal0~7_combout\,
	datac => \clkdivider_1hz|s_counter\(5),
	datad => \clkdivider_1hz|Equal0~6_combout\,
	combout => \clkdivider_1hz|Equal0~9_combout\);

-- Location: LCCOMB_X58_Y29_N22
\clkdivider_1hz|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|clkOut~0_combout\ = (\clkdivider_1hz|Equal0~9_combout\) # ((!\clkdivider_1hz|Equal1~2_combout\ & \clkdivider_1hz|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdivider_1hz|Equal1~2_combout\,
	datac => \clkdivider_1hz|clkOut~q\,
	datad => \clkdivider_1hz|Equal0~9_combout\,
	combout => \clkdivider_1hz|clkOut~0_combout\);

-- Location: LCCOMB_X58_Y29_N10
\clkdivider_1hz|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkdivider_1hz|clkOut~feeder_combout\ = \clkdivider_1hz|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clkdivider_1hz|clkOut~0_combout\,
	combout => \clkdivider_1hz|clkOut~feeder_combout\);

-- Location: FF_X58_Y29_N11
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

-- Location: CLKCTRL_G15
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

-- Location: LCCOMB_X31_Y21_N12
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

-- Location: FF_X31_Y21_N13
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

-- Location: LCCOMB_X31_Y21_N6
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

-- Location: FF_X31_Y21_N7
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

-- Location: LCCOMB_X31_Y21_N4
\uut|s_currentState.C~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|s_currentState.C~feeder_combout\ = \uut|s_currentState.B~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|s_currentState.B~q\,
	combout => \uut|s_currentState.C~feeder_combout\);

-- Location: FF_X31_Y21_N5
\uut|s_currentState.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \uut|s_currentState.C~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|s_currentState.C~q\);

-- Location: LCCOMB_X31_Y21_N22
\uut|s_currentState.D~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|s_currentState.D~feeder_combout\ = \uut|s_currentState.C~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|s_currentState.C~q\,
	combout => \uut|s_currentState.D~feeder_combout\);

-- Location: FF_X31_Y21_N23
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

-- Location: FF_X31_Y21_N29
\uut|s_currentState.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	asdata => \uut|s_currentState.D~q\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|s_currentState.E~q\);

-- Location: LCCOMB_X31_Y21_N26
\uut|s_currentState.F~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|s_currentState.F~feeder_combout\ = \uut|s_currentState.E~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uut|s_currentState.E~q\,
	combout => \uut|s_currentState.F~feeder_combout\);

-- Location: FF_X31_Y21_N27
\uut|s_currentState.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \uut|s_currentState.F~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|s_currentState.F~q\);

-- Location: FF_X31_Y21_N21
\uut|s_currentState.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	asdata => \uut|s_currentState.F~q\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|s_currentState.G~q\);

-- Location: LCCOMB_X31_Y21_N30
\uut|s_currentState.H~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|s_currentState.H~0_combout\ = (\uut|s_currentState.H~q\) # (\uut|s_currentState.G~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|s_currentState.H~q\,
	datad => \uut|s_currentState.G~q\,
	combout => \uut|s_currentState.H~0_combout\);

-- Location: FF_X31_Y21_N31
\uut|s_currentState.H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdivider_1hz|clkOut~clkctrl_outclk\,
	d => \uut|s_currentState.H~0_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uut|s_currentState.H~q\);

-- Location: LCCOMB_X31_Y21_N0
\uut|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|WideOr1~0_combout\ = ((\uut|s_currentState.C~q\) # ((\uut|s_currentState.H~q\) # (\uut|s_currentState.E~q\))) # (!\uut|s_currentState.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|s_currentState.A~q\,
	datab => \uut|s_currentState.C~q\,
	datac => \uut|s_currentState.H~q\,
	datad => \uut|s_currentState.E~q\,
	combout => \uut|WideOr1~0_combout\);

-- Location: IOIBUF_X0_Y60_N15
\audio|audio_interface|AUD_BCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_BCLK,
	o => \audio|audio_interface|AUD_BCLK~input_o\);

-- Location: LCCOMB_X27_Y21_N24
\audio|audio_interface|u2|SEL_Cont[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|SEL_Cont[2]~1_combout\ = \audio|audio_interface|u2|SEL_Cont\(2) $ (((\audio|audio_interface|u2|SEL_Cont\(1) & \audio|audio_interface|u2|SEL_Cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(1),
	datac => \audio|audio_interface|u2|SEL_Cont\(2),
	datad => \audio|audio_interface|u2|SEL_Cont\(0),
	combout => \audio|audio_interface|u2|SEL_Cont[2]~1_combout\);

-- Location: FF_X27_Y21_N25
\audio|audio_interface|u2|SEL_Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|ALT_INV_AUD_BCK~clkctrl_outclk\,
	d => \audio|audio_interface|u2|SEL_Cont[2]~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|SEL_Cont\(2));

-- Location: LCCOMB_X27_Y21_N10
\audio|audio_interface|u2|oOUT_SAMPLE_RQST~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|oOUT_SAMPLE_RQST~0_combout\ = ((\audio|audio_interface|u2|LRCK_1X~q\) # ((!\audio|audio_interface|u2|SEL_Cont\(2)) # (!\audio|audio_interface|u2|SEL_Cont\(0)))) # (!\audio|audio_interface|u2|SEL_Cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(1),
	datab => \audio|audio_interface|u2|LRCK_1X~q\,
	datac => \audio|audio_interface|u2|SEL_Cont\(0),
	datad => \audio|audio_interface|u2|SEL_Cont\(2),
	combout => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~0_combout\);

-- Location: LCCOMB_X27_Y21_N18
\audio|audio_interface|u2|SEL_Cont[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|SEL_Cont[3]~0_combout\ = \audio|audio_interface|u2|SEL_Cont\(3) $ (((\audio|audio_interface|u2|SEL_Cont\(1) & (\audio|audio_interface|u2|SEL_Cont\(0) & \audio|audio_interface|u2|SEL_Cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(1),
	datab => \audio|audio_interface|u2|SEL_Cont\(0),
	datac => \audio|audio_interface|u2|SEL_Cont\(3),
	datad => \audio|audio_interface|u2|SEL_Cont\(2),
	combout => \audio|audio_interface|u2|SEL_Cont[3]~0_combout\);

-- Location: FF_X27_Y21_N19
\audio|audio_interface|u2|SEL_Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|ALT_INV_AUD_BCK~clkctrl_outclk\,
	d => \audio|audio_interface|u2|SEL_Cont[3]~0_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|SEL_Cont\(3));

-- Location: LCCOMB_X28_Y21_N0
\audio|audio_interface|u2|oOUT_SAMPLE_RQST~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\ = (!\audio|audio_interface|u2|oOUT_SAMPLE_RQST~0_combout\ & \audio|audio_interface|u2|SEL_Cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~0_combout\,
	datad => \audio|audio_interface|u2|SEL_Cont\(3),
	combout => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\);

-- Location: LCCOMB_X29_Y21_N8
\audio|s_leftSinArg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|s_leftSinArg[0]~0_combout\ = \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\ $ (\audio|s_leftSinArg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	datac => \audio|s_leftSinArg\(0),
	combout => \audio|s_leftSinArg[0]~0_combout\);

-- Location: FF_X29_Y21_N9
\audio|s_leftSinArg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|AUD_BCLK~input_o\,
	d => \audio|s_leftSinArg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|s_leftSinArg\(0));

-- Location: LCCOMB_X29_Y21_N14
\audio|s_leftSinArg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|s_leftSinArg[1]~1_combout\ = \audio|s_leftSinArg\(1) $ (((\audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\ & \audio|s_leftSinArg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	datac => \audio|s_leftSinArg\(1),
	datad => \audio|s_leftSinArg\(0),
	combout => \audio|s_leftSinArg[1]~1_combout\);

-- Location: FF_X29_Y21_N15
\audio|s_leftSinArg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|AUD_BCLK~input_o\,
	d => \audio|s_leftSinArg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|s_leftSinArg\(1));

-- Location: LCCOMB_X29_Y21_N16
\audio|s_leftSinArg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|s_leftSinArg[2]~2_combout\ = \audio|s_leftSinArg\(2) $ (((\audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\ & (\audio|s_leftSinArg\(1) & \audio|s_leftSinArg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	datab => \audio|s_leftSinArg\(1),
	datac => \audio|s_leftSinArg\(2),
	datad => \audio|s_leftSinArg\(0),
	combout => \audio|s_leftSinArg[2]~2_combout\);

-- Location: FF_X29_Y21_N17
\audio|s_leftSinArg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|AUD_BCLK~input_o\,
	d => \audio|s_leftSinArg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|s_leftSinArg\(2));

-- Location: LCCOMB_X29_Y21_N26
\audio|s_leftSinArg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|s_leftSinArg[3]~3_combout\ = (\audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\ & (\audio|s_leftSinArg\(1) & (\audio|s_leftSinArg\(0) & \audio|s_leftSinArg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	datab => \audio|s_leftSinArg\(1),
	datac => \audio|s_leftSinArg\(0),
	datad => \audio|s_leftSinArg\(2),
	combout => \audio|s_leftSinArg[3]~3_combout\);

-- Location: LCCOMB_X29_Y21_N10
\audio|s_leftSinArg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|s_leftSinArg[3]~4_combout\ = \audio|s_leftSinArg\(3) $ (\audio|s_leftSinArg[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|s_leftSinArg\(3),
	datad => \audio|s_leftSinArg[3]~3_combout\,
	combout => \audio|s_leftSinArg[3]~4_combout\);

-- Location: FF_X29_Y21_N11
\audio|s_leftSinArg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|AUD_BCLK~input_o\,
	d => \audio|s_leftSinArg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|s_leftSinArg\(3));

-- Location: LCCOMB_X30_Y21_N8
\audio|left_sin_rom|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux12~0_combout\ = (\audio|s_leftSinArg\(0) & (\audio|s_leftSinArg\(1) $ (\audio|s_leftSinArg\(2) $ (!\audio|s_leftSinArg\(3))))) # (!\audio|s_leftSinArg\(0) & ((\audio|s_leftSinArg\(1) & ((\audio|s_leftSinArg\(3)))) # 
-- (!\audio|s_leftSinArg\(1) & (\audio|s_leftSinArg\(2) & !\audio|s_leftSinArg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|s_leftSinArg\(1),
	datab => \audio|s_leftSinArg\(0),
	datac => \audio|s_leftSinArg\(2),
	datad => \audio|s_leftSinArg\(3),
	combout => \audio|left_sin_rom|Mux12~0_combout\);

-- Location: LCCOMB_X30_Y21_N30
\audio|left_sin_rom|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux12~1_combout\ = (!\uut|WideOr1~0_combout\ & \audio|left_sin_rom|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|WideOr1~0_combout\,
	datac => \audio|left_sin_rom|Mux12~0_combout\,
	combout => \audio|left_sin_rom|Mux12~1_combout\);

-- Location: LCCOMB_X30_Y21_N24
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|CH_L_OUT_SAMPLE[5]~feeder_combout\ = \audio|left_sin_rom|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|left_sin_rom|Mux12~1_combout\,
	combout => \audio|audio_interface|u2|CH_L_OUT_SAMPLE[5]~feeder_combout\);

-- Location: FF_X30_Y21_N25
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|audio_interface|u2|CH_L_OUT_SAMPLE[5]~feeder_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(5));

-- Location: FF_X30_Y21_N13
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	asdata => \audio|left_sin_rom|Mux12~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sload => VCC,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(4));

-- Location: LCCOMB_X28_Y21_N8
\audio|left_sin_rom|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux2~0_combout\ = (\audio|s_leftSinArg\(3) & (\audio|s_leftSinArg\(1) & (!\audio|s_leftSinArg\(0)))) # (!\audio|s_leftSinArg\(3) & ((\audio|s_leftSinArg\(0)) # ((!\audio|s_leftSinArg\(1) & \audio|s_leftSinArg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|s_leftSinArg\(3),
	datab => \audio|s_leftSinArg\(1),
	datac => \audio|s_leftSinArg\(0),
	datad => \audio|s_leftSinArg\(2),
	combout => \audio|left_sin_rom|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y21_N22
\audio|left_sin_rom|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux2~1_combout\ = (\audio|left_sin_rom|Mux2~0_combout\ & !\uut|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|left_sin_rom|Mux2~0_combout\,
	datad => \uut|WideOr1~0_combout\,
	combout => \audio|left_sin_rom|Mux2~1_combout\);

-- Location: FF_X28_Y21_N1
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	asdata => \audio|left_sin_rom|Mux2~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sload => VCC,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(6));

-- Location: LCCOMB_X30_Y21_N28
\audio|left_sin_rom|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux8~0_combout\ = (\audio|s_leftSinArg\(0) & (\audio|s_leftSinArg\(1) $ (\audio|s_leftSinArg\(2) $ (!\audio|s_leftSinArg\(3))))) # (!\audio|s_leftSinArg\(0) & (!\audio|s_leftSinArg\(3) & ((\audio|s_leftSinArg\(1)) # 
-- (\audio|s_leftSinArg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|s_leftSinArg\(1),
	datab => \audio|s_leftSinArg\(0),
	datac => \audio|s_leftSinArg\(2),
	datad => \audio|s_leftSinArg\(3),
	combout => \audio|left_sin_rom|Mux8~0_combout\);

-- Location: LCCOMB_X30_Y21_N26
\audio|left_sin_rom|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux8~1_combout\ = (!\uut|WideOr1~0_combout\ & \audio|left_sin_rom|Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|WideOr1~0_combout\,
	datad => \audio|left_sin_rom|Mux8~0_combout\,
	combout => \audio|left_sin_rom|Mux8~1_combout\);

-- Location: FF_X30_Y21_N3
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	asdata => \audio|left_sin_rom|Mux8~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sload => VCC,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(7));

-- Location: LCCOMB_X30_Y21_N2
\audio|audio_interface|u2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~0_combout\ = (\audio|audio_interface|u2|SEL_Cont\(1) & (((\audio|audio_interface|u2|SEL_Cont\(0))))) # (!\audio|audio_interface|u2|SEL_Cont\(1) & ((\audio|audio_interface|u2|SEL_Cont\(0) & 
-- (\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(6))) # (!\audio|audio_interface|u2|SEL_Cont\(0) & ((\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(1),
	datab => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(6),
	datac => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(7),
	datad => \audio|audio_interface|u2|SEL_Cont\(0),
	combout => \audio|audio_interface|u2|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y21_N12
\audio|audio_interface|u2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~1_combout\ = (\audio|audio_interface|u2|SEL_Cont\(1) & ((\audio|audio_interface|u2|Mux1~0_combout\ & ((\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(4)))) # (!\audio|audio_interface|u2|Mux1~0_combout\ & 
-- (\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(5))))) # (!\audio|audio_interface|u2|SEL_Cont\(1) & (((\audio|audio_interface|u2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(1),
	datab => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(5),
	datac => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(4),
	datad => \audio|audio_interface|u2|Mux1~0_combout\,
	combout => \audio|audio_interface|u2|Mux1~1_combout\);

-- Location: LCCOMB_X29_Y21_N0
\audio|left_sin_rom|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux5~0_combout\ = (\audio|s_leftSinArg\(3) & (\audio|s_leftSinArg\(1) $ (((!\audio|s_leftSinArg\(2) & \audio|s_leftSinArg\(0)))))) # (!\audio|s_leftSinArg\(3) & ((\audio|s_leftSinArg\(2) & (!\audio|s_leftSinArg\(1))) # 
-- (!\audio|s_leftSinArg\(2) & (\audio|s_leftSinArg\(1) & \audio|s_leftSinArg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|s_leftSinArg\(3),
	datab => \audio|s_leftSinArg\(2),
	datac => \audio|s_leftSinArg\(1),
	datad => \audio|s_leftSinArg\(0),
	combout => \audio|left_sin_rom|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y21_N6
\audio|left_sin_rom|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux5~1_combout\ = (\audio|left_sin_rom|Mux5~0_combout\ & !\uut|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|left_sin_rom|Mux5~0_combout\,
	datad => \uut|WideOr1~0_combout\,
	combout => \audio|left_sin_rom|Mux5~1_combout\);

-- Location: LCCOMB_X28_Y21_N18
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|CH_L_OUT_SAMPLE[10]~feeder_combout\ = \audio|left_sin_rom|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio|left_sin_rom|Mux5~1_combout\,
	combout => \audio|audio_interface|u2|CH_L_OUT_SAMPLE[10]~feeder_combout\);

-- Location: FF_X28_Y21_N19
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|audio_interface|u2|CH_L_OUT_SAMPLE[10]~feeder_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(10));

-- Location: LCCOMB_X29_Y21_N18
\audio|left_sin_rom|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux1~0_combout\ = (\audio|s_leftSinArg\(0) & (\audio|s_leftSinArg\(3) $ (\audio|s_leftSinArg\(2) $ (\audio|s_leftSinArg\(1))))) # (!\audio|s_leftSinArg\(0) & (!\audio|s_leftSinArg\(3) & ((\audio|s_leftSinArg\(2)) # 
-- (\audio|s_leftSinArg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|s_leftSinArg\(3),
	datab => \audio|s_leftSinArg\(2),
	datac => \audio|s_leftSinArg\(1),
	datad => \audio|s_leftSinArg\(0),
	combout => \audio|left_sin_rom|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y21_N4
\audio|left_sin_rom|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux1~1_combout\ = (\audio|left_sin_rom|Mux1~0_combout\ & !\uut|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|left_sin_rom|Mux1~0_combout\,
	datac => \uut|WideOr1~0_combout\,
	combout => \audio|left_sin_rom|Mux1~1_combout\);

-- Location: LCCOMB_X29_Y21_N20
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|CH_L_OUT_SAMPLE[9]~feeder_combout\ = \audio|left_sin_rom|Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|left_sin_rom|Mux1~1_combout\,
	combout => \audio|audio_interface|u2|CH_L_OUT_SAMPLE[9]~feeder_combout\);

-- Location: FF_X29_Y21_N21
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|audio_interface|u2|CH_L_OUT_SAMPLE[9]~feeder_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(9));

-- Location: LCCOMB_X29_Y21_N30
\audio|left_sin_rom|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux4~0_combout\ = (\audio|s_leftSinArg\(3) & (((\audio|s_leftSinArg\(0))))) # (!\audio|s_leftSinArg\(3) & (!\audio|s_leftSinArg\(0) & ((\audio|s_leftSinArg\(1)) # (\audio|s_leftSinArg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|s_leftSinArg\(3),
	datab => \audio|s_leftSinArg\(1),
	datac => \audio|s_leftSinArg\(0),
	datad => \audio|s_leftSinArg\(2),
	combout => \audio|left_sin_rom|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y21_N4
\audio|left_sin_rom|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux4~1_combout\ = (\audio|left_sin_rom|Mux4~0_combout\ & !\uut|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|left_sin_rom|Mux4~0_combout\,
	datad => \uut|WideOr1~0_combout\,
	combout => \audio|left_sin_rom|Mux4~1_combout\);

-- Location: FF_X28_Y21_N25
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	asdata => \audio|left_sin_rom|Mux4~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sload => VCC,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(11));

-- Location: LCCOMB_X28_Y21_N24
\audio|audio_interface|u2|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~2_combout\ = (\audio|audio_interface|u2|SEL_Cont\(1) & ((\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(9)) # ((\audio|audio_interface|u2|SEL_Cont\(0))))) # (!\audio|audio_interface|u2|SEL_Cont\(1) & 
-- (((\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(11) & !\audio|audio_interface|u2|SEL_Cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(1),
	datab => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(9),
	datac => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(11),
	datad => \audio|audio_interface|u2|SEL_Cont\(0),
	combout => \audio|audio_interface|u2|Mux1~2_combout\);

-- Location: LCCOMB_X30_Y21_N4
\audio|left_sin_rom|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux13~0_combout\ = (\audio|s_leftSinArg\(1) & (((\audio|s_leftSinArg\(3))))) # (!\audio|s_leftSinArg\(1) & ((\audio|s_leftSinArg\(0) & ((\audio|s_leftSinArg\(3)))) # (!\audio|s_leftSinArg\(0) & (\audio|s_leftSinArg\(2) & 
-- !\audio|s_leftSinArg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|s_leftSinArg\(1),
	datab => \audio|s_leftSinArg\(0),
	datac => \audio|s_leftSinArg\(2),
	datad => \audio|s_leftSinArg\(3),
	combout => \audio|left_sin_rom|Mux13~0_combout\);

-- Location: LCCOMB_X30_Y21_N22
\audio|left_sin_rom|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux13~1_combout\ = (!\uut|WideOr1~0_combout\ & \audio|left_sin_rom|Mux13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|WideOr1~0_combout\,
	datac => \audio|left_sin_rom|Mux13~0_combout\,
	combout => \audio|left_sin_rom|Mux13~1_combout\);

-- Location: FF_X30_Y21_N15
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	asdata => \audio|left_sin_rom|Mux13~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sload => VCC,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(8));

-- Location: LCCOMB_X30_Y21_N14
\audio|audio_interface|u2|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~3_combout\ = (\audio|audio_interface|u2|Mux1~2_combout\ & (((\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(8)) # (!\audio|audio_interface|u2|SEL_Cont\(0))))) # (!\audio|audio_interface|u2|Mux1~2_combout\ & 
-- (\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(10) & ((\audio|audio_interface|u2|SEL_Cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(10),
	datab => \audio|audio_interface|u2|Mux1~2_combout\,
	datac => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(8),
	datad => \audio|audio_interface|u2|SEL_Cont\(0),
	combout => \audio|audio_interface|u2|Mux1~3_combout\);

-- Location: LCCOMB_X29_Y21_N6
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|CH_L_OUT_SAMPLE[14]~feeder_combout\ = \audio|left_sin_rom|Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|left_sin_rom|Mux1~1_combout\,
	combout => \audio|audio_interface|u2|CH_L_OUT_SAMPLE[14]~feeder_combout\);

-- Location: FF_X29_Y21_N7
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|audio_interface|u2|CH_L_OUT_SAMPLE[14]~feeder_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(14));

-- Location: LCCOMB_X29_Y21_N12
\audio|left_sin_rom|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux3~0_combout\ = (!\audio|s_leftSinArg\(3) & ((\audio|s_leftSinArg\(1)) # ((\audio|s_leftSinArg\(0)) # (\audio|s_leftSinArg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|s_leftSinArg\(3),
	datab => \audio|s_leftSinArg\(1),
	datac => \audio|s_leftSinArg\(0),
	datad => \audio|s_leftSinArg\(2),
	combout => \audio|left_sin_rom|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y21_N26
\audio|left_sin_rom|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux3~1_combout\ = (\audio|left_sin_rom|Mux3~0_combout\ & !\uut|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|left_sin_rom|Mux3~0_combout\,
	datad => \uut|WideOr1~0_combout\,
	combout => \audio|left_sin_rom|Mux3~1_combout\);

-- Location: FF_X28_Y21_N3
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	asdata => \audio|left_sin_rom|Mux3~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sload => VCC,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(12));

-- Location: LCCOMB_X28_Y21_N30
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|CH_L_OUT_SAMPLE[13]~feeder_combout\ = \audio|left_sin_rom|Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|left_sin_rom|Mux2~1_combout\,
	combout => \audio|audio_interface|u2|CH_L_OUT_SAMPLE[13]~feeder_combout\);

-- Location: FF_X28_Y21_N31
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|audio_interface|u2|CH_L_OUT_SAMPLE[13]~feeder_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(13));

-- Location: LCCOMB_X28_Y21_N16
\audio|left_sin_rom|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux0~0_combout\ = (\audio|s_leftSinArg\(3) & ((\audio|s_leftSinArg\(0)) # ((\audio|s_leftSinArg\(1)) # (\audio|s_leftSinArg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|s_leftSinArg\(0),
	datab => \audio|s_leftSinArg\(1),
	datac => \audio|s_leftSinArg\(3),
	datad => \audio|s_leftSinArg\(2),
	combout => \audio|left_sin_rom|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y21_N14
\audio|left_sin_rom|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux0~1_combout\ = (!\uut|WideOr1~0_combout\ & \audio|left_sin_rom|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|WideOr1~0_combout\,
	datad => \audio|left_sin_rom|Mux0~0_combout\,
	combout => \audio|left_sin_rom|Mux0~1_combout\);

-- Location: FF_X28_Y21_N13
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	asdata => \audio|left_sin_rom|Mux0~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sload => VCC,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(15));

-- Location: LCCOMB_X28_Y21_N12
\audio|audio_interface|u2|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~4_combout\ = (\audio|audio_interface|u2|SEL_Cont\(1) & ((\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(13)) # ((\audio|audio_interface|u2|SEL_Cont\(0))))) # (!\audio|audio_interface|u2|SEL_Cont\(1) & 
-- (((\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(15) & !\audio|audio_interface|u2|SEL_Cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(1),
	datab => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(13),
	datac => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(15),
	datad => \audio|audio_interface|u2|SEL_Cont\(0),
	combout => \audio|audio_interface|u2|Mux1~4_combout\);

-- Location: LCCOMB_X28_Y21_N2
\audio|audio_interface|u2|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~5_combout\ = (\audio|audio_interface|u2|SEL_Cont\(0) & ((\audio|audio_interface|u2|Mux1~4_combout\ & ((\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(12)))) # (!\audio|audio_interface|u2|Mux1~4_combout\ & 
-- (\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(14))))) # (!\audio|audio_interface|u2|SEL_Cont\(0) & (((\audio|audio_interface|u2|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(0),
	datab => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(14),
	datac => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(12),
	datad => \audio|audio_interface|u2|Mux1~4_combout\,
	combout => \audio|audio_interface|u2|Mux1~5_combout\);

-- Location: LCCOMB_X27_Y21_N28
\audio|audio_interface|u2|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~6_combout\ = (\audio|audio_interface|u2|SEL_Cont\(2) & ((\audio|audio_interface|u2|SEL_Cont\(3)) # ((\audio|audio_interface|u2|Mux1~3_combout\)))) # (!\audio|audio_interface|u2|SEL_Cont\(2) & 
-- (!\audio|audio_interface|u2|SEL_Cont\(3) & ((\audio|audio_interface|u2|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(2),
	datab => \audio|audio_interface|u2|SEL_Cont\(3),
	datac => \audio|audio_interface|u2|Mux1~3_combout\,
	datad => \audio|audio_interface|u2|Mux1~5_combout\,
	combout => \audio|audio_interface|u2|Mux1~6_combout\);

-- Location: LCCOMB_X29_Y21_N22
\audio|left_sin_rom|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux14~0_combout\ = (\audio|s_leftSinArg\(0) & (\audio|s_leftSinArg\(3) $ (\audio|s_leftSinArg\(2) $ (!\audio|s_leftSinArg\(1))))) # (!\audio|s_leftSinArg\(0) & ((\audio|s_leftSinArg\(1)) # ((!\audio|s_leftSinArg\(3) & 
-- \audio|s_leftSinArg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|s_leftSinArg\(3),
	datab => \audio|s_leftSinArg\(2),
	datac => \audio|s_leftSinArg\(1),
	datad => \audio|s_leftSinArg\(0),
	combout => \audio|left_sin_rom|Mux14~0_combout\);

-- Location: LCCOMB_X29_Y21_N28
\audio|left_sin_rom|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux14~1_combout\ = (!\uut|WideOr1~0_combout\ & \audio|left_sin_rom|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|WideOr1~0_combout\,
	datad => \audio|left_sin_rom|Mux14~0_combout\,
	combout => \audio|left_sin_rom|Mux14~1_combout\);

-- Location: LCCOMB_X29_Y21_N24
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|CH_L_OUT_SAMPLE[1]~feeder_combout\ = \audio|left_sin_rom|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \audio|left_sin_rom|Mux14~1_combout\,
	combout => \audio|audio_interface|u2|CH_L_OUT_SAMPLE[1]~feeder_combout\);

-- Location: FF_X29_Y21_N25
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|audio_interface|u2|CH_L_OUT_SAMPLE[1]~feeder_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(1));

-- Location: LCCOMB_X28_Y21_N28
\audio|left_sin_rom|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|left_sin_rom|Mux15~0_combout\ = (!\uut|WideOr1~0_combout\ & ((\audio|s_leftSinArg\(0)) # ((!\audio|s_leftSinArg\(1) & \audio|s_leftSinArg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|s_leftSinArg\(0),
	datab => \audio|s_leftSinArg\(1),
	datac => \audio|s_leftSinArg\(2),
	datad => \uut|WideOr1~0_combout\,
	combout => \audio|left_sin_rom|Mux15~0_combout\);

-- Location: FF_X28_Y21_N21
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	asdata => \audio|left_sin_rom|Mux15~0_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sload => VCC,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(0));

-- Location: LCCOMB_X30_Y21_N20
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|CH_L_OUT_SAMPLE[2]~feeder_combout\ = \audio|left_sin_rom|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|left_sin_rom|Mux13~1_combout\,
	combout => \audio|audio_interface|u2|CH_L_OUT_SAMPLE[2]~feeder_combout\);

-- Location: FF_X30_Y21_N21
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|audio_interface|u2|CH_L_OUT_SAMPLE[2]~feeder_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(2));

-- Location: FF_X30_Y21_N19
\audio|audio_interface|u2|CH_L_OUT_SAMPLE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	asdata => \audio|left_sin_rom|Mux12~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sload => VCC,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(3));

-- Location: LCCOMB_X30_Y21_N18
\audio|audio_interface|u2|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~7_combout\ = (\audio|audio_interface|u2|SEL_Cont\(1) & (((\audio|audio_interface|u2|SEL_Cont\(0))))) # (!\audio|audio_interface|u2|SEL_Cont\(1) & ((\audio|audio_interface|u2|SEL_Cont\(0) & 
-- (\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(2))) # (!\audio|audio_interface|u2|SEL_Cont\(0) & ((\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(1),
	datab => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(2),
	datac => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(3),
	datad => \audio|audio_interface|u2|SEL_Cont\(0),
	combout => \audio|audio_interface|u2|Mux1~7_combout\);

-- Location: LCCOMB_X28_Y21_N20
\audio|audio_interface|u2|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~8_combout\ = (\audio|audio_interface|u2|SEL_Cont\(1) & ((\audio|audio_interface|u2|Mux1~7_combout\ & ((\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(0)))) # (!\audio|audio_interface|u2|Mux1~7_combout\ & 
-- (\audio|audio_interface|u2|CH_L_OUT_SAMPLE\(1))))) # (!\audio|audio_interface|u2|SEL_Cont\(1) & (((\audio|audio_interface|u2|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(1),
	datab => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(1),
	datac => \audio|audio_interface|u2|CH_L_OUT_SAMPLE\(0),
	datad => \audio|audio_interface|u2|Mux1~7_combout\,
	combout => \audio|audio_interface|u2|Mux1~8_combout\);

-- Location: LCCOMB_X27_Y21_N6
\audio|audio_interface|u2|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~9_combout\ = (\audio|audio_interface|u2|Mux1~6_combout\ & (((\audio|audio_interface|u2|Mux1~8_combout\) # (!\audio|audio_interface|u2|SEL_Cont\(3))))) # (!\audio|audio_interface|u2|Mux1~6_combout\ & 
-- (\audio|audio_interface|u2|Mux1~1_combout\ & (\audio|audio_interface|u2|SEL_Cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|Mux1~1_combout\,
	datab => \audio|audio_interface|u2|Mux1~6_combout\,
	datac => \audio|audio_interface|u2|SEL_Cont\(3),
	datad => \audio|audio_interface|u2|Mux1~8_combout\,
	combout => \audio|audio_interface|u2|Mux1~9_combout\);

-- Location: FF_X30_Y21_N31
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|left_sin_rom|Mux12~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(4));

-- Location: FF_X28_Y21_N27
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|left_sin_rom|Mux3~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(12));

-- Location: LCCOMB_X27_Y21_N0
\audio|audio_interface|u2|Mux1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~17_combout\ = (\audio|audio_interface|u2|SEL_Cont\(3) & ((\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(4)) # ((\audio|audio_interface|u2|SEL_Cont\(2))))) # (!\audio|audio_interface|u2|SEL_Cont\(3) & 
-- (((\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(12) & !\audio|audio_interface|u2|SEL_Cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(4),
	datab => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(12),
	datac => \audio|audio_interface|u2|SEL_Cont\(3),
	datad => \audio|audio_interface|u2|SEL_Cont\(2),
	combout => \audio|audio_interface|u2|Mux1~17_combout\);

-- Location: FF_X28_Y21_N29
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|left_sin_rom|Mux15~0_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(0));

-- Location: FF_X30_Y21_N23
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|left_sin_rom|Mux13~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(8));

-- Location: LCCOMB_X27_Y21_N30
\audio|audio_interface|u2|Mux1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~18_combout\ = (\audio|audio_interface|u2|SEL_Cont\(2) & ((\audio|audio_interface|u2|Mux1~17_combout\ & (\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(0))) # (!\audio|audio_interface|u2|Mux1~17_combout\ & 
-- ((\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(8)))))) # (!\audio|audio_interface|u2|SEL_Cont\(2) & (\audio|audio_interface|u2|Mux1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(2),
	datab => \audio|audio_interface|u2|Mux1~17_combout\,
	datac => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(0),
	datad => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(8),
	combout => \audio|audio_interface|u2|Mux1~18_combout\);

-- Location: FF_X28_Y21_N23
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|left_sin_rom|Mux2~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(6));

-- Location: FF_X29_Y21_N5
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|left_sin_rom|Mux1~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(14));

-- Location: FF_X28_Y21_N7
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|left_sin_rom|Mux5~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(10));

-- Location: LCCOMB_X27_Y21_N4
\audio|audio_interface|u2|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~12_combout\ = (\audio|audio_interface|u2|SEL_Cont\(2) & (((\audio|audio_interface|u2|SEL_Cont\(3)) # (\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(10))))) # (!\audio|audio_interface|u2|SEL_Cont\(2) & 
-- (\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(14) & (!\audio|audio_interface|u2|SEL_Cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(2),
	datab => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(14),
	datac => \audio|audio_interface|u2|SEL_Cont\(3),
	datad => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(10),
	combout => \audio|audio_interface|u2|Mux1~12_combout\);

-- Location: FF_X30_Y21_N11
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	asdata => \audio|left_sin_rom|Mux13~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sload => VCC,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(2));

-- Location: LCCOMB_X30_Y21_N10
\audio|audio_interface|u2|Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~13_combout\ = (\audio|audio_interface|u2|Mux1~12_combout\ & (((\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(2)) # (!\audio|audio_interface|u2|SEL_Cont\(3))))) # (!\audio|audio_interface|u2|Mux1~12_combout\ & 
-- (\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(6) & ((\audio|audio_interface|u2|SEL_Cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(6),
	datab => \audio|audio_interface|u2|Mux1~12_combout\,
	datac => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(2),
	datad => \audio|audio_interface|u2|SEL_Cont\(3),
	combout => \audio|audio_interface|u2|Mux1~13_combout\);

-- Location: FF_X28_Y21_N5
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|left_sin_rom|Mux4~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(11));

-- Location: FF_X28_Y21_N15
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|left_sin_rom|Mux0~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(15));

-- Location: LCCOMB_X27_Y21_N26
\audio|audio_interface|u2|Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~14_combout\ = (\audio|audio_interface|u2|SEL_Cont\(3) & (((\audio|audio_interface|u2|SEL_Cont\(2))))) # (!\audio|audio_interface|u2|SEL_Cont\(3) & ((\audio|audio_interface|u2|SEL_Cont\(2) & 
-- (\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(11))) # (!\audio|audio_interface|u2|SEL_Cont\(2) & ((\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(11),
	datab => \audio|audio_interface|u2|SEL_Cont\(3),
	datac => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(15),
	datad => \audio|audio_interface|u2|SEL_Cont\(2),
	combout => \audio|audio_interface|u2|Mux1~14_combout\);

-- Location: FF_X30_Y21_N17
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	asdata => \audio|left_sin_rom|Mux12~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sload => VCC,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(3));

-- Location: FF_X30_Y21_N27
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|left_sin_rom|Mux8~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(7));

-- Location: LCCOMB_X30_Y21_N16
\audio|audio_interface|u2|Mux1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~15_combout\ = (\audio|audio_interface|u2|SEL_Cont\(3) & ((\audio|audio_interface|u2|Mux1~14_combout\ & (\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(3))) # (!\audio|audio_interface|u2|Mux1~14_combout\ & 
-- ((\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(7)))))) # (!\audio|audio_interface|u2|SEL_Cont\(3) & (\audio|audio_interface|u2|Mux1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(3),
	datab => \audio|audio_interface|u2|Mux1~14_combout\,
	datac => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(3),
	datad => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(7),
	combout => \audio|audio_interface|u2|Mux1~15_combout\);

-- Location: LCCOMB_X30_Y21_N6
\audio|audio_interface|u2|Mux1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~16_combout\ = (\audio|audio_interface|u2|SEL_Cont\(1) & (((\audio|audio_interface|u2|SEL_Cont\(0))))) # (!\audio|audio_interface|u2|SEL_Cont\(1) & ((\audio|audio_interface|u2|SEL_Cont\(0) & 
-- (\audio|audio_interface|u2|Mux1~13_combout\)) # (!\audio|audio_interface|u2|SEL_Cont\(0) & ((\audio|audio_interface|u2|Mux1~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|Mux1~13_combout\,
	datab => \audio|audio_interface|u2|Mux1~15_combout\,
	datac => \audio|audio_interface|u2|SEL_Cont\(1),
	datad => \audio|audio_interface|u2|SEL_Cont\(0),
	combout => \audio|audio_interface|u2|Mux1~16_combout\);

-- Location: LCCOMB_X30_Y21_N0
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|CH_R_OUT_SAMPLE[5]~feeder_combout\ = \audio|left_sin_rom|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|left_sin_rom|Mux12~1_combout\,
	combout => \audio|audio_interface|u2|CH_R_OUT_SAMPLE[5]~feeder_combout\);

-- Location: FF_X30_Y21_N1
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|audio_interface|u2|CH_R_OUT_SAMPLE[5]~feeder_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(5));

-- Location: FF_X28_Y21_N11
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	asdata => \audio|left_sin_rom|Mux2~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sload => VCC,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(13));

-- Location: LCCOMB_X28_Y21_N10
\audio|audio_interface|u2|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~10_combout\ = (\audio|audio_interface|u2|SEL_Cont\(2) & (((\audio|audio_interface|u2|SEL_Cont\(3))))) # (!\audio|audio_interface|u2|SEL_Cont\(2) & ((\audio|audio_interface|u2|SEL_Cont\(3) & 
-- (\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(5))) # (!\audio|audio_interface|u2|SEL_Cont\(3) & ((\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|SEL_Cont\(2),
	datab => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(5),
	datac => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(13),
	datad => \audio|audio_interface|u2|SEL_Cont\(3),
	combout => \audio|audio_interface|u2|Mux1~10_combout\);

-- Location: FF_X29_Y21_N3
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	asdata => \audio|left_sin_rom|Mux1~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	sload => VCC,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(9));

-- Location: FF_X29_Y21_N29
\audio|audio_interface|u2|CH_R_OUT_SAMPLE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u2|AUD_BCK~clkctrl_outclk\,
	d => \audio|left_sin_rom|Mux14~1_combout\,
	clrn => \audio|audio_interface|r1|oRESET~q\,
	ena => \audio|audio_interface|u2|oOUT_SAMPLE_RQST~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(1));

-- Location: LCCOMB_X29_Y21_N2
\audio|audio_interface|u2|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~11_combout\ = (\audio|audio_interface|u2|Mux1~10_combout\ & (((\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(1))) # (!\audio|audio_interface|u2|SEL_Cont\(2)))) # (!\audio|audio_interface|u2|Mux1~10_combout\ & 
-- (\audio|audio_interface|u2|SEL_Cont\(2) & (\audio|audio_interface|u2|CH_R_OUT_SAMPLE\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|Mux1~10_combout\,
	datab => \audio|audio_interface|u2|SEL_Cont\(2),
	datac => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(9),
	datad => \audio|audio_interface|u2|CH_R_OUT_SAMPLE\(1),
	combout => \audio|audio_interface|u2|Mux1~11_combout\);

-- Location: LCCOMB_X27_Y21_N16
\audio|audio_interface|u2|Mux1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~19_combout\ = (\audio|audio_interface|u2|Mux1~16_combout\ & ((\audio|audio_interface|u2|Mux1~18_combout\) # ((!\audio|audio_interface|u2|SEL_Cont\(1))))) # (!\audio|audio_interface|u2|Mux1~16_combout\ & 
-- (((\audio|audio_interface|u2|Mux1~11_combout\ & \audio|audio_interface|u2|SEL_Cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|Mux1~18_combout\,
	datab => \audio|audio_interface|u2|Mux1~16_combout\,
	datac => \audio|audio_interface|u2|Mux1~11_combout\,
	datad => \audio|audio_interface|u2|SEL_Cont\(1),
	combout => \audio|audio_interface|u2|Mux1~19_combout\);

-- Location: LCCOMB_X27_Y21_N14
\audio|audio_interface|u2|Mux1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u2|Mux1~20_combout\ = (\audio|audio_interface|u2|LRCK_1X~q\ & (\audio|audio_interface|u2|Mux1~9_combout\)) # (!\audio|audio_interface|u2|LRCK_1X~q\ & ((\audio|audio_interface|u2|Mux1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u2|Mux1~9_combout\,
	datac => \audio|audio_interface|u2|LRCK_1X~q\,
	datad => \audio|audio_interface|u2|Mux1~19_combout\,
	combout => \audio|audio_interface|u2|Mux1~20_combout\);

-- Location: LCCOMB_X30_Y67_N24
\audio|audio_interface|u1|u1|SCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SCLK~0_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(1)) # ((!\audio|audio_interface|u1|u1|SD_COUNTER\(2) & ((\audio|audio_interface|u1|u1|SD_COUNTER\(3)) # (\audio|audio_interface|u1|u1|SD_COUNTER\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(4),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(1),
	combout => \audio|audio_interface|u1|u1|SCLK~0_combout\);

-- Location: LCCOMB_X32_Y67_N10
\audio|audio_interface|u1|u1|SCLK~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SCLK~1_combout\ = (\audio|audio_interface|u1|u1|SCLK~0_combout\) # ((\audio|audio_interface|u1|u1|SD_COUNTER\(2) & ((\audio|audio_interface|u1|u1|SCLK~q\) # (\audio|audio_interface|u1|u1|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SCLK~q\,
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datac => \audio|audio_interface|u1|u1|SCLK~0_combout\,
	datad => \audio|audio_interface|u1|u1|Selector1~0_combout\,
	combout => \audio|audio_interface|u1|u1|SCLK~1_combout\);

-- Location: LCCOMB_X32_Y67_N16
\audio|audio_interface|u1|u1|SCLK~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SCLK~2_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(0) & (\audio|audio_interface|u1|u1|SD[22]~0_combout\ $ (!\audio|audio_interface|u1|u1|SCLK~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	datac => \audio|audio_interface|u1|u1|SD[22]~0_combout\,
	datad => \audio|audio_interface|u1|u1|SCLK~1_combout\,
	combout => \audio|audio_interface|u1|u1|SCLK~2_combout\);

-- Location: LCCOMB_X32_Y67_N26
\audio|audio_interface|u1|u1|SCLK~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|SCLK~3_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(5) & ((\audio|audio_interface|u1|u1|SCLK~1_combout\ & (\audio|audio_interface|u1|u1|SCLK~q\ & !\audio|audio_interface|u1|u1|SCLK~2_combout\)) # 
-- (!\audio|audio_interface|u1|u1|SCLK~1_combout\ & ((\audio|audio_interface|u1|u1|SCLK~2_combout\))))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(5) & (((\audio|audio_interface|u1|u1|SCLK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SCLK~1_combout\,
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(5),
	datac => \audio|audio_interface|u1|u1|SCLK~q\,
	datad => \audio|audio_interface|u1|u1|SCLK~2_combout\,
	combout => \audio|audio_interface|u1|u1|SCLK~3_combout\);

-- Location: FF_X32_Y67_N27
\audio|audio_interface|u1|u1|SCLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \audio|audio_interface|u1|mI2C_CTRL_CLK~clkctrl_outclk\,
	d => \audio|audio_interface|u1|u1|SCLK~3_combout\,
	clrn => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|audio_interface|u1|u1|SCLK~q\);

-- Location: LCCOMB_X32_Y67_N18
\audio|audio_interface|u1|u1|I2C_SCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|I2C_SCLK~0_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(2)) # ((\audio|audio_interface|u1|u1|SD_COUNTER\(1)) # ((\audio|audio_interface|u1|u1|SD_COUNTER\(3)) # (\audio|audio_interface|u1|u1|SD_COUNTER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(1),
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datad => \audio|audio_interface|u1|u1|SD_COUNTER\(0),
	combout => \audio|audio_interface|u1|u1|I2C_SCLK~0_combout\);

-- Location: LCCOMB_X32_Y67_N8
\audio|audio_interface|u1|u1|I2C_SCLK~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|I2C_SCLK~1_combout\ = (\audio|audio_interface|u1|u1|SD_COUNTER\(4) & (((!\audio|audio_interface|u1|u1|SD_COUNTER\(3))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(2)))) # (!\audio|audio_interface|u1|u1|SD_COUNTER\(4) & 
-- (((\audio|audio_interface|u1|u1|I2C_SCLK~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SD_COUNTER\(4),
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(2),
	datac => \audio|audio_interface|u1|u1|SD_COUNTER\(3),
	datad => \audio|audio_interface|u1|u1|I2C_SCLK~0_combout\,
	combout => \audio|audio_interface|u1|u1|I2C_SCLK~1_combout\);

-- Location: LCCOMB_X32_Y67_N14
\audio|audio_interface|u1|u1|I2C_SCLK~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|audio_interface|u1|u1|I2C_SCLK~2_combout\ = ((\audio|audio_interface|u1|u1|SD_COUNTER\(5) & (\audio|audio_interface|u1|u1|I2C_SCLK~1_combout\ & !\audio|audio_interface|u1|mI2C_CTRL_CLK~q\))) # (!\audio|audio_interface|u1|u1|SCLK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|audio_interface|u1|u1|SCLK~q\,
	datab => \audio|audio_interface|u1|u1|SD_COUNTER\(5),
	datac => \audio|audio_interface|u1|u1|I2C_SCLK~1_combout\,
	datad => \audio|audio_interface|u1|mI2C_CTRL_CLK~q\,
	combout => \audio|audio_interface|u1|u1|I2C_SCLK~2_combout\);

-- Location: LCCOMB_X31_Y21_N28
\uut|ledRed0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|ledRed0~2_combout\ = (!\uut|s_currentState.H~q\ & \uut|s_currentState.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uut|s_currentState.H~q\,
	datad => \uut|s_currentState.A~q\,
	combout => \uut|ledRed0~2_combout\);

-- Location: LCCOMB_X31_Y21_N20
\uut|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|WideOr0~0_combout\ = (\uut|s_currentState.F~q\) # ((\uut|s_currentState.H~q\) # ((\uut|s_currentState.G~q\) # (!\uut|s_currentState.A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uut|s_currentState.F~q\,
	datab => \uut|s_currentState.H~q\,
	datac => \uut|s_currentState.G~q\,
	datad => \uut|s_currentState.A~q\,
	combout => \uut|WideOr0~0_combout\);

-- Location: LCCOMB_X31_Y21_N18
\uut|ledRed2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uut|ledRed2~combout\ = (\uut|s_currentState.C~q\) # (\uut|s_currentState.B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uut|s_currentState.C~q\,
	datad => \uut|s_currentState.B~q\,
	combout => \uut|ledRed2~combout\);

-- Location: IOIBUF_X0_Y69_N8
\audio|audio_interface|AUD_ADCLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCLRCK,
	o => \audio|audio_interface|AUD_ADCLRCK~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\audio|audio_interface|AUD_DACLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_DACLRCK,
	o => \audio|audio_interface|AUD_DACLRCK~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\audio|audio_interface|AUD_ADCDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \audio|audio_interface|AUD_ADCDAT~input_o\);
END structure;


