library verilog;
use verilog.vl_types.all;
entity Shift_Register is
    port(
        CLK             : in     vl_logic;
        Enable          : in     vl_logic;
        DataIn          : in     vl_logic_vector(7 downto 0);
        DataOut0        : out    vl_logic_vector(7 downto 0);
        DataOut1        : out    vl_logic_vector(7 downto 0);
        DataOut2        : out    vl_logic_vector(7 downto 0)
    );
end Shift_Register;
