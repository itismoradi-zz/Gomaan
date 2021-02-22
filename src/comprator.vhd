LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY comparator IS
    PORT (
        a : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        b : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        less : OUT STD_LOGIC;
        correct : OUT STD_LOGIC;
        upper : OUT STD_LOGIC);
END comparator;

ARCHITECTURE Behavioral OF comparator IS

BEGIN

    PROCESS (a, b)
    BEGIN
        IF b < a THEN
            less <= '1';
            correct <= '0';
            upper <= '0';
        ELSIF b = a THEN
            less <= '0';
            correct <= '1';
            upper <= '0';
        ELSIF b > a THEN
            less <= '0';
            correct <= '0';
            upper <= '1';
        END IF;
    END PROCESS;

END Behavioral;