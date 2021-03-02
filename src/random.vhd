library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity random is
    Port ( clk : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (3 downto 0));
end random;

architecture Behavioral of random is
	signal a:STD_LOGIC_VECTOR (3 downto 0):=b"1100"; -- shift  -- shift -- 1100 --> 0110 --> 0011 -> 1001 
begin
	output<=a;
	process(clk)
	begin
		if clk='1' then
			a(3)<=a(2) xor a(0);
			a(2)<=a(3);
			a(1)<=a(2);
			a(0)<=a(1);
		end if;
	end process;
end Behavioral;

