library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RandomGeneratorDemo is
	port(CLOCK_50 : in std_logic;
		  KEY : in std_logic_vector(0 downto 0);
		  SW : in std_logic_vector(0 downto 0);
		  LEDG : out std_logic_vector(0 downto 0);
		  LEDR : out std_logic_vector(5 downto 0));
end RandomGeneratorDemo;

architecture Shell of RandomGeneratorDemo is
signal clk50000hz : std_logic;
begin
		clkdivider_50000hz : entity work.FreqDivider(Behavioral)
		generic map(K         => 1000)
		port map(clkIn        => CLOCK_50,
					clkOut       => clk50000hz);
					
	rnd_generator : entity work.RandomGenerator(Shell)
		port map(clk          => clk50000hz,
					input        => SW(0),
					validOut     => LEDG(0),
					dataOut      => LEDR);
end Shell;