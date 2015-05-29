library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity MainFSM is
	port(clk           : in std_logic;
		  reset         : in std_logic;
		  inputKey      : in std_logic;
		  final         : in std_logic;
		  isActive      : in std_logic;
		  timeExp       : in std_logic;
		  ledCounter_En : out std_logic;
		  newTime       : out std_logic;
		  ledGreen_En   : out std_logic;
		  counter_En    : out std_logic;
		  hex_en        : out std_logic;
		  hex_error     : out std_logic);
end MainFSM;

architecture Behav of MainFSM is
	type State is (A, B, C, D, E, F, G);
	signal PS, NS : State := A;
begin
	clock_proc : process(clk)
	begin
		if (reset = '1') then
			PS <= A;
		elsif (rising_edge(clk)) then
			PS <= NS;
		end if;
	end process;
	
	main_proc : process(PS, inputKey, final, isActive, timeExp)
	begin
		case PS is
			when A =>
				ledCounter_En <= '0';
				newTime <= '0';
				ledGreen_En <= '0';
				counter_En <= '0';
				hex_en <= '0';
				hex_error <= '0';
				
				if (inputKey = '1') then
					NS <= B;
				else
					NS <= A;
				end if;
				
			when B =>
				ledCounter_En <= '1';
				newTime <= '0';
				ledGreen_En <= '0';
				counter_En <= '0';
				hex_en <= '0';
				hex_error <= '0';
				
				if (final = '1') then
					NS <= C;
				else
					NS <= B;
				end if;
			
			when C =>
				ledCounter_En <= '0';
				newTime <= '1';
				ledGreen_En <= '0';
				counter_En <= '0';
				hex_en <= '0';
				hex_error <= '0';
				
				if (isActive = '1') then
					NS <= D;
				else
					NS <= C;
				end if;
				
			when D =>
				ledCounter_En <= '0';
				newTime <= '0';
				ledGreen_En <= '0';
				counter_En <= '0';
				hex_en <= '0';
				hex_error <= '0';
				
				if (timeExp = '1') then
					NS <= E;
				else
					if (inputKey = '1') then
						NS <= F;
					else
						NS <= D;
					end if;
				end if;
			
			when E =>
				ledCounter_En <= '0';
				newTime <= '0';
				ledGreen_En <= '1';
				counter_En <= '1';
				hex_en <= '1';
				hex_error <= '0';
				
				if (inputKey = '1') then
					NS <= G;
				else
					NS <= E;
				end if;
				
			when F =>
				ledCounter_En <= '0';
				newTime <= '0';
				ledGreen_En <= '0';
				counter_En <= '0';
				hex_en <= '1';
				hex_error <= '1';
				
				NS <= F;
			
			when G =>
				ledCounter_En <= '0';
				newTime <= '0';
				ledGreen_En <= '0';
				counter_En <= '0';
				hex_en <= '1';
				hex_error <= '0';
				
				NS <= G;
		end case;
	end process;
end Behav;