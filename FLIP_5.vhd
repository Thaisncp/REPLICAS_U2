library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FLIP is
    Port ( D,RESET,clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end FLIP;

architecture FLOP of FLIP is

begin
	process (clk,D,RESET)
	begin
		if RESET='1' then
			Q <= '0';
		elsif(clk' event and clk='1') then
			Q <= D;
		end if;
	end process;
end FLOP;