library verilog;
use verilog.vl_types.all;
entity Counter_tb is
    generic(
        NumOfBit        : integer := 8
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NumOfBit : constant is 1;
end Counter_tb;
