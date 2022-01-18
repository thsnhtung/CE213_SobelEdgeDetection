module Padding_comparator(Row_Value, Column_Value, Result);
  input [7:0]Row_Value, Column_Value;
  output reg Result; 
  
  always@(Row_Value or Column_Value)
  begin
   if(Row_Value==8'd0 || Row_Value==8'd255 || Column_Value==8'd0 || Column_Value==8'd255)
     begin 
       Result = 1;
     end
	else
	 begin
	    Result = 0;
	 end
  end
  
endmodule
  
  

