`timescale 1ns/1ps
module Datapath_tb();
reg Clk, Reset, Enable;
reg [7:0]DataIn,T;
wire [7:0]Out_Row, Out_Column;
wire isReady, isEnd, Dop, isPadding;
reg [7:0] rom[65535:0];
integer f;

Datapath Datapath_inst0(.Clk(Clk),.Reset(Reset),.Enable(Enable),
                        .DataIn(DataIn),.T(T),.Out_Row(Out_Row),
                        .Out_Column(Out_Column),.isReady(isReady),
                        .isEnd(isEnd),.Dop(Dop), .isPadding(isPadding));

initial begin 
  $readmemb("Matrix_binary.txt", rom);
  T=8'd20;
  Clk = 0;
  Enable = 0;
  DataIn = 0;
  Reset = 1;
  #37
  Reset = 0;
  DataIn = 0;
  Enable = 1;
  f = $fopen("output.txt","w");
end

integer i = 0;

always begin
  #15 Clk = ~Clk;
  if (Enable == 1 && isPadding == 0)
    if (Clk == 1)
      i = i + 1;
end

always @(negedge Clk) begin
  DataIn = rom[i];
 
end
always @(negedge Clk)begin
  if(isReady==1)
     $display(Dop);
     $fwrite(f,"%h\n",Dop); 
end

endmodule


