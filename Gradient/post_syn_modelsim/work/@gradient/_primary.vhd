library verilog;
use verilog.vl_types.all;
entity Gradient is
    port(
        P0              : in     vl_logic_vector(7 downto 0);
        P1              : in     vl_logic_vector(7 downto 0);
        P2              : in     vl_logic_vector(7 downto 0);
        P3              : in     vl_logic_vector(7 downto 0);
        P4              : in     vl_logic_vector(7 downto 0);
        P5              : in     vl_logic_vector(7 downto 0);
        P6              : in     vl_logic_vector(7 downto 0);
        P7              : in     vl_logic_vector(7 downto 0);
        P8              : in     vl_logic_vector(7 downto 0);
        T               : in     vl_logic_vector(7 downto 0);
        Dop             : out    vl_logic
    );
end Gradient;
