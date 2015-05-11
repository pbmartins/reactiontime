library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity MainFSM_Tb is
end MainFSM_Tb;

architecture Stimulus of MainFSM_Tb is
	signal stOut : std_logic_vector(2 downto 0);
	signal s_input, s_reset, s_valid, s_timeExp, s_clk, s_final, s_newTime, s_ledCounter_En, s_counter_En, s_hex_Error, s_hex_En, s_ledGreen_En : std_logic;
begin
	uut : entity work.MainFSM(Behav)
				port map(input => s_input,
							reset => s_reset,
							valid => s_valid,
							timeExp => s_timeExp,
							clk => s_clk,
							final => s_final,
							newTime => s_newTime,
							ledCounter_En => s_ledCounter_En,
							counter_En => s_counter_En,
							hex_En => s_hex_En,
							hex_Error => s_hex_Error,
							ledGreen_En => s_ledGreen_En);
	clk_proc : process
	begin
		s_clk <= '0';
		wait for 50 ns;
		s_clk <= '1';
		wait for 50 ns;
	end process;
	
	main_proc : process
	begin
		-- Normal Cycle --
		s_reset <= '0';
		s_valid <= '0';
		s_newTime <= '0';
		s_timeExp <= '0';
		s_final <= '0';
		s_input <= '0';
		wait for 105 ns;
		
		s_input <= '1';
		wait for 100 ns;
		
		s_valid <= '0';
		wait for 100 ns;
		
		s_input <= '0';
		s_valid <= '1';
		wait for 100 ns;
		
		s_final <= '0';
		wait for 100 ns;
		
		s_valid <= '0';
		s_final <= '1';
		wait for 100 ns;
		
		s_final <= '0';
		s_timeExp <= '0';
		wait for 100 ns;
		
		s_timeExp <= '1';
		wait for 210 ns;
		
		s_input <= '1';
		wait for 100 ns;
		
		-- Try Error --
		s_reset <= '1';
		s_input <= '0';
		wait for 100 ns;
		
		s_input <= '1';
		wait for 100 ns;
		
		s_valid <= '1';
		s_input <= '0';
		wait for 100 ns;
		
		s_valid <= '0';
		s_final <= '1';
		wait for 100 ns;
		
		s_input <= '1';
		wait for 100 ns;
	end process;
end Stimulus;