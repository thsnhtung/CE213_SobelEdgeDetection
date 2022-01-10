module Register(CLK, DataIn, Enable, DataOut);
  input CLK;
  input Enable;
  input [7:0]DataIn;
  output reg [7:0]DataOut;
  
  
  always @(posedge CLK) begin
    if (Enable == 1)
      DataOut = DataIn;
  
end

endmodule  