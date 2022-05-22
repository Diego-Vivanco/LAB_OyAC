library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity incrementador is
	generic(
		data_width: natural := 3
	);
	port(
		edo_n: in std_logic_vector(data_width-1 downto 0);
		est_pres: out std_logic_vector(data_width-1 downto 0)
	);
end entity incrementador;

architecture inc of incrementador is
begin
	process(edo_n)
	begin
		est_pres <=std_logic_vector(unsigned(edo_n)+1);
	end process;
end architecture;