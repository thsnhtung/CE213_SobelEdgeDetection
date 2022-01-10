library verilog;
use verilog.vl_types.all;
entity row_column_counter_tb is
    generic(
        NumOfBit        : integer := 7
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NumOfBit : constant is 1;
end row_column_counter_tb;
