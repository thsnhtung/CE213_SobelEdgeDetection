library verilog;
use verilog.vl_types.all;
entity sub is
    generic(
        nbit            : integer := 8
    );
    port(
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector;
        S               : out    vl_logic_vector;
        Cout            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of nbit : constant is 1;
end sub;
