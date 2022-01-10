library verilog;
use verilog.vl_types.all;
entity Sobel is
    port(
        Start           : in     vl_logic;
        CLK             : in     vl_logic;
        DataIn          : in     vl_logic_vector(7 downto 0);
        Threshold       : in     vl_logic_vector(7 downto 0);
        Finish          : out    vl_logic;
        Dop             : out    vl_logic;
        isReady         : out    vl_logic;
        Gradient        : out    vl_logic_vector(7 downto 0);
        debug_current_state: out    vl_logic_vector(1 downto 0);
        debug_Out_Column: out    vl_logic_vector(7 downto 0);
        debug_Out_Row   : out    vl_logic_vector(7 downto 0)
    );
end Sobel;
