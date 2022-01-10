library verilog;
use verilog.vl_types.all;
entity Datapath is
    port(
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        Enable          : in     vl_logic;
        DataIn          : in     vl_logic_vector(7 downto 0);
        T               : in     vl_logic_vector(7 downto 0);
        Out_Row         : out    vl_logic_vector(7 downto 0);
        Out_Column      : out    vl_logic_vector(7 downto 0);
        isReady         : out    vl_logic;
        isEnd           : out    vl_logic;
        Dop             : out    vl_logic;
        Gradient        : out    vl_logic_vector(7 downto 0)
    );
end Datapath;
