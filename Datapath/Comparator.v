module Comparator(Input, Invalid);
parameter NumOfBit= 8;
input [NumOfBit-1:0]Input;
output reg Invalid;

always @(Input)
begin
  if(Input < 2)
    Invalid <= 0;
  else
    Invalid <= 1;
end

endmodule

