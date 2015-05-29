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
		if (reset = '1') then
			s_currentState <= A;
		elsif (rising_edge(clk)) then
			s_currentState <= s_nextState;
		end if;
	end process;

	comb_proc : process(s_currentState, enable)
	begin
		case (s_currentState) is
		when A =>
			ledRed0 <= '0';
			ledRed1 <= '0';
			ledRed2 <= '0';
			final <= '0';
			
			if (enable = '1') then
				s_nextState <= B;
			else
				s_nextState <= A;
			end if;

		when B =>
			ledRed0 <= '1';
			ledRed1 <= '1';
			ledRed2 <= '1';
			final <= '0';
			
			s_nextState <= C;

		when C =>
			ledRed0 <= '1';
			ledRed1 <= '1';
			ledRed2 <= '0';
			final <= '0';
			
			s_nextState <= D;

		when D =>
			ledRed0 <= '1';
			ledRed1 <= '0';
			ledRed2 <= '0';
			final <= '0';
			
			s_nextState <= E;
			
		when E =>
			ledRed0 <= '0';
			ledRed1 <= '0';
			ledRed2 <= '0';
			final <= '1';
			s_nextState <= E;
			
		end case;
	end process;

end Behavioral;