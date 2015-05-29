library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerAuxFSM_Tb is
end TimerAuxFSM_Tb;

architecture Stimulus of TimerAuxFSM_Tb is
	signal s_newTime, s_clk, s_reset, s_active, s_timeExp : std_logic;
	signal s_timerVal, s_currentValue : std_logic_vector(5 downto 0);
begin
	uut : entity work.TimerAuxFSM_v2(Behav)
		port map(newTime  => s_newTime,
					clk      => s_clk,
					reset    => s_reset,
					isActive => s_active,
					currentValue => s_currentValue,
					timerVal => s_timerVal,
					timeExp  => s_timeExp);
					
	clock_proc : process
	begin
		s_clk <= '0';
		wait for 10 ns;
		s_clk <= '1';
		wait for 10 ns;
	end process;
	
	main_proc : process
	begin
		s_newTime <= '0';
		s_reset <= '1';
		s_timerVal <= "000000";
		wait for 20 ns;
		
		s_reset <= '0';
		s_newTime <= '1';
		s_timerVal <= "000001";
		wait for 20 ns;
		
		s_newTime <= '0';
		wait for 60 ns;
		
		s_newTime <= '1';
		s_timerVal <= "000101";
		wait for 150 ns;
		
		s_reset <= '1';
		wait for 20 ns;
		
	end process;
end Stimulus;