library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RandomGeneratorFSM_Tb is
end RandomGeneratorFSM_Tb;

architecture Stimulus of RandomGeneratorFSM_Tb is
	signal s_dataOut, s_dataIn : std_logic_vector(5 downto 0);
	signal s_clk, s_validOut, s_input, s_reset : std_logic;
begin
	uut : entity work.RandomGeneratorFSM(Shell)
				port map(clk => s_clk,
							reset => s_reset,
							input => s_input,
							validOut => s_validOut,
							dataOut => s_dataOut,
							dataIn => s_dataIn);
							
	clk_proc : process
	begin
		s_clk <= '0';
		wait for 10 ns;
		s_clk <= '1';
		wait for 10 ns;
	end process;
	
	main_proc : process
	begin
		s_reset <= '1';
		s_input <= '0';
		s_dataIn <= "000000";
		wait for 25 ns;
		
		s_input <= '1';
		s_reset <= '0';
		wait for 20 ns;
		
		s_dataIn <= "001000";
		wait for 20 ns;
		
	end process;
end Stimulus;