library verilog;
use verilog.vl_types.all;
entity Row_Column_Counter is
    generic(
        NumOfBit        : integer := 8
    );
    port(
        CLK             : in     vl_logic;
        Reset           : in     vl_logic;
        Enable          : in     vl_logic;
        Out_Row         : out    vl_logic_vector;
        Out_Column      : out    vl_logic_vector;
        isReady         : out    vl_logic;
        isEnd           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NumOfBit : constant is 1;
end Row_Column_Counter;
