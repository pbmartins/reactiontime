library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity  LEDCounterFSM is
	port(reset		: in  std_logic;
		  clk			: in  std_logic;
		  enable  	: in  std_logic;
		  Final  	: out std_logic;
		  ledRed1_enable : out std_logic;
		  ledRed2_enable : out std_logic;
		  ledRed3_enable : out std_logic;
end  LEDCounterFSM;

architecture Behavioral of  LEDCounterFSM is

	type TState is (A, B, C, D, E);
	signal s_currentState, s_nextState : TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= A;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState,enable, laprst)
	begin
		case (s_currentState) is
		when A =>
			Final <= '0';
			ledRed0_enable <= '0';
			ledRed1_enable <= '0';
			ledRed2_enable <= '0';
			if (enable = '1') then
				s_nextState <= B;
			else
				s_nextState <= A;
			end if;

		when B =>
			Final   <= '0';
			ledRed0_enable <= '1';
			ledRed1_enable <= '1';
			ledRed2_enable <= '1';
			if (enable = '1') then
				s_nextState <= C;
			else
				s_nextState <= A;
			end if;

		when C =>
			Final   <= '0';
			ledRed0_enable <= '1';
			ledRed1_enable <= '1';
			ledRed2_enable <= '0';
			if (enable = '1') then
			   s_nextState <= D;
			else
				s_nextState <= A;
			end if;

		when D =>
			Final   <= '0';
			ledRed0_enable <= '1';
			ledRed1_enable <= '0';
			ledRed2_enable <= '0';
			if (enable = '1') then
		      s_nextState <= E;
			else
				s_nextState <= A;
		end if;
			
			
			when E =>
			  Final   <= '1';
			  ledRed1_enable <= '0';
			  ledRed2_enable <= '0';
			  ledRed3_enable <= '0';
			
			
			
		end case;

	end process;

end Behavioral;
