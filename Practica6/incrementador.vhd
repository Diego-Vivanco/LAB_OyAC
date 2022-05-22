library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity incrementador is
	generic(
		data_width: natural := 4
	);
	port(
		edo_n: in std_logic_vector(data_width-1 downto 0);
		est_pres: out std_logic_vector(data_width-1 downto 0)
	);
end entity incrementador;

architecture inc of incrementador is
	--signal conta: integer range 0 to 2**data_width-1;
	--signal conta : std_logic_vector(2 downto 0); --n+1
begin
	process(edo_n)
	begin
		est_pres <=std_logic_vector(unsigned(edo_n)+1);
		--est_pres <= std_logic_vector(to_unsigned(conta, est_pres'length));
	end process;
end architecture;