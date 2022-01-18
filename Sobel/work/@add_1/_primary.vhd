library verilog;
use verilog.vl_types.all;
entity Add_1 is
    port(
        Input           : in     vl_logic_vector(15 downto 0);
        Output          : out    vl_logic_vector(15 downto 0)
    );
end Add_1;
