library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity displayHEX is
port (
i : in bit_vector(3 downto 0);
o : out std_logic_vector(6 downto 0)
);
end displayHEX;

architecture behaviour of displayHEX is
begin 
with i select
o <= "1000000" when "0000",
"1111001" when "0001",
"0100100" when "0010",
"0110000" when "0011",
"0011001" when "0100",
"0010010" when "0101",
"0000010" when "0110",
"1111000" when "0111",
"0000000" when "1000",
"0010000" when "1001",
"0001000" when "1010",
"0000011" when "1011",
"1000110" when "1100",
"0100001" when "1101",
"0000110" when "1110",
"0001110" when "1111",
"XXXXXXX" when others;
end behaviour;