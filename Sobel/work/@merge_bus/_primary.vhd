library verilog;
use verilog.vl_types.all;
entity Merge_bus is
    port(
        In_Row_Value    : in     vl_logic_vector(7 downto 0);
        In_Column_Value : in     vl_logic_vector(7 downto 0);
        Output          : out    vl_logic_vector(15 downto 0)
    );
end Merge_bus;
