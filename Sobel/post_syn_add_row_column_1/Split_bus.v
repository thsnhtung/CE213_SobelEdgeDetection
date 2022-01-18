module Split_bus(Input, Out_Row_Value, Out_Column_Value);
  input [15:0]Input;
  output [7:0]Out_Row_Value, Out_Column_Value;
  
  assign Out_Column_Value = Input[7:0];
  assign Out_Row_Value = Input[15:8];
endmodule
  
  



