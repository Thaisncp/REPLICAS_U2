library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg is
    Port ( clk : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (0 to 7);
           Q : out  STD_LOGIC_VECTOR (0 to 7));
end reg;

architecture arqreg of reg is
begin
	process (clk)
	begin
		if(clk' event and clk='1') then 
			Q <= D;
		end if;
	end process;
end arqreg;