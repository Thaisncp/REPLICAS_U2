library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ffd is
    Port ( D,CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end ffd;

architecture Behavioral of ffd is

begin
	process (CLK )
	begin
		if (CLK' event and CLK='1') then
			Q <=D;
		end if;
	end process;

end Behavioral;

