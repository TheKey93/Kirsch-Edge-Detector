//
// Verilog description for cell kirsch, 
// Thu Mar 27 16:55:37 2014
//
// Precision RTL Synthesis, 2008a.47//


module kirsch ( i_clock, i_reset, i_valid, i_pixel, o_valid, o_edge, o_dir, 
                o_mode, o_row, debug_key, debug_switch, debug_led_red, 
                debug_led_grn, debug_num_0, debug_num_1, debug_num_2, 
                debug_num_3, debug_num_4, debug_num_5 ) ;

    input i_clock ;
    input i_reset ;
    input i_valid ;
    input [7:0]i_pixel ;
    output o_valid ;
    output o_edge ;
    output [2:0]o_dir ;
    output [1:0]o_mode ;
    output [7:0]o_row ;
    input [3:1]debug_key ;
    input [17:0]debug_switch ;
    output [17:0]debug_led_red ;
    output [5:0]debug_led_grn ;
    output [3:0]debug_num_0 ;
    output [3:0]debug_num_1 ;
    output [3:0]debug_num_2 ;
    output [3:0]debug_num_3 ;
    output [3:0]debug_num_4 ;
    output [3:0]debug_num_5 ;

    wire o_valid_dup0;
    wire [7:0]controller;
    wire difference_16_, r9_15_, r9_14_, r9_13_, r9_12_, r9_11_, r9_10_, r9_9_, 
         r9_8_, r9_7_, nx58056z3, i_clock_int, i_reset_int, i_valid_int;
    wire [1:0]debug_num_5_dup0;
    wire r8_12_, r8_11_, r8_10_, r8_9_, r8_8_, r8_7_, r8_6_, r8_5_, r8_4_, a_15_, 
         a_14_, a_13_, a_3_, a_2_, a_1_, not_difference_16, nx26296z8, nx58056z2, 
         nx26296z1, a_0_, nx58056z1, nx26296z2, nx26296z4, nx26296z6, nx26296z7, 
         nx26296z3, nx26296z5, nx60567z1, nx45767z1, nx14430z1, r8_10__repl0, 
         r8_9__repl0, r8_6__repl0, r8_5__repl0;
    wire [1223:0] xmplr_dummy ;




    sub_8_0 difference_sub10_4i1 (.cin (r9_7_), .a ({r9_15_,r9_14_,r9_13_,r9_12_
            ,r9_11_,r9_10_,r9_9_,r9_8_}), .cout (nx58056z3)) ;
    assign debug_num_5_dup0[1] = 0 ;
    assign debug_num_5_dup0[0] = 1 ;
    assign not_difference_16 = ~difference_16_ ;
    cycloneii_lcell_ff reg_r9_9_ (.regout (r9_9_), .datain (r8_6_), .sdata (1'b0
                       ), .clk (i_clock_int), .ena (nx26296z8), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_8_ (.regout (r9_8_), .datain (r8_5_), .sdata (1'b0
                       ), .clk (i_clock_int), .ena (nx26296z8), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_7_ (.regout (r9_7_), .datain (r8_4_), .sdata (1'b0
                       ), .clk (i_clock_int), .ena (nx26296z8), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_15_ (.regout (r9_15_), .datain (r8_12_), .sdata (
                       1'b0), .clk (i_clock_int), .ena (nx26296z8), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_14_ (.regout (r9_14_), .datain (r8_11_), .sdata (
                       1'b0), .clk (i_clock_int), .ena (nx26296z8), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_13_ (.regout (r9_13_), .datain (r8_10_), .sdata (
                       1'b0), .clk (i_clock_int), .ena (nx26296z8), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_12_ (.regout (r9_12_), .datain (r8_9_), .sdata (
                       1'b0), .clk (i_clock_int), .ena (nx26296z8), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_11_ (.regout (r9_11_), .datain (r8_8_), .sdata (
                       1'b0), .clk (i_clock_int), .ena (nx26296z8), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_r9_10_ (.regout (r9_10_), .datain (r8_7_), .sdata (
                       1'b0), .clk (i_clock_int), .ena (nx26296z8), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_out_o_edge_obuf (.regout (nx45767z1), .datain (
                       not_difference_16), .sdata (1'b0), .clk (i_clock_int), .ena (
                       nx58056z2), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_o_valid (.regout (o_valid_dup0), .datain (nx60567z1)
                       , .sdata (1'b0), .clk (i_clock_int), .ena (1'b1), .aclr (
                       1'b0), .sclr (i_reset_int), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_difference_16_ (.regout (difference_16_), .datain (
                       nx58056z1), .sdata (1'b0), .clk (i_clock_int), .ena (1'b1
                       ), .aclr (1'b0), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_controller_7_ (.regout (controller[7]), .datain (
                       controller[6]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_controller_6_ (.regout (controller[6]), .datain (
                       controller[5]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_controller_5_ (.regout (controller[5]), .datain (
                       controller[4]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_controller_4_ (.regout (controller[4]), .datain (
                       controller[3]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_controller_3_ (.regout (controller[3]), .datain (
                       controller[2]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_controller_2_ (.regout (controller[2]), .datain (
                       controller[1]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    cycloneii_lcell_ff reg_controller_1_ (.regout (controller[1]), .datain (
                       controller[0]), .sdata (1'b0), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (1'b0)
                       ) ;
    assign nx14430z1 = 1 ;
    cycloneii_lcell_ff reg_controller_0_ (.regout (controller[0]), .datain (
                       i_valid_int), .sdata (nx14430z1), .clk (i_clock_int), .ena (
                       1'b1), .aclr (1'b0), .sclr (i_reset_int), .sload (
                       i_valid_int)) ;
    cycloneii_io o_valid_obuf (.padio (o_valid), .datain (o_valid_dup0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_valid_obuf.operation_mode = "output";
                 
                 defparam o_valid_obuf.output_register_mode = "none";
                 
                 defparam o_valid_obuf.tie_off_output_clock_enable = "false";
                 
                 defparam o_valid_obuf.oe_register_mode = "none";
                 
                 defparam o_valid_obuf.tie_off_oe_clock_enable = "false";
                 
                 defparam o_valid_obuf.input_register_mode = "none";
    cycloneii_io o_row_triBus3_7_ (.padio (o_row[7]), .datain (
                 debug_num_5_dup0[1]), .oe (debug_num_5_dup0[1]), .outclk (1'b0)
                 , .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_triBus3_7_.operation_mode = "output";
                 
                 defparam o_row_triBus3_7_.output_register_mode = "none";
                 
                 defparam o_row_triBus3_7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_triBus3_7_.oe_register_mode = "none";
                 
                 defparam o_row_triBus3_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_triBus3_7_.input_register_mode = "none";
    cycloneii_io o_row_triBus3_6_ (.padio (o_row[6]), .datain (
                 debug_num_5_dup0[1]), .oe (debug_num_5_dup0[1]), .outclk (1'b0)
                 , .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_triBus3_6_.operation_mode = "output";
                 
                 defparam o_row_triBus3_6_.output_register_mode = "none";
                 
                 defparam o_row_triBus3_6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_triBus3_6_.oe_register_mode = "none";
                 
                 defparam o_row_triBus3_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_triBus3_6_.input_register_mode = "none";
    cycloneii_io o_row_triBus3_5_ (.padio (o_row[5]), .datain (
                 debug_num_5_dup0[1]), .oe (debug_num_5_dup0[1]), .outclk (1'b0)
                 , .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_triBus3_5_.operation_mode = "output";
                 
                 defparam o_row_triBus3_5_.output_register_mode = "none";
                 
                 defparam o_row_triBus3_5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_triBus3_5_.oe_register_mode = "none";
                 
                 defparam o_row_triBus3_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_triBus3_5_.input_register_mode = "none";
    cycloneii_io o_row_triBus3_4_ (.padio (o_row[4]), .datain (
                 debug_num_5_dup0[1]), .oe (debug_num_5_dup0[1]), .outclk (1'b0)
                 , .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_triBus3_4_.operation_mode = "output";
                 
                 defparam o_row_triBus3_4_.output_register_mode = "none";
                 
                 defparam o_row_triBus3_4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_triBus3_4_.oe_register_mode = "none";
                 
                 defparam o_row_triBus3_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_triBus3_4_.input_register_mode = "none";
    cycloneii_io o_row_triBus3_3_ (.padio (o_row[3]), .datain (
                 debug_num_5_dup0[1]), .oe (debug_num_5_dup0[1]), .outclk (1'b0)
                 , .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_triBus3_3_.operation_mode = "output";
                 
                 defparam o_row_triBus3_3_.output_register_mode = "none";
                 
                 defparam o_row_triBus3_3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_triBus3_3_.oe_register_mode = "none";
                 
                 defparam o_row_triBus3_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_triBus3_3_.input_register_mode = "none";
    cycloneii_io o_row_triBus3_2_ (.padio (o_row[2]), .datain (
                 debug_num_5_dup0[1]), .oe (debug_num_5_dup0[1]), .outclk (1'b0)
                 , .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_triBus3_2_.operation_mode = "output";
                 
                 defparam o_row_triBus3_2_.output_register_mode = "none";
                 
                 defparam o_row_triBus3_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_triBus3_2_.oe_register_mode = "none";
                 
                 defparam o_row_triBus3_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_triBus3_2_.input_register_mode = "none";
    cycloneii_io o_row_triBus3_1_ (.padio (o_row[1]), .datain (
                 debug_num_5_dup0[1]), .oe (debug_num_5_dup0[1]), .outclk (1'b0)
                 , .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_triBus3_1_.operation_mode = "output";
                 
                 defparam o_row_triBus3_1_.output_register_mode = "none";
                 
                 defparam o_row_triBus3_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_triBus3_1_.oe_register_mode = "none";
                 
                 defparam o_row_triBus3_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_triBus3_1_.input_register_mode = "none";
    cycloneii_io o_row_triBus3_0_ (.padio (o_row[0]), .datain (
                 debug_num_5_dup0[1]), .oe (debug_num_5_dup0[1]), .outclk (1'b0)
                 , .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_row_triBus3_0_.operation_mode = "output";
                 
                 defparam o_row_triBus3_0_.output_register_mode = "none";
                 
                 defparam o_row_triBus3_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_row_triBus3_0_.oe_register_mode = "none";
                 
                 defparam o_row_triBus3_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_row_triBus3_0_.input_register_mode = "none";
    cycloneii_io o_mode_obuf_1_ (.padio (o_mode[1]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam o_mode_obuf_1_.operation_mode = "output";
                 defparam o_mode_obuf_1_.output_register_mode = "none";
                 
                 defparam o_mode_obuf_1_.tie_off_output_clock_enable = "false";
                 defparam o_mode_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_mode_obuf_1_.tie_off_oe_clock_enable = "false";
                 defparam o_mode_obuf_1_.input_register_mode = "none";
    cycloneii_io o_mode_obuf_0_ (.padio (o_mode[0]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 defparam o_mode_obuf_0_.operation_mode = "output";
                 defparam o_mode_obuf_0_.output_register_mode = "none";
                 
                 defparam o_mode_obuf_0_.tie_off_output_clock_enable = "false";
                 defparam o_mode_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_mode_obuf_0_.tie_off_oe_clock_enable = "false";
                 defparam o_mode_obuf_0_.input_register_mode = "none";
    cycloneii_io o_dir_triBus1_2_ (.padio (o_dir[2]), .datain (
                 debug_num_5_dup0[1]), .oe (debug_num_5_dup0[1]), .outclk (1'b0)
                 , .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_triBus1_2_.operation_mode = "output";
                 
                 defparam o_dir_triBus1_2_.output_register_mode = "none";
                 
                 defparam o_dir_triBus1_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_triBus1_2_.oe_register_mode = "none";
                 
                 defparam o_dir_triBus1_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_triBus1_2_.input_register_mode = "none";
    cycloneii_io o_dir_triBus1_1_ (.padio (o_dir[1]), .datain (
                 debug_num_5_dup0[1]), .oe (debug_num_5_dup0[1]), .outclk (1'b0)
                 , .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_triBus1_1_.operation_mode = "output";
                 
                 defparam o_dir_triBus1_1_.output_register_mode = "none";
                 
                 defparam o_dir_triBus1_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_triBus1_1_.oe_register_mode = "none";
                 
                 defparam o_dir_triBus1_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_triBus1_1_.input_register_mode = "none";
    cycloneii_io o_dir_triBus1_0_ (.padio (o_dir[0]), .datain (
                 debug_num_5_dup0[1]), .oe (debug_num_5_dup0[1]), .outclk (1'b0)
                 , .outclkena (1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (
                 1'b0), .sreset (1'b0)) ;
                 
                 defparam o_dir_triBus1_0_.operation_mode = "output";
                 
                 defparam o_dir_triBus1_0_.output_register_mode = "none";
                 
                 defparam o_dir_triBus1_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_dir_triBus1_0_.oe_register_mode = "none";
                 
                 defparam o_dir_triBus1_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_dir_triBus1_0_.input_register_mode = "none";
    cycloneii_io ix45767z43919 (.padio (o_edge), .datain (nx45767z1), .oe (1'b1)
                 , .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam ix45767z43919.operation_mode = "output";
                 
                 defparam ix45767z43919.output_register_mode = "none";
                 
                 defparam ix45767z43919.tie_off_output_clock_enable = "false";
                 
                 defparam ix45767z43919.oe_register_mode = "none";
                 
                 defparam ix45767z43919.tie_off_oe_clock_enable = "false";
                 
                 defparam ix45767z43919.input_register_mode = "none";
    cycloneii_lcell_comb ix60567z52923 (.combout (nx60567z1), .dataa (1'b1), .datab (
                         controller[6]), .datac (controller[7]), .datad (
                         i_valid_int), .cin (1'b0)) ;
                         
                         defparam ix60567z52923.lut_mask = 16'hf0cc;
    cycloneii_io i_valid_ibuf (.combout (i_valid_int), .padio (i_valid), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_valid_ibuf.operation_mode = "input";
                 
                 defparam i_valid_ibuf.output_register_mode = "none";
                 
                 defparam i_valid_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_valid_ibuf.oe_register_mode = "none";
                 
                 defparam i_valid_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_valid_ibuf.input_register_mode = "none";
    cycloneii_io i_reset_ibuf (.combout (i_reset_int), .padio (i_reset), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_reset_ibuf.operation_mode = "input";
                 
                 defparam i_reset_ibuf.output_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_reset_ibuf.oe_register_mode = "none";
                 
                 defparam i_reset_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_reset_ibuf.input_register_mode = "none";
    cycloneii_io i_clock_ibuf (.combout (i_clock_int), .padio (i_clock), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_clock_ibuf.operation_mode = "input";
                 
                 defparam i_clock_ibuf.output_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam i_clock_ibuf.oe_register_mode = "none";
                 
                 defparam i_clock_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam i_clock_ibuf.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_3_ (.padio (debug_num_5[3]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_2_ (.padio (debug_num_5[2]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_1_ (.padio (debug_num_5[1]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_5_obuf_0_ (.padio (debug_num_5[0]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_5_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_5_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_5_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_5_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_5_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_3_ (.padio (debug_num_4[3]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_2_ (.padio (debug_num_4[2]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_1_ (.padio (debug_num_4[1]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_4_obuf_0_ (.padio (debug_num_4[0]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_4_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_4_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_4_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_4_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_4_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_3_ (.padio (debug_num_3[3]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_2_ (.padio (debug_num_3[2]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_1_ (.padio (debug_num_3[1]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_3_obuf_0_ (.padio (debug_num_3[0]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_3_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_3_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_3_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_3_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_3_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_3_ (.padio (debug_num_2[3]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_2_ (.padio (debug_num_2[2]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_1_ (.padio (debug_num_2[1]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_2_obuf_0_ (.padio (debug_num_2[0]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_2_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_2_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_2_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_2_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_2_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_3_ (.padio (debug_num_1[3]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_2_ (.padio (debug_num_1[2]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_1_ (.padio (debug_num_1[1]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_1_obuf_0_ (.padio (debug_num_1[0]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_1_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_1_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_1_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_1_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_1_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_3_ (.padio (debug_num_0[3]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_3_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_2_ (.padio (debug_num_0[2]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_2_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_1_ (.padio (debug_num_0[1]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_1_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_num_0_obuf_0_ (.padio (debug_num_0[0]), .datain (
                 debug_num_5_dup0[0]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_num_0_obuf_0_.operation_mode = "output";
                 
                 defparam debug_num_0_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_num_0_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_num_0_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_num_0_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_9_ (.padio (debug_led_red[9]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_9_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_9_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_9_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_8_ (.padio (debug_led_red[8]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_8_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_8_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_8_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_7_ (.padio (debug_led_red[7]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_7_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_7_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_7_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_6_ (.padio (debug_led_red[6]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_6_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_6_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_6_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_5_ (.padio (debug_led_red[5]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_4_ (.padio (debug_led_red[4]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_3_ (.padio (debug_led_red[3]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_2_ (.padio (debug_led_red[2]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_17_ (.padio (debug_led_red[17]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_17_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_17_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_17_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_17_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_17_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_17_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_16_ (.padio (debug_led_red[16]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_16_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_16_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_16_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_16_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_15_ (.padio (debug_led_red[15]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_15_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_15_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_15_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_14_ (.padio (debug_led_red[14]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_14_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_14_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_14_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_13_ (.padio (debug_led_red[13]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_13_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_13_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_13_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_12_ (.padio (debug_led_red[12]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_12_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_12_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_12_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_11_ (.padio (debug_led_red[11]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_11_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_11_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_11_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_10_ (.padio (debug_led_red[10]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_10_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_10_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_10_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_1_ (.padio (debug_led_red[1]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_led_red_obuf_0_ (.padio (debug_led_red[0]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_red_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_red_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_red_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_red_obuf_0_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_5_ (.padio (debug_led_grn[5]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_5_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_5_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_5_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_4_ (.padio (debug_led_grn[4]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_4_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_4_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_4_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_3_ (.padio (debug_led_grn[3]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_3_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_3_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_3_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_2_ (.padio (debug_led_grn[2]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_2_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_2_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_2_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_1_ (.padio (debug_led_grn[1]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_1_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_1_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_1_.input_register_mode = "none";
    cycloneii_io debug_led_grn_obuf_0_ (.padio (debug_led_grn[0]), .datain (
                 debug_num_5_dup0[1]), .oe (1'b1), .outclk (1'b0), .outclkena (
                 1'b1), .inclk (1'b0), .inclkena (1'b1), .areset (1'b0), .sreset (
                 1'b0)) ;
                 
                 defparam debug_led_grn_obuf_0_.operation_mode = "output";
                 
                 defparam debug_led_grn_obuf_0_.output_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.oe_register_mode = "none";
                 
                 defparam debug_led_grn_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam debug_led_grn_obuf_0_.input_register_mode = "none";
    cycloneii_lcell_comb ix26296z52937 (.combout (nx26296z7), .dataa (a_3_), .datab (
                         a_13_), .datac (a_14_), .datad (a_15_), .cin (1'b0)) ;
                         
                         defparam ix26296z52937.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix26296z52933 (.combout (nx26296z6), .dataa (r8_4_), .datab (
                         a_0_), .datac (a_1_), .datad (a_2_), .cin (1'b0)) ;
                         
                         defparam ix26296z52933.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix58056z52923 (.combout (nx58056z1), .dataa (
                         difference_16_), .datab (nx58056z2), .datac (nx58056z3)
                         , .datad (1'b1), .cin (1'b0)) ;
                         
                         defparam ix58056z52923.lut_mask = 16'h2e2e;
    cycloneii_lcell_comb ix26296z52934 (.combout (a_0_), .dataa (controller[3])
                         , .datab (nx26296z1), .datac (a_0_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26296z52934.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26296z52924 (.combout (nx26296z1), .dataa (nx26296z2)
                         , .datab (nx26296z4), .datac (nx26296z6), .datad (
                         nx26296z7), .cin (1'b0)) ;
                         
                         defparam ix26296z52924.lut_mask = 16'hfffe;
    cycloneii_lcell_comb ix58056z52924 (.combout (nx58056z2), .dataa (
                         controller[7]), .datab (controller[6]), .datac (
                         controller[5]), .datad (controller[4]), .cin (1'b0)) ;
                         
                         defparam ix58056z52924.lut_mask = 16'h0002;
    cycloneii_lcell_comb ix26296z52942 (.combout (nx26296z8), .dataa (
                         controller[7]), .datab (controller[6]), .datac (
                         controller[5]), .datad (controller[4]), .cin (1'b0)) ;
                         
                         defparam ix26296z52942.lut_mask = 16'h0102;
    cycloneii_lcell_comb ix26296z52935 (.combout (a_1_), .dataa (controller[3])
                         , .datab (nx26296z1), .datac (a_1_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26296z52935.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26296z52936 (.combout (a_2_), .dataa (controller[3])
                         , .datab (nx26296z1), .datac (a_2_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26296z52936.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26296z52938 (.combout (a_3_), .dataa (controller[3])
                         , .datab (nx26296z1), .datac (a_3_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26296z52938.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26296z52939 (.combout (a_13_), .dataa (controller[3])
                         , .datab (nx26296z1), .datac (a_13_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26296z52939.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26296z52940 (.combout (a_14_), .dataa (controller[3])
                         , .datab (nx26296z1), .datac (a_14_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26296z52940.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26296z52941 (.combout (a_15_), .dataa (controller[3])
                         , .datab (nx26296z1), .datac (a_15_), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26296z52941.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26296z52923 (.combout (r8_4_), .dataa (controller[3])
                         , .datab (r8_4_), .datac (nx26296z1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26296z52923.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix7193z52923 (.combout (r8_5_), .dataa (controller[3])
                         , .datab (r8_5_), .datac (nx26296z1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix7193z52923.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix53589z52923 (.combout (r8_6_), .dataa (controller[3])
                         , .datab (r8_6_), .datac (nx26296z1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix53589z52923.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26296z52932 (.combout (r8_7_), .dataa (controller[3])
                         , .datab (r8_7_), .datac (nx26296z1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26296z52932.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26296z52931 (.combout (r8_8_), .dataa (controller[3])
                         , .datab (r8_8_), .datac (nx26296z1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix26296z52931.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix19756z52923 (.combout (r8_9_), .dataa (controller[3])
                         , .datab (r8_9_), .datac (nx26296z1), .datad (1'b1), .cin (
                         1'b0)) ;
                         defparam ix19756z52923.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix50534z52923 (.combout (r8_10_), .dataa (controller[3]
                         ), .datab (r8_10_), .datac (nx26296z1), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix50534z52923.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26296z52928 (.combout (r8_11_), .dataa (controller[3]
                         ), .datab (r8_11_), .datac (nx26296z1), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix26296z52928.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26296z52927 (.combout (r8_12_), .dataa (controller[3]
                         ), .datab (r8_12_), .datac (nx26296z1), .datad (1'b1), 
                         .cin (1'b0)) ;
                         
                         defparam ix26296z52927.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26296z52926 (.combout (nx26296z3), .dataa (r8_12_), .datab (
                         nx26296z1), .datac (r8_11_), .datad (controller[3]), .cin (
                         1'b0)) ;
                         defparam ix26296z52926.lut_mask = 16'h00c8;
    cycloneii_lcell_comb ix1077_repl0 (.combout (r8_10__repl0), .dataa (
                         controller[3]), .datab (r8_10_), .datac (nx26296z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix1077_repl0.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix1075_repl0 (.combout (r8_9__repl0), .dataa (
                         controller[3]), .datab (r8_9_), .datac (nx26296z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix1075_repl0.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26296z52925 (.combout (nx26296z2), .dataa (
                         controller[3]), .datab (r8_10__repl0), .datac (
                         r8_9__repl0), .datad (nx26296z3), .cin (1'b0)) ;
                         
                         defparam ix26296z52925.lut_mask = 16'hff54;
    cycloneii_lcell_comb ix26296z52930 (.combout (nx26296z5), .dataa (r8_8_), .datab (
                         nx26296z1), .datac (r8_7_), .datad (controller[3]), .cin (
                         1'b0)) ;
                         defparam ix26296z52930.lut_mask = 16'h00c8;
    cycloneii_lcell_comb ix1069_repl0 (.combout (r8_6__repl0), .dataa (
                         controller[3]), .datab (r8_6_), .datac (nx26296z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix1069_repl0.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix1067_repl0 (.combout (r8_5__repl0), .dataa (
                         controller[3]), .datab (r8_5_), .datac (nx26296z1), .datad (
                         1'b1), .cin (1'b0)) ;
                         
                         defparam ix1067_repl0.lut_mask = 16'h4040;
    cycloneii_lcell_comb ix26296z52929 (.combout (nx26296z4), .dataa (
                         controller[3]), .datab (r8_6__repl0), .datac (
                         r8_5__repl0), .datad (nx26296z5), .cin (1'b0)) ;
                         
                         defparam ix26296z52929.lut_mask = 16'hff54;
endmodule


module sub_8_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [7:0]a ;
    input [7:0]b ;
    output [7:0]d ;
    output cout ;

    wire nx23445z8, nx23445z7, nx23445z6, nx23445z5, nx23445z4, nx23445z3, 
         nx23445z2, nx_sub_8_0_vcc_net;
    wire [23:0] xmplr_dummy ;




    cycloneii_lcell_comb ix23445z52923 (.combout (cout), .dataa (a[7]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z2)) ;
                         
                         defparam ix23445z52923.lut_mask = 16'hfa00;
                         
                         defparam ix23445z52923.sum_lutc_input = "cin";
    assign nx_sub_8_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix23445z52925 (.cout (nx23445z2), .dataa (a[6]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z3)) ;
                         
                         defparam ix23445z52925.lut_mask = 16'h00fa;
                         
                         defparam ix23445z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52926 (.cout (nx23445z3), .dataa (a[5]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z4)) ;
                         
                         defparam ix23445z52926.lut_mask = 16'h00fa;
                         
                         defparam ix23445z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52927 (.cout (nx23445z4), .dataa (a[4]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z5)) ;
                         
                         defparam ix23445z52927.lut_mask = 16'h00fa;
                         
                         defparam ix23445z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52928 (.cout (nx23445z5), .dataa (a[3]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z6)) ;
                         
                         defparam ix23445z52928.lut_mask = 16'h00fa;
                         
                         defparam ix23445z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52929 (.cout (nx23445z6), .dataa (a[2]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z7)) ;
                         
                         defparam ix23445z52929.lut_mask = 16'h00fa;
                         
                         defparam ix23445z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52930 (.cout (nx23445z7), .dataa (a[1]), .datab (
                         1'b1), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         nx23445z8)) ;
                         
                         defparam ix23445z52930.lut_mask = 16'h00fa;
                         
                         defparam ix23445z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix23445z52931 (.cout (nx23445z8), .dataa (a[0]), .datab (
                         cin), .datac (1'b1), .datad (nx_sub_8_0_vcc_net), .cin (
                         1'b0)) ;
                         defparam ix23445z52931.lut_mask = 16'h0088;
endmodule

