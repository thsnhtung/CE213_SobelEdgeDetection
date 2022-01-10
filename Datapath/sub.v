module sub (A, B, S, Cout);
  parameter nbit = 8;
  input wire [nbit-1:0] A;
  input wire [nbit-1:0] B;
  output wire [nbit-1:0] S;
  output wire Cout;
  
  wire [nbit-1:0]temp;
  wire Cout_temp;
  
  not n1[7:0] (temp, B);
  
  kogge_stone ks0(1'b1, A, temp, S, Cout_temp);
  
  not not0(Cout, Cout_temp);
  
endmodule


