library verilog;
use verilog.vl_types.all;
entity Padding is
    port(
        Row_Value       : in     vl_logic_vector(7 downto 0);
        Column_Value    : in     vl_logic_vector(7 downto 0);
        Result          : out    vl_logic
    );
end Padding;
