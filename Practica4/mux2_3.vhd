library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity mux2_3 is
	Port( sel: in std_logic;
			I0: in std_logic_vector(2 downto 0); --Liga Falsa
			I1: in std_logic_vector(2 downto 0); --Liga Verdadera
			O: out std_logic_vector(2 downto 0)  --Estado Siguiente
			); 
end mux2_3;

architecture arch_mux23 of mux2_3 is
begin
	process (sel, I0, I1)
	begin 
		if sel = '0' then
			O <= I0;
		elsif sel = '1' then
			O <= I1;
		end if;
	end process;
end arch_mux23;

	