library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerAuxFSM is
	port(newTime : in std_logic;
		  clk : in std_logic;
		  reset : in std_logic;
		  timerVal : in std_logic_vector(5 downto 0);
		  timeExp : out std_logic);
end TimerAuxFSM;

architecture Behav of TimerAuxFSM is
	type State is (A, B, C, D);
	signal PS, NS : State;
	signal s_counter : unsigned(5 downto 0) := (others => '1');
begin
	clock_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				PS <= A;
			else
				PS <= NS;
			end if;
		end if;
	end process;
	
	main_proc : process(PS, newTime)
	begin
		timeExp <= '0';
		
		case PS is
		when A =>
			if (newTime = '1') then
				NS <= B;
			else
				NS <= A;
			end if;
			
		when B =>
			s_counter <= unsigned(timerVal) - 1;
			if (s_counter = "000000") then
				NS <= D;
			else
				NS <= C;
			end if;
			
		when C =>
			s_counter <= s_counter - 1;
			if (s_counter = "000000") then
				NS <= D;
			else
				NS <= C;
			end if;
			
		when D =>
			timeExp <= '1';
			if (newTime = '1') then
				NS <= B;
			else
				NS <= D;
			end if;
			
		end case;
	end process;
end Behav;