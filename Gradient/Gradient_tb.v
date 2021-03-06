`timescale 1ns/1ps
module Gradient_tb();
  reg [7:0] P0, P1, P2, P3, P4, P5, P6, P7, P8;
  wire Dop;
  reg [7:0] T;
  Gradient Gradient_inst0(P0, P1, P2, P3, P4, P5, P6, P7, P8, T, Dop); 
  initial begin 
    T = 8'd20;
  end
  always begin
    P0 = $random;
    P1 = $random;
    P2 = $random;
    P3 = $random;
    P4 = $random;
    P5 = $random;
    P6 = $random;
    P7 = $random;
    P8 = $random;   
    #10; 
  end
endmodule


