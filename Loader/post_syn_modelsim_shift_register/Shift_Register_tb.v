`timescale 100ns/1ps

module Shift_Register_tb();
  wire [7:0]DataOut0_test;
  wire [7:0]DataOut1_test;
  wire [7:0]DataOut2_test;
  reg CLK_test;
  reg Enable_test;
  reg [7:0]DataIn_test;
  integer outfile0;

  Shift_Register Shift_Register_inst0(.CLK(CLK_test), .Enable(Enable_test), .DataIn(DataIn_test), .DataOut0(DataOut0_test), .DataOut1(DataOut1_test), .DataOut2(DataOut2_test));
  
  
  initial begin
  outfile0=$fopen("Matrix_binary.txt","r");   
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

always @(posedge CLK_test) begin
  if (! $feof(outfile0)) begin
  $fscanf(outfile0,"%b\n", DataIn_test); 
  end
end

endmodule







