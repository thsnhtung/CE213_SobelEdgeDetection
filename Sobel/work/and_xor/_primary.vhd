library verilog;
use verilog.vl_types.all;
entity and_xor is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        p               : out    vl_logic;
        g               : out    vl_logic
    );
end and_xor;
