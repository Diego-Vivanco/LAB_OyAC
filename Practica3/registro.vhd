library IEEE;
use IEEE.std_logic_1164.all;

entity registro is
	generic(
		data_width : natural :=6 
	);
	port(
		q : out std_logic_vector(data_width-1 downto 0);
		entradas: in std_logic_vector(2 downto 0);
		presente: out std_logic_vector(2 downto 0);
		liga : in std_logic_vector(2 downto 0);
		rst: in std_logic;
		clk: in std_logic	
	);
end entity registro;

architecture arch_reg of registro is

signal estado : std_logic_vector(5 downto 0) := b"000000";

begin
	process (clk, rst, entradas, liga)
	begin
		if rst = '1' then
			estado <= "000000";
			
		elsif rising_edge(clk) then
			presente <=liga;
			estado <= liga & entradas;
		end if;
	end process;
	process (estado)
	begin
		q <= estado;
	end process;
end architecture arch_reg;
			
		