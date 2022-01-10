module Subtractor (A, B, S, Cout); 
  parameter nbit = 8;
  input wire [nbit-1:0] A;
  input wire [nbit-1:0] B;
  
  output wire [nbit-1:0] S;
  output wire Cout;
  
  assign {Cout, S} = A - B; 
endmodule


