library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity muxs is
	Port( sel: in std_logic;
			sal_f: in std_logic_vector(3 downto 0); --Salida Falsa
			sal_v: in std_logic_vector(3 downto 0); --Salida Verdadera
			salida: out std_logic_vector(3 downto 0) --Salidas efectivas
			); 
end muxs;

architecture arch_muxs of muxs is
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