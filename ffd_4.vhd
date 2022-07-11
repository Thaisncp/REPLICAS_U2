library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ffd is
Port ( D,CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end ffd;

architecture metodo1 of ffd is

begin
	process (CLK )
	begin
		if (CLK' event and CLK='1') then
			Q <=D;
		end if;
	end process;
end  metodo1;

architecture metodo2 of ffd is

begin
	process (CLK )
	begin
		if (rising_edge(CLK)) then
			Q <=D;
		end if;
	end process;
end metodo2;