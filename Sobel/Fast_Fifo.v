module Fast_Fifo(CLK, Enable, DataIn, DataOut);
  input Enable, CLK;
  input [7:0]DataIn;
  output [7:0]DataOut;
  
  wire [7:0]Register_DataOut;
  
  
  Fast_Fifo_128_cell Fast_Fifo_64_cell_ints0(.CLK(CLK), .DataIn(DataIn), .Enable(Enable), .DataOut(Register_DataOut));
  Fast_Fifo_128_cell Fast_Fifo_64_cell_ints1(.CLK(CLK), .DataIn(Register_DataOut), .Enable(Enable), .DataOut(DataOut));
  
endmodule


module Fast_Fifo_128_cell(CLK, Enable, DataIn, DataOut);
  input Enable, CLK;
  input [7:0]DataIn;
  output [7:0]DataOut;
  
  wire [7:0]Register_DataOut;
  
  
  Fast_Fifo_64_cell Fast_Fifo_64_cell_ints0(.CLK(CLK), .DataIn(DataIn), .Enable(Enable), .DataOut(Register_DataOut));
  Fast_Fifo_64_cell Fast_Fifo_64_cell_ints1(.CLK(CLK), .DataIn(Register_DataOut), .Enable(Enable), .DataOut(DataOut));
  
endmodule


module Fast_Fifo_64_cell(CLK, Enable, DataIn, DataOut);
  input Enable, CLK;
  input [7:0]DataIn;
  output [7:0]DataOut;
  
  wire [7:0]Register_DataOut;
  
  
  Fast_Fifo_32_cell Fast_Fifo_32_cell_ints0(.CLK(CLK), .DataIn(DataIn), .Enable(Enable), .DataOut(Register_DataOut));
  Fast_Fifo_32_cell Fast_Fifo_32_cell_ints1(.CLK(CLK), .DataIn(Register_DataOut), .Enable(Enable), .DataOut(DataOut));
  
endmodule


module Fast_Fifo_32_cell(CLK, Enable, DataIn, DataOut);
  input Enable, CLK;
  input [7:0]DataIn;
  output [7:0]DataOut;
  
  wire [7:0]Register_DataOut;
  
  
  Fast_Fifo_16_cell Fast_Fifo_16_cell_ints0(.CLK(CLK), .DataIn(DataIn), .Enable(Enable), .DataOut(Register_DataOut));
  Fast_Fifo_16_cell Fast_Fifo_16_cell_ints1(.CLK(CLK), .DataIn(Register_DataOut), .Enable(Enable), .DataOut(DataOut));
  
endmodule

module Fast_Fifo_16_cell(CLK, Enable, DataIn, DataOut);
  input Enable, CLK;
  input [7:0]DataIn;
  output [7:0]DataOut;
  
  wire [7:0]Register_DataOut;
  
  
  Fast_Fifo_8_cell Fast_Fifo_8_cell_ints0(.CLK(CLK), .DataIn(DataIn), .Enable(Enable), .DataOut(Register_DataOut));
  Fast_Fifo_8_cell Fast_Fifo_8_cell_ints1(.CLK(CLK), .DataIn(Register_DataOut), .Enable(Enable), .DataOut(DataOut));
  
endmodule


module Fast_Fifo_8_cell(CLK, Enable, DataIn, DataOut);
  input Enable, CLK;
  input [7:0]DataIn;
  output [7:0]DataOut;
  
  wire [7:0]Register_DataOut;
  
  
  Fast_Fifo_4_cell Fast_Fifo_4_cell_ints0(.CLK(CLK), .DataIn(DataIn), .Enable(Enable), .DataOut(Register_DataOut));
  Fast_Fifo_4_cell Fast_Fifo_4_cell_ints1(.CLK(CLK), .DataIn(Register_DataOut), .Enable(Enable), .DataOut(DataOut));
  
endmodule

module Fast_Fifo_4_cell(CLK, Enable, DataIn, DataOut);
  input Enable, CLK;
  input [7:0]DataIn;
  output [7:0]DataOut;
  
  wire [7:0]Register_DataOut;
  
  
  Fast_Fifo_2_cell Fast_Fifo_2_cell_ints0(.CLK(CLK), .DataIn(DataIn), .Enable(Enable), .DataOut(Register_DataOut));
  Fast_Fifo_2_cell Fast_Fifo_2_cell_ints1(.CLK(CLK), .DataIn(Register_DataOut), .Enable(Enable), .DataOut(DataOut));
  
endmodule

module Fast_Fifo_2_cell(CLK, Enable, DataIn, DataOut);
  input Enable, CLK;
  input [7:0]DataIn;
  output [7:0]DataOut;
  
  wire [7:0]Register_DataOut;
  
  
  Register Register_inst0(.CLK(CLK), .DataIn(DataIn), .Enable(Enable), .DataOut(Register_DataOut));
  Register Register_inst1(.CLK(CLK), .DataIn(Register_DataOut), .Enable(Enable), .DataOut(DataOut));
  
endmodule










































