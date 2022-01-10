library verilog;
use verilog.vl_types.all;
entity comparator is
    generic(
        NumOfBit        : integer := 7
    );
    port(
        \In\            : in     vl_logic_vector;
        Over            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NumOfBit : constant is 1;
end comparator;
