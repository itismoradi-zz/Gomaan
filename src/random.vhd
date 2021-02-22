LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY random IS
    PORT (
        clk : IN STD_LOGIC;
        output : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END random;

ARCHITECTURE Behavioral OF random IS
    SIGNAL a : STD_LOGIC_VECTOR (3 DOWNTO 0) := b"1100";

BEGIN
    output <= a;
    PROCESS (clk)
    BEGIN
        IF clk = '1' THEN
            a(3) <= a(2) XOR a(0);
            a(2) <= a(3);
            a(1) <= a(2);
            a(0) <= a(1);
        END IF;
    END PROCESS;
END Behavioral;