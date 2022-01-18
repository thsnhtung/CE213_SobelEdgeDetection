library verilog;
use verilog.vl_types.all;
entity Gradient_tb is
    generic(
        nbit            : integer := 8
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of nbit : constant is 1;
end Gradient_tb;
