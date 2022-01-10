module Fast_Fifo_128_cell(CLK, Enable, DataIn, DataOut);
  input Enable, CLK;
  input [7:0]DataIn;
  output [7:0]DataOut;
  
  wire [7:0]Register_DataOut;
  
  
  Fast_Fifo_64_cell Fast_Fifo_64_cell_ints0(.CLK(CLK), .DataIn(DataIn), .Enable(Enable), .DataOut(Register_DataOut));
  Fast_Fifo_64_cell Fast_Fifo_64_cell_ints1(.CLK(CLK), .DataIn(Register_DataOut), .Enable(Enable), .DataOut(DataOut));
  
endmodule








