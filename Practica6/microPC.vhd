library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity microPC is

	generic (
		data_width: natural := 3
	);
	
	port(
		clk: in std_logic;
		y_i: in std_logic_vector(data_width-1 downto 0);
		y_out: out std_logic_vector(data_width-1 downto 0)
		);
		
	end entity microPC;
	
	
	architecture arch of microPC is
		signal count: integer range 0 to 2**data_width-1;
		begin
		
			process(clk)
			begin
				if rising_edge(clk) then
							if count = 2**data_width-1 then --si la cuenta llego al ultimo valor
							count <= 0;
							else
							count <= count + 1;
							end if;
						end if;
				end process;
				
				y_out <= std_logic_vector(to_unsigned(count, y_out'length));
							
end architecture;
		
		
		
		
		