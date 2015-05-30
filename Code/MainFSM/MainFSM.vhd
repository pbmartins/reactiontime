library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity MainFSM is
	port (input : in std_logic;
			reset : in std_logic;
			timeExp : in std_logic;
			clk : in std_logic;
			final : in std_logic;
			newTime : out std_logic;
			ledCounter_En : out std_logic;
			counter_En : out std_logic;
			hex_En : out std_logic;
			hex_Error : out std_logic;
			ledGreen_En : out std_logic);
end MainFSM;

architecture Behav of MainFSM is
	type State is (A, B, C, D, E, F, G, H);
	signal PS, NS : State := A;
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
	
	main_proc : process(PS, input, timeExp, final)
	begin
		NS <= PS;
		newTime       <= '0';
		ledCounter_En <= '0';
		counter_En    <= '0';
		ledGreen_En   <= '0';
		hex_En        <= '0';
		hex_Error     <= '0';
		
		case PS is
		when A =>
			if (input = '1') then
				NS <= B;
			else
				NS <= A;
			end if;
			
		when B =>
			LedCounter_En <= '1';
			if (final = '1') then
				NS <= C;
			else
				NS <= B;
			end if;
			
		when C =>
			newTime <= '1';
			NS <= D;
			
		when D =>
			if (input = '1') then
				NS <= H;
			else
				NS <= E;
			end if;
			
		when E =>
			if (input = '1') then
				NS <= H;
			elsif (timeExp = '1') then
				NS <= F;
			else
				NS <= E;
			end if;
			
		when F =>
			LedGreen_En <= '1';
			Counter_En <= '1';
			if (input = '1') then
				NS <= G;
			else
				NS <= F;
			end if;
			
		when G =>
			hex_En <= '1';
			
		when H =>
			hex_En <= '1';
			hex_Error <= '1';
			
			
		end case;
	end process;
end Behav;