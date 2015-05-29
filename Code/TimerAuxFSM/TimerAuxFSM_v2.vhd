library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerAuxFSM_v2 is
	port(newTime : in std_logic;
		  clk : in std_logic;
		  reset : in std_logic;
		  isActive : out std_logic;
		  timerVal : in std_logic_vector(5 downto 0);
		  currentValue : out std_logic_vector(5 downto 0);
		  timeExp : out std_logic);
end TimerAuxFSM_v2;

architecture Behav of TimerAuxFSM_v2 is
	signal s_counter : unsigned(5 downto 0) := (others => '1');
	signal s_timeExp, s_active : std_logic := '0';
begin
	process(clk, reset, newTime)
	begin
		if (reset = '1') then
			s_counter <= (others => '1');
			s_active <= '0';
			s_timeExp <= '0';
		elsif (newTime = '1' and s_active = '0') then
			if (unsigned(timerVal) > 4 and unsigned(timerVal) < 61) then
				s_counter <= unsigned(timerVal) - 1;
				s_timeExp <= '0';
				s_active <= '1';
			end if;
		elsif (rising_edge(clk) and s_active = '1') then
			s_counter <= s_counter - 1;
			if (s_counter = "000000") then
				s_timeExp <= '1';
				s_active <= '0';
			else 
				s_timeExp <= '0';
				s_active <= '1';
			end if;
		end if;
	end process;
	timeExp <= s_timeExp;
	isActive <= s_active;
	currentValue <= std_logic_vector(s_counter);
end Behav;