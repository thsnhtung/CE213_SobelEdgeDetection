library verilog;
use verilog.vl_types.all;
entity Comparator_3 is
    generic(
        NumOfBit        : integer := 8
    );
    port(
        Input           : in     vl_logic_vector;
        Invalid         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NumOfBit : constant is 1;
end Comparator_3;
