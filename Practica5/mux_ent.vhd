library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_ent is
	Port(sel: in  STD_LOGIC_VECTOR(2 downto 0);
		  I0: in std_logic; --W
		  I1: in std_logic; --X
		  I2: in std_logic; --Y
		  I3: in std_logic; --Z
		  O:  out std_logic);
end mux_ent;

architecture Behavioral of mux_ent is
begin
	process (sel, I0, I1,I2,I3)
	begin
		if sel = "000" then
			O <= I0;
		elsif sel = "001" then
			O <= I1;
		elsif sel = "010" then 
			O <= I2;
		elsif sel = "011" then
			O <= I3;
		elsif sel = "100" then  -- Auxiliar
			O <= '0';
		end if;
	end process;
end Behavioral;