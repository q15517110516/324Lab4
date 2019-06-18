-- ----------------------------------------------------------------------------------
-- -- Company: 
-- -- Engineer: 
-- -- 
-- -- Create Date: 2019/05/09 09:17:35
-- -- Design Name: 
-- -- Module Name: IR - Behavioral
-- -- Project Name: 
-- -- Target Devices: 
-- -- Tool Versions: 
-- -- Description: 
-- -- 
-- -- Dependencies: 
-- -- 
-- -- Revision:
-- -- Revision 0.01 - File Created
-- -- Additional Comments:
-- -- 
-- ----------------------------------------------------------------------------------


-- LIBRARY IEEE;
-- USE IEEE.STD_LOGIC_1164.ALL;
-- USE IEEE.STD_LOGIC_ARITH.ALL;
-- USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- ENTITY IR IS
  -- PORT(
       -- RST_N         : IN STD_LOGIC; 
       -- INSTRUCTION  : IN  STD_LOGIC_VECTOR(7 DOWNTO 0); 

       -- OPCODE      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
       -- RS      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
       -- RD      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
       -- RT      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
       -- IMM     : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
       -- DISP_OPCODE   : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
       -- DISP_RS   : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)

      -- );
-- END ENTITY IR;

-- ARCHITECTURE BEHAV OF IR IS
	 
 -- BEGIN
 

 -- PROCESS(INSTRUCTION)
 -- BEGIN
     -- IF (RST_N = '0') THEN
        -- OPCODE <= "00";
        -- RD     <= "00";
        -- RS     <= "00"; 
        -- RT     <= "00";
        -- DISP_OPCODE  <= "000";
        -- DISP_RS      <= "00";
        -- IMM          <= "0000";
     -- ELSE   
        -- OPCODE <= INSTRUCTION(7 DOWNTO 6);
        -- RD     <= INSTRUCTION(5 DOWNTO 4);
        -- RS     <= INSTRUCTION(3 DOWNTO 2);
        -- RT     <= INSTRUCTION(1 DOWNTO 0);
        -- DISP_OPCODE <= INSTRUCTION(7 DOWNTO 5);
        -- DISP_RS <= INSTRUCTION(4 DOWNTO 3);
        -- IMM     <= INSTRUCTION(3 DOWNTO 0); 
    -- END IF;    
 -- END PROCESS;
 -- END ARCHITECTURE BEHAV;
