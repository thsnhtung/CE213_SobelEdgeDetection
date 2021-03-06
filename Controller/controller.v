module Controller(Begin ,CLK, Start, isEnd, Reset, Enable, Finish, current_state);
  
  input Start, isEnd, CLK, Begin;
  output Reset, Enable, Finish;
  output wire [1:0] current_state;
  
  parameter S0 = 2'd0;
  parameter S1 = 2'd1;
  parameter S2 = 2'd2;
  parameter S3 = 2'd3;
  
  wire [1:0] next_state;
  
  
  assign next_state = (current_state== S0) ? ((Start == 1'b0) ? S0:S1) : (current_state == S1) ? S2 : (current_state == S2) ? ((isEnd == 1'b0) ? S2 : S3) : S0;
  assign Reset = (current_state == S0 || current_state == S2) ? 1 : 0;
  assign Enable = (current_state == S1 || current_state == S2) ? 1 : 0;
  assign   Finish = (current_state == S3) ? 1:0;                                                       
  
  state st(Begin, CLK, next_state, current_state);
  
endmodule
