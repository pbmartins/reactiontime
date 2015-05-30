library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LEDCounterFSM_DEMO is
	port(CLOCK_50 : in  std_logic;
		  SW	 : in  std_logic_vector(1 downto 0);
		  LEDR : out std_logic_vector(3 downto 0);
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
end LEDCounterFSM_DEMO;

architecture Behavioral of LEDCounterFSM_DEMO is
	signal clk2hz : std_logic;
	signal s_audio : std_logic;
begin
	clkdivider_1hz : entity work.FreqDivider(Behavioral)
		generic map(K         => 25000000)
		port map(clkIn        => CLOCK_50,
					clkOut       => clk2hz);
					
	audio : entity work.AudioDemo(Structural)
		port map(reset        => SW(1),
					enable       => s_audio,
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
					
	uut : entity work.LEDCounterFSM(Behavioral)
		port map(clk => clk2hz,
					reset => SW(1),
					enable => SW(0),
					final => LEDR(3),
					audioEnable => s_audio,
					ledRed0 => LEDR(0),
					ledRed1 => LEDR(1),
					ledRed2 => LEDR(2));
end Behavioral;