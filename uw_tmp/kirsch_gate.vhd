
-- 
-- Definition of  kirsch
-- 
--      Thu Mar 27 16:55:36 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity max10 is 
   port (
      left_val : IN std_logic_vector (15 DOWNTO 0) ;
      right_val : IN std_logic_vector (15 DOWNTO 0) ;
      max_val : OUT std_logic_vector (15 DOWNTO 0) ;
      dir : OUT std_logic) ;
end max10 ;

architecture main_unfold_1119 of max10 is 
   component gt_16u_16u
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal nx4: std_logic ;
   
   signal right_val_EXMPLR35: std_logic_vector (0 DOWNTO 0) ;

begin
   dir <= right_val_EXMPLR35(0) ;
   dir_gt16_0 : gt_16u_16u port map ( a(15)=>left_val(15), a(14)=>
      left_val(14), a(13)=>left_val(13), a(12)=>left_val(12), a(11)=>
      left_val(11), a(10)=>left_val(10), a(9)=>left_val(9), a(8)=>
      left_val(8), a(7)=>left_val(7), a(6)=>left_val(6), a(5)=>left_val(5), 
      a(4)=>left_val(4), a(3)=>left_val(3), a(2)=>left_val(2), a(1)=>
      left_val(1), a(0)=>left_val(0), b(15)=>right_val_EXMPLR35(0), b(14)=>
      right_val_EXMPLR35(0), b(13)=>right_val_EXMPLR35(0), b(12)=>
      right_val_EXMPLR35(0), b(11)=>right_val_EXMPLR35(0), b(10)=>
      right_val_EXMPLR35(0), b(9)=>right_val_EXMPLR35(0), b(8)=>
      right_val_EXMPLR35(0), b(7)=>right_val_EXMPLR35(0), b(6)=>
      right_val_EXMPLR35(0), b(5)=>right_val_EXMPLR35(0), b(4)=>
      right_val_EXMPLR35(0), b(3)=>right_val_EXMPLR35(0), b(2)=>
      right_val_EXMPLR35(0), b(1)=>right_val_EXMPLR35(0), b(0)=>
      right_val_EXMPLR35(0), d=>nx4);
   right_val_EXMPLR35(0) <= '0' ;
   max_val(15) <= left_val(15) AND nx4 ;
   max_val(14) <= left_val(14) AND nx4 ;
   max_val(13) <= left_val(13) AND nx4 ;
   max_val(12) <= left_val(12) AND nx4 ;
   max_val(11) <= left_val(11) AND nx4 ;
   max_val(10) <= left_val(10) AND nx4 ;
   max_val(9) <= left_val(9) AND nx4 ;
   max_val(8) <= left_val(8) AND nx4 ;
   max_val(7) <= left_val(7) AND nx4 ;
   max_val(6) <= left_val(6) AND nx4 ;
   max_val(5) <= left_val(5) AND nx4 ;
   max_val(4) <= left_val(4) AND nx4 ;
   max_val(3) <= left_val(3) AND nx4 ;
   max_val(2) <= left_val(2) AND nx4 ;
   max_val(1) <= left_val(1) AND nx4 ;
   max_val(0) <= left_val(0) AND nx4 ;
end main_unfold_1119 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity kirsch is 
   port (
      i_clock : IN std_logic ;
      i_reset : IN std_logic ;
      i_valid : IN std_logic ;
      i_pixel : IN std_logic_vector (7 DOWNTO 0) ;
      o_valid : OUT std_logic ;
      o_edge : OUT std_logic ;
      o_dir : OUT std_logic_vector (2 DOWNTO 0) ;
      o_mode : OUT std_logic_vector (1 DOWNTO 0) ;
      o_row : OUT std_logic_vector (7 DOWNTO 0) ;
      debug_key : IN std_logic_vector (3 DOWNTO 1) ;
      debug_switch : IN std_logic_vector (17 DOWNTO 0) ;
      debug_led_red : OUT std_logic_vector (17 DOWNTO 0) ;
      debug_led_grn : OUT std_logic_vector (5 DOWNTO 0) ;
      debug_num_0 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_1 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_2 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_3 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_4 : OUT std_logic_vector (3 DOWNTO 0) ;
      debug_num_5 : OUT std_logic_vector (3 DOWNTO 0)) ;
end kirsch ;

