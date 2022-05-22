library IEEE;
use IEEE.std_logic_1164.all;

entity div_datos is
	generic(
		data_width : natural :=18
	);
	port(
		mem: in std_logic_vector(data_width-1 downto 0);
		prueba: out std_logic_vector(1 downto 0);
		liga_falsa: out std_logic_vector(2 downto 0);
		liga_verdadera: out std_logic_vector(2 downto 0);
		salida_falsa : out std_logic_vector(4 downto 0);
		salida_verdadera: out std_logic_vector(4 downto 0)
	);
end entity div_datos;

architecture arch_div_d of div_datos is
begin
	process (mem)
	begin
		prueba <= mem(17 downto 16);
		liga_falsa <= mem(15 downto 13);
		liga_verdadera <= mem(12 downto 10);
		salida_falsa <= mem(9 downto 5);
		salida_verdadera <= mem(4 downto 0);
	end process;
end architecture arch_div_d;