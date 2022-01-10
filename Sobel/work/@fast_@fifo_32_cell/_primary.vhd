library verilog;
use verilog.vl_types.all;
entity Fast_Fifo_32_cell is
    port(
        CLK             : in     vl_logic;
        Enable          : in     vl_logic;
        DataIn          : in     vl_logic_vector(7 downto 0);
        DataOut         : out    vl_logic_vector(7 downto 0)
    );
end Fast_Fifo_32_cell;
