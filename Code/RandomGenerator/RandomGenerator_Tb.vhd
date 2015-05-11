library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RandomGenerator_Tb is
end RandomGenerator_Tb;

architecture Stimulus of RandomGenerator_Tb is
	signal s_dataOut : std_logic_vector(5 downto 0);
	signal s_clk, s_validOut, s_input : std_logic;
begin
	uut : entity work.RandomGenerator(Shell)
				port map(clk => s_clk,
							input => s_input,
							validOut => s_validOut,
							dataOut => s_dataOut);
							
	clk_proc : process
	begin
		s_clk <= '0';
		wait for 50 ns;
		s_clk <= '1';
		wait for 50 ns;
	end process;
	
	main_proc : process
	begin
		s_input <= '0';
		wait for 110 ns;
		
		s_input <= '1';
		wait for 200 ns;
		
		s_input <= '1';
		wait for 100 ns;
		
	end process;
end Stimulus;