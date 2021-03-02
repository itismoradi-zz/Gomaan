library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           less : out  STD_LOGIC;
           correct : out  STD_LOGIC;
           upper : out  STD_LOGIC);
end comparator;

architecture Behavioral of comparator is

begin

	process(a,b)
	begin
		if b<a then
			less<='1';
			correct<='0';
			upper<='0';
		elsif b=a then
			less<='0';
			correct<='1';
			upper<='0';
		elsif b>a then
			less<='0';
			correct<='0';
			upper<='1';
		end if;
	end process;

end Behavioral;

