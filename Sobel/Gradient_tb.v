module Gradient_tb();
  parameter nbit=8;
  reg [nbit-1:0] P0;
  reg [nbit-1:0] P1; 
  reg [nbit-1:0] P2; 
  reg [nbit-1:0] P3; 
  reg [nbit-1:0] P4;
  reg [nbit-1:0] P5; 
  reg [nbit-1:0] P6;
  reg [nbit-1:0] P7; 
  reg [nbit-1:0] P8; 
  reg [nbit-1:0]T;
  wire Dop;
  wire [nbit-1:0]Gradient;


Gradient Gradient_inst0(.P0(P0), .P1(P1), .P2(P2), .P3(P3), .P4(P4), .P5(P5), .P6(P6), .P7(P7), .P8(P8), .T(T), .Dop(Dop), .Gradient(Gradient));


initial begin
  P0 = 8'd0; 
  P1 = 8'd138; 
  P2 = 8'd138; 
  P3 = 8'd0; 
  P4 = 8'd138; 
  P5 = 8'd133; 
  P6 = 8'd0; 
  P7 = 8'd138; 
  P8 = 8'd138; 
  T = 8'd10; 
end


endmodule