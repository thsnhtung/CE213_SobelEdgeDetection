module state(input wire Begin, input wire CLK, input wire [1:0] next_state, output reg [1:0] current_state);
  always @(posedge CLK) current_state = next_state;
  always @( Begin) current_state = 0;
endmodule

