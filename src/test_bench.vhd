LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY test_bench IS
END test_bench;
 
ARCHITECTURE behavior OF test_bench IS 
 
    COMPONENT top
    PORT(
         clk : IN  std_logic;
         input : IN  std_logic_vector(3 downto 0);
         correct : OUT  std_logic;
         upper : OUT  std_logic;
         less : OUT  std_logic;
         segment7 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    
   signal clk : std_logic := '0';
   signal input : std_logic_vector(3 downto 0) := (others => '0');
   signal correct : std_logic;
   signal upper : std_logic;
   signal less : std_logic;
   signal segment7 : std_logic_vector(7 downto 0);

 
BEGIN

   uut: top PORT MAP (
          clk => clk,
          input => input,
          correct => correct,
          upper => upper,
          less => less,
          segment7 => segment7
        );

   stim_proc: process
   begin		
      wait for 100 ns;	
		input<=b"1011";
		clk <= '0';
		wait for 5ns;
		clk <= '1';
		wait for 5ns;
		
		input<=b"0010";
		clk <= '0';
		wait for 5ns;
		clk <= '1';
		wait for 5ns;
		
		input<=b"1110";
		clk <= '0';
		wait for 5ns;
		clk <= '1';
		wait for 5ns;
		
		input<=b"1000";
		clk <= '0';
		wait for 5ns;
		clk <= '1';
		wait for 5ns;
		
		input<=b"1001";
		clk <= '0';
		wait for 5ns;
		clk <= '1';
		wait for 5ns;
		
		input<=b"0110";
		clk <= '0';
		wait for 5ns;
		clk <= '1';
		wait for 5ns;
		
      wait;
   end process;

END;
