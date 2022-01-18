module Padding(Row_Value, Column_Value, Result);
  input [7:0]Row_Value, Column_Value;
  output wire Result;
  wire [7:0]Row_Value_temp, Column_Value_temp;
  
  Add_row_column_1 Add_row_column_1_inst0(.In_Row_Value(Row_Value), .In_Column_Value(Column_Value), 
                                          .Out_Row_Value(Row_Value_temp), .Out_Column_Value(Column_Value_temp));
  Padding_comparator Padding_comparator_inst0(.Row_Value(Row_Value_temp), .Column_Value(Column_Value_temp), .Result(Result));
endmodule
  
  
