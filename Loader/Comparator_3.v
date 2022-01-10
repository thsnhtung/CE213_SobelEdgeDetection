module Comparator_3(Input, Invalid);
parameter NumOfBit= 8;
input [NumOfBit-1:0]Input;
output reg Invalid;

always @(Input)
begin
  if(Input < 3)
    Invalid <= 0;
  else
    Invalid <= 1;
end

endmodule



