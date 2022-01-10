module Fast_Fifo_16_cell_tb();
  wire [7:0]DataOut_test;
  reg CLK_test;
  reg Enable_test;
  reg [7:0]DataIn_test;
  
  
  Fast_Fifo_16_cell Fast_Fifo_16_cell_inst0(.CLK(CLK_test), .Enable(Enable_test), .DataIn(DataIn_test), .DataOut(DataOut_test));
  
  
  initial begin
  CLK_test = 0;
  Enable_test = 0;
  DataIn_test = 0;
  #20
  DataIn_test = 0;
end


always begin
  #15 CLK_test = ~CLK_test;
end


always begin
  #400 Enable_test = ~Enable_test;
end


always begin
  #10 DataIn_test = $random;
end

endmodule


