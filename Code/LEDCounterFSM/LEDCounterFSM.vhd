library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LEDCounterFSM is
	port(reset		     : in  std_logic;
		  clk			     : in  std_logic;
		  enable  	     : in  std_logic;
		  final  	     : out std_logic;
		  ledRed0        : out std_logic;
		  ledRed1        : out std_logic;
		  ledRed2        : out std_logic);
end LEDCounterFSM;

architecture Behavioral of LEDCounterFSM is

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

	comb_proc : process(s_currentState, enable)
	begin
		ledRed0 <= '0';
		ledRed1 <= '0';
		ledRed2 <= '0';
		final <= '0';
		case (s_currentState) is
		when A =>
			if (enable = '1') then
				s_nextState <= B;
			else
				s_nextState <= A;
			end if;

		when B =>
			ledRed0 <= '1';
			ledRed1 <= '1';
			ledRed2 <= '1';
			if (enable = '1') then
				s_nextState <= C;
			else
				s_nextState <= A;
			end if;

		when C =>
			ledRed0 <= '1';
			ledRed1 <= '1';
			if (enable = '1') then
			   s_nextState <= D;
			else
				s_nextState <= A;
			end if;

		when D =>
			ledRed0 <= '1';
			if (enable = '1') then
		      s_nextState <= E;
			else
				s_nextState <= A;
			end if;
			
		when E =>
			 final <= '1';
		end case;
	end process;

end Behavioral;