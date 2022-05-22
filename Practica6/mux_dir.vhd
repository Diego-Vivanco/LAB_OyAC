library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity mux_dir is
	Port( sel: in std_logic;
			paso_c: in std_logic_vector(3 downto 0); --Paso contiguo
			liga: in std_logic_vector(3 downto 0); --Salto
			edo_pres: out std_logic_vector(3 downto 0) -- Edo. Presente
			); 
end mux_dir;

architecture arch_mdir of mux_dir is
begin
	process (sel,paso_c, liga)
	begin 
		if sel = '0' then
			edo_pres <= paso_c; --Estado N+1
		else
			edo_pres <= liga;   --Estado P
		end if;
	end process;
end arch_mdir;