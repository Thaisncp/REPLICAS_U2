library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity latch is
    Port ( x, control : in  STD_LOGIC;
           z : out  STD_LOGIC);
end latch;

architecture Behavioral of latch is

begin
	z <= x when (control= '1');
end Behavioral;