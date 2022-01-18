module Merge_bus(In_Row_Value, In_Column_Value, Output);
  input [7:0]In_Row_Value, In_Column_Value;
  output [15:0]Output;
  
  assign Output = {In_Row_Value, In_Column_Value};
endmodule
  
  

