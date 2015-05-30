library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RandomGeneratorDemo is
	port(CLOCK_50 : in std_logic;
		  KEY : in std_logic_vector(1 downto 0);
		  LEDG : out std_logic_vector(0 downto 0);
		  LEDR : out std_logic_vector(5 downto 0));
end RandomGeneratorDemo;

architecture Shell of RandomGeneratorDemo is
begin			
	rnd_generator : entity work.RandomGenerator(Shell)
		port map(clk          => CLOCK_50,
					reset        => KEY(1),
					input        => KEY(0),
					validOut     => LEDG(0),
					dataOut      => LEDR);
end Shell;