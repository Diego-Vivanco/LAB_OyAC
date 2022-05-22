library IEEE;
use IEEE.std_logic_1164.all;

entity div_sal is
	generic(
		data_width : natural :=9
	);
	port(
		mem: in std_logic_vector(data_width-1 downto 0);
		liga: out std_logic_vector(2 downto 0);
		sal_5: out std_logic;
		sal_4: out std_logic;
		sal_3: out std_logic;
		sal_2: out std_logic;
		sal_1: out std_logic;
		sal_0: out std_logic
	);
end entity div_sal;

architecture arch_div_s of div_sal is
begin
	process (mem)
	begin
		sal_5 <= mem(5);
		sal_4 <= mem(4);
		sal_3 <= mem(3);
		sal_2 <= mem(2);
		sal_1 <= mem(1);
		sal_0 <= mem(0);
		liga <= mem(8 downto 6);
	end process;
end architecture arch_div_s;