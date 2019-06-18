

-- LIBRARY IEEE;

-- USE IEEE.STD_LOGIC_1164.ALL;
-- USE IEEE.STD_LOGIC_ARITH.ALL;
-- USE IEEE.STD_LOGIC_UNSIGNED.ALL;
-- --USE IEEE.NUMERIC_STD.ALL;

-- ENTITY seg_led IS

  -- PORT(
      -- clk        : IN  STD_LOGIC;  
      -- rst_n     : IN  STD_LOGIC;    
   
	   -- data   : IN  STD_LOGIC_VECTOR(19 downto 0);
		-- point  : IN  STD_LOGIC_VECTOR(5 downto 0);
		-- en: IN  STD_LOGIC;    
		-- sign: IN  STD_LOGIC;    
      -- seg_sel_out: OUT  STD_LOGIC_VECTOR(3 downto 0);
      -- seg_led_out: OUT  STD_LOGIC_VECTOR(7 downto 0)
		
      -- );
  -- END ENTITY seg_led;

  
-- ARCHITECTURE BEHAV OF seg_led IS

-- SIGNAL    clk_cnt      :  STD_LOGIC_VECTOR(3 DOWNTO 0);
-- SIGNAL    dri_clk :   STD_LOGIC;
-- SIGNAL    num      :  STD_LOGIC_VECTOR(23 DOWNTO 0);
-- SIGNAL    cnt0      :  STD_LOGIC_VECTOR(12 DOWNTO 0);
-- SIGNAL    flag:   STD_LOGIC;
					  
-- SIGNAL    cnt_sel      :  STD_LOGIC_VECTOR(2 DOWNTO 0);
-- SIGNAL    num_disp     :  STD_LOGIC_VECTOR(3 DOWNTO 0);
-- SIGNAL    dot_disp   :  STD_LOGIC;
		
-- attribute keep : string;

-- SIGNAL    data0   :  STD_LOGIC_VECTOR(3 DOWNTO 0);  
-- attribute keep of data0 : signal is "true";
-- SIGNAL    data1   :  STD_LOGIC_VECTOR(3 DOWNTO 0);  
-- attribute keep of data1 : signal is "true";
-- SIGNAL    data2   :  STD_LOGIC_VECTOR(3 DOWNTO 0); 
-- attribute keep of data2 : signal is "true"; 
-- SIGNAL    data3   :  STD_LOGIC_VECTOR(3 DOWNTO 0);  
-- attribute keep of data3 : signal is "true";
-- SIGNAL    data4   :  STD_LOGIC_VECTOR(3 DOWNTO 0); 
-- attribute keep of data4 : signal is "true";
-- SIGNAL    data5   :  STD_LOGIC_VECTOR(3 DOWNTO 0);   	
-- attribute keep of data5 : signal is "true";

-- SIGNAL    seg_led  :  STD_LOGIC_VECTOR(7 DOWNTO 0);   	
-- SIGNAL    seg_sel  :  STD_LOGIC_VECTOR(5 DOWNTO 0); 

		
 -- --  CONSTANT CLK_DIVIDE  :   STD_LOGIC_VECTOR(3 downto 0):=x"a";
 -- -- CONSTANT MAX_NUM     : STD_LOGIC_VECTOR(12 downto 0):= x"1388" ; 
  
-- signal  data0_interger :integer range 0 to 15;
-- signal  data1_interger :integer range 0 to 15;
-- signal  data2_interger :integer range 0 to 15;
-- signal  data3_interger :integer range 0 to 15;
-- signal  data4_interger :integer range 0 to 15;
-- signal  data5_interger :integer range 0 to 15;

-- --                  main code
-- BEGIN

-- seg_led_out <= seg_led;
-- seg_sel_out <= seg_sel(3 downto 0);

-- data0_interger <= conv_integer(data) REM 10;
-- data1_interger <= (conv_integer(data) / 10) REM 10;
-- data2_interger <= (conv_integer(data)/ 100) REM 10;
-- data3_interger <= (conv_integer(data) / 1000) REM 10;
-- data4_interger <= (conv_integer(data) / 10000) REM 10;
-- data5_interger <= (conv_integer(data) / 100000) ;

-- data0 <= conv_std_logic_vector(data0_interger,4);
-- data1 <= conv_std_logic_vector(data1_interger,4);
-- data2 <= conv_std_logic_vector(data2_interger,4);
-- data3 <= conv_std_logic_vector(data3_interger,4);
-- data4 <= conv_std_logic_vector(data4_interger,4);
-- data5 <= conv_std_logic_vector(data5_interger,4);
-- --data1 <= (data / x"a") REM 10;
-- --data2 <= (data / x"64") REM x"a";
-- --data3 <= (data / x"3E8") REM x"a";
-- --data4 <= (data / x"2710") REM x"a";
-- --data5 <= (data / x"186A0") ;




