library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador is
    Port ( clk, LD, UP : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (2 downto 0);
           Q : inout  STD_LOGIC_VECTOR (2 downto 0));
end contador;

architecture modulo of contador is

begin
	process(clk,LD,D,UP)
	begin
		if(clk' event and clk='1') then
			if(LD = '0') then
				Q <= D;
			elsif UP = '1' then
				Q <= Q + 1;
			else 
				Q <= Q - 1;
			end if;
		end if;
	end process;
end modulo;