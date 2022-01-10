module Loader(CLK, Reset , Enable, DataIn, DataOut0, DataOut1, DataOut2, DataOut3, DataOut4, DataOut5, DataOut6, DataOut7, DataOut8, Out_Row, Out_Column, isReady, isEnd);
  input CLK, Reset, Enable;
  input [7:0]DataIn;
  
  output [7:0]DataOut0;
  output [7:0]DataOut1;
  output [7:0]DataOut2;
  output [7:0]DataOut3;
  output [7:0]DataOut4;
  output [7:0]DataOut5;
  output [7:0]DataOut6;
  output [7:0]DataOut7;
  output [7:0]DataOut8;
  output [7:0]Out_Row;
  output [7:0]Out_Column;
  output isReady, isEnd;
  
  wire [7:0]DataOut_DataIn_Fast_Fifo_inst0_Fast_Fifo_inst1;
  wire [7:0]DataOut_Fast_Fifo_inst1;
  
  Fast_Fifo Fast_Fifo_inst0(.CLK(CLK), .Enable(Enable), .DataIn(DataIn), .DataOut(DataOut_DataIn_Fast_Fifo_inst0_Fast_Fifo_inst1));
  Fast_Fifo Fast_Fifo_inst1(.CLK(CLK), .Enable(Enable), .DataIn(DataOut_DataIn_Fast_Fifo_inst0_Fast_Fifo_inst1), .DataOut(DataOut_Fast_Fifo_inst1));
  
    
  Shift_Register Shift_Register_inst0(.CLK(CLK), .Enable(Enable), .DataIn(DataIn), .DataOut0(DataOut8), .DataOut1(DataOut7), .DataOut2(DataOut6));
  Shift_Register Shift_Register_inst1(.CLK(CLK), .Enable(Enable), .DataIn(DataOut_DataIn_Fast_Fifo_inst0_Fast_Fifo_inst1), .DataOut0(DataOut5), .DataOut1(DataOut4), .DataOut2(DataOut3));
  Shift_Register Shift_Register_inst2(.CLK(CLK), .Enable(Enable), .DataIn(DataOut_Fast_Fifo_inst1), .DataOut0(DataOut2), .DataOut1(DataOut1), .DataOut2(DataOut0));
  
  
  Row_Column_Counter Row_Column_Counter_inst0(.CLK(CLK), .Reset(Reset), .Enable(Enable), .Out_Row(Out_Row), .Out_Column(Out_Column), .isReady(isReady), .isEnd(isEnd));

endmodule  
