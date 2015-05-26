library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RandomGenerator is
	port(clk : in std_logic;
		  input : in std_logic;
		  validOut : out std_logic;
		  dataOut : out std_logic_vector(5 downto 0));
end RandomGenerator;

architecture Shell of RandomGenerator is
	signal s_rnd : std_logic_vector(5 downto 0);
	signal s_out : std_logic_vector(5 downto 0);
	signal s_en, s_valid : std_logic;
begin
	rnd_gen : entity work.pseudo_random_generator(v1)
					generic map(n_output_bits => 6)
					port map(clk => clk,
								rnd => s_rnd);
								
	en_proc : process(s_valid, input)
	begin
		s_en <= s_valid or input;
	end process;
								
	shiftreg : entity work.ShiftRegisterN(Behavioral)
					generic map(size => 6)
					port map(clk => clk,
								enable => s_en,
								dataIn => s_rnd,
								dataOut => s_out);
								
	checkrng : entity work.CheckRangeN(Behavioral)
					generic map(size => 6)
					port map(dataIn => s_out,
								dataOut => dataOut,
								validOut => s_valid);
								
	validOut <= not s_valid;

end Shell;