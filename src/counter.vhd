library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity counter is
    Port ( clk : in  STD_LOGIC;
           cnt : out  STD_LOGIC_VECTOR (2 downto 0));--3 
end counter;

architecture Behavioral of counter is
	 signal a   : STD_LOGIC_VECTOR (2 downto 0) := b"000";
begin
	cnt<=a;
	process(clk)
	begin
		if clk='1' then
			a <= a + '1';  
		end if;
	end process;

end Behavioral;

