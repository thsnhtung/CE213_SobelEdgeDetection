module Add_1(Input, Output);
  input [15:0]Input;

  output reg [15:0]Output;
    
  always@(Input)
  begin
    Output = Input + 16'd1;
  end
  
endmodule
  
  


