----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:58:32 02/14/2021 
-- Design Name: 
-- Module Name:    main_module - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top is
	
    Port ( clk : in  STD_LOGIC;
           input : in  STD_LOGIC_VECTOR (3 downto 0);
           correct : out  STD_LOGIC;
           upper : out  STD_LOGIC;
           less : out  STD_LOGIC;
			  --lock : out STD_LOGIC;
           segment7 : out  STD_LOGIC_VECTOR (7 downto 0));
end top;

architecture Behavioral of top is

		
	signal clk2:std_logic;
	signal cnt:std_logic_vector(2 downto 0); -- 5 "000" "101"
	signal a:std_logic_vector(3 downto 0);	
	signal b:std_logic_vector(3 downto 0);	
	COMPONENT reg
    PORT(
         clk : IN  std_logic;
         d : IN  std_logic_vector(3 downto 0);
         q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT random
    PORT(
         clk : IN  std_logic;
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT comparator
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         less : OUT  std_logic;
         correct : OUT  std_logic;
         upper : OUT  std_logic
        );
    END COMPONENT;
	 
	 COMPONENT counter
    PORT(
         clk : IN  std_logic;
         cnt : OUT  std_logic_vector(2 downto 0) -- 1 2 3 4 5 -- 101--
        );
    END COMPONENT;
	 
	 COMPONENT segment
    PORT(
         input : IN  std_logic_vector(2 downto 0);
         output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
	 
begin
	clk2 <=clk when cnt>b"101" else '0'; 
	
	uut0: reg PORT MAP (
          clk => clk,
          d => input,
          q => b
        );
	uut1: random PORT MAP (
          clk => clk2,
          output => a
        );
	uut2: comparator PORT MAP (
          a => a,
          b => b,
          less => less,
          correct => correct,
          upper => upper
        );
	uut3: counter PORT MAP (
          clk => clk,
          cnt => cnt
        );
	uut4: segment PORT MAP (
          input => cnt,
          output => segment7
        );
end Behavioral;

