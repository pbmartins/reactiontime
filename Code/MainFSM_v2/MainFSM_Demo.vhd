library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity MainFSM_Demo is
	port(CLOCK_50 : in std_logic;
		  KEY : in std_logic_vector(3 downto 0);
		  SW : in std_logic_vector(0 downto 0);
		  LEDR : out std_logic_vector(4 downto 0);
		  LEDG : out std_logic_vector(0 downto 0));
end MainFSM_Demo;

architecture Shell of MainFSM_Demo is
	signal clk50000hz : std_logic;
begin

	clkdivider_50000hz : entity work.FreqDivider(Behavioral)
		generic map(K         => 1000)
		port map(clkIn        => CLOCK_50,
					clkOut       => clk50000hz);

	uut : entity work.MainFSM(Behav)
		port map(clk           => CLOCK_50,
					reset         => not KEY(1),
					inputKey      => not KEY(0),
					final         => not KEY(2),
					isActive      => not KEY(3),
					timeExp       => SW(0),
					ledCounter_En => LEDR(0),
					newTime       => LEDR(1),
					ledGreen_En   => LEDG(0),
					counter_En    => LEDR(2),
					hex_en        => LEDR(3),
					hex_error     => LEDR(4));
end Shell;