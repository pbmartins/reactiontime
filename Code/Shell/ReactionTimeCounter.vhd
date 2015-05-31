library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ReactionTimeCounter is
	port(reset		: in  std_logic;
		  clk			: in  std_logic;
		  clkEnable	: in  std_logic;
		  count		: out std_logic_vector(31 downto 0));
end ReactionTimeCounter;

architecture Behavioral of ReactionTimeCounter is

	signal s_count : unsigned(31 downto 0);

begin
	process(clk)
	begin
		if (reset = '1') then
			s_count <= (others => '0');
		elsif (rising_edge(clk)) then
			if (clkEnable = '1') then
				--Milesimas
				if (s_count(3 downto 0) = "1001") then
					s_count(3 downto 0) <= "0000";
					if (s_count(7 downto 4) = "1001") then
						s_count(7 downto 4) <= "0000";
						--Centisimas
						if (s_count(11 downto 8) = "1001") then
							s_count(11 downto 8) <= "0000";
							if (s_count(15 downto 12) = "1001") then
								s_count(15 downto 12) <= "0000";
								--Segundos
								if (s_count(19 downto 16) = "1001") then
									s_count(19 downto 16) <= "0000";
									if (s_count(23 downto 20) = "1001") then
										s_count(23 downto 20) <= "0000";
										if (s_count(27 downto 24) = "1001") then
											s_count(27 downto 24) <= "0000";
											if (s_count(31 downto 28) = "0101") then
												s_count(31 downto 28) <= "0000";
											else
												s_count(31 downto 28) <= s_count(31 downto 28) + 1;
											end if;
										else
											s_count(27 downto 24) <= s_count(27 downto 24) + 1;
										end if;
									else
										s_count(23 downto 20) <= s_count(23 downto 20) + 1;
									end if;
								else
									s_count(19 downto 16) <= s_count(19 downto 16) + 1;
								end if;	
							else
								s_count(15 downto 12) <= s_count(15 downto 12) + 1;
							end if;
						else
							s_count(11 downto 8) <= s_count(11 downto 8) + 1;
						end if;
					else
						s_count(7 downto 4) <= s_count(7 downto 4) + 1;
					end if;
				else
					s_count(3 downto 0) <= s_count(3 downto 0) + 1;
				end if;
			end if;
		end if;
	end process;

	count <= std_logic_vector(s_count);
end Behavioral;
