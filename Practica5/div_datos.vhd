library IEEE;
use IEEE.std_logic_1164.all;

entity div_datos is
	generic(
		data_width : natural :=15
	);
	port(
		mem: in std_logic_vector(data_width-1 downto 0);
		prueba: out std_logic_vector(2 downto 0);
		vf: out std_logic;
		liga: out std_logic_vector(2 downto 0);
		salida_verdadera : out std_logic_vector(3 downto 0);
		salida_falsa: out std_logic_vector(3 downto 0)
	);
end entity div_datos;

architecture arch_div_d of div_datos is
begin
	process (mem)
	begin
		prueba <= mem(14 downto 12);
		vf <= mem(11);
		liga <= mem(10 downto 8);
		salida_verdadera <= mem(7 downto 4);
		salida_falsa <= mem(3 downto 0);
	end process;
end architecture arch_div_d;