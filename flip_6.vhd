library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flip is
    Port (clk, RESET, EN , D : in  STD_LOGIC;
           Q : inout  STD_LOGIC);
end flip;

architecture flop of flip is
	signal q_aux:STD_LOGIC;
begin
	process (clk,RESET,EN)
	begin
		if RESET='1' then
			q_aux <= '0';
		elsif(clk' event and clk='1') then
			if(EN='1') then
				q_aux <= D;
			else
				q_aux <= Q;
			end if;
		end if;
	end process;
	Q <= q_aux;
end flop;