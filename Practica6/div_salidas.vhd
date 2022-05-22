library IEEE;
use IEEE.std_logic_1164.all;

entity div_salidas is
	generic(
		data_width : natural :=6
	);
	port(
		rst: in std_logic;
		salidas: in std_logic_vector(data_width-1 downto 0);
		s5: out std_logic;
		s4: out std_logic;
		s3: out std_logic;
		s2: out std_logic;
		s1: out std_logic;
		s0: out std_logic
	);
end entity div_salidas;

architecture arch_div_s of div_salidas is
begin
	process (salidas)
	begin
		if rst = '1' then
			s5 <= '0';
			s4 <= '0';
			s3 <= '0';
			s2 <= '0';
			s1 <= '0';
			s0 <= '0';
		else
			s5 <= salidas(5);
			s4 <= salidas(4);
			s3 <= salidas(3);
			s2 <= salidas(2);
			s1 <= salidas(1);
			s0 <= salidas(0);
		end if;
	end process;
end architecture arch_div_s;