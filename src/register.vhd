library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg is
    Port ( clk : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (3 downto 0);
           q : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end reg;

architecture Behavioral of reg is
	
begin

	process(clk)
	begin
		if clk='1' then
			q<=d;
		end if;
	end process;

end Behavioral;

