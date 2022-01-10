module MUX (A0, A1, S, Y);
  parameter nbit=8;
  input wire [nbit-1:0] A0;
  input wire [nbit-1:0] A1;
  input wire S;
  output wire [nbit-1:0] Y;
  
  assign Y = S ? A1 : A0;
  
endmodule