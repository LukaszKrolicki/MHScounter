library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity displayHEX3 is
port (
i1 : in bit_vector(3 downto 0);
o1 : out std_logic_vector(6 downto 0);
i2 : in bit_vector(3 downto 0);
o2 : out std_logic_vector(6 downto 0)
);
end displayHEX3;

architecture behaviour of displayHEX3 is
component displayHEX is 
port (
i : in bit_vector(3 downto 0);
o : out std_logic_vector(6 downto 0)
);
end component;
begin 
	Disp1: displayHEX port map (i => i1, o => o1);
	Disp2: displayHEX port map (i => i2, o => o2);
end behaviour;