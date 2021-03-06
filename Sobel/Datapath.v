module Datapath(Clk, Reset, Enable, DataIn, T, Out_Row, Out_Column, isReady, isEnd, Dop, Gradient, isPadding, OutTemp0, OutTemp1, OutTemp2, OutTemp3, OutTemp4, OutTemp5, OutTemp6, OutTemp7, OutTemp8);
input Clk,Reset,Enable;
input [7:0]T;
input [7:0]DataIn;
output [7:0]Out_Row;
output [7:0]Out_Column;
output [7:0]Gradient;
output isReady, isEnd, Dop, isPadding;

wire [7:0]DataOut_Input_selector_inst0;

output wire [7:0]OutTemp0;
output wire [7:0]OutTemp1;
output wire [7:0]OutTemp2;
output wire [7:0]OutTemp3;
output wire [7:0]OutTemp4;
output wire [7:0]OutTemp5;
output wire [7:0]OutTemp6;
output wire [7:0]OutTemp7;
output wire [7:0]OutTemp8;

  
 Input_selector Input_selector_inst0(.DataIn(DataIn), .Row_Value(Out_Row), .Column_Value(Out_Column), 
                                     .DataOut(DataOut_Input_selector_inst0), .isPadding(isPadding));

 Loader a1(.CLK(Clk),.Reset(Reset) ,.Enable(Enable),.DataIn(DataOut_Input_selector_inst0),
           .DataOut0(OutTemp0), .DataOut1(OutTemp1),.DataOut2(OutTemp2),
           .DataOut3(OutTemp3), .DataOut4(OutTemp4),.DataOut5(OutTemp5),
           .DataOut6(OutTemp6),.DataOut7(OutTemp7),.DataOut8(OutTemp8),
           .Out_Row(Out_Row),.Out_Column(Out_Column),
           .isReady(isReady),.isEnd(isEnd));
           
 Gradient a2(.P0(OutTemp0),.P1(OutTemp1),.P2(OutTemp2),.P3(OutTemp3),.P4(OutTemp4),.P5(OutTemp5),.P6(OutTemp6),.P7(OutTemp7),.P8(OutTemp8), .T(T),.Dop(Dop), .Gradient(Gradient));
 
 endmodule
