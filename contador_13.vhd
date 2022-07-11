library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_Arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity contador is
    Port ( clk : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end contador;

architecture pins of contador is

begin
	process(clk)
	begin
		if(clk' event and clk='1') then 
				Q <= Q + 1;
		end if;
	end process;
end pins;