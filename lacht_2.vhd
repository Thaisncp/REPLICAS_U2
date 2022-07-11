library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity latch is
    Port ( dato, control : in  STD_LOGIC;
           salida : out  STD_LOGIC);
end latch;

architecture Behavioral of latch is

begin
	process (dato,control)
	begin
		if control='1' then
			salida <=dato;
		end if;
	end process;
end Behavioral;
