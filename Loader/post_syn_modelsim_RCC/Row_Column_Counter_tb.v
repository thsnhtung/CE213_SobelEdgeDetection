`timescale 1ns/1ps

module Row_Column_Counter_tb();
  parameter NumOfBit= 8;
  reg CLK_test, Reset_test, Enable_test;
 
  wire [NumOfBit-1:0] Out_Row_test, Out_Column_test;
  wire isEnd_test, isReady_test;
  
  
  Row_Column_Counter Row_Column_Counter_inst0 (.CLK(CLK_test), .Reset(Reset_test), .Enable(Enable_test), .Out_Row(Out_Row_test), .Out_Column(Out_Column_test), 
                                                .isReady(isReady_test), .isEnd(isEnd_test));
  
  initial begin
    CLK_test = 0;
    Reset_test = 1;
    Enable_test = 1;
  end
  
  
  always #5 CLK_test = ~CLK_test;
  always begin 
  #20 Reset_test = 0;
  #2000 Reset_test = 0;
 end
  

endmodule


