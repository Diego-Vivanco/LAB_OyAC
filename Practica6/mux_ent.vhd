library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_ent is
	Port(sel: in  STD_LOGIC_VECTOR(1 downto 0);
		  I0: in std_logic; --X
		  I1: in std_logic; --Y
		  I2: in std_logic; --INT
		  I3: in std_logic; --Qaux
		  O:  out std_logic);
end mux_ent;

architecture Behavioral of mux_ent is
begin
	process (sel, I0, I1,I2,I3)
	begin
		if sel = "00" then
			O <= I0;
		elsif sel = "01" then
			O <= I1;
		elsif sel = "10" then 
			O <= I2;
		elsif sel = "11" then
			O <= I3;
		end if;
	end process;
end Behavioral;