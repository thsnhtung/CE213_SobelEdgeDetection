module Input_selector(DataIn, Row_Value, Column_Value, DataOut, isPadding);
  input [7:0]DataIn;
  input [7:0]Row_Value, Column_Value;
  output [7:0]DataOut;
  output isPadding;
    
Padding Padding_inst0(.Row_Value(Row_Value), .Column_Value(Column_Value), .Result(isPadding));

assign DataOut = isPadding ? 8'd0 : DataIn;

endmodule
