library verilog;
use verilog.vl_types.all;
entity row_column_counter is
    generic(
        NumOfBit        : integer := 7
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        isEnd           : out    vl_logic;
        SS              : out    vl_logic;
        Out_Row         : out    vl_logic_vector;
        Out_Column      : out    vl_logic_vector;
        Over_column     : out    vl_logic;
        Over_row        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NumOfBit : constant is 1;
end row_column_counter;
