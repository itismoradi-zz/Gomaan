--Gomaan

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY MainModule IS
    GENERIC(NumberLength : INTEGER);
    PORT
    (
        NUMBER      : IN  STD_LOGIC_VECTOR(NumberLength - 1 downto 0);
        clk         : IN  STD_LOGIC;
        LED_UPPER   : OUT STD_LOGIC;
        LED_CORRECT : OUT STD_LOGIC;
        LED_LESS    : OUT STD_LOGIC;
        LED_LOCK    : OUT STD_LOGIC
    );
END MainModule;

ARCHITECTURE MainArch OF MainModule IS
BEGIN
END MainArch;

--DLD course
--(professor: Dr Hatam Abdoli)
--(students: Amir Mahdi Rezaee Tavana, Mohammad Moradi)