architecture main of kirsch is 
   component max10
      port (
         left_val : IN std_logic_vector (15 DOWNTO 0) ;
         right_val : IN std_logic_vector (15 DOWNTO 0) ;
         max_val : OUT std_logic_vector (15 DOWNTO 0) ;
         dir : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component sub_8u_8u_8u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal controller: std_logic_vector (7 DOWNTO 0) ;
   
   signal difference_16, debug_num_5_0_EXMPLR79: std_logic ;
   
   signal r8: std_logic_vector (15 DOWNTO 0) ;
   
   signal r9_15, r9_14, r9_13, r9_12, r9_11, r9_10, r9_9, r9_8, r9_7: 
   std_logic ;
   
   signal a: std_logic_vector (15 DOWNTO 0) ;
   
   signal debug_num_5_1_EXMPLR80, o_valid_3n2ss1, not_difference_16, 
      rtlc4n385, rtlcs1, rtlcs3, not_controller_7, not_controller_6, 
      not_controller_4, not_controller_5, NOT_controller_3, nx64, 
      difference_4n2s2_16: std_logic ;
   
   signal DANGLING : std_logic_vector (8 downto 0 );

begin
   o_mode(1) <= debug_num_5_0_EXMPLR79 ;
   o_mode(0) <= debug_num_5_1_EXMPLR80 ;
   debug_led_red(17) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(16) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(15) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(14) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(13) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(12) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(11) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(10) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(9) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(8) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(7) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(6) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(5) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(4) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(3) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(2) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(1) <= debug_num_5_0_EXMPLR79 ;
   debug_led_red(0) <= debug_num_5_0_EXMPLR79 ;
   debug_led_grn(5) <= debug_num_5_0_EXMPLR79 ;
   debug_led_grn(4) <= debug_num_5_0_EXMPLR79 ;
   debug_led_grn(3) <= debug_num_5_0_EXMPLR79 ;
   debug_led_grn(2) <= debug_num_5_0_EXMPLR79 ;
   debug_led_grn(1) <= debug_num_5_0_EXMPLR79 ;
   debug_led_grn(0) <= debug_num_5_0_EXMPLR79 ;
   debug_num_0(3) <= debug_num_5_0_EXMPLR79 ;
   debug_num_0(2) <= debug_num_5_1_EXMPLR80 ;
   debug_num_0(1) <= debug_num_5_1_EXMPLR80 ;
   debug_num_0(0) <= debug_num_5_1_EXMPLR80 ;
   debug_num_1(3) <= debug_num_5_0_EXMPLR79 ;
   debug_num_1(2) <= debug_num_5_0_EXMPLR79 ;
   debug_num_1(1) <= debug_num_5_1_EXMPLR80 ;
   debug_num_1(0) <= debug_num_5_0_EXMPLR79 ;
   debug_num_2(3) <= debug_num_5_0_EXMPLR79 ;
   debug_num_2(2) <= debug_num_5_0_EXMPLR79 ;
   debug_num_2(1) <= debug_num_5_1_EXMPLR80 ;
   debug_num_2(0) <= debug_num_5_1_EXMPLR80 ;
   debug_num_3(3) <= debug_num_5_1_EXMPLR80 ;
   debug_num_3(2) <= debug_num_5_1_EXMPLR80 ;
   debug_num_3(1) <= debug_num_5_1_EXMPLR80 ;
   debug_num_3(0) <= debug_num_5_0_EXMPLR79 ;
   debug_num_4(3) <= debug_num_5_1_EXMPLR80 ;
   debug_num_4(2) <= debug_num_5_1_EXMPLR80 ;
   debug_num_4(1) <= debug_num_5_0_EXMPLR79 ;
   debug_num_4(0) <= debug_num_5_0_EXMPLR79 ;
   debug_num_5(3) <= debug_num_5_1_EXMPLR80 ;
   debug_num_5(2) <= debug_num_5_1_EXMPLR80 ;
   debug_num_5(1) <= debug_num_5_1_EXMPLR80 ;
   debug_num_5(0) <= debug_num_5_0_EXMPLR79 ;
   debug_num_5_0_EXMPLR79 <= '0' ;
   debug_num_5_1_EXMPLR80 <= '1' ;
   max2 : max10 port map ( left_val(15)=>a(15), left_val(14)=>a(14), 
      left_val(13)=>a(13), left_val(12)=>a(12), left_val(11)=>a(11), 
      left_val(10)=>a(10), left_val(9)=>a(9), left_val(8)=>a(8), left_val(7)
      =>a(7), left_val(6)=>a(6), left_val(5)=>a(5), left_val(4)=>a(4), 
      left_val(3)=>a(3), left_val(2)=>a(2), left_val(1)=>a(1), left_val(0)=>
      a(0), right_val(15)=>debug_num_5_0_EXMPLR79, right_val(14)=>
      debug_num_5_0_EXMPLR79, right_val(13)=>debug_num_5_0_EXMPLR79, 
      right_val(12)=>debug_num_5_0_EXMPLR79, right_val(11)=>
      debug_num_5_0_EXMPLR79, right_val(10)=>debug_num_5_0_EXMPLR79, 
      right_val(9)=>debug_num_5_0_EXMPLR79, right_val(8)=>
      debug_num_5_0_EXMPLR79, right_val(7)=>debug_num_5_0_EXMPLR79, 
      right_val(6)=>debug_num_5_0_EXMPLR79, right_val(5)=>
      debug_num_5_0_EXMPLR79, right_val(4)=>debug_num_5_0_EXMPLR79, 
      right_val(3)=>debug_num_5_0_EXMPLR79, right_val(2)=>
      debug_num_5_0_EXMPLR79, right_val(1)=>debug_num_5_0_EXMPLR79, 
      right_val(0)=>debug_num_5_0_EXMPLR79, max_val(15)=>r8(15), max_val(14)
      =>r8(14), max_val(13)=>r8(13), max_val(12)=>r8(12), max_val(11)=>
      r8(11), max_val(10)=>r8(10), max_val(9)=>r8(9), max_val(8)=>r8(8), 
      max_val(7)=>r8(7), max_val(6)=>r8(6), max_val(5)=>r8(5), max_val(4)=>
      r8(4), max_val(3)=>r8(3), max_val(2)=>r8(2), max_val(1)=>r8(1), 
      max_val(0)=>r8(0), dir=>DANGLING(0));
   not_difference_16 <= NOT difference_16 ;
   o_valid_3n2ss1 <= controller(7) when i_valid = '1' else controller(6) ;
   rtlc4n385 <= rtlcs1 OR rtlcs3 ;
   not_controller_7 <= NOT controller(7) ;
   not_controller_6 <= NOT controller(6) ;
   not_controller_4 <= NOT controller(4) ;
   not_controller_5 <= NOT controller(5) ;
   rtlc_446_and_6 : and_4u_4u port map ( a(3)=>controller(7), a(2)=>
      not_controller_6, a(1)=>not_controller_5, a(0)=>not_controller_4, d=>
      rtlcs1);
   rtlc_450_and_7 : and_4u_4u port map ( a(3)=>not_controller_7, a(2)=>
      not_controller_6, a(1)=>not_controller_5, a(0)=>controller(4), d=>
      rtlcs3);
   o_dir(0) <= debug_num_5_0_EXMPLR79 when debug_num_5_0_EXMPLR79
    = '1' else 'Z' ;
   o_dir(1) <= debug_num_5_0_EXMPLR79 when debug_num_5_0_EXMPLR79
    = '1' else 'Z' ;
   o_dir(2) <= debug_num_5_0_EXMPLR79 when debug_num_5_0_EXMPLR79
    = '1' else 'Z' ;
   o_row(0) <= debug_num_5_0_EXMPLR79 when debug_num_5_0_EXMPLR79
    = '1' else 'Z' ;
   o_row(1) <= debug_num_5_0_EXMPLR79 when debug_num_5_0_EXMPLR79
    = '1' else 'Z' ;
   o_row(2) <= debug_num_5_0_EXMPLR79 when debug_num_5_0_EXMPLR79
    = '1' else 'Z' ;
   o_row(3) <= debug_num_5_0_EXMPLR79 when debug_num_5_0_EXMPLR79
    = '1' else 'Z' ;
   o_row(4) <= debug_num_5_0_EXMPLR79 when debug_num_5_0_EXMPLR79
    = '1' else 'Z' ;
   o_row(5) <= debug_num_5_0_EXMPLR79 when debug_num_5_0_EXMPLR79
    = '1' else 'Z' ;
   o_row(6) <= debug_num_5_0_EXMPLR79 when debug_num_5_0_EXMPLR79
    = '1' else 'Z' ;
   o_row(7) <= debug_num_5_0_EXMPLR79 when debug_num_5_0_EXMPLR79
    = '1' else 'Z' ;
   DFFRSE (controller(6),debug_num_5_0_EXMPLR79,i_reset,
   debug_num_5_1_EXMPLR80,i_clock,controller(7)) ;
   DFFRSE (controller(5),debug_num_5_0_EXMPLR79,i_reset,
   debug_num_5_1_EXMPLR80,i_clock,controller(6)) ;
   DFFRSE (controller(4),debug_num_5_0_EXMPLR79,i_reset,
   debug_num_5_1_EXMPLR80,i_clock,controller(5)) ;
   DFFRSE (controller(3),debug_num_5_0_EXMPLR79,i_reset,
   debug_num_5_1_EXMPLR80,i_clock,controller(4)) ;
   DFFRSE (controller(2),debug_num_5_0_EXMPLR79,i_reset,
   debug_num_5_1_EXMPLR80,i_clock,controller(3)) ;
   DFFRSE (controller(1),debug_num_5_0_EXMPLR79,i_reset,
   debug_num_5_1_EXMPLR80,i_clock,controller(2)) ;
   DFFRSE (controller(0),debug_num_5_0_EXMPLR79,i_reset,
   debug_num_5_1_EXMPLR80,i_clock,controller(1)) ;
   DFFRSE (i_valid,i_valid,i_reset,debug_num_5_1_EXMPLR80,i_clock,
   controller(0)) ;
   DFFRSE (o_valid_3n2ss1,debug_num_5_0_EXMPLR79,i_reset,
   debug_num_5_1_EXMPLR80,i_clock,o_valid) ;
   DFFPCE (not_difference_16,debug_num_5_0_EXMPLR79,debug_num_5_0_EXMPLR79,
   rtlcs1,i_clock,o_edge) ;
   DFFPCE (difference_4n2s2_16,debug_num_5_0_EXMPLR79,debug_num_5_0_EXMPLR79,
   rtlcs1,i_clock,difference_16) ;
   DFFPCE (r8(12),debug_num_5_0_EXMPLR79,debug_num_5_0_EXMPLR79,rtlc4n385,
   i_clock,r9_15) ;
   DFFPCE (r8(11),debug_num_5_0_EXMPLR79,debug_num_5_0_EXMPLR79,rtlc4n385,
   i_clock,r9_14) ;
   DFFPCE (r8(10),debug_num_5_0_EXMPLR79,debug_num_5_0_EXMPLR79,rtlc4n385,
   i_clock,r9_13) ;
   DFFPCE (r8(9),debug_num_5_0_EXMPLR79,debug_num_5_0_EXMPLR79,rtlc4n385,
   i_clock,r9_12) ;
   DFFPCE (r8(8),debug_num_5_0_EXMPLR79,debug_num_5_0_EXMPLR79,rtlc4n385,
   i_clock,r9_11) ;
   DFFPCE (r8(7),debug_num_5_0_EXMPLR79,debug_num_5_0_EXMPLR79,rtlc4n385,
   i_clock,r9_10) ;
   DFFPCE (r8(6),debug_num_5_0_EXMPLR79,debug_num_5_0_EXMPLR79,rtlc4n385,
   i_clock,r9_9) ;
   DFFPCE (r8(5),debug_num_5_0_EXMPLR79,debug_num_5_0_EXMPLR79,rtlc4n385,
   i_clock,r9_8) ;
   DFFPCE (r8(4),debug_num_5_0_EXMPLR79,debug_num_5_0_EXMPLR79,rtlc4n385,
   i_clock,r9_7) ;
   NOT_controller_3 <= NOT controller(3) ;
   a(0) <= r8(0) AND NOT_controller_3 ;
   a(1) <= r8(1) AND NOT_controller_3 ;
   a(2) <= r8(2) AND NOT_controller_3 ;
   a(3) <= r8(3) AND NOT_controller_3 ;
   a(4) <= r8(4) AND NOT_controller_3 ;
   a(5) <= r8(5) AND NOT_controller_3 ;
   a(6) <= r8(6) AND NOT_controller_3 ;
   a(7) <= r8(7) AND NOT_controller_3 ;
   a(8) <= r8(8) AND NOT_controller_3 ;
   a(9) <= r8(9) AND NOT_controller_3 ;
   a(10) <= r8(10) AND NOT_controller_3 ;
   a(11) <= r8(11) AND NOT_controller_3 ;
   a(12) <= r8(12) AND NOT_controller_3 ;
   a(13) <= r8(13) AND NOT_controller_3 ;
   a(14) <= r8(14) AND NOT_controller_3 ;
   a(15) <= r8(15) AND NOT_controller_3 ;
   difference_sub10_4i1 : sub_8u_8u_8u_0 port map ( cin=>r9_7, a(7)=>r9_15, 
      a(6)=>r9_14, a(5)=>r9_13, a(4)=>r9_12, a(3)=>r9_11, a(2)=>r9_10, a(1)
      =>r9_9, a(0)=>r9_8, b(7)=>debug_num_5_0_EXMPLR79, b(6)=>
      debug_num_5_0_EXMPLR79, b(5)=>debug_num_5_0_EXMPLR79, b(4)=>
      debug_num_5_0_EXMPLR79, b(3)=>debug_num_5_0_EXMPLR79, b(2)=>
      debug_num_5_0_EXMPLR79, b(1)=>debug_num_5_0_EXMPLR79, b(0)=>
      debug_num_5_1_EXMPLR80, d(7)=>DANGLING(1), d(6)=>DANGLING(2), d(5)=>
      DANGLING(3), d(4)=>DANGLING(4), d(3)=>DANGLING(5), d(2)=>DANGLING(6), 
      d(1)=>DANGLING(7), d(0)=>DANGLING(8), cout=>nx64);
   difference_4n2s2_16 <= NOT nx64 ;
end main ;

