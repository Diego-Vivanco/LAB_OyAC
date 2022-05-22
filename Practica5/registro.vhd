library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity registro is
	generic(
		data_width : natural :=3
	);
	port(
		q : out std_logic_vector(data_width-1 downto 0);
		entradas: in std_logic_vector(data_width-1 downto 0);
		rst: in std_logic;
		clk: in std_logic	
	);
end entity registro;

architecture arch_reg of registro is
signal estado : std_logic_vector(data_width-1 downto 0) := std_logic_vector(to_unsigned(0,entradas'length));
begin
	process (clk, rst, entradas)
	begin
		if rst = '1' then
			estado <= std_logic_vector(to_unsigned(0,q'length));
		elsif rising_edge(clk) then
			estado <= entradas;
		end if;
	end process;
	process (estado)
	begin
		q <= estado;
	end process;
		
end architecture arch_reg;