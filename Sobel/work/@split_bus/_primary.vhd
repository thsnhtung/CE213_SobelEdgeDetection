library verilog;
use verilog.vl_types.all;
entity Split_bus is
    port(
        Input           : in     vl_logic_vector(15 downto 0);
        Out_Row_Value   : out    vl_logic_vector(7 downto 0);
        Out_Column_Value: out    vl_logic_vector(7 downto 0)
    );
end Split_bus;
