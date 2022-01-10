library verilog;
use verilog.vl_types.all;
entity Loader is
    port(
        CLK             : in     vl_logic;
        Reset           : in     vl_logic;
        Enable          : in     vl_logic;
        DataIn          : in     vl_logic_vector(7 downto 0);
        DataOut0        : out    vl_logic_vector(7 downto 0);
        DataOut1        : out    vl_logic_vector(7 downto 0);
        DataOut2        : out    vl_logic_vector(7 downto 0);
        DataOut3        : out    vl_logic_vector(7 downto 0);
        DataOut4        : out    vl_logic_vector(7 downto 0);
        DataOut5        : out    vl_logic_vector(7 downto 0);
        DataOut6        : out    vl_logic_vector(7 downto 0);
        DataOut7        : out    vl_logic_vector(7 downto 0);
        DataOut8        : out    vl_logic_vector(7 downto 0);
        Out_Row         : out    vl_logic_vector(7 downto 0);
        Out_Column      : out    vl_logic_vector(7 downto 0);
        isReady         : out    vl_logic;
        isEnd           : out    vl_logic
    );
end Loader;
