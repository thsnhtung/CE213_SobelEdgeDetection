module Row_Column_Counter (CLK, Reset, Enable, Out_Row, Out_Column, isReady, isEnd);
 parameter NumOfBit= 8;
 input CLK, Reset, Enable;
 
 output [NumOfBit-1:0]Out_Row, Out_Column;
 wire Overflow_column, Overflow_row;
 
 output isReady, isEnd;
 
 wire Invalid_wire_Comparator_inst0, Invalid_wire_Comparator_inst1; 

 Counter #(NumOfBit) Column_counter(.CLK(CLK), .Reset(Reset), .Enable(Enable), .Output(Out_Column), .Overflow(Overflow_column));
 Counter #(NumOfBit) Row_counter(.CLK(CLK), .Reset(Reset), .Enable(Overflow_column), .Output(Out_Row), .Overflow(Overflow_row));
 
 Comparator Comparator_inst0(.Input(Out_Row), .Invalid(Invalid_wire_Comparator_inst0));
 Comparator Comparator_inst1(.Input(Out_Column), .Invalid(Invalid_wire_Comparator_inst1));

 and(isReady, Invalid_wire_Comparator_inst0, Invalid_wire_Comparator_inst1);
 
 and(isEnd, Overflow_row, Overflow_column);
 
 endmodule
 
