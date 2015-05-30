library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LEDCounterFSM_DEMO is
	port(CLOCK_50		     : in  std_logic;
		  SW			     : in  std_logic_vector(1 downto 0);
		  LEDR : out std_logic_vector(3 downto 0));
end LEDCounterFSM_DEMO;

architecture Behavioral of LEDCounterFSM_DEMO is
	signal clk1hz : std_logic;
begin
	clkdivider_1hz : entity work.FreqDivider(Behavioral)
		generic map(K         => 50000000)
		port map(clkIn        => CLOCK_50,
					clkOut       => clk1hz);
					
	uut : entity work.LEDCounterFSM(Behavioral)
		port map(clk => clk1hz,
					reset => SW(1),
					enable => SW(0),
					final => LEDR(3),
					ledRed0 => LEDR(0),
					ledRed1 => LEDR(1),
					ledRed2 => LEDR(2));
end Behavioral;