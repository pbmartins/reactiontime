library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ReactionTime is
	port (KEY      : in std_logic_vector(1 downto 0);
			SW       : in std_logic_vector(1 downto 0);
			CLOCK_50 : in std_logic;
			LEDR     : out std_logic_vector(6 downto 0);
			LEDG     : out std_logic_vector(0 downto 0);
			HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : out std_logic_vector(6 downto 0);
			-- Audio Serial Data Interface
		  AUD_ADCLRCK	: inout std_logic;
		  AUD_ADCDAT	: in    std_logic;
		  AUD_DACLRCK	: inout std_logic;
		  AUD_DACDAT	: out   std_logic;
		  AUD_BCLK		: inout std_logic;
		  AUD_XCK		: out   std_logic;
		  -- Audio I2C Configuration Interface
		  I2C_SCLK		: out   std_logic;
		  I2C_SDAT		: inout std_logic);
end ReactionTime;

architecture Shell of ReactionTime is
	signal key0, key1, clk50000hz, clk1hz, clk2hz, clk10000hz : std_logic;
	signal s_validOut, s_newTime, s_timeExp, s_ledCounterEN, s_active : std_logic;
	signal s_final, s_counterEN, s_hexEN, s_hexERROR, s_audio : std_logic;
	signal rnd_number : std_logic_vector(5 downto 0);
	signal s_count : std_logic_vector(31 downto 0);
begin
	-- Debounce Units --
	key0_debounce : entity work.DebounceUnit(Behavioral)
		generic map(clkFrekHz => 50000,
						blindmSec => 100,
						inPol		 => '0',
						outPol	 => '1')
		port map(reset			 => key1,
					Clk	   	 => CLOCK_50,
					dirtyIn		 => KEY(0),
					pulsedOut	 => key0);
					
	key1_debounce : entity work.DebounceUnit(Behavioral)
		generic map(clkFrekHz => 50000,
						blindmSec => 100,
						inPol		 => '0',
						outPol	 => '1')
		port map(reset			 => key1,
					Clk		    => CLOCK_50,
					dirtyIn		 => KEY(1),
					pulsedOut	 => key1);
					
	-- Random Generator --
	rnd_gen : entity work.pseudo_random_generator(v1)
		generic map(n_output_bits => 6)
		port map(clk          => CLOCK_50,
					rnd          => rnd_number);
					
	-- TimerAux FSM --
	clkdivider_1hz : entity work.FreqDivider(Behavioral)
		generic map(K         => 50000000)
		port map(clkIn        => CLOCK_50,
					clkOut       => clk1hz);
					
					
	timeraux_fsm : entity work.TimerAuxFSM(Behav)
		port map(clk          => clk1hz,
					reset        => key1,
					definedValue => SW(0),
					isActive     => s_active,
					newTime      => s_newTime,
					timerVal     => rnd_number,
					timeExp      => s_timeExp);
			
	-- Main FSM --
	main_fsm : entity work.MainFSM(Behav)
		port map(clk          => CLOCK_50,
					reset        => key1,
					inputKey     => key0,
					isActive     => s_active,
					newTime      => s_newTime,
					timeExp      => s_timeExp,
					ledCounter_En=> s_ledCounterEN,
					final        => s_final,
					counter_En   => s_counterEN,
					ledGreen_En  => LEDG(0),
					hex_En       => s_hexEN,
					hex_Error    => s_hexERROR);
					
	-- Led Counter --
	clkdivider_2hz : entity work.FreqDivider(Behavioral)
		generic map(K         => 25000000)
		port map(clkIn        => CLOCK_50,
					clkOut       => clk2hz);
	
	audio : entity work.AudioDemo(Structural)
		port map(reset        => key1,
					enable       => s_audio and SW(1),
					CLOCK_50     => CLOCK_50,
					-- Audio Serial Data Interface
					AUD_ADCLRCK	=> AUD_ADCLRCK,
					AUD_ADCDAT	=> AUD_ADCDAT,
					AUD_DACLRCK	=> AUD_DACLRCK,
					AUD_DACDAT	=> AUD_DACDAT,
					AUD_BCLK		=> AUD_BCLK,
					AUD_XCK		=> AUD_XCK,
					-- Audio I2C Configuration Interface
					I2C_SCLK		=> I2C_SCLK,
					I2C_SDAT		=> I2C_SDAT);
	
	ledcounter_fsm : entity work.LEDCounterFSM(Behavioral)
		port map(clk          => clk2hz,
					reset        => key1,
					enable       => s_ledCounterEN,
					audioEnable  => s_audio,
					ledRed0      => LEDR(0),
					ledRed1      => LEDR(1),
					ledRed2      => LEDR(2),
					final        => s_final);
					
	-- Counter --
	clkdivider_10000hz : entity work.FreqDivider(Behavioral)
		generic map(K         => 5000)
		port map(clkIn        => CLOCK_50,
					clkOut       => clk10000hz);
					
					
	counter : entity work.CntBCDUp4(Behavioral)
		port map(clk          => clk10000hz,
					reset        => key1,
					clkEnable    => s_counterEN,
					count        => s_count);
					
	-- Hex Display --
	hexdisplay : entity work.HexDisplay(Structural)
		port map(enable       => s_hexEN,
					error        => s_hexERROR,
					count        => s_count,
					dispOut0_n   => HEX0,
					dispOut1_n   => HEX1,
					dispOut2_n   => HEX2,
					dispOut3_n   => HEX3,
					dispOut4_n   => HEX4,
					dispOut5_n   => HEX5,
					dispOut6_n   => HEX6,
					dispOut7_n   => HEX7);
end Shell;