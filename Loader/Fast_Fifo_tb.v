module Fast_Fifo_tb();
  wire [7:0]DataOut_test;
  reg CLK_test;
  reg Enable_test;
  reg [7:0]DataIn_test;
  
  
  Fast_Fifo Fast_Fifo_inst0(.CLK(CLK_test), .Enable(Enable_test), .DataIn(DataIn_test), .DataOut(DataOut_test));
  
  
  initial begin
  CLK_test = 0;
  Enable_test = 0;
  DataIn_test = 0;
  #20
  DataIn_test = 0;
  Enable_test = 1;
end

integer i = 0;

always begin
  #15 CLK_test = ~CLK_test;
  if (Enable_test == 1)
    if (CLK_test == 1)
      i = i + 1;
end


always begin
  #10000 Enable_test = ~Enable_test;
end


always begin
  #10 DataIn_test = $random;
end

endmodule





