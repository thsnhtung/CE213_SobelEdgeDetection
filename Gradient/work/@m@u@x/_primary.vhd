library verilog;
use verilog.vl_types.all;
entity MUX is
    generic(
        nbit            : integer := 8
    );
    port(
        A0              : in     vl_logic_vector;
        A1              : in     vl_logic_vector;
        S               : in     vl_logic;
        Y               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of nbit : constant is 1;
end MUX;
