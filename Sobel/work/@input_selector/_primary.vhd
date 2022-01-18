library verilog;
use verilog.vl_types.all;
entity Input_selector is
    port(
        DataIn          : in     vl_logic_vector(7 downto 0);
        Row_Value       : in     vl_logic_vector(7 downto 0);
        Column_Value    : in     vl_logic_vector(7 downto 0);
        DataOut         : out    vl_logic_vector(7 downto 0);
        isPadding       : out    vl_logic
    );
end Input_selector;
