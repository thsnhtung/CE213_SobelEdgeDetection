module Fast_Fifo_2_cell(CLK, Enable, DataIn, DataOut);
  input Enable, CLK;
  input [7:0]DataIn;
  output [7:0]DataOut;
  
  wire [7:0]Register_DataOut;
  
  
  Register Register_inst0(.CLK(CLK), .DataIn(DataIn), .Enable(Enable), .DataOut(Register_DataOut));
  Register Register_inst1(.CLK(CLK), .DataIn(Register_DataOut), .Enable(Enable), .DataOut(DataOut));
  
endmodule


