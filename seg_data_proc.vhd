-- ----------------------------------------------------------------------------------
-- -- Company: 
-- -- Engineer: 
-- -- 
-- -- Create Date: 2019/05/10 11:26:09
-- -- Design Name: 
-- -- Module Name: DISPLAY - Behavioral
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
-- use std.textio.all;
-- use ieee.std_logic_textio.all; 
-- USE IEEE.STD_LOGIC_1164.ALL;
-- USE IEEE.STD_LOGIC_ARITH.ALL;
-- USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- ENTITY seg_data_proc IS
  -- PORT(
       -- CLK          :IN STD_LOGIC;
	   -- RST_N          :IN STD_LOGIC;
       -- DISP_IN      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
       -- DISPLAY_CTRL    : IN STD_LOGIC;
	  -- segdata : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
       -- sign    : OUT STD_LOGIC;
	   -- en_seg      : OUT STD_LOGIC

      -- );
-- END ENTITY seg_data_proc;


-- ARCHITECTURE BEHAV OF seg_data_proc IS

-- SIGNAL    DISP_IN_NOT: STD_LOGIC_VECTOR(7 DOWNTO 0);
-- attribute keep:boolean;
		-- attribute keep of DISP_IN_NOT:signal is true;
  
-- BEGIN  

-- DISP_IN_NOT <= not DISP_IN;

-- PROCESS (CLK ,RST_N)
     -- begin
	  -- IF (RST_N = '0') THEN
	    -- sign <= '0';
		 -- segdata <=(others=>'0');
		 -- en_seg <= '0';
	  -- ELSIF(CLK'EVENT AND CLK='0')THEN
		    -- IF(DISPLAY_CTRL ='1')THEN
			     -- IF(DISP_IN(7) = '1') THEN
				     -- sign <= '1';
					  -- segdata(6 downto 0) <= DISP_IN_NOT(6 downto 0) + '1';
					  -- en_seg <= '1';
					  -- segdata(19 downto 7) <= (others=>'0');
				  -- ELSE  
				     -- sign <= '0';
					  -- segdata(6 downto 0) <= DISP_IN(6 downto 0) ;
					  -- en_seg <= '1';
					  -- segdata(19 downto 7) <= (others=>'0');
				  -- END IF;
		     -- END IF	;	 
        -- END IF	;			  
     -- end process;

 -- END ARCHITECTURE BEHAV;