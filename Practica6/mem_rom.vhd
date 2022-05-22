library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mem_rom is
	generic(data_width : natural :=21;  --Contenido de la memoria
			  addr_length : natural :=4 --Direccion de memoria
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
			0 => b"000000000000001000001", 1 =>b"001010111001111001111", 
			2 => b"000000000000011000011", 3 =>b"000000000001010001010",
			4 => b"000100000010000010000", 5 =>b"010011010110010010010", 
			6 => b"110010000001001001001", 7 =>b"100110000010000010000",
			8 => b"110010001100000100000", 9 =>b"101110000001010001010",
			10 => b"110110000000000000000", 11 =>b"000000000000100000100",
			12 => b"110110000000100000100", 13 =>b"110110000101000101000",
			14 => b"110110000010011010011", 15 =>b"110110000000000000000"

		);
		
begin
	process (address)
	begin
		data_out <= mem(to_integer (unsigned(address)));
	end process;
end architecture arch_rom;