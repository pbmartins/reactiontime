library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Audio_Core is
	port(-- Clock and reset
		  CLOCK_50		: in    std_logic;
		  reset        : in    std_logic;
		  enable       : in 	  std_logic;
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
end Audio_Core;

architecture Structural of Audio_Core is

	-- Definition of the Audio Interface Module Black Box
	component AudioInterfaceCore is
		port(-- Clock and reset
			  CLOCK_50			: in    std_logic;
			  RESET_N			: in    std_logic;
			  -- Parallel Samples Interface (to/from client logic)
			  IN_SAMPLE_VALID	: out   std_logic;
			  CH_L_IN_SAMPLE	: out   std_logic_vector(15 downto 0);
			  CH_R_IN_SAMPLE	: out   std_logic_vector(15 downto 0);
			  OUT_SAMPLE_RQST	: out   std_logic;
			  CH_L_OUT_SAMPLE	: in    std_logic_vector(15 downto 0);
			  CH_R_OUT_SAMPLE	: in    std_logic_vector(15 downto 0);
			  -- Audio Serial Data Interface (to/from FPGA pins)
			  AUD_ADCLRCK		: inout std_logic;
			  AUD_ADCDAT		: in    std_logic;
			  AUD_DACLRCK		: inout std_logic;
			  AUD_DACDAT		: out   std_logic;
			  AUD_BCLK			: inout std_logic;
			  AUD_XCK			: out   std_logic;
			  -- Audio I2C Configuration Interface (to/from FPGA pins)
			  I2C_SCLK			: out   std_logic;
			  I2C_SDAT			: inout std_logic);
	end component;

	signal s_inSampleValid,   s_outSampleRqst		: std_logic;
	signal s_outSample                          	: std_logic_vector(15 downto 0);
	signal s_inLeftSample,    s_inRightSample		: std_logic_vector(15 downto 0);
	signal s_regInLeftSample, s_regInRightSample	: std_logic_vector(15 downto 0);

	signal s_sinArg : unsigned(3 downto 0);
	signal s_sinVal : std_logic_vector(15 downto 0);
begin
	-- Instantiation of the Audio Interface Module
	audio_interface : AudioInterfaceCore
		port map(CLOCK_50				=> CLOCK_50,
					RESET_N				=> reset,
					IN_SAMPLE_VALID	=> s_inSampleValid,
					CH_L_IN_SAMPLE		=> s_inLeftSample,
					CH_R_IN_SAMPLE		=> s_inRightSample,
					OUT_SAMPLE_RQST	=> s_outSampleRqst,
					CH_L_OUT_SAMPLE	=> s_outSample,
					CH_R_OUT_SAMPLE	=> s_outSample,
					AUD_ADCLRCK			=> AUD_ADCLRCK,
					AUD_ADCDAT			=> AUD_ADCDAT,
					AUD_DACLRCK			=> AUD_DACLRCK,
					AUD_DACDAT			=> AUD_DACDAT,
					AUD_BCLK				=> AUD_BCLK,
					AUD_XCK				=> AUD_XCK,
					I2C_SCLK				=> I2C_SCLK,
					I2C_SDAT				=> I2C_SDAT);


	-- Counters used to scan the SIN tables 
	process(AUD_BCLK)
	begin
		if (rising_edge(AUD_BCLK)) then
			if (s_outSampleRqst = '1') then
				s_sinArg	<= s_sinArg + 1;
			end if;
		end if;
	end process;

	-- SIN table for the left & right channels
	sin_rom : entity work.ROMSin16Pts(Behavioral)
		port map(arg	=> std_logic_vector(s_sinArg),
					val	=> s_sinVal);

	-- Selection of the audio source to be applied to CODEC
	s_outSample	<= (others => '0') when (enable = '0')  else
						s_sinVal;
end Structural;
