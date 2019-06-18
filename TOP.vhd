-- ----------------------------------------------------------------------------------
-- -- Company: 
-- -- Engineer: 
-- -- 
-- -- Create Date: 2019/05/09 11:28:23
-- -- Design Name: 
-- -- Module Name: TOP - Behavioral
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

-- ENTITY TOP IS
  -- PORT(
  

    -- CLK_IN     : IN  STD_LOGIC;      
    -- RST      : IN  STD_LOGIC;      
    -- seg_sel_out: OUT  STD_LOGIC_VECTOR(3 downto 0);  
    -- seg_led_out: OUT  STD_LOGIC_VECTOR(7 downto 0);

    -- INSTRUCTION : IN STD_LOGIC_VECTOR(7 downto 0); 
    -- BUTTON_INPUT:  IN  STD_LOGIC                         

      -- );
-- END ENTITY TOP;

-- ARCHITECTURE BEHAV OF TOP IS


-- COMPONENT IR IS
-- PORT(    
            -- INSTRUCTION  : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
            -- OPCODE      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            -- RS      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            -- RD      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            -- RT      : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            -- IMM      : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            -- DISP_OPCODE   : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
            -- DISP_RS   : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            -- RST_N : IN STD_LOGIC
     
           -- );
-- END COMPONENT;
    
-- COMPONENT CTRL_UNIT IS
-- PORT(    
           -- EN : IN STD_LOGIC;
            -- DISP_OPCODE   : IN STD_LOGIC_VECTOR(2 DOWNTO 0);       
            -- RFWR          : OUT STD_LOGIC;
            -- WDSEL         : OUT STD_LOGIC;
            -- OPCODE       :IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            -- ALUOP         : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		    -- DISPLAY_CTRL  : OUT STD_LOGIC
           -- );
-- END COMPONENT;
             
-- COMPONENT ALU IS
-- PORT( 
        -- aluop  : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
        -- A   : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
        -- B   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);   
        -- C         : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);  
        -- ZERO         : OUT STD_LOGIC
           -- );
-- END COMPONENT;



-- COMPONENT EXT IS
-- PORT(
         -- IMM      : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
         -- IMMEXT        : OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
        -- );
   -- END COMPONENT;

-- COMPONENT MUX IS
-- PORT(    
        -- D1        : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        -- D0      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);  
        -- Y        : OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
        -- SEL     : IN  STD_LOGIC
           -- );
 -- END COMPONENT;
		  

-- COMPONENT DISPLAY IS
-- PORT(
	  -- CLK : IN STD_LOGIC;
       -- DISP_IN      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
       -- DISPLAY_CTRL    : IN STD_LOGIC
      -- );
-- END COMPONENT;
        
		  
		
-- COMPONENT RF IS
-- PORT(  
                -- CLK     : IN STD_LOGIC;
                -- RST_N   : IN STD_LOGIC;
                -- RS      : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
                -- RD      : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
                -- RT      : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
                -- RFWR    : IN STD_LOGIC;--???????
                -- WD      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                -- RS_DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
                -- RT_DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);				 
				-- DISP_RS : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
                -- DISP_OUT: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
-- );
-- END COMPONENT;


-- COMPONENT debounce IS
  -- PORT(
        -- CLK        : IN  STD_LOGIC; 
        -- RST_N     : IN  STD_LOGIC;  
        -- key     : IN  STD_LOGIC; 
		-- key_out : OUT  STD_LOGIC 
      -- );
-- END COMPONENT;


-- COMPONENT seg_data_proc IS
  -- PORT(
       -- CLK          :IN STD_LOGIC;
	   -- RST_N          :IN STD_LOGIC;
       -- DISP_IN      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
       -- DISPLAY_CTRL    : IN STD_LOGIC;
	   -- segdata : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	   -- sign    : OUT STD_LOGIC;
	   -- en_seg      : OUT STD_LOGIC

      -- );
-- END COMPONENT ;


-- COMPONENT seg_led IS
  -- PORT(
      -- clk          :IN STD_LOGIC;
	  -- rst_n          :IN STD_LOGIC;

      -- point    : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	  -- data : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      -- en       : IN STD_LOGIC;
	  -- sign      : IN STD_LOGIC;
		 
      -- seg_sel_out    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	  -- seg_led_out      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      -- );
		
	
