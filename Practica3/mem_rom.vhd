library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mem_rom is
	generic(data_width : natural :=9;  --Contenido de la memoria
			  addr_length : natural :=6 --Direccion de memoria
			  );
	port(
			clk: in std_logic; --Reloj
			address: in std_logic_vector(addr_length-1 downto 0); --Edo. Presente
			data_out: out std_logic_vector(data_width-1 downto 0)  --Edo. Siguiente
		 );
end mem_rom;

architecture arch_rom of mem_rom is
	constant mem_size : natural := 2**addr_length;
	type mem_type is array(mem_size-1 downto 0) of std_logic_vector(data_width-1 downto 0);
	constant mem : mem_type :=
		(
			-- Contenido para estado 0
			0 => b"001010011", 1 =>b"001010011", 2 => b"001010011", 3 =>b"001010011",
			4 => b"010000111", 5 =>b"010000111", 6 => b"010000111", 7 =>b"010000111",
			
			--Contenido para estado 1
			 8 => b"011001000", 9 =>b"011001000", 10 => b"011001000", 11 =>b"011001000",
			12 => b"011001000", 13 =>b"011001000", 14 => b"011001000", 15 =>b"011001000",
			
			--Contenido para estado 2
			16 => b"100100001", 17 =>b"100100001", 18 => b"010100001", 19 =>b"010100001",
			20 => b"100100001", 21 =>b"100100001", 22 => b"010100001", 23 =>b"010100001",
			
			--Contenido para estado 3			
			24 => b"001101000", 25 =>b"001101010", 26 => b"001101000", 27 =>b"001101010",
			28 => b"001101000", 29 =>b"001101010", 30 => b"001101000", 31 =>b"001101010",

			--Contenido para estado 4
			32 => b"000010000", 33 =>b"000010000", 34 => b"000010000", 35 =>b"000010000",
			36 => b"000010000", 37 =>b"000010000", 38 => b"000010000", 39 =>b"000010000",
			
			 --Contenido para estados 5, 6 y 7
			others =>b"000000000"
		);
		
begin
	process (clk)
	begin
		if rising_edge(clk) then
			data_out <= mem(to_integer (unsigned(address)));
		end if;
	end process;
end architecture arch_rom;