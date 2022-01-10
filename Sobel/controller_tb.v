module controller_tb();
  reg CLK, Start, isEnd;
  wire [1:0] current_state;
  wire Reset, Enable, Finish;
  
  Controller Controller_inst0(CLK, Start, isEnd, Reset, Enable, Finish, current_state); 
  initial begin
    CLK = 0;
  end
  always begin
    CLK = ~CLK;
    Start = $random;
    isEnd = $random;
    #10;
  end
  
endmodule




