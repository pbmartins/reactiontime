library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LEDCounterFSM_Tb is
end LEDCounterFSM_Tb;

architecture Stimulus of LEDCounterFSM_Tb is
	signal s_reset, s_clk, s_final, s_audio, s_enable, s_led0, s_led1, s_led2 : std_logic;
begin
	uut : entity work.LEDCounterFSM(Behavioral)
		port map(reset       => s_reset,
					clk         => s_clk,
					enable      => s_enable,
					audioEnable => s_audio,
					final       => s_final,
					ledRed0     => s_led0,
					ledRed1     => s_led1,
					ledRed2     => s_led2);
					
	clk_proc : process
	begin
		s_clk <= '0';
		wait for 10 ns;
		s_clk <= '1';
		wait for 10 ns;
	end process;
	
	main_proc : process
	begin
		s_enable <= '0';
		s_reset <= '1';
		wait for 10 ns;
		
		s_reset <= '0';
		s_enable <= '1';
		wait for 200 ns;
	end process;
end Stimulus;