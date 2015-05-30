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
    -- leds
    ledg        : out std_logic_vector(8 downto 8); -- one of the green leds
    -- 7-segment displays
    hex0        : out std_logic_vector(6 downto 0); -- 7-segment display (.. .. ...X)
    hex1        : out std_logic_vector(6 downto 0); -- 7-segment display (.. .. ..X.)
    hex2        : out std_logic_vector(6 downto 0); -- 7-segment display (.. .. .X..)
    hex3        : out std_logic_vector(6 downto 0); -- 7-segment display (.. .. X...)
    hex4        : out std_logic_vector(6 downto 0); -- 7-segment display (.. .X ....)
    hex5        : out std_logic_vector(6 downto 0); -- 7-segment display (.. X. ....)
    hex6        : out std_logic_vector(6 downto 0); -- 7-segment display (.X .. ....)
    hex7        : out std_logic_vector(6 downto 0); -- 7-segment display (X. .. ....)
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
begin
  process(clock_50) is
  begin
    if rising_edge(clock_50) then
      ir_data <= irda_rxd; -- sample all input signals!
      if valid = '1' and data(31 downto 24) = not data(23 downto 16) then
        n <= 50000000;
      elsif n > 0 then
        n <= n-1;
      end if;
    end if;
  end process;
  ledg(8) <= '0' when n = 0 else '1';
  D7 : work.bin_to_7seg(v1) port map(bin => data(31 downto 28),display => hex7); -- not command
  D6 : work.bin_to_7seg(v1) port map(bin => data(27 downto 24),display => hex6); -- not command
  D5 : work.bin_to_7seg(v1) port map(bin => data(23 downto 20),display => hex5); -- command
  D4 : work.bin_to_7seg(v1) port map(bin => data(19 downto 16),display => hex4); -- command
  D3 : work.bin_to_7seg(v1) port map(bin => data(15 downto 12),display => hex3); -- address high
  D2 : work.bin_to_7seg(v1) port map(bin => data(11 downto  8),display => hex2); -- address high
  D1 : work.bin_to_7seg(v1) port map(bin => data( 7 downto  4),display => hex1); -- address low
  D0 : work.bin_to_7seg(v1) port map(bin => data( 3 downto  0),display => hex0); -- address low
  DECODER : irda_nec_decoder port map(clk => clock_50,ir_data => ir_data,valid_pulse => valid,decoded_data => data);
end v1;
