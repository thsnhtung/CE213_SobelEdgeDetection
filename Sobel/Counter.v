module Counter #(parameter NumOfBit)(CLK, Reset, Enable, Output, Overflow);
input CLK, Reset, Enable;
output [NumOfBit-1:0] Output;
output Overflow;


reg [NumOfBit-1:0]buffer;
assign Output = buffer;
assign Overflow = &Output;

always @(posedge CLK or posedge Reset)
begin
  if(Reset)begin
    buffer = 8'b11111111;
  end
  else begin     
      if(Enable == 1)begin
        buffer = buffer + 8'd1;
      end
   end
end 



endmodule








