module State(CLK, next_state, current_state);
  input wire CLK;
  input wire [1:0] next_state;
  output reg [1:0] current_state;
  
  initial begin
    current_state = 0;
  end
  
  always @(posedge CLK) current_state = next_state;
endmodule

