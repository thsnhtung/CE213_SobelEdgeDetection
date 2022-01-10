library verilog;
use verilog.vl_types.all;
entity kogge_stone is
    port(
        cin             : in     vl_logic;
        x               : in     vl_logic_vector(7 downto 0);
        y               : in     vl_logic_vector(7 downto 0);
        sum             : out    vl_logic_vector(7 downto 0);
        cout            : out    vl_logic
    );
end kogge_stone;
