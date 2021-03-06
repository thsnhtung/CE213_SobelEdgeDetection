`timescale 100ns/1ps
module Loader_tb();
  
  
  reg CLK_test, Reset_test, Enable_test;
  reg [7:0]DataIn_test;
  
  wire [7:0]DataOut0_test;
  wire [7:0]DataOut1_test;
  wire [7:0]DataOut2_test;
  wire [7:0]DataOut3_test;
  wire [7:0]DataOut4_test;
  wire [7:0]DataOut5_test;
  wire [7:0]DataOut6_test;
  wire [7:0]DataOut7_test;
  wire [7:0]DataOut8_test;
  wire [7:0]Out_Row_test;
  wire [7:0]Out_Column_test;
  wire isReady_test, isEnd_test;
  
  
  Loader Loader_inst0(.CLK(CLK_test), .Reset(Reset_test), .Enable(Enable_test), .DataIn(DataIn_test), .DataOut0(DataOut0_test),
                      .DataOut1(DataOut1_test), .DataOut2(DataOut2_test), .DataOut3(DataOut3_test), .DataOut4(DataOut4_test), 
                      .DataOut5(DataOut5_test), .DataOut6(DataOut6_test), .DataOut7(DataOut7_test), .DataOut8(DataOut8_test),
                      .Out_Row(Out_Row_test), .Out_Column(Out_Column_test), .isReady(isReady_test), .isEnd(isEnd_test));
  
  reg [7:0] rom[65535:0];
  
  
  initial begin 
  $readmemb("Matrix_binary.txt", rom);
  
  CLK_test = 0;
  Enable_test = 0;
  DataIn_test = 0;
  Reset_test = 1;
  #37
  Reset_test = 0;
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

always @(negedge CLK_test) begin
  DataIn_test = rom[i];
end


endmodule











