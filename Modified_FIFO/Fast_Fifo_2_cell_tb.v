module Fast_Fifo_2_cell_tb();
  wire [7:0]DataOut_test;
  reg CLK_test;
  reg Enable_test;
  reg [7:0]DataIn_test;
  
  
  Fast_Fifo_2_cell Fast_Fifo_2_cell_inst0(.CLK(CLK_test), .Enable(Enable_test), .DataIn(DataIn_test), .DataOut(DataOut_test));
  
  
  initial begin
  CLK_test = 0;
  Enable_test = 0;
  DataIn_test = 0;
  #20
  DataIn_test = 0;
end


always begin
  #30 CLK_test = ~CLK_test;
end


always begin
  #200 Enable_test = ~Enable_test;
end


always begin
  #20 DataIn_test = $random;
end

endmodule