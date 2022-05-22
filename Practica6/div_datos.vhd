library IEEE;
use IEEE.std_logic_1164.all;

entity div_datos is
	generic(
		data_width : natural :=21
	);
	port(
		mem: in std_logic_vector(data_width-1 downto 0);
		prueba: out std_logic_vector(1 downto 0);
		vf: out std_logic;
		mci: out std_logic_vector(1 downto 0);
		liga: out std_logic_vector(3 downto 0);
		salida_verdadera : out std_logic_vector(5 downto 0);
		salida_falsa: out std_logic_vector(5 downto 0)
	);
end entity div_datos;

architecture arch_div_d of div_datos is
begin
	process (mem)
	begin
		prueba <= mem(20 downto 19);
		vf <= mem(18);
		mci <=mem(17 downto 16);
		liga <= mem(15 downto 12);
		salida_verdadera <= mem(11 downto 6);
		salida_falsa <= mem(5 downto 0);
	end process;
end architecture arch_div_d;