module Add_row_column_1_tb();
  reg [7:0] test_In_Row_Value, test_In_Column_Value;
  wire [7:0]test_Out_Row_Value, test_Out_Column_Value;
  
 
 Add_row_column_1 Add_row_column_1_inst0(.In_Row_Value(test_In_Row_Value), 
                                         .In_Column_Value(test_In_Column_Value), 
                                         .Out_Row_Value(test_Out_Row_Value),
                                         .Out_Column_Value(test_Out_Column_Value));
  
  always 
  begin
    #30 test_In_Row_Value = $random;
  end
  
  always 
  begin
    #5 test_In_Column_Value = 255;
  end
  
endmodule
  
  


