module Sobel(Start, CLK, DataIn, Threshold, Finish, Dop, isReady, Gradient, debug_current_state, debug_Out_Column, debug_Out_Row, isPadding, OutTemp0, OutTemp1, OutTemp2, OutTemp3, OutTemp4, OutTemp5, OutTemp6, OutTemp7, OutTemp8);
  input Start;
  input CLK;
  input [7:0]DataIn;
  input [7:0]Threshold;
  
  output isPadding;
  output Finish;
  output Dop; 
  output isReady;
  output [7:0]Gradient;
  
  output [1:0]debug_current_state;
  output [7:0]debug_Out_Column;
  output [7:0]debug_Out_Row;
  
  wire Reset, isEnd, Enable;
  
  // debug
  output wire [7:0]OutTemp0;
  output wire [7:0]OutTemp1;
  output wire [7:0]OutTemp2;
  output wire [7:0]OutTemp3;
  output wire [7:0]OutTemp4;
 	output wire [7:0]OutTemp5;
  output wire [7:0]OutTemp6;
  output wire [7:0]OutTemp7;
  output wire [7:0]OutTemp8;
  
Datapath Datapath_inst0(.Clk(CLK), .Reset(Reset), .Enable(Enable), 
                        .DataIn(DataIn), .T(Threshold), .Out_Row(debug_Out_Row), 
                        .Out_Column(debug_Out_Column), .isReady(isReady),
                        .isEnd(isEnd), .Dop(Dop), .Gradient(Gradient), .isPadding(isPadding),
                        .OutTemp0(OutTemp0), .OutTemp1(OutTemp1), .OutTemp2(OutTemp2), 
                        .OutTemp3(OutTemp3), .OutTemp4(OutTemp4), 
                        .OutTemp5(OutTemp5), .OutTemp6(OutTemp6), .OutTemp7(OutTemp7), 
                        .OutTemp8(OutTemp8));



Controller Controller_inst0(.CLK(CLK), .Start(Start), .isEnd(isEnd), .Reset(Reset),
                            .Enable(Enable), .Finish(Finish), .current_state(debug_current_state));
                            
                            

endmodule