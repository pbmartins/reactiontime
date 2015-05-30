--
-- TOS, May 2014
-- AO, April 2015
--
-- IrDA decoder example (NEC protocol)
--

--
-- top level
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity IrDA_example_tl is
  port
  (
    -- master clock
    clock_50    : in  std_logic;                    -- 50 MHz clock
    -- commands
	 play : out std_logic;
	 reset : out std_logic;
	 mute : out std_logic;
    dataOut      : out std_logic_vector(5 downto 0); -- value of waiting
	 dataReady : out std_logic;
    -- IrDA
    irda_rxd    : in  std_logic                     -- IrDA remote control signal
  );
end IrDA_example_tl;

architecture v1 of IrDA_example_tl is
  -- IrDA component (black box)
  component irda_nec_decoder is
    port
    (
      clk          : in  std_logic;
      ir_data      : in  std_logic;
      valid_pulse  : out std_logic;
      decoded_data : out std_logic_vector(31 downto 0)
    );
  end component;
  
  -- signals
  signal ir_data : std_logic;
  signal valid   : std_logic;
  signal n       : natural range 0 to 50000000;
  signal data    : std_logic_vector(31 downto 0);
  signal info    : std_logic_vector(7 downto 0);
  
begin
  process(clock_50) is
  begin
    if (rising_edge(clock_50)) then
      ir_data <= irda_rxd; -- sample all input signals!
      if valid = '1' and data(31 downto 24) = not data(23 downto 16) then
			dataReady <= '1';
        n <= 50000000;
      elsif n > 0 then
			dataReady <= '0';
        n <= n-1;
		else
			dataReady <= '0';
      end if;
    end if;
  end process;
  
	info <= data(23 downto 16);
	process(info)
	begin
	case info is
		when "00010110" =>
			dataOut <= "000000";
			play <= '1';
			reset <= '0';
			mute <= '0';
			
		when "00001100" =>
			dataOut <= "000000";
			play <= '0';
			reset <= '0';
			mute <= '1';
			
		when "00010111" =>
			dataOut <= "000000";
			play <= '0';
			reset <= '1';
			mute <= '0';
		
		when others =>
			dataOut <= "00" & info(3 downto 0);
	end case;
	end process;

  DECODER : irda_nec_decoder
			port map(clk => clock_50,
						ir_data => ir_data,
						valid_pulse => valid,
						decoded_data => data);
end v1;