-- PROCESS (clk ,rst_n)
-- begin
	  -- IF (rst_n = '0') THEN
	    -- clk_cnt <= (others=>'0');
		 -- dri_clk <='0';
	  -- ELSIF(clk'EVENT AND clk='1')THEN
		    -- IF(clk_cnt = x"9")THEN
			   -- clk_cnt <= (others=>'0');
            -- dri_clk <= NOT dri_clk;
          -- ELSE  
				 -- clk_cnt  <= clk_cnt + '1'; 
             -- dri_clk  <= dri_clk;
			 -- END IF;
		-- END IF	;	 		  
 -- end process;



-- PROCESS (clk ,rst_n)
-- begin
	  -- IF (rst_n = '0') THEN
	    -- num <= (others=>'0');
	  -- ELSIF(clk'EVENT AND clk='1')THEN
		    -- IF( (data5 /= "0000") OR (point(5)/='0') )THEN
			   -- num(23 downto 20) <= data5;
				-- num(19 downto 16) <= data4;
				-- num(15 downto 12) <= data3;
				-- num(11 downto 8) <= data2;
				-- num(7 downto 4) <= data1;
				-- num(3 downto 0) <= data0;
          -- ELSE  
			    -- IF ( (data4/= "0000") OR (point(4)/='0') )THEN
				    -- num(19 downto 16) <= data4;
				    -- num(15 downto 12) <= data3;
				    -- num(11 downto 8) <= data2;
				    -- num(7 downto 4) <= data1;
				    -- num(3 downto 0) <= data0;
					 -- IF ( sign = '1') THEN
					     -- num(23 downto 20) <= "1011";
					 -- ELSE
			           -- num(23 downto 20) <= "1010";	
					 -- END IF;
				 -- ELSE
				     -- IF ( (data3/= "0000") OR (point(3)/='0') )THEN
				          -- num(15 downto 12) <= data3;
				          -- num(11 downto 8) <= data2;
				          -- num(7 downto 4) <= data1;
				          -- num(3 downto 0) <= data0;
						    -- num(23 downto 20)  <=  "1010";	
					       -- IF ( sign = '1') THEN
					           -- num(19 downto 16) <= "1011";
					       -- ELSE
			                 -- num(19 downto 16) <= "1010";	
					       -- END IF;
					  -- ELSE		  
						    -- IF ( (data2/= "0000") OR (point(2)/='0') )THEN              
				                -- num(11 downto 8) <= data2;
				                -- num(7 downto 4) <= data1;
				                -- num(3 downto 0) <= data0;
								    -- num(23 downto 20)  <=  "1010";	
									 -- num(19 downto 16) <=   "1010";
					             -- IF ( sign = '1') THEN
					                -- num(15 downto 12) <= "1011";
					             -- ELSE
			                      -- num(15 downto 12) <= "1010";	
					             -- END IF;
							 -- ELSE 
							      -- IF ( (data1/= "0000") OR (point(1)/='0') )THEN	                
				                       -- num(7 downto 4) <= data1;
				                       -- num(3 downto 0) <= data0;
								           -- num(23 downto 20)  <=  "1010";	
									        -- num(19 downto 16) <=   "1010";
									        -- num(15 downto 12) <=   "1010";
					                 -- IF ( sign = '1') THEN
					                    -- num(11 downto 8) <= "1011";
					                 -- ELSE
			                          -- num(11 downto 8) <= "1010";	
					                 -- END IF;
									-- ELSE	    			                    
				                    -- num(3 downto 0) <= data0;
								        -- num(23 downto 20)  <=  "1010";	
									     -- num(19 downto 16) <=   "1010";
									     -- num(15 downto 12) <=   "1010";
										  -- num(11 downto 8) <=    "1010";
					                 -- IF ( sign = '1') THEN
					                    -- num(7 downto 4) <= "1011";
					                 -- ELSE
			                          -- num(7 downto 4) <= "1010";	
					                 -- END IF;
								   -- END IF;
					        -- END IF;		
						-- END IF ; 
				  -- END IF;				 	 
			 -- END IF;
		-- END IF	;	 		  
 -- end process;





 -- PROCESS (dri_clk ,rst_n)
-- begin
	  -- IF (rst_n = '0') THEN
	    -- cnt0 <= (others=>'0');
		 -- flag <='0';
	  -- ELSIF(dri_clk'EVENT AND dri_clk='1')THEN
		    -- IF(cnt0 <  x"1387" )THEN
			    -- cnt0 <= cnt0 + '1';
               -- flag <= '0';
          -- ELSE  
				 -- cnt0 <= (others=>'0');
             -- flag <= '1';
			 -- END IF;
		-- END IF	;	 		  
 -- end process;


 -- PROCESS (dri_clk ,rst_n)
-- begin
	  -- IF (rst_n = '0') THEN
	    -- cnt_sel <= (others=>'0');
	  -- ELSIF(dri_clk'EVENT AND dri_clk='1')THEN
		    -- IF(flag = '1')THEN
			     -- IF(cnt_sel < "101")THEN
			        -- cnt_sel <= cnt_sel + '1';
				  -- ELSE	
				     -- cnt_sel <=  (others=>'0');
				  -- END IF;
          -- ELSE  
				 -- cnt_sel <= cnt_sel;
			 -- END IF;
		-- END IF	;	 		  
 -- end process;
 

  -- PROCESS (dri_clk ,rst_n)
-- begin
	  -- IF (rst_n = '0') THEN
	    -- seg_sel <= "111111";
		 -- num_disp <= (others=>'0');
		 -- dot_disp <='1';
	  -- ELSIF(dri_clk'EVENT AND dri_clk='1')THEN
		    -- IF(en = '1')THEN
			     -- IF(cnt_sel = "000") THEN
			        -- seg_sel <= "111110";
					  -- num_disp <= num(3 downto 0);
					  -- dot_disp <= NOT point(0);
				  -- ELSIF(cnt_sel = "001")THEN
				     -- seg_sel <= "111101";
					  -- num_disp <= num(7 downto 4);
					  -- dot_disp <= NOT point(1);
				  -- ELSIF(cnt_sel = "010")THEN
				     -- seg_sel <= "111011";
					  -- num_disp <= num(11 downto 8);
					  -- dot_disp <= NOT point(2);	  
				  -- ELSIF(cnt_sel = "011")THEN
				     -- seg_sel <= "110111";
					  -- num_disp <= num(15 downto 12);
					  -- dot_disp <= NOT point(3);	
				  -- ELSIF(cnt_sel = "100")THEN
				     -- seg_sel <= "101111";
					  -- num_disp <= num(19 downto 16);
					  -- dot_disp <= NOT point(4);	 
			  	  -- ELSIF(cnt_sel = "101")THEN
				     -- seg_sel <= "011111";
					  -- num_disp <= num(23 downto 20);
					  -- dot_disp <= NOT point(5);	
				  -- ELSE	  
					   -- seg_sel  <= "111111";
                  -- num_disp <= (others=>'0');
		            -- dot_disp <='1';
				  -- END IF;
          -- ELSE  
				   -- seg_sel  <= "111111";
               -- num_disp <= (others=>'0');
		         -- dot_disp <='1';
			 -- END IF;
		-- END IF	;	 		  
 -- end process;
 
 
  -- PROCESS (dri_clk ,rst_n)
-- begin
	  -- IF (rst_n = '0') THEN
	    -- seg_led <= "11000000";
	  -- ELSIF(dri_clk'EVENT AND dri_clk='1')THEN
		    -- IF(num_disp = "0000")THEN
			     -- seg_led <= dot_disp & "1000000";
			 -- ELSIF(num_disp = "0001")	THEN  
			     -- seg_led <= dot_disp & "1111001";
			 -- ELSIF(num_disp = "0010")	THEN  
			     -- seg_led <= dot_disp & "0100100";
		    -- ELSIF(num_disp = "0011")	THEN  
			     -- seg_led <= dot_disp & "0110000";	
			 -- ELSIF(num_disp = "0100")	THEN  
			     -- seg_led <= dot_disp & "0011001";
			 -- ELSIF(num_disp = "0101")	THEN  
			     -- seg_led <= dot_disp & "0010010";
		 	 -- ELSIF(num_disp = "0110")	THEN  
			     -- seg_led <= dot_disp & "0000010";	
			 -- ELSIF(num_disp = "0111")	THEN  
			     -- seg_led <= dot_disp & "1111000";
			 -- ELSIF(num_disp = "1000")	THEN  
			     -- seg_led <= dot_disp & "0000000";	
			 -- ELSIF(num_disp = "1001")	THEN  
			     -- seg_led <= dot_disp & "0010000"; 
			 -- ELSIF(num_disp = "1010")	THEN  
			     -- seg_led <= "11111111";	 
			 -- ELSIF(num_disp = "1011")	THEN  
			     -- seg_led <= "10111111";	
			 -- ELSE	
				  -- seg_led <=  dot_disp & "1000000";	 
			 -- END IF;
		-- END IF	;	 		  
 -- end process;
 -- END ARCHITECTURE BEHAV;