library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity segment is
    Port ( input : in  STD_LOGIC_VECTOR (2 downto 0);
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end segment;

architecture Behavioral of segment is

begin

	process(input)
	begin
		case input is
			when b"000" => output<=x"7E";
			when b"001" => output<=x"30";
			when b"010" => output<=x"6D";
			when b"011" => output<=x"79";
			when b"100" => output<=x"33";
			when b"101" => output<=x"5B";
			when b"110" => output<=x"5F";
			when b"111" => output<=x"70";
			when others => null;
		end case;
	end process;
end Behavioral;

