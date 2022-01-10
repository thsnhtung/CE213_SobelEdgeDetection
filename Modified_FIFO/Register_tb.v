module Register_tb();
  wire [7:0]DataOut_test;
  reg CLK_test;
  reg Enable_test;
  reg [7:0]DataIn_test;
  
  
Register Register_ints0(.CLK(CLK_test), .DataIn(DataIn_test), .Enable(Enable_test), .DataOut(DataOut_test));


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
  #100 Enable_test = ~Enable_test;
end


always begin
  #20 DataIn_test = $random;
end

endmodule