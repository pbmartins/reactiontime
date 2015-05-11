library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity MainFSM is
	port (input : in std_logic;
			reset : in std_logic;
			valid : in std_logic;
			timeExp : in std_logic;
			clk : in std_logic;
			final : in std_logic;
			newTime : out std_logic;
			ledCounter_En : out std_logic;
			counter_En : out std_logic;
			hex_En : out std_logic;
			hex_Error : out std_logic;
			stOut : out std_logic_vector(2 downto 0);
			ledGreen_En : out std_logic);
end MainFSM;

architecture Behav of MainFSM is
	type State is (A, B, C, D, E, F, G, H);
	signal PS, NS : State;
begin
	clock_proc : process(clk, reset, input)
	begin
		if (reset <= '1') then
			PS <= A;
		elsif ((PS = D or PS = E) and (input = '1')) then
			PS <= H;
		elsif ((PS = F) and (input = '1')) then
			PS <= G;
		elsif (rising_edge(clk)) then
			PS <= NS;
		end if;
	end process;
	
	main_proc : process(PS, input, valid, timeExp, final)
	begin
		newTime <= '0';
		ledCounter_En <= '0';
		counter_En <= '0';
		ledGreen_En <= '0';
		hex_En <= '0';
		hex_Error <= '0';
		
		case PS is
		when A =>
			if (input = '1') then
				NS <= A;
			else
				NS <= A;
			end if;
		
		when B =>
			if (valid = '1') then
				NS <= C;
			else
				NS <= B;
			end if;
			
		when C =>
			LedCounter_En <= '1';
			if (final = '1') then
				NS <= D;
			else
				NS <= C;
			end if;
			
		when D =>
			newTime <= '1';
			if (input = '1') then
				NS <= H;
			else
				if (timeExp <= '1') then
					NS <= G;
				else
					NS <= E;
				end if;
			end if;
			
		when E =>
			if (input = '1') then
				if (timeExp = '1') then
					NS <= F;
				else
					NS <= E;
				end if;
			else
				NS <= H;
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
	
	with PS select
		stOut <= "000" when A,
					"001" when B,
					"010" when C,
					"011" when D,
					"100" when E,
					"101" when F,
					"110" when G,
					"111" when H;
end Behav;