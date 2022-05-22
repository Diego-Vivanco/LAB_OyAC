library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity registro_3 is
	port( clk: in std_logic;
			RESET: in std_logic;
			ENA: in std_logic; 
			entrada: in std_logic;
			salida: out std_logiC
			);
end registro_3;

architecture Behavioral of registro_3 is
	signal interno: std_logic := '0';
	constant alta_impedancia : std_logic:='Z';
	constant zero : std_logic:= '0';
	
	begin
		process(CLK, RESET, entrada)
		begin
			if RESET = '0' then
				interno <= zero;
			elsif rising_edge(CLK) then
				interno <= entrada;
			end if;
		end process;
		
		process(interno, ENA)
		begin
			if ENA = '1' then
				salida <= alta_impedancia;
			else
				salida <= interno;
			end if;
		end process;
				
end Behavioral;
			