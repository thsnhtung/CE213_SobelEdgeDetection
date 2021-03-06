module Add_row_column_1(In_Row_Value, In_Column_Value, Out_Row_Value, Out_Column_Value);
  input [7:0]In_Row_Value, In_Column_Value;
  wire [15:0] Output_temp_merge;
  wire [15:0] Output_temp_add;
  output [7:0]Out_Row_Value, Out_Column_Value;
  
  Merge_bus Merge_bus_inst0(In_Row_Value, In_Column_Value, Output_temp_merge);
  Add_1 Add_1_inst0(.Input(Output_temp_merge), .Output(Output_temp_add));
  Split_bus Split_bus_inst0(.Input(Output_temp_add), .Out_Row_Value(Out_Row_Value), .Out_Column_Value(Out_Column_Value));
endmodule
  
  

