module Sobel(Start, CLK, DataIn, Threshold, Finish, Dop, isReady, Gradient, debug_current_state, debug_Out_Column, debug_Out_Row);
  input Start;
  input CLK;
  input [7:0]DataIn;
  input [7:0]Threshold;
  
  output Finish;
  output Dop; 
  output isReady;
  output [7:0]Gradient;
  
  output [1:0]debug_current_state;
  output [7:0]debug_Out_Column;
  output [7:0]debug_Out_Row;
  
  wire Reset, isEnd, Enable;

  
  
Datapath Datapath_inst0(.Clk(CLK), .Reset(Reset), .Enable(Enable), 
                        .DataIn(DataIn) , .T(Threshold), .Out_Row(debug_Out_Row), 
                        .Out_Column(debug_Out_Column), .isReady(isReady), 
                        .isEnd(isEnd), .Dop(Dop), .Gradient(Gradient));

Controller Controller_inst0(.CLK(CLK), .Start(Start), .isEnd(isEnd), .Reset(Reset),
                            .Enable(Enable), .Finish(Finish), .current_state(debug_current_state));
                            
                            

endmodule