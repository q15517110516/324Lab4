-- library ieee;  
-- use ieee.std_logic_1164.all;  
  
-- entity Tb_Top is    
-- end Tb_Top;  
  
-- architecture rtl of Tb_Top is  

  -- component TOP  
    -- port(  
     -- CLK_IN        : IN  STD_LOGIC;  --����ʱ��
           -- RST_N     : IN  STD_LOGIC;      --���븴λ�źţ��͵�ƽ��Ч
           -- INSTRUCTION : IN STD_LOGIC_VECTOR(7 downto 0);  --����8λָ��
           -- BUTTON : IN STD_LOGIC
      -- );  
  -- end component;  
  
  -- signal rst_n  :std_logic:='0';  
  -- signal clk   :std_logic:='0';  
  -- signal INSTRUCTION   :std_logic_vector(7 downto 0);  
  -- signal BUTTON : std_logic:='1';  


  -- constant clk_period :time := 20 ns;    
  -- begin  
    -- instant:TOP port map  
    -- (  
       -- CLK_IN   =>  clk,
             -- RST_N  => rst_n,
             -- INSTRUCTION => INSTRUCTION,
             -- BUTTON => BUTTON
      -- );  
  -- clk_gen:process  
  -- begin      
    -- wait for clk_period/2;  
    -- clk<='1';    
    -- wait for clk_period/2;  
    -- clk<='0';  
  -- end process;  
    
  -- rst_gen:process  
  -- begin  
    -- rst_n<='0';  
    -- wait for 1000 ns;  
    -- rst_n<='1';  
    -- wait;  
  -- end process;  
      
  -- INSTRUCTION_gen:process  
  -- begin  
     -- INSTRUCTION<="00000000";  
     -- wait for 1100ns;  
     -- INSTRUCTION<="00000011";  -- �������� 0011 д�뵽 00�Ĵ���
     -- wait for 200ns; 
     -- BUTTON <= '0';
     -- wait for 20000000ns; 
     -- BUTTON <= '1';
     -- wait for 20000000ns; 
     -- INSTRUCTION<="00010011";  -- �������� 0011 д�뵽 01�Ĵ���
     -- wait for 200ns; 
      -- BUTTON <= '0';
     -- wait for 20000000ns; 
       -- BUTTON <= '1';
     -- wait for 20000000ns; 
     -- INSTRUCTION<="00101111";  -- ������ 1111 д�뵽 10�Ĵ���
     -- wait for 200ns; 
      -- BUTTON <= '0';
     -- wait for 20000000ns; 
       -- BUTTON <= '1';
     -- wait for 20000000ns; 
     -- INSTRUCTION<="00110101";  -- �������� 0101 д�뵽 11�Ĵ���
     -- wait for 200ns; 
      -- BUTTON <= '0';
       -- wait for 20000000ns; 
       -- BUTTON <= '1';
       -- wait for 20000000ns;     
      -- INSTRUCTION <= "01111110";--�Ӳ����� �� 10 �Ĵ���ֵ�� 11�Ĵ���ֵ���д�뵽11�Ĵ���
      -- wait for 200ns; 
       -- BUTTON <= '0';
          -- wait for 20000000ns; 
          -- BUTTON <= '1';
          -- wait for 20000000ns; 
      -- INSTRUCTION <= "10110011"; --���������� 00�Ĵ��� �� 11�Ĵ���ֵ��11�Ĵ���
      -- wait for 200ns; 
       -- BUTTON <= '0';
          -- wait for 20000000ns; 
          -- BUTTON <= '1';
          -- wait for 20000000ns; 
           -- INSTRUCTION <= "11100000"; --��ӡ00�Ĵ�����ֵ
      -- wait for 200ns; 
       -- BUTTON <= '0';
          -- wait for 20000000ns; 
          -- BUTTON <= '1';
          -- wait for 20000000ns; 
             -- INSTRUCTION <= "11101000"; --��ӡ01�Ĵ�����ֵ
      -- wait for 200ns; 
       -- BUTTON <= '0';
          -- wait for 20000000ns; 
          -- BUTTON <= '1';
          -- wait for 20000000ns; 
             -- INSTRUCTION <= "11110000"; --��ӡ10�Ĵ�����ֵ
      -- wait for 200ns; 
       -- BUTTON <= '0';
          -- wait for 20000000ns; 
          -- BUTTON <= '1';
          -- wait for 20000000ns; 
             -- INSTRUCTION <= "11111000"; --��ӡ11�Ĵ�����ֵ
      -- wait for 200ns; 
       -- BUTTON <= '0';
          -- wait for 20000000ns; 
          -- BUTTON <= '1';
          -- wait for 20000000ns; 
            -- INSTRUCTION <= "00000000"; 
   

    -- wait;  
  -- end process;  
-- end rtl;