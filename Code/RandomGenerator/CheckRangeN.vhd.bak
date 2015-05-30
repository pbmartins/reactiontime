library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CheckRangeN is
	generic(size : natural := 4);
	port(validOut : out std_logic;
		  dataIn : in std_logic_vector(size-1 downto 0);
		  dataOut : out std_logic_vector(size-1 downto 0));
end CheckRangeN;

architecture Behavioral of CheckRangeN is
begin
	process(dataIn)
	begin
		if (unsigned(dataIn) > 4 and unsigned(dataIn) < 61) then
			dataOut <= dataIn;
			validOut <= '0';
		else
			validOut <= '1';
		end if;
	end process;
end Behavioral;