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
        Gradient        : out    vl_logic_vector(7 downto 0);
        isPadding       : out    vl_logic;
        OutTemp0        : out    vl_logic_vector(7 downto 0);
        OutTemp1        : out    vl_logic_vector(7 downto 0);
        OutTemp2        : out    vl_logic_vector(7 downto 0);
        OutTemp3        : out    vl_logic_vector(7 downto 0);
        OutTemp4        : out    vl_logic_vector(7 downto 0);
        OutTemp5        : out    vl_logic_vector(7 downto 0);
        OutTemp6        : out    vl_logic_vector(7 downto 0);
        OutTemp7        : out    vl_logic_vector(7 downto 0);
        OutTemp8        : out    vl_logic_vector(7 downto 0)
    );
end Datapath;
