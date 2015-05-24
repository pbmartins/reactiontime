library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ReactionTimeCounter is
	port(reset		: in  std_logic;
		  clk			: in  std_logic;
		  clkEnable	: in  std_logic;
		  count		: out std_logic_vector(23 downto 0));
end ReactionTimeCounter;

architecture Behav of ReactionTimeCounter is
 signal s_clk100Hz : std_logic;
begin
	clk_100Hz : entity work.FreqDivider(Behavioral)
						generic map(K   => 500000)
						port map(clkIn  => clk,
									clkOut => s_clk100Hz);
									
	counter : entity work.CntBCDUp4(Behavioral)
						port map(reset     => reset,
									clkEnable => clkEnable,
									clk       => s_clk100Hz,
									count     => count);
end Behav;