library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cont is
    Port ( clk, reset : in  STD_LOGIC;
           q : inout  integer range 0 to 15);
end cont;

architecture arq_cont of cont is

begin
	process(clk, reset)
	begin
		if(clk' event and clk='1') then
			if(reset='1' or q=9) then
				q <= 0;
			else
				q <= q+1;
			end if;
		end if;
	end process;
end arq_cont;