library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RandomGeneratorFSM is
	port(clk      : in std_logic;
		  reset    : in std_logic;
		  dataIn   : in std_logic_vector(5 downto 0);
		  input    : in std_logic;
		  validOut : out std_logic;
		  dataOut  : out std_logic_vector(5 downto 0));
end RandomGeneratorFSM;

architecture Behavioral of RandomGeneratorFSM is
	type State is (A, B, C, D);
	signal PS, NS : State := A;
	signal s_dataIn, s_dataOut : unsigned(5 downto 0);
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
	
	main_proc : process(PS, input, dataIn)
	begin
	NS <= PS;
		case PS is
		when A =>
			dataOut <= "000000";
			validOut <= '0';
			if (input = '1') then
				NS <= B;
			else
				NS <= A;
			end if;
			
		when B =>
			dataOut <= "000000";
			validOut <= '0';
			s_dataIn <= unsigned(dataIn);
			NS <= C;
		
		when C =>
			if (s_dataIn > 4 and s_dataIn < 61) then
				NS <= D;
			else
				NS <= B;
			end if;
		
		when D =>
			dataOut <= std_logic_vector(s_dataIn);
			validOut <= '1';
			NS <= D;
		end case;
	end process;

end Behavioral;