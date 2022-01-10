library verilog;
use verilog.vl_types.all;
entity counter_1 is
    generic(
        NumOfBit        : vl_notype
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        \Out\           : out    vl_logic_vector;
        Over            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NumOfBit : constant is 5;
end counter_1;
