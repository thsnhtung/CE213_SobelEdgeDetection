module Shift_Register(CLK, Enable, DataIn, DataOut0, DataOut1, DataOut2);
  input Enable, CLK;
  input [7:0]DataIn;
  output [7:0]DataOut0;
  output [7:0]DataOut1;
  output [7:0]DataOut2;
  
  Register Register_inst0(.CLK(CLK), .DataIn(DataIn), .Enable(Enable), .DataOut(DataOut0));
  Register Register_inst1(.CLK(CLK), .DataIn(DataOut0), .Enable(Enable), .DataOut(DataOut1));
  Register Register_inst2(.CLK(CLK), .DataIn(DataOut1), .Enable(Enable), .DataOut(DataOut2));
  
  
endmodule


