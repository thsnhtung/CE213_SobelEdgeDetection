`timescale 1ns/1ps
module Sobel_tb();

reg Start_test, CLK_test;
reg [7:0]DataIn_test, Threshold_test;

wire [7:0]Gradient_test;
wire [7:0]Out_Row_test, Out_Column_test;
wire [1:0]Current_state_test;
wire isReady_test, isFinish_test, Dop_test;
reg [7:0] rom[65535:0];
integer file1;
integer file2;
wire isPadding_test;

   wire [7:0]OutTemp0;
   wire [7:0]OutTemp1;
   wire [7:0]OutTemp2;
   wire [7:0]OutTemp3;
   wire [7:0]OutTemp4;
 	 wire [7:0]OutTemp5;
   wire [7:0]OutTemp6;
   wire [7:0]OutTemp7;
   wire [7:0]OutTemp8;


Sobel Sobel_inst0(.Start(Start_test), .CLK(CLK_test), .DataIn(DataIn_test), .Threshold(Threshold_test), .Finish(isFinish_test), 
                  .Dop(Dop_test), .isReady(isReady_test), .debug_current_state(Current_state_test), 
                  .debug_Out_Column(Out_Column_test), .debug_Out_Row(Out_Row_test), .Gradient(Gradient_test), .isPadding(isPadding_test),
                      .OutTemp0(OutTemp0), .OutTemp1(OutTemp1), .OutTemp2(OutTemp2), 
                        .OutTemp3(OutTemp3), .OutTemp4(OutTemp4), 
                        .OutTemp5(OutTemp5), .OutTemp6(OutTemp6), .OutTemp7(OutTemp7), 
                        .OutTemp8(OutTemp8));



initial begin 
  $readmemb("lena.txt", rom);
  Threshold_test =  8'd10; 
  CLK_test = 0;
  DataIn_test = 0;
  Start_test = 0;
  #37
  Start_test = 1;
  DataIn_test = 0;
  
  file1 = $fopen("edge.txt","w");
  file2 = $fopen("gradient.txt","w");
end

integer i = 0;

always begin
  #15 CLK_test = ~CLK_test;
  if ((Current_state_test == 1 || Current_state_test == 2) && isPadding_test == 0)
    if (CLK_test == 1)
      i = i + 1;
end

always @(isFinish_test) begin
  if (isFinish_test == 0)
    Start_test = 0;
end

always @(negedge CLK_test) begin
  DataIn_test = rom[i];
 
end
always @(negedge CLK_test) begin
  if(isReady_test == 1 && isFinish_test == 0 && Current_state_test == 2) begin
     $display(Dop_test);
     $fwrite(file1,"%h\n", Dop_test); 
     $fwrite(file2,"%b\n", Gradient_test); 
  end
end

endmodule



