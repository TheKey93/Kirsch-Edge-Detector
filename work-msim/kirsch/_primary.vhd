library verilog;
use verilog.vl_types.all;
entity kirsch is
    port(
        i_clock         : in     vl_logic;
        i_reset         : in     vl_logic;
        i_valid         : in     vl_logic;
        i_pixel         : in     vl_logic_vector(7 downto 0);
        o_valid         : out    vl_logic;
        o_edge          : out    vl_logic;
        o_dir           : out    vl_logic_vector(2 downto 0);
        o_mode          : out    vl_logic_vector(1 downto 0);
        o_row           : out    vl_logic_vector(7 downto 0);
        debug_key       : in     vl_logic_vector(3 downto 1);
        debug_switch    : in     vl_logic_vector(17 downto 0);
        debug_led_red   : out    vl_logic_vector(17 downto 0);
        debug_led_grn   : out    vl_logic_vector(5 downto 0);
        debug_num_0     : out    vl_logic_vector(3 downto 0);
        debug_num_1     : out    vl_logic_vector(3 downto 0);
        debug_num_2     : out    vl_logic_vector(3 downto 0);
        debug_num_3     : out    vl_logic_vector(3 downto 0);
        debug_num_4     : out    vl_logic_vector(3 downto 0);
        debug_num_5     : out    vl_logic_vector(3 downto 0)
    );
end kirsch;