-- END COMPONENT ;

	 
                -- SIGNAL    OPCODE      :  STD_LOGIC_VECTOR(1 DOWNTO 0);
                 -- SIGNAL    RS      :  STD_LOGIC_VECTOR(1 DOWNTO 0);
                 -- SIGNAL    RD      :  STD_LOGIC_VECTOR(1 DOWNTO 0);
                 -- SIGNAL    RT      :  STD_LOGIC_VECTOR(1 DOWNTO 0);
                 -- SIGNAL    IMM     :  STD_LOGIC_VECTOR(3 DOWNTO 0);
                 -- SIGNAL    DISP_OPCODE   :  STD_LOGIC_VECTOR(2 DOWNTO 0);
                 -- SIGNAL    DISP_RS   :  STD_LOGIC_VECTOR(1 DOWNTO 0);              
                 -- SIGNAL    ALUOP :  STD_LOGIC_VECTOR(1 DOWNTO 0);
                 -- SIGNAL    RFWR :   STD_LOGIC;
                 -- SIGNAL    WDSEL:   STD_LOGIC;
                 
                 -- SIGNAL    WD: STD_LOGIC_VECTOR(7 DOWNTO 0);
                 -- SIGNAL    RS_DATA:STD_LOGIC_VECTOR(7 DOWNTO 0);
                 -- SIGNAL    RT_DATA:STD_LOGIC_VECTOR(7 DOWNTO 0);
                 
                 -- SIGNAL    C:STD_LOGIC_VECTOR(7 DOWNTO 0);
                 -- SIGNAL ZERO:STD_LOGIC;
                 
                 -- SIGNAL IMMEXT:STD_LOGIC_VECTOR(7 DOWNTO 0);
					  
		         -- SIGNAL DISPLAY_CTRL:STD_LOGIC;                
                 -- SIGNAL  DISP_OUT:STD_LOGIC_VECTOR(7 DOWNTO 0);
					  -- SIGNAL EN : STD_LOGIC;  
					  
					  -- attribute keep : string;
					  -- SIGNAL segdata :STD_LOGIC_VECTOR(19 DOWNTO 0);
					  -- attribute keep of segdata : signal is "true";
		 -- SIGNAL sign    :  STD_LOGIC;	
         -- attribute keep of sign : signal is "true";
		 -- SIGNAL en_seg      :  STD_LOGIC;
          -- attribute keep of en_seg : signal is "true";
          -- SIGNAL RST_N:STD_LOGIC; 
          -- SIGNAL BUTTON:STD_LOGIC; 


    -- --  SIGNAL INSTRUCTION:STD_LOGIC_VECTOR(7 DOWNTO 0);
	-- --	attribute keep:boolean;
	-- --	attribute keep of INSTRUCTION:signal is true;
					  
					  
                 
-- BEGIN

-- RST_N <= NOT RST;
-- BUTTON <= BUTTON_INPUT;


-- IR_INST: IR 
-- PORT MAP(
      -- RST_N => RST_N,
      -- INSTRUCTION  => INSTRUCTION,
      -- OPCODE      => OPCODE,
      -- RS          => RS,
      -- RD         => RD,
      -- RT         => RT,
      -- IMM       => IMM,
      -- DISP_OPCODE => DISP_OPCODE,
      -- DISP_RS => DISP_RS
    -- );
    
                
-- CTRL_UNIT_INST: CTRL_UNIT
-- PORT MAP(   
-- EN => EN,    
   -- OPCODE   =>  OPCODE,
  -- DISP_OPCODE   =>  DISP_OPCODE,
  -- ALUOP     =>     ALUOP ,
  -- RFWR     =>   RFWR,  
  -- WDSEL   =>     WDSEL ,
  -- DISPLAY_CTRL => DISPLAY_CTRL

 -- );
 
-- ALU_INST: ALU 
-- PORT MAP(
           -- ALUOP  => ALUOP ,
           -- A     =>  RS_DATA,
            -- B     =>  RT_DATA ,
            -- C    =>  C  ,
            -- ZERO => ZERO  
 -- );
   
         
               
  -- EXT_INST:EXT PORT MAP(
         -- IMM   => IMM   ,
         -- IMMEXT  => IMMEXT
        -- );
   
  -- MUX_INST:MUX PORT MAP (   
       
         -- D1    =>  IMMEXT , 
           -- D0    =>  C,
         -- Y    =>   WD, 
         -- SEL  =>   WDSEL
            -- );
            
            
             -- RF_INST: RF PORT MAP(  
                       -- CLK=>CLK_IN,
							  -- RST_N=>RST_N,
                       -- RS  => RS,    
                        -- RD  => RD,  
                        -- RT => RT,    
                        -- RFWR => RFWR,  
                        -- WD  => WD,  
                        -- RS_DATA => RS_DATA,
                        -- RT_DATA => RT_DATA,  

                        -- DISP_RS =>DISP_RS,
                        -- DISP_OUT=>DISP_OUT							
                                  -- );
     

	  
	   -- DISPLAY_INST: DISPLAY PORT MAP
             -- (
				 -- CLK => CLK_IN,
       -- DISP_IN     =>   DISP_OUT,
       -- DISPLAY_CTRL    => DISPLAY_CTRL 
      -- );
		
		
		-- debounce_inst: debounce PORT MAP
-- (
        -- CLK   => CLK_IN,    
        -- RST_N    => RST_N,   
        -- key     => BUTTON,
		  -- key_out => EN 
      -- );


		-- seg_data_proc_inst: seg_data_proc PORT MAP
 -- (
       -- CLK    =>   CLK_IN   ,
		 -- RST_N   =>  RST_N  ,  
       -- DISP_IN   =>   DISP_OUT, 
       -- DISPLAY_CTRL  => DISPLAY_CTRL ,
		 -- segdata =>  segdata ,
		 -- sign  =>   sign, 
		 -- en_seg  =>  en_seg 

      -- );

 -- seg_led_inst: seg_led PORT MAP
-- (
       -- clk   =>  CLK_IN,      
		 -- rst_n   =>   RST_N,   

       -- point  => ((others=>'0')) , 
		 -- data =>segdata ,
		 -- en =>   en_seg  ,
		 -- sign   =>  sign ,
       -- seg_sel_out  => seg_sel_out, 
		 -- seg_led_out  =>  seg_led_out  
      -- );
		
		
 -- END ARCHITECTURE BEHAV;