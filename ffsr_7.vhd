library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ffsr is
    Port ( S,R,clk : in  STD_LOGIC;
           Q,Qn : inout  STD_LOGIC);
end ffsr;

architecture a_ffsr of ffsr is

begin
	process (clk,S,R)
	begin
		if (clk' event and clk='1') then
			if(S='0' and R='1')then
				Q <= '0';
				Qn <= '1';
			elsif(S='1' and R='0')then
				Q <= '1';
				Qn <= '0';
			elsif(S='0' and R='0')then
				Q <= Q;
				Qn <= Qn;
			else 
				Q <= '-';
				Qn <= '-';
			end if;
		end if;
	end process;
end a_ffsr;