# Lab Project Option 2: A FPGA Calculator
## Objective
The objective of this laboratory is to implement acalculator with decimal display.You need first to implement a button debouncer that will help your calculator implementation.
## Equipment and software
You can use any FPGA boards of your choice for this lab. If you want, we can providethe Xilinx Nexys 3 FPGA board. The software development environment is Xilinx ISE   WebPack   version.   You   can   download   the   software   and   get   a   free   license   from http://www.xilinx.com/products/design-tools/ise-design-suite/ise-webpack.htm.
## Button debouncer
Implement a button/switch debouncer. The entity of the component should be defined as following:
  ```
  entity debouncer is port (
      clk: in std_logic;
      button: std_logic;
      debounced_button: out std_logic);
  end debouncer;
  ```
The clkshould  be  connected  to  the 100  MHzon-board  clock  source.  The  button  should  be connected  to  a  button  on  board.  The  debouncer  makes  sure  that  after  the  button  is  pressed  or released,  filter  out  any  other  changes  during  the  next  100ms,  and  if  the  button is  kept pressed/released at the end of the 100ms, registers 1 to the counter.
## Specification of the calculator
The Nexys 3 FPGA board has12 inputs in total, i.e., 8 switches and 5buttons. You should implement the 8-bit ISA you designed in the first lab on the board. The 8-bit instruction words should be mapped to the 8 switches, and you should use one of the buttons for  clock  signal.  Remember  that  your  ISA  is  required  to  have  a  display  instruction.  For  that instruction, the content should be displayed on the 4-digit seven-segment display on the Nexys 3 board.

All numbers are displayed in decimal formaton the 4-digit seven-segment display on the Nexys 3 board, even though the operands are readfrom the switchesor registersas binary numbers. For example,  if  the content  to  displayis  “0101”,  the 4-digit  seven-segment  display should  read  as “[empty][empty][empty]5”. 

### If you are using other FPGA boards,you can implementthe display instruction by displaying the content to(1) 8 on-board LEDs in binary format, or (2)any LCD displays, or (3) VGA ports.

You should adapt your implementation of the adder/subtractor from the previous lab in this work. You can make necessary and reasonable changes to your code, but the base line is that you cannot directly use the “+” and “-“ operators in VHDL to do the adding or the subtracting.The subtractoperationmight  produce  negative  results,  and  you  should  display  the  result  as  negative.  For example, if the two inputs are “0010” and “1111”, when the “add” functionis invoked, the display should read “[empty][empty]17”. For the same inputs, when the “sub” functionis invoked, the display should read “[empty] –1 3”

The  source  code  that  is  used  in  class  to  demonstrate  the  usage  of  the  seven-segment  display  is enclosed, as well asthe user constraint file“pins.ucf”.The “pins.ucf” already contains the correct mapping to 4 switches and the seven-segment display. You need to add additional mapping for the remaining 4 switches and the 4 buttons.
