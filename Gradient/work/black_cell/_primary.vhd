library verilog;
use verilog.vl_types.all;
entity black_cell is
    port(
        Gkj             : in     vl_logic;
        Pik             : in     vl_logic;
        Gik             : in     vl_logic;
        Pkj             : in     vl_logic;
        G               : out    vl_logic;
        P               : out    vl_logic
    );
end black_cell;
