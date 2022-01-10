module gray_cell(Gkj, Pik, Gik, G);
 //gray cell
 input Gkj, Pik, Gik;
 output G;
 wire Y;
 and(Y, Gkj, Pik);
 or(G, Y, Gik);
endmodule
