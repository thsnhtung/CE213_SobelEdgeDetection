module Counter_tb();
  parameter NumOfBit= 8;
  reg CLK_test, Reset_test, Enable_test;
 
  wire [NumOfBit-1:0] Output_test;
  wire Overflow_test;
  
  Counter #(.NumOfBit(NumOfBit)) Counter_inst0(.CLK(CLK_test), .Reset(Reset_test), .Enable(Enable_test), .Output(Output_test), .Overflow(Overflow_test));
  
  
  initial begin
    CLK_test = 0;
    Reset_test = 1;
    Enable_test = 1;
  end
  
  always #5 CLK_test = ~CLK_test;
  
  always begin
  #40 Reset_test = 0;
  #4000 Reset_test = 0;
  end
endmodule

