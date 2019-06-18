-- LIBRARY IEEE;

-- USE IEEE.STD_LOGIC_1164.ALL;
-- USE IEEE.STD_LOGIC_ARITH.ALL;
-- USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- ENTITY debounce IS
  -- PORT(
        -- CLK        : IN  STD_LOGIC;  
        -- RST_N     : IN  STD_LOGIC;   
        -- key     : IN  STD_LOGIC; 
		  -- key_out : OUT  STD_LOGIC 
      -- );
-- END ENTITY debounce;


-- ARCHITECTURE BEHAV OF debounce IS


-- SIGNAL    counter      :  STD_LOGIC_VECTOR(18 DOWNTO 0); 
-- SIGNAL    key_r      :  STD_LOGIC; 
-- SIGNAL    key_change      :  STD_LOGIC; 
-- SIGNAL    key_debounce      :  STD_LOGIC;
-- SIGNAL    key_debounce_r      :  STD_LOGIC;

-- BEGIN

-- PROCESS(CLK,RST_N)
 -- BEGIN
    -- IF( RST_N = '0' ) THEN  --
         -- key_r <= '1' ;
    -- ELSIF(CLK'EVENT AND CLK='1')THEN --
         -- key_r <= key;
    -- END IF;
 -- END PROCESS;


-- key_change <= key XOR key_r; 



 -- PROCESS(CLK,RST_N)
 -- BEGIN
    -- IF( RST_N = '0' ) THEN  --
         -- counter <= (others=>'0') ;
    -- ELSIF(CLK'EVENT AND CLK='1')THEN --
          -- IF(counter= x"7A120")THEN  
              -- counter <= (others=>'0') ;
          -- ELSIF (key_change = '1') THEN 
              -- counter <= (others=>'0') ;
          -- ELSE  
              -- counter <= counter + '1';
          -- END IF;           
    -- END IF;
 -- END PROCESS;


 -- PROCESS(CLK,RST_N)
 -- BEGIN
    -- IF( RST_N = '0' ) THEN  
         -- key_debounce <= '1' ;
    -- ELSIF(CLK'EVENT AND CLK='1')THEN 
	     -- IF(counter= x"7A120")THEN  
           -- key_debounce <= key;
		  -- END IF;	  
    -- END IF;
 -- END PROCESS;
 
 
 -- PROCESS(CLK,RST_N)
 -- BEGIN
    -- IF( RST_N = '0' ) THEN  
         -- key_debounce_r <= '1' ;
    -- ELSIF(CLK'EVENT AND CLK='1')THEN 
         -- key_debounce_r <= key_debounce;
    -- END IF;
 -- END PROCESS;
 
 -- key_out <= key_debounce_r AND (NOT key_debounce);
 
 -- END ARCHITECTURE BEHAV;
