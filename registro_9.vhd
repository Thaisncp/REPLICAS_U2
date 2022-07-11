library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro is
	Port ( d, clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end registro;

architecture serie of registro is

begin
	process (clk)
	variable a: STD_LOGIC;
	variable b: STD_LOGIC;
	begin
		if(clk' event and clk='1') then 
			a := d;
			b := a;
			q <= b;
		end if;
	end process;
end serie;