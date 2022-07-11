library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro is
    Port ( d, clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end registro;

architecture serie of registro is
signal a,b: STD_LOGIC;
begin
	process (clk)
	begin
		if(clk' event and clk='1') then 
			a <= d;
			b <= a;
			q <= d;
		end if;
	end process;
end serie;