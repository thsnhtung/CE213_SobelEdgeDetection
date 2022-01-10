library verilog;
use verilog.vl_types.all;
entity Gradient is
    generic(
        nbit            : integer := 8
    );
    port(
        P0              : in     vl_logic_vector;
        P1              : in     vl_logic_vector;
        P2              : in     vl_logic_vector;
        P3              : in     vl_logic_vector;
        P4              : in     vl_logic_vector;
        P5              : in     vl_logic_vector;
        P6              : in     vl_logic_vector;
        P7              : in     vl_logic_vector;
        P8              : in     vl_logic_vector;
        T               : in     vl_logic_vector;
        Dop             : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of nbit : constant is 1;
end Gradient;
