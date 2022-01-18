`timescale 1ns/1ps
module Padding_tb();
  reg [7:0]Row_Value,Column_Value;
  wire Result;

  Padding a1(.Row_Value(Row_Value),.Column_Value(Column_Value),.Result(Result));
   initial begin
   Row_Value=0;
   Column_Value=0;
  end
  always begin
  #1280 Row_Value =Row_Value+1;
  
  end
  always begin
  #5 Column_Value=Column_Value+1;  
  end
endmodule