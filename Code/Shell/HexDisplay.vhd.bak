library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity HexDisplay is
	port(enable     : in std_logic;
		  error      : in std_logic;
		  count      : in std_logic_vector(23 downto 0);
	     dispOut0_n : out std_logic_vector(6 downto 0);
		  dispOut1_n : out std_logic_vector(6 downto 0);
		  dispOut2_n : out std_logic_vector(6 downto 0);
		  dispOut3_n : out std_logic_vector(6 downto 0);
		  dispOut4_n : out std_logic_vector(6 downto 0);
		  dispOut5_n : out std_logic_vector(6 downto 0));
end HexDisplay;

architecture Structural of HexDisplay is
	signal s_registerOut	: std_logic_vector(23 downto 0);
begin
	s_registerOut <= "11101111111111011111" when (error = '1') else
	                 "11001100110011001100" when (enable = '0') else
						  count;
	
	disp_0_decoder : entity WORK.Bin7SegDecoder(Behavioral)
		port map(binInput		 => s_registerOut(3 downto 0),
               decOut_n		 => dispOut0_n);

	disp_1_decoder : entity WORK.Bin7SegDecoder(Behavioral)
		port map(binInput		 => s_registerOut(7 downto 4),
					decOut_n		 => dispOut1_n);

	disp_2_decoder : entity WORK.Bin7SegDecoder(Behavioral)
		port map(binInput		 => s_registerOut(11 downto 8),
					decOut_n		 => dispOut2_n);

	disp_3_decoder : entity WORK.Bin7SegDecoder(Behavioral)
		port map(binInput		 => s_registerOut(15 downto 12),
					decOut_n		 => dispOut3_n);
					
	disp_4_decoder : entity WORK.Bin7SegDecoder(Behavioral)
		port map(binInput		 => s_registerOut(19 downto 16),
					decOut_n		 => dispOut4_n);		
	disp_5_decoder : entity WORK.Bin7SegDecoder(Behavioral)
		port map(binInput		 => s_registerOut(23 downto 20),
					decOut_n		 => dispOut5_n);							
end Structural;