library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity mux_sal is
	Port( sel: in std_logic;
			sal_f: in std_logic_vector(5 downto 0); --Salida Falsa
			sal_v: in std_logic_vector(5 downto 0); --Salida Verdadera
			salida: out std_logic_vector(5 downto 0) --Salidas efectivas
			); 
end mux_sal;

architecture arch_muxs of mux_sal is
begin
	process (sel,sal_f, sal_v)
	begin 
		if sel = '0' then
			salida <= sal_f;
		elsif sel = '1' then
			salida <= sal_v;
		end if;
	end process;
end arch_muxs;