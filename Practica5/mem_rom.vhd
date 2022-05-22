library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mem_rom is
	generic(data_width : natural :=15;  --Contenido de la memoria
			  addr_length : natural :=3 --Direccion de memoria
			  );
	port(
			--clk: in std_logic; --Reloj
			address: in std_logic_vector(addr_length-1 downto 0); --Edo. Presente
			data_out: out std_logic_vector(data_width-1 downto 0)  --Edo. Siguiente
		 );
end mem_rom;

architecture arch_rom of mem_rom is
	constant mem_size : natural := 2**addr_length;
	type mem_type is array(mem_size-1 downto 0) of std_logic_vector(data_width-1 downto 0);
	constant mem : mem_type :=
		(
			-- Contenido de la memoria
			0 => b"000111001010011", 1 =>b"010011110001011", 
			2 => b"011010111111010", 3 =>b"100110001010101",
			4 => b"001101011111111", 5 =>b"100001110111011", 
			6 => b"100010001010101", 7 =>b"100000100000000"

		);
		
begin
	process (address)
	begin
		data_out <= mem(to_integer (unsigned(address)));
	end process;
end architecture arch_rom;