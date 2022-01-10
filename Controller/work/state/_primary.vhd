library verilog;
use verilog.vl_types.all;
entity state is
    port(
        \Begin\         : in     vl_logic;
        CLK             : in     vl_logic;
        next_state      : in     vl_logic_vector(1 downto 0);
        current_state   : out    vl_logic_vector(1 downto 0)
    );
end state;
