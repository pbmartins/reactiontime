library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RandomGenerator is
	port(clk      : in std_logic;
		  reset    : in std_logic;
		  input    : in std_logic;
		  validOut : out std_logic;
		  dataOut  : out std_logic_vector(5 downto 0));
end RandomGenerator;

architecture Shell of RandomGenerator is
	signal s_rnd : std_logic_vector(5 downto 0);
begin
	rnd_gen : entity work.pseudo_random_generator(v1)
					generic map(n_output_bits => 6)
					port map(clk      => clk,
								rnd      => s_rnd);
								
	fsm : entity work.RandomGeneratorFSM(Behavioral)
					port map(clk      => clk,
								reset    => reset,
								input    => input,
								dataIn   => s_rnd,
								validOut => validOut,
								dataOut  => dataOut);

end Shell;