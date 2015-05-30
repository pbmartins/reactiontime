library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RandomGenerator_Demo is
	port(CLOCK_50 : in std_logic;
		  KEY : in std_logic_vector(0 downto 0);
		  LEDG : out std_logic_vector(0 downto 0);
		  LEDR : out std_logic_vector(5 downto 0));
end RandomGenerator_Demo;

architecture Shell of RandomGenerator_Demo is
begin
	main: entity work.RandomGenerator(Shell)
				port map(clk => CLOCK_50,
							validOut => LEDG(0),
							input => KEY(0),
							dataOut => LEDR);
end Shell;