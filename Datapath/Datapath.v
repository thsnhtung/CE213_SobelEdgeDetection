module Datapath(Clk,Reset,Enable,DataIn,T,Out_Row,Out_Column,isReady,isEnd,Dop);
input Clk,Reset,Enable;
input [7:0]T;
input [7:0]DataIn;
output [7:0]Out_Row;
output [7:0]Out_Column;
output isReady,isEnd,Dop;



wire [7:0]OutTemp0;
wire [7:0]OutTemp1;
wire [7:0]OutTemp2;
wire [7:0]OutTemp3;
wire [7:0]OutTemp4;
wire [7:0]OutTemp5;
wire [7:0]OutTemp6;
wire [7:0]OutTemp7;
wire [7:0]OutTemp8;



 Loader a1(.CLK(Clk),.Reset(Reset) ,.Enable(Enable),.DataIn(DataIn),.DataOut0(OutTemp0), .DataOut1(OutTemp1),.DataOut2(OutTemp2),.DataOut3(OutTemp3), .DataOut4(OutTemp4),.DataOut5(OutTemp5),.DataOut6(OutTemp6),.DataOut7(OutTemp7),.DataOut8(OutTemp8),.Out_Row(Out_Row),.Out_Column(Out_Column),.isReady(isReady),.isEnd(isEnd));
 Gradient a2(.P0(OutTemp0),.P1(OutTemp1),.P2(OutTemp2),.P3(OutTemp3),.P4(OutTemp4),.P5(OutTemp5),.P6(OutTemp6),.P7(OutTemp7),.P8(OutTemp8), .T(T),.Dop(Dop));
 
 endmodule
