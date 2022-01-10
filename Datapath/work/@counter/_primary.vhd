library verilog;
use verilog.vl_types.all;
entity Counter is
    generic(
        NumOfBit        : vl_notype
    );
    port(
        CLK             : in     vl_logic;
        Reset           : in     vl_logic;
        Enable          : in     vl_logic;
        Output          : out    vl_logic_vector;
        Overflow        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NumOfBit : constant is 5;
end Counter;
