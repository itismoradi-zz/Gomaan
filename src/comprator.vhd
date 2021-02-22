LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
-- first comprator---
ENTITY ang_gat IS
    PORT (
        A, B : IN BIT;
        L, G, E : OUT BIT
    );

END ang_gat;

ARCHITECTURE Behavioral OF ang_gat IS
    SIGNAL A_not, B_not : BIT;
BEGIN
    g <= a AND (NOT B);
    l <= (NOT a) AND B;
    E <= A XNOR B;

END Behavioral;