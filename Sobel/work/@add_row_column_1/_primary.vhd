library verilog;
use verilog.vl_types.all;
entity Add_row_column_1 is
    port(
        In_Row_Value    : in     vl_logic_vector(7 downto 0);
        In_Column_Value : in     vl_logic_vector(7 downto 0);
        Out_Row_Value   : out    vl_logic_vector(7 downto 0);
        Out_Column_Value: out    vl_logic_vector(7 downto 0)
    );
end Add_row_column_1;
