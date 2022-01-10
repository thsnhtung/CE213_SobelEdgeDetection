module shift2(A, S);

parameter nbit = 8;

input wire [nbit-1:0]A;
output wire [nbit-1:0]S;

assign S[nbit-3:0] = A[nbit-1:2];
assign S[nbit-1] = 1'b0;
assign S[nbit-2] = 1'b0;
endmodule 
