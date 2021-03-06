module Gradient (P0, P1, P2, P3, P4, P5, P6, P7, P8, T, Dop, Gradient);
parameter nbit=8;

input wire [nbit-1:0] P0;
input wire [nbit-1:0] P1; 
input wire [nbit-1:0] P2; 
input wire [nbit-1:0] P3; 
input wire [nbit-1:0] P4;
input wire [nbit-1:0] P5; 
input wire [nbit-1:0] P6;
input wire [nbit-1:0] P7; 
input wire [nbit-1:0] P8; 
input wire [nbit-1:0] T;
output wire Dop;
output wire [nbit-1:0]Gradient;

wire [nbit-1:0] shift_value [0:8];
wire [nbit-1:0] A [0:7];
wire [nbit-1:0] C [0:3];
wire G[0:1];
wire [nbit-1:0] f[0:1];
wire R[0:1];

shift2 sft0(P0, shift_value[0]);
shift2 sft1(P1, shift_value[1]);
shift2 sft2(P2, shift_value[2]);
shift2 sft3(P3, shift_value[3]);

shift2 sft5(P5, shift_value[5]);
shift2 sft6(P6, shift_value[6]);
shift2 sft7(P7, shift_value[7]);
shift2 sft8(P8, shift_value[8]);

Adder ad0(1'b0, shift_value[0], shift_value[1], A[1]);
Adder ad1(1'b0, shift_value[1], shift_value[2], A[3]);
Adder ad2(1'b0, shift_value[3], shift_value[6], A[2]);
Adder ad3(1'b0, shift_value[5], shift_value[7], A[0]);
Adder ad4(1'b0, A[1], shift_value[3], A[4]);
Adder ad5(1'b0, A[3], shift_value[5], A[5]);
Adder ad6(1'b0, A[2], shift_value[7], A[6]);
Adder ad7(1'b0, A[0], shift_value[8], A[7]);

Subtractor su0(A[4], A[7], C[0], );
Subtractor su1(A[5], A[6], C[1], );
Subtractor su2(A[7], A[4], C[3], G[1]);
Subtractor su3(A[6], A[5], C[2], G[0]);

MUX mu0(C[2], C[1], G[0], f[0]);
MUX mu1(C[3], C[0], G[1], f[1]);

Subtractor su4(f[0], T, , R[0]);
Subtractor su5(f[1], T, , R[1]);

nand na0(Dop, R[0], R[1]);

assign Gradient = f[0] > f[1] ? f[0]: f[1];

endmodule