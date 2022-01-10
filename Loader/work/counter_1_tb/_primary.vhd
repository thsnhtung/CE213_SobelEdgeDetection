library verilog;
use verilog.vl_types.all;
entity counter_1_tb is
    generic(
        NumOfBit        : integer := 7;
        Number          : integer := 20
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NumOfBit : constant is 1;
    attribute mti_svvh_generic_type of Number : constant is 1;
end counter_1_tb;
