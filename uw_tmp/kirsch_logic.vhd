
-- 
-- Definition of  kirsch
-- 
--      Thu Mar 27 16:55:37 2014
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_8_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_8_0 ;

architecture IMPLEMENTATION of sub_8_0 is 
   signal nx23445z8, nx23445z7, nx23445z6, nx23445z5, nx23445z4, nx23445z3, 
      nx23445z2, nx_sub_8_0_vcc_net: std_logic ;

begin
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"fa00",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, dataa=>a(7), datad=>nx_sub_8_0_vcc_net, cin
      =>nx23445z2);
   nx_sub_8_0_vcc_net <= '1';
   ix23445z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"00fa",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z2, dataa=>a(6), datad=>nx_sub_8_0_vcc_net, 
      cin=>nx23445z3);
   ix23445z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00fa",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z3, dataa=>a(5), datad=>nx_sub_8_0_vcc_net, 
      cin=>nx23445z4);
   ix23445z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"00fa",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z4, dataa=>a(4), datad=>nx_sub_8_0_vcc_net, 
      cin=>nx23445z5);
   ix23445z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"00fa",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z5, dataa=>a(3), datad=>nx_sub_8_0_vcc_net, 
      cin=>nx23445z6);
   ix23445z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"00fa",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z6, dataa=>a(2), datad=>nx_sub_8_0_vcc_net, 
      cin=>nx23445z7);
   ix23445z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00fa",
         sum_lutc_input => "cin") 
       port map ( cout=>nx23445z7, dataa=>a(1), datad=>nx_sub_8_0_vcc_net, 
      cin=>nx23445z8);
   ix23445z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx23445z8, dataa=>a(0), datab=>cin, datad=>
      nx_sub_8_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

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
   component sub_8_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal i_clock_EXMPLR111, i_reset_EXMPLR112, i_valid_EXMPLR113, 
      o_valid_dup0: std_logic ;
   
   signal o_dir_EXMPLR177: std_logic_vector (2 DOWNTO 0) ;
   
   signal o_row_EXMPLR178: std_logic_vector (7 DOWNTO 0) ;
   
   signal controller: std_logic_vector (7 DOWNTO 0) ;
   
   signal difference_16, r9_15, r9_14, r9_13, r9_12, r9_11, r9_10, r9_9, 
      r9_8, r9_7, nx58056z3, i_clock_int, i_reset_int, i_valid_int, 
      o_valid_EXMPLR125, o_edge_EXMPLR126: std_logic ;
   
   signal o_mode_EXMPLR179: std_logic_vector (1 DOWNTO 0) ;
   
   signal debug_led_red_EXMPLR180: std_logic_vector (17 DOWNTO 0) ;
   
   signal debug_led_grn_EXMPLR181: std_logic_vector (5 DOWNTO 0) ;
   
   signal debug_num_0_EXMPLR182: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_1_EXMPLR183: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_2_EXMPLR184: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_3_EXMPLR185: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_4_EXMPLR186: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_5_EXMPLR187: std_logic_vector (3 DOWNTO 0) ;
   
   signal debug_num_5_dup0: std_logic_vector (1 DOWNTO 0) ;
   
   signal r8_12, r8_11, r8_10, r8_9, r8_8, r8_7, r8_6, r8_5, r8_4, a_15, 
      a_14, a_13, a_3, a_2, a_1, not_difference_16, nx26296z8, nx58056z2, 
      nx26296z1, a_0, nx58056z1, nx26296z2, nx26296z4, nx26296z6, nx26296z7, 
      nx26296z3, nx26296z5, nx60567z1, nx45767z1, nx14430z1, r8_10_repl0, 
      r8_9_repl0, r8_6_repl0, r8_5_repl0: std_logic ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   i_clock_EXMPLR111 <= i_clock ;
   i_reset_EXMPLR112 <= i_reset ;
   i_valid_EXMPLR113 <= i_valid ;
   o_valid <= o_valid_EXMPLR125 ;
   o_edge <= o_edge_EXMPLR126 ;
   o_dir(2) <= o_dir_EXMPLR177(2) ;
   o_dir(1) <= o_dir_EXMPLR177(1) ;
   o_dir(0) <= o_dir_EXMPLR177(0) ;
   o_mode(1) <= o_mode_EXMPLR179(1) ;
   o_mode(0) <= o_mode_EXMPLR179(0) ;
   o_row(7) <= o_row_EXMPLR178(7) ;
   o_row(6) <= o_row_EXMPLR178(6) ;
   o_row(5) <= o_row_EXMPLR178(5) ;
   o_row(4) <= o_row_EXMPLR178(4) ;
   o_row(3) <= o_row_EXMPLR178(3) ;
   o_row(2) <= o_row_EXMPLR178(2) ;
   o_row(1) <= o_row_EXMPLR178(1) ;
   o_row(0) <= o_row_EXMPLR178(0) ;
   debug_led_red(17) <= debug_led_red_EXMPLR180(17) ;
   debug_led_red(16) <= debug_led_red_EXMPLR180(16) ;
   debug_led_red(15) <= debug_led_red_EXMPLR180(15) ;
   debug_led_red(14) <= debug_led_red_EXMPLR180(14) ;
   debug_led_red(13) <= debug_led_red_EXMPLR180(13) ;
   debug_led_red(12) <= debug_led_red_EXMPLR180(12) ;
   debug_led_red(11) <= debug_led_red_EXMPLR180(11) ;
   debug_led_red(10) <= debug_led_red_EXMPLR180(10) ;
   debug_led_red(9) <= debug_led_red_EXMPLR180(9) ;
   debug_led_red(8) <= debug_led_red_EXMPLR180(8) ;
   debug_led_red(7) <= debug_led_red_EXMPLR180(7) ;
   debug_led_red(6) <= debug_led_red_EXMPLR180(6) ;
   debug_led_red(5) <= debug_led_red_EXMPLR180(5) ;
   debug_led_red(4) <= debug_led_red_EXMPLR180(4) ;
   debug_led_red(3) <= debug_led_red_EXMPLR180(3) ;
   debug_led_red(2) <= debug_led_red_EXMPLR180(2) ;
   debug_led_red(1) <= debug_led_red_EXMPLR180(1) ;
   debug_led_red(0) <= debug_led_red_EXMPLR180(0) ;
   debug_led_grn(5) <= debug_led_grn_EXMPLR181(5) ;
   debug_led_grn(4) <= debug_led_grn_EXMPLR181(4) ;
   debug_led_grn(3) <= debug_led_grn_EXMPLR181(3) ;
   debug_led_grn(2) <= debug_led_grn_EXMPLR181(2) ;
   debug_led_grn(1) <= debug_led_grn_EXMPLR181(1) ;
   debug_led_grn(0) <= debug_led_grn_EXMPLR181(0) ;
   debug_num_0(3) <= debug_num_0_EXMPLR182(3) ;
   debug_num_0(2) <= debug_num_0_EXMPLR182(2) ;
   debug_num_0(1) <= debug_num_0_EXMPLR182(1) ;
   debug_num_0(0) <= debug_num_0_EXMPLR182(0) ;
   debug_num_1(3) <= debug_num_1_EXMPLR183(3) ;
   debug_num_1(2) <= debug_num_1_EXMPLR183(2) ;
   debug_num_1(1) <= debug_num_1_EXMPLR183(1) ;
   debug_num_1(0) <= debug_num_1_EXMPLR183(0) ;
   debug_num_2(3) <= debug_num_2_EXMPLR184(3) ;
   debug_num_2(2) <= debug_num_2_EXMPLR184(2) ;
   debug_num_2(1) <= debug_num_2_EXMPLR184(1) ;
   debug_num_2(0) <= debug_num_2_EXMPLR184(0) ;
   debug_num_3(3) <= debug_num_3_EXMPLR185(3) ;
   debug_num_3(2) <= debug_num_3_EXMPLR185(2) ;
   debug_num_3(1) <= debug_num_3_EXMPLR185(1) ;
   debug_num_3(0) <= debug_num_3_EXMPLR185(0) ;
   debug_num_4(3) <= debug_num_4_EXMPLR186(3) ;
   debug_num_4(2) <= debug_num_4_EXMPLR186(2) ;
   debug_num_4(1) <= debug_num_4_EXMPLR186(1) ;
   debug_num_4(0) <= debug_num_4_EXMPLR186(0) ;
   debug_num_5(3) <= debug_num_5_EXMPLR187(3) ;
   debug_num_5(2) <= debug_num_5_EXMPLR187(2) ;
   debug_num_5(1) <= debug_num_5_EXMPLR187(1) ;
   debug_num_5(0) <= debug_num_5_EXMPLR187(0) ;
   difference_sub10_4i1 : sub_8_0 port map ( cin=>r9_7, a(7)=>r9_15, a(6)=>
      r9_14, a(5)=>r9_13, a(4)=>r9_12, a(3)=>r9_11, a(2)=>r9_10, a(1)=>r9_9, 
      a(0)=>r9_8, b(7)=>DANGLING(0), b(6)=>DANGLING(1), b(5)=>DANGLING(2), 
      b(4)=>DANGLING(3), b(3)=>DANGLING(4), b(2)=>DANGLING(5), b(1)=>
      DANGLING(6), b(0)=>DANGLING(7), d(7)=>DANGLING(8), d(6)=>DANGLING(9), 
      d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>DANGLING(12), d(2)=>
      DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(15), cout=>nx58056z3
   );
   debug_num_5_dup0(1) <= '0';
   debug_num_5_dup0(0) <= '1';
   not_difference_16 <= NOT difference_16;
   reg_r9_9 : cycloneii_lcell_ff port map ( regout=>r9_9, datain=>r8_6, clk
      =>i_clock_int, ena=>nx26296z8);
   reg_r9_8 : cycloneii_lcell_ff port map ( regout=>r9_8, datain=>r8_5, clk
      =>i_clock_int, ena=>nx26296z8);
   reg_r9_7 : cycloneii_lcell_ff port map ( regout=>r9_7, datain=>r8_4, clk
      =>i_clock_int, ena=>nx26296z8);
   reg_r9_15 : cycloneii_lcell_ff port map ( regout=>r9_15, datain=>r8_12, 
      clk=>i_clock_int, ena=>nx26296z8);
   reg_r9_14 : cycloneii_lcell_ff port map ( regout=>r9_14, datain=>r8_11, 
      clk=>i_clock_int, ena=>nx26296z8);
   reg_r9_13 : cycloneii_lcell_ff port map ( regout=>r9_13, datain=>r8_10, 
      clk=>i_clock_int, ena=>nx26296z8);
   reg_r9_12 : cycloneii_lcell_ff port map ( regout=>r9_12, datain=>r8_9, 
      clk=>i_clock_int, ena=>nx26296z8);
   reg_r9_11 : cycloneii_lcell_ff port map ( regout=>r9_11, datain=>r8_8, 
      clk=>i_clock_int, ena=>nx26296z8);
   reg_r9_10 : cycloneii_lcell_ff port map ( regout=>r9_10, datain=>r8_7, 
      clk=>i_clock_int, ena=>nx26296z8);
   reg_out_o_edge_obuf : cycloneii_lcell_ff port map ( regout=>nx45767z1, 
      datain=>not_difference_16, clk=>i_clock_int, ena=>nx58056z2);
   reg_o_valid : cycloneii_lcell_ff port map ( regout=>o_valid_dup0, datain
      =>nx60567z1, clk=>i_clock_int, sclr=>i_reset_int);
   reg_difference_16 : cycloneii_lcell_ff port map ( regout=>difference_16, 
      datain=>nx58056z1, clk=>i_clock_int);
   reg_controller_7 : cycloneii_lcell_ff port map ( regout=>controller(7), 
      datain=>controller(6), clk=>i_clock_int, sclr=>i_reset_int);
   reg_controller_6 : cycloneii_lcell_ff port map ( regout=>controller(6), 
      datain=>controller(5), clk=>i_clock_int, sclr=>i_reset_int);
   reg_controller_5 : cycloneii_lcell_ff port map ( regout=>controller(5), 
      datain=>controller(4), clk=>i_clock_int, sclr=>i_reset_int);
   reg_controller_4 : cycloneii_lcell_ff port map ( regout=>controller(4), 
      datain=>controller(3), clk=>i_clock_int, sclr=>i_reset_int);
   reg_controller_3 : cycloneii_lcell_ff port map ( regout=>controller(3), 
      datain=>controller(2), clk=>i_clock_int, sclr=>i_reset_int);
   reg_controller_2 : cycloneii_lcell_ff port map ( regout=>controller(2), 
      datain=>controller(1), clk=>i_clock_int, sclr=>i_reset_int);
   reg_controller_1 : cycloneii_lcell_ff port map ( regout=>controller(1), 
      datain=>controller(0), clk=>i_clock_int, sclr=>i_reset_int);
   nx14430z1 <= '1';
   reg_controller_0 : cycloneii_lcell_ff port map ( regout=>controller(0), 
      datain=>i_valid_int, sdata=>nx14430z1, clk=>i_clock_int, sclr=>
      i_reset_int, sload=>i_valid_int);
   o_valid_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_valid_EXMPLR125, datain=>o_valid_dup0);
   o_row_triBus3_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR178(7), datain=>debug_num_5_dup0(1), oe
      =>debug_num_5_dup0(1));
   o_row_triBus3_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR178(6), datain=>debug_num_5_dup0(1), oe
      =>debug_num_5_dup0(1));
   o_row_triBus3_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR178(5), datain=>debug_num_5_dup0(1), oe
      =>debug_num_5_dup0(1));
   o_row_triBus3_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR178(4), datain=>debug_num_5_dup0(1), oe
      =>debug_num_5_dup0(1));
   o_row_triBus3_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR178(3), datain=>debug_num_5_dup0(1), oe
      =>debug_num_5_dup0(1));
   o_row_triBus3_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR178(2), datain=>debug_num_5_dup0(1), oe
      =>debug_num_5_dup0(1));
   o_row_triBus3_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR178(1), datain=>debug_num_5_dup0(1), oe
      =>debug_num_5_dup0(1));
   o_row_triBus3_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_row_EXMPLR178(0), datain=>debug_num_5_dup0(1), oe
      =>debug_num_5_dup0(1));
   o_mode_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR179(1), datain=>debug_num_5_dup0(1));
   o_mode_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_mode_EXMPLR179(0), datain=>debug_num_5_dup0(0));
   o_dir_triBus1_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR177(2), datain=>debug_num_5_dup0(1), oe
      =>debug_num_5_dup0(1));
   o_dir_triBus1_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR177(1), datain=>debug_num_5_dup0(1), oe
      =>debug_num_5_dup0(1));
   o_dir_triBus1_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_dir_EXMPLR177(0), datain=>debug_num_5_dup0(1), oe
      =>debug_num_5_dup0(1));
   ix45767z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_edge_EXMPLR126, datain=>nx45767z1);
   ix60567z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0cc") 
       port map ( combout=>nx60567z1, datab=>controller(6), datac=>
      controller(7), datad=>i_valid_int);
   i_valid_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR113);
   i_reset_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_reset_int, padio=>i_reset_EXMPLR112);
   i_clock_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR111);
   debug_num_5_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR187(3), datain=>
      debug_num_5_dup0(0));
   debug_num_5_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR187(2), datain=>
      debug_num_5_dup0(0));
   debug_num_5_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR187(1), datain=>
      debug_num_5_dup0(0));
   debug_num_5_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_5_EXMPLR187(0), datain=>
      debug_num_5_dup0(1));
   debug_num_4_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR186(3), datain=>
      debug_num_5_dup0(0));
   debug_num_4_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR186(2), datain=>
      debug_num_5_dup0(0));
   debug_num_4_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR186(1), datain=>
      debug_num_5_dup0(1));
   debug_num_4_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_4_EXMPLR186(0), datain=>
      debug_num_5_dup0(1));
   debug_num_3_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR185(3), datain=>
      debug_num_5_dup0(0));
   debug_num_3_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR185(2), datain=>
      debug_num_5_dup0(0));
   debug_num_3_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR185(1), datain=>
      debug_num_5_dup0(0));
   debug_num_3_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_3_EXMPLR185(0), datain=>
      debug_num_5_dup0(1));
   debug_num_2_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR184(3), datain=>
      debug_num_5_dup0(1));
   debug_num_2_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR184(2), datain=>
      debug_num_5_dup0(1));
   debug_num_2_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR184(1), datain=>
      debug_num_5_dup0(0));
   debug_num_2_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_2_EXMPLR184(0), datain=>
      debug_num_5_dup0(0));
   debug_num_1_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR183(3), datain=>
      debug_num_5_dup0(1));
   debug_num_1_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR183(2), datain=>
      debug_num_5_dup0(1));
   debug_num_1_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR183(1), datain=>
      debug_num_5_dup0(0));
   debug_num_1_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_1_EXMPLR183(0), datain=>
      debug_num_5_dup0(1));
   debug_num_0_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR182(3), datain=>
      debug_num_5_dup0(1));
   debug_num_0_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR182(2), datain=>
      debug_num_5_dup0(0));
   debug_num_0_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR182(1), datain=>
      debug_num_5_dup0(0));
   debug_num_0_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_num_0_EXMPLR182(0), datain=>
      debug_num_5_dup0(0));
   debug_led_red_obuf_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(9), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(8), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(7), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(6), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(5), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(4), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(3), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(2), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_17 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(17), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_16 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(16), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(15), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(14), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(13), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(12), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(11), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(10), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(1), datain=>
      debug_num_5_dup0(1));
   debug_led_red_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_red_EXMPLR180(0), datain=>
      debug_num_5_dup0(1));
   debug_led_grn_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR181(5), datain=>
      debug_num_5_dup0(1));
   debug_led_grn_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR181(4), datain=>
      debug_num_5_dup0(1));
   debug_led_grn_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR181(3), datain=>
      debug_num_5_dup0(1));
   debug_led_grn_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR181(2), datain=>
      debug_num_5_dup0(1));
   debug_led_grn_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR181(1), datain=>
      debug_num_5_dup0(1));
   debug_led_grn_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>debug_led_grn_EXMPLR181(0), datain=>
      debug_num_5_dup0(1));
   ix26296z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx26296z7, dataa=>a_3, datab=>a_13, datac=>a_14, 
      datad=>a_15);
   ix26296z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx26296z6, dataa=>r8_4, datab=>a_0, datac=>a_1, 
      datad=>a_2);
   ix58056z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2e2e") 
       port map ( combout=>nx58056z1, dataa=>difference_16, datab=>nx58056z2, 
      datac=>nx58056z3);
   ix26296z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>a_0, dataa=>controller(3), datab=>nx26296z1, 
      datac=>a_0);
   ix26296z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx26296z1, dataa=>nx26296z2, datab=>nx26296z4, 
      datac=>nx26296z6, datad=>nx26296z7);
   ix58056z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx58056z2, dataa=>controller(7), datab=>
      controller(6), datac=>controller(5), datad=>controller(4));
   ix26296z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"0102") 
       port map ( combout=>nx26296z8, dataa=>controller(7), datab=>
      controller(6), datac=>controller(5), datad=>controller(4));
   ix26296z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>a_1, dataa=>controller(3), datab=>nx26296z1, 
      datac=>a_1);
   ix26296z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>a_2, dataa=>controller(3), datab=>nx26296z1, 
      datac=>a_2);
   ix26296z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>a_3, dataa=>controller(3), datab=>nx26296z1, 
      datac=>a_3);
   ix26296z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>a_13, dataa=>controller(3), datab=>nx26296z1, 
      datac=>a_13);
   ix26296z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>a_14, dataa=>controller(3), datab=>nx26296z1, 
      datac=>a_14);
   ix26296z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>a_15, dataa=>controller(3), datab=>nx26296z1, 
      datac=>a_15);
   ix26296z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>r8_4, dataa=>controller(3), datab=>r8_4, datac=>
      nx26296z1);
   ix7193z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>r8_5, dataa=>controller(3), datab=>r8_5, datac=>
      nx26296z1);
   ix53589z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>r8_6, dataa=>controller(3), datab=>r8_6, datac=>
      nx26296z1);
   ix26296z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>r8_7, dataa=>controller(3), datab=>r8_7, datac=>
      nx26296z1);
   ix26296z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>r8_8, dataa=>controller(3), datab=>r8_8, datac=>
      nx26296z1);
   ix19756z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>r8_9, dataa=>controller(3), datab=>r8_9, datac=>
      nx26296z1);
   ix50534z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>r8_10, dataa=>controller(3), datab=>r8_10, datac
      =>nx26296z1);
   ix26296z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>r8_11, dataa=>controller(3), datab=>r8_11, datac
      =>nx26296z1);
   ix26296z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>r8_12, dataa=>controller(3), datab=>r8_12, datac
      =>nx26296z1);
   ix26296z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"00c8") 
       port map ( combout=>nx26296z3, dataa=>r8_12, datab=>nx26296z1, datac
      =>r8_11, datad=>controller(3));
   ix1077_repl0 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>r8_10_repl0, dataa=>controller(3), datab=>r8_10, 
      datac=>nx26296z1);
   ix1075_repl0 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>r8_9_repl0, dataa=>controller(3), datab=>r8_9, 
      datac=>nx26296z1);
   ix26296z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff54") 
       port map ( combout=>nx26296z2, dataa=>controller(3), datab=>
      r8_10_repl0, datac=>r8_9_repl0, datad=>nx26296z3);
   ix26296z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"00c8") 
       port map ( combout=>nx26296z5, dataa=>r8_8, datab=>nx26296z1, datac=>
      r8_7, datad=>controller(3));
   ix1069_repl0 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>r8_6_repl0, dataa=>controller(3), datab=>r8_6, 
      datac=>nx26296z1);
   ix1067_repl0 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>r8_5_repl0, dataa=>controller(3), datab=>r8_5, 
      datac=>nx26296z1);
   ix26296z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff54") 
       port map ( combout=>nx26296z4, dataa=>controller(3), datab=>
      r8_6_repl0, datac=>r8_5_repl0, datad=>nx26296z5);
end main ;

