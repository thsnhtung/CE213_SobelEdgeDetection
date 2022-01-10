library verilog;
use verilog.vl_types.all;
entity Row_Column_Counter is
    port(
        CLK             : in     vl_logic;
        Reset           : in     vl_logic;
        Enable          : in     vl_logic;
        Out_Row         : out    vl_logic_vector(7 downto 0);
        Out_Column      : out    vl_logic_vector(7 downto 0);
        isReady         : out    vl_logic;
        isEnd           : out    vl_logic
    );
end Row_Column_Counter;
