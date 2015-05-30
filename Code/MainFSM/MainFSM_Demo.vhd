library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity MainFSM_Demo is
	port (KEY : in std_logic_vector(4 downto 0);
			SW : in std_logic_vector(0 downto 0);
			LEDR : out std_logic_vector(7 downto 0);
			LEDG : out std_logic_vector(0 downto 0);
			CLOCK_50 : in std_logic);
end MainFSM_Demo;

architecture Shell of MainFSM_Demo is
begin
	uut : entity work.MainFSM(Behav)
			port map(input => KEY(0),
						reset => SW(0),
						timeExp => KEY(3),
						clk => CLOCK_50,
						final => KEY(4),
						newTime => LEDR(3),
						ledCounter_En => LEDR(4),
						counter_En => LEDR(5),
						hex_En => LEDR(6),
						hex_Error => LEDR(7),
						ledGreen_En => LEDG(0));
end Shell;