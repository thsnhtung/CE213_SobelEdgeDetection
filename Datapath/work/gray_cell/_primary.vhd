library verilog;
use verilog.vl_types.all;
entity gray_cell is
    port(
        Gkj             : in     vl_logic;
        Pik             : in     vl_logic;
        Gik             : in     vl_logic;
        G               : out    vl_logic
    );
end gray_cell;
