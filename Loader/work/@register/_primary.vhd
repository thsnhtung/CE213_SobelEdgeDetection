library verilog;
use verilog.vl_types.all;
entity \Register\ is
    port(
        CLK             : in     vl_logic;
        DataIn          : in     vl_logic_vector(7 downto 0);
        Enable          : in     vl_logic;
        DataOut         : out    vl_logic_vector(7 downto 0)
    );
end \Register\;
