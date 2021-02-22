LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FULL_ADDER IS
    PORT (
        a : IN STD_LOGIC;
        b : IN STD_LOGIC;
        s : OUT STD_LOGIC;
        c : OUT STD_LOGIC;
    );
END And_gate;

ARCHITECTURE Behavioral OF And_gate IS
BEGIN
    s <= a XOR b;
    c <= a AND b;

END Behavioral;