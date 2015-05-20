// Copyright (C) 1991-2009 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II"
// VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

// DATE "03/27/2014 16:47:40"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module kirsch_chip (	i_clock,
	i_reset,
	i_valid,
	i_pixel,
	o_valid,
	o_edge,
	o_dir,
	o_mode,
	o_row,
	debug_key,
	debug_switch,
	debug_led_red,
	debug_led_grn,
	debug_num_0,
	debug_num_1,
	debug_num_2,
	debug_num_3,
	debug_num_4,
	debug_num_5);
input 	i_clock;
input 	i_reset;
input 	i_valid;
input 	[7:0] i_pixel;
output 	o_valid;
output 	o_edge;
output 	[2:0] o_dir;
output 	[1:0] o_mode;
output 	[7:0] o_row;
input 	[3:1] debug_key;
input 	[17:0] debug_switch;
output 	[17:0] debug_led_red;
output 	[5:0] debug_led_grn;
output 	[3:0] debug_num_0;
output 	[3:0] debug_num_1;
output 	[3:0] debug_num_2;
output 	[3:0] debug_num_3;
output 	[3:0] debug_num_4;
output 	[3:0] debug_num_5;

wire gnd = 1'b0;
wire vcc = 1'b1;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("kirsch_v.sdo");
// synopsys translate_on

wire i_clock_acombout;
wire i_clock_aclkctrl_outclk;
wire i_valid_acombout;
wire controller_0__afeeder_combout;
wire i_reset_acombout;
wire controller_0_;
wire controller_1__afeeder_combout;
wire controller_1_;
wire controller_2__afeeder_combout;
wire controller_2_;
wire controller_3__afeeder_combout;
wire controller_3_;
wire controller_4__afeeder_combout;
wire controller_4_;
wire controller_5__afeeder_combout;
wire controller_5_;
wire controller_6__afeeder_combout;
wire controller_6_;
wire controller_7__afeeder_combout;
wire controller_7_;
wire nx60567z1;
wire o_valid_dup0;


// atom is at PIN_P2
cycloneii_io i_clock_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_clock_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_clock));
// synopsys translate_off
defparam i_clock_ibuf.input_async_reset = "none";
defparam i_clock_ibuf.input_power_up = "low";
defparam i_clock_ibuf.input_register_mode = "none";
defparam i_clock_ibuf.input_sync_reset = "none";
defparam i_clock_ibuf.oe_async_reset = "none";
defparam i_clock_ibuf.oe_power_up = "low";
defparam i_clock_ibuf.oe_register_mode = "none";
defparam i_clock_ibuf.oe_sync_reset = "none";
defparam i_clock_ibuf.operation_mode = "input";
defparam i_clock_ibuf.output_async_reset = "none";
defparam i_clock_ibuf.output_power_up = "low";
defparam i_clock_ibuf.output_register_mode = "none";
defparam i_clock_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at CLKCTRL_G3
cycloneii_clkctrl i_clock_aclkctrl(
	.ena(vcc),
	.inclk({gnd,gnd,gnd,i_clock_acombout}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(i_clock_aclkctrl_outclk));
// synopsys translate_off
defparam i_clock_aclkctrl.clock_type = "global clock";
defparam i_clock_aclkctrl.ena_register_mode = "falling edge";
// synopsys translate_on

// atom is at PIN_C13
cycloneii_io i_valid_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_valid_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_valid));
// synopsys translate_off
defparam i_valid_ibuf.input_async_reset = "none";
defparam i_valid_ibuf.input_power_up = "low";
defparam i_valid_ibuf.input_register_mode = "none";
defparam i_valid_ibuf.input_sync_reset = "none";
defparam i_valid_ibuf.oe_async_reset = "none";
defparam i_valid_ibuf.oe_power_up = "low";
defparam i_valid_ibuf.oe_register_mode = "none";
defparam i_valid_ibuf.oe_sync_reset = "none";
defparam i_valid_ibuf.operation_mode = "input";
defparam i_valid_ibuf.output_async_reset = "none";
defparam i_valid_ibuf.output_power_up = "low";
defparam i_valid_ibuf.output_register_mode = "none";
defparam i_valid_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X31_Y35_N24
cycloneii_lcell_comb controller_0__afeeder(
// Equation(s):
// controller_0__afeeder_combout = i_valid_acombout

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(i_valid_acombout),
	.cin(gnd),
	.combout(controller_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam controller_0__afeeder.lut_mask = 16'hFF00;
defparam controller_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_D13
cycloneii_io i_reset_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_reset_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_reset));
// synopsys translate_off
defparam i_reset_ibuf.input_async_reset = "none";
defparam i_reset_ibuf.input_power_up = "low";
defparam i_reset_ibuf.input_register_mode = "none";
defparam i_reset_ibuf.input_sync_reset = "none";
defparam i_reset_ibuf.oe_async_reset = "none";
defparam i_reset_ibuf.oe_power_up = "low";
defparam i_reset_ibuf.oe_register_mode = "none";
defparam i_reset_ibuf.oe_sync_reset = "none";
defparam i_reset_ibuf.operation_mode = "input";
defparam i_reset_ibuf.output_async_reset = "none";
defparam i_reset_ibuf.output_power_up = "low";
defparam i_reset_ibuf.output_register_mode = "none";
defparam i_reset_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X31_Y35_N25
cycloneii_lcell_ff reg_controller_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(controller_0__afeeder_combout),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(i_valid_acombout),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(controller_0_));

// atom is at LCCOMB_X30_Y35_N6
cycloneii_lcell_comb controller_1__afeeder(
// Equation(s):
// controller_1__afeeder_combout = controller_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(controller_0_),
	.cin(gnd),
	.combout(controller_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam controller_1__afeeder.lut_mask = 16'hFF00;
defparam controller_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y35_N7
cycloneii_lcell_ff reg_controller_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(controller_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(controller_1_));

// atom is at LCCOMB_X30_Y35_N28
cycloneii_lcell_comb controller_2__afeeder(
// Equation(s):
// controller_2__afeeder_combout = controller_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(controller_1_),
	.cin(gnd),
	.combout(controller_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam controller_2__afeeder.lut_mask = 16'hFF00;
defparam controller_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y35_N29
cycloneii_lcell_ff reg_controller_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(controller_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(controller_2_));

// atom is at LCCOMB_X30_Y35_N2
cycloneii_lcell_comb controller_3__afeeder(
// Equation(s):
// controller_3__afeeder_combout = controller_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(controller_2_),
	.cin(gnd),
	.combout(controller_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam controller_3__afeeder.lut_mask = 16'hFF00;
defparam controller_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y35_N3
cycloneii_lcell_ff reg_controller_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(controller_3__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(controller_3_));

// atom is at LCCOMB_X30_Y35_N16
cycloneii_lcell_comb controller_4__afeeder(
// Equation(s):
// controller_4__afeeder_combout = controller_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(controller_3_),
	.cin(gnd),
	.combout(controller_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam controller_4__afeeder.lut_mask = 16'hFF00;
defparam controller_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y35_N17
cycloneii_lcell_ff reg_controller_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(controller_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(controller_4_));

// atom is at LCCOMB_X30_Y35_N30
cycloneii_lcell_comb controller_5__afeeder(
// Equation(s):
// controller_5__afeeder_combout = controller_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(controller_4_),
	.datad(vcc),
	.cin(gnd),
	.combout(controller_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam controller_5__afeeder.lut_mask = 16'hF0F0;
defparam controller_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y35_N31
cycloneii_lcell_ff reg_controller_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(controller_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(controller_5_));

// atom is at LCCOMB_X30_Y35_N18
cycloneii_lcell_comb controller_6__afeeder(
// Equation(s):
// controller_6__afeeder_combout = controller_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(controller_5_),
	.cin(gnd),
	.combout(controller_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam controller_6__afeeder.lut_mask = 16'hFF00;
defparam controller_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y35_N19
cycloneii_lcell_ff reg_controller_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(controller_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(controller_6_));

// atom is at LCCOMB_X30_Y35_N4
cycloneii_lcell_comb controller_7__afeeder(
// Equation(s):
// controller_7__afeeder_combout = controller_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(controller_6_),
	.cin(gnd),
	.combout(controller_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam controller_7__afeeder.lut_mask = 16'hFF00;
defparam controller_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y35_N5
cycloneii_lcell_ff reg_controller_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(controller_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(controller_7_));

// atom is at LCCOMB_X30_Y35_N0
cycloneii_lcell_comb ix60567z52923(
// Equation(s):
// nx60567z1 = i_valid_acombout & controller_7_ # !i_valid_acombout & (controller_6_)

	.dataa(vcc),
	.datab(i_valid_acombout),
	.datac(controller_7_),
	.datad(controller_6_),
	.cin(gnd),
	.combout(nx60567z1),
	.cout());
// synopsys translate_off
defparam ix60567z52923.lut_mask = 16'hF3C0;
defparam ix60567z52923.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X30_Y35_N1
cycloneii_lcell_ff reg_o_valid(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx60567z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_valid_dup0));

// atom is at PIN_C11
cycloneii_io o_valid_obuf(
	.datain(o_valid_dup0),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_valid));
// synopsys translate_off
defparam o_valid_obuf.input_async_reset = "none";
defparam o_valid_obuf.input_power_up = "low";
defparam o_valid_obuf.input_register_mode = "none";
defparam o_valid_obuf.input_sync_reset = "none";
defparam o_valid_obuf.oe_async_reset = "none";
defparam o_valid_obuf.oe_power_up = "low";
defparam o_valid_obuf.oe_register_mode = "none";
defparam o_valid_obuf.oe_sync_reset = "none";
defparam o_valid_obuf.operation_mode = "output";
defparam o_valid_obuf.output_async_reset = "none";
defparam o_valid_obuf.output_power_up = "low";
defparam o_valid_obuf.output_register_mode = "none";
defparam o_valid_obuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF21
cycloneii_io ix45767z43919(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_edge));
// synopsys translate_off
defparam ix45767z43919.input_async_reset = "none";
defparam ix45767z43919.input_power_up = "low";
defparam ix45767z43919.input_register_mode = "none";
defparam ix45767z43919.input_sync_reset = "none";
defparam ix45767z43919.oe_async_reset = "none";
defparam ix45767z43919.oe_power_up = "low";
defparam ix45767z43919.oe_register_mode = "none";
defparam ix45767z43919.oe_sync_reset = "none";
defparam ix45767z43919.operation_mode = "output";
defparam ix45767z43919.output_async_reset = "none";
defparam ix45767z43919.output_power_up = "low";
defparam ix45767z43919.output_register_mode = "none";
defparam ix45767z43919.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G5
cycloneii_io o_dir_triBus1_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_dir[0]));
// synopsys translate_off
defparam o_dir_triBus1_0_.input_async_reset = "none";
defparam o_dir_triBus1_0_.input_power_up = "low";
defparam o_dir_triBus1_0_.input_register_mode = "none";
defparam o_dir_triBus1_0_.input_sync_reset = "none";
defparam o_dir_triBus1_0_.oe_async_reset = "none";
defparam o_dir_triBus1_0_.oe_power_up = "low";
defparam o_dir_triBus1_0_.oe_register_mode = "none";
defparam o_dir_triBus1_0_.oe_sync_reset = "none";
defparam o_dir_triBus1_0_.operation_mode = "output";
defparam o_dir_triBus1_0_.output_async_reset = "none";
defparam o_dir_triBus1_0_.output_power_up = "low";
defparam o_dir_triBus1_0_.output_register_mode = "none";
defparam o_dir_triBus1_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AB8
cycloneii_io o_dir_triBus1_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_dir[1]));
// synopsys translate_off
defparam o_dir_triBus1_1_.input_async_reset = "none";
defparam o_dir_triBus1_1_.input_power_up = "low";
defparam o_dir_triBus1_1_.input_register_mode = "none";
defparam o_dir_triBus1_1_.input_sync_reset = "none";
defparam o_dir_triBus1_1_.oe_async_reset = "none";
defparam o_dir_triBus1_1_.oe_power_up = "low";
defparam o_dir_triBus1_1_.oe_register_mode = "none";
defparam o_dir_triBus1_1_.oe_sync_reset = "none";
defparam o_dir_triBus1_1_.operation_mode = "output";
defparam o_dir_triBus1_1_.output_async_reset = "none";
defparam o_dir_triBus1_1_.output_power_up = "low";
defparam o_dir_triBus1_1_.output_register_mode = "none";
defparam o_dir_triBus1_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C19
cycloneii_io o_dir_triBus1_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_dir[2]));
// synopsys translate_off
defparam o_dir_triBus1_2_.input_async_reset = "none";
defparam o_dir_triBus1_2_.input_power_up = "low";
defparam o_dir_triBus1_2_.input_register_mode = "none";
defparam o_dir_triBus1_2_.input_sync_reset = "none";
defparam o_dir_triBus1_2_.oe_async_reset = "none";
defparam o_dir_triBus1_2_.oe_power_up = "low";
defparam o_dir_triBus1_2_.oe_register_mode = "none";
defparam o_dir_triBus1_2_.oe_sync_reset = "none";
defparam o_dir_triBus1_2_.operation_mode = "output";
defparam o_dir_triBus1_2_.output_async_reset = "none";
defparam o_dir_triBus1_2_.output_power_up = "low";
defparam o_dir_triBus1_2_.output_register_mode = "none";
defparam o_dir_triBus1_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P18
cycloneii_io o_mode_obuf_0_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_mode[0]));
// synopsys translate_off
defparam o_mode_obuf_0_.input_async_reset = "none";
defparam o_mode_obuf_0_.input_power_up = "low";
defparam o_mode_obuf_0_.input_register_mode = "none";
defparam o_mode_obuf_0_.input_sync_reset = "none";
defparam o_mode_obuf_0_.oe_async_reset = "none";
defparam o_mode_obuf_0_.oe_power_up = "low";
defparam o_mode_obuf_0_.oe_register_mode = "none";
defparam o_mode_obuf_0_.oe_sync_reset = "none";
defparam o_mode_obuf_0_.operation_mode = "output";
defparam o_mode_obuf_0_.output_async_reset = "none";
defparam o_mode_obuf_0_.output_power_up = "low";
defparam o_mode_obuf_0_.output_register_mode = "none";
defparam o_mode_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W24
cycloneii_io o_mode_obuf_1_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_mode[1]));
// synopsys translate_off
defparam o_mode_obuf_1_.input_async_reset = "none";
defparam o_mode_obuf_1_.input_power_up = "low";
defparam o_mode_obuf_1_.input_register_mode = "none";
defparam o_mode_obuf_1_.input_sync_reset = "none";
defparam o_mode_obuf_1_.oe_async_reset = "none";
defparam o_mode_obuf_1_.oe_power_up = "low";
defparam o_mode_obuf_1_.oe_register_mode = "none";
defparam o_mode_obuf_1_.oe_sync_reset = "none";
defparam o_mode_obuf_1_.operation_mode = "output";
defparam o_mode_obuf_1_.output_async_reset = "none";
defparam o_mode_obuf_1_.output_power_up = "low";
defparam o_mode_obuf_1_.output_register_mode = "none";
defparam o_mode_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B11
cycloneii_io o_row_triBus3_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[0]));
// synopsys translate_off
defparam o_row_triBus3_0_.input_async_reset = "none";
defparam o_row_triBus3_0_.input_power_up = "low";
defparam o_row_triBus3_0_.input_register_mode = "none";
defparam o_row_triBus3_0_.input_sync_reset = "none";
defparam o_row_triBus3_0_.oe_async_reset = "none";
defparam o_row_triBus3_0_.oe_power_up = "low";
defparam o_row_triBus3_0_.oe_register_mode = "none";
defparam o_row_triBus3_0_.oe_sync_reset = "none";
defparam o_row_triBus3_0_.operation_mode = "output";
defparam o_row_triBus3_0_.output_async_reset = "none";
defparam o_row_triBus3_0_.output_power_up = "low";
defparam o_row_triBus3_0_.output_register_mode = "none";
defparam o_row_triBus3_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B9
cycloneii_io o_row_triBus3_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[1]));
// synopsys translate_off
defparam o_row_triBus3_1_.input_async_reset = "none";
defparam o_row_triBus3_1_.input_power_up = "low";
defparam o_row_triBus3_1_.input_register_mode = "none";
defparam o_row_triBus3_1_.input_sync_reset = "none";
defparam o_row_triBus3_1_.oe_async_reset = "none";
defparam o_row_triBus3_1_.oe_power_up = "low";
defparam o_row_triBus3_1_.oe_register_mode = "none";
defparam o_row_triBus3_1_.oe_sync_reset = "none";
defparam o_row_triBus3_1_.operation_mode = "output";
defparam o_row_triBus3_1_.output_async_reset = "none";
defparam o_row_triBus3_1_.output_power_up = "low";
defparam o_row_triBus3_1_.output_register_mode = "none";
defparam o_row_triBus3_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A14
cycloneii_io o_row_triBus3_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[2]));
// synopsys translate_off
defparam o_row_triBus3_2_.input_async_reset = "none";
defparam o_row_triBus3_2_.input_power_up = "low";
defparam o_row_triBus3_2_.input_register_mode = "none";
defparam o_row_triBus3_2_.input_sync_reset = "none";
defparam o_row_triBus3_2_.oe_async_reset = "none";
defparam o_row_triBus3_2_.oe_power_up = "low";
defparam o_row_triBus3_2_.oe_register_mode = "none";
defparam o_row_triBus3_2_.oe_sync_reset = "none";
defparam o_row_triBus3_2_.operation_mode = "output";
defparam o_row_triBus3_2_.output_async_reset = "none";
defparam o_row_triBus3_2_.output_power_up = "low";
defparam o_row_triBus3_2_.output_register_mode = "none";
defparam o_row_triBus3_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD12
cycloneii_io o_row_triBus3_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[3]));
// synopsys translate_off
defparam o_row_triBus3_3_.input_async_reset = "none";
defparam o_row_triBus3_3_.input_power_up = "low";
defparam o_row_triBus3_3_.input_register_mode = "none";
defparam o_row_triBus3_3_.input_sync_reset = "none";
defparam o_row_triBus3_3_.oe_async_reset = "none";
defparam o_row_triBus3_3_.oe_power_up = "low";
defparam o_row_triBus3_3_.oe_register_mode = "none";
defparam o_row_triBus3_3_.oe_sync_reset = "none";
defparam o_row_triBus3_3_.operation_mode = "output";
defparam o_row_triBus3_3_.output_async_reset = "none";
defparam o_row_triBus3_3_.output_power_up = "low";
defparam o_row_triBus3_3_.output_register_mode = "none";
defparam o_row_triBus3_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE10
cycloneii_io o_row_triBus3_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[4]));
// synopsys translate_off
defparam o_row_triBus3_4_.input_async_reset = "none";
defparam o_row_triBus3_4_.input_power_up = "low";
defparam o_row_triBus3_4_.input_register_mode = "none";
defparam o_row_triBus3_4_.input_sync_reset = "none";
defparam o_row_triBus3_4_.oe_async_reset = "none";
defparam o_row_triBus3_4_.oe_power_up = "low";
defparam o_row_triBus3_4_.oe_register_mode = "none";
defparam o_row_triBus3_4_.oe_sync_reset = "none";
defparam o_row_triBus3_4_.operation_mode = "output";
defparam o_row_triBus3_4_.output_async_reset = "none";
defparam o_row_triBus3_4_.output_power_up = "low";
defparam o_row_triBus3_4_.output_register_mode = "none";
defparam o_row_triBus3_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U12
cycloneii_io o_row_triBus3_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[5]));
// synopsys translate_off
defparam o_row_triBus3_5_.input_async_reset = "none";
defparam o_row_triBus3_5_.input_power_up = "low";
defparam o_row_triBus3_5_.input_register_mode = "none";
defparam o_row_triBus3_5_.input_sync_reset = "none";
defparam o_row_triBus3_5_.oe_async_reset = "none";
defparam o_row_triBus3_5_.oe_power_up = "low";
defparam o_row_triBus3_5_.oe_register_mode = "none";
defparam o_row_triBus3_5_.oe_sync_reset = "none";
defparam o_row_triBus3_5_.operation_mode = "output";
defparam o_row_triBus3_5_.output_async_reset = "none";
defparam o_row_triBus3_5_.output_power_up = "low";
defparam o_row_triBus3_5_.output_register_mode = "none";
defparam o_row_triBus3_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA17
cycloneii_io o_row_triBus3_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[6]));
// synopsys translate_off
defparam o_row_triBus3_6_.input_async_reset = "none";
defparam o_row_triBus3_6_.input_power_up = "low";
defparam o_row_triBus3_6_.input_register_mode = "none";
defparam o_row_triBus3_6_.input_sync_reset = "none";
defparam o_row_triBus3_6_.oe_async_reset = "none";
defparam o_row_triBus3_6_.oe_power_up = "low";
defparam o_row_triBus3_6_.oe_register_mode = "none";
defparam o_row_triBus3_6_.oe_sync_reset = "none";
defparam o_row_triBus3_6_.operation_mode = "output";
defparam o_row_triBus3_6_.output_async_reset = "none";
defparam o_row_triBus3_6_.output_power_up = "low";
defparam o_row_triBus3_6_.output_register_mode = "none";
defparam o_row_triBus3_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC15
cycloneii_io o_row_triBus3_7_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_row[7]));
// synopsys translate_off
defparam o_row_triBus3_7_.input_async_reset = "none";
defparam o_row_triBus3_7_.input_power_up = "low";
defparam o_row_triBus3_7_.input_register_mode = "none";
defparam o_row_triBus3_7_.input_sync_reset = "none";
defparam o_row_triBus3_7_.oe_async_reset = "none";
defparam o_row_triBus3_7_.oe_power_up = "low";
defparam o_row_triBus3_7_.oe_register_mode = "none";
defparam o_row_triBus3_7_.oe_sync_reset = "none";
defparam o_row_triBus3_7_.operation_mode = "output";
defparam o_row_triBus3_7_.output_async_reset = "none";
defparam o_row_triBus3_7_.output_power_up = "low";
defparam o_row_triBus3_7_.output_register_mode = "none";
defparam o_row_triBus3_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D5
cycloneii_io debug_led_red_obuf_0_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[0]));
// synopsys translate_off
defparam debug_led_red_obuf_0_.input_async_reset = "none";
defparam debug_led_red_obuf_0_.input_power_up = "low";
defparam debug_led_red_obuf_0_.input_register_mode = "none";
defparam debug_led_red_obuf_0_.input_sync_reset = "none";
defparam debug_led_red_obuf_0_.oe_async_reset = "none";
defparam debug_led_red_obuf_0_.oe_power_up = "low";
defparam debug_led_red_obuf_0_.oe_register_mode = "none";
defparam debug_led_red_obuf_0_.oe_sync_reset = "none";
defparam debug_led_red_obuf_0_.operation_mode = "output";
defparam debug_led_red_obuf_0_.output_async_reset = "none";
defparam debug_led_red_obuf_0_.output_power_up = "low";
defparam debug_led_red_obuf_0_.output_register_mode = "none";
defparam debug_led_red_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H15
cycloneii_io debug_led_red_obuf_1_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[1]));
// synopsys translate_off
defparam debug_led_red_obuf_1_.input_async_reset = "none";
defparam debug_led_red_obuf_1_.input_power_up = "low";
defparam debug_led_red_obuf_1_.input_register_mode = "none";
defparam debug_led_red_obuf_1_.input_sync_reset = "none";
defparam debug_led_red_obuf_1_.oe_async_reset = "none";
defparam debug_led_red_obuf_1_.oe_power_up = "low";
defparam debug_led_red_obuf_1_.oe_register_mode = "none";
defparam debug_led_red_obuf_1_.oe_sync_reset = "none";
defparam debug_led_red_obuf_1_.operation_mode = "output";
defparam debug_led_red_obuf_1_.output_async_reset = "none";
defparam debug_led_red_obuf_1_.output_power_up = "low";
defparam debug_led_red_obuf_1_.output_register_mode = "none";
defparam debug_led_red_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE21
cycloneii_io debug_led_red_obuf_2_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[2]));
// synopsys translate_off
defparam debug_led_red_obuf_2_.input_async_reset = "none";
defparam debug_led_red_obuf_2_.input_power_up = "low";
defparam debug_led_red_obuf_2_.input_register_mode = "none";
defparam debug_led_red_obuf_2_.input_sync_reset = "none";
defparam debug_led_red_obuf_2_.oe_async_reset = "none";
defparam debug_led_red_obuf_2_.oe_power_up = "low";
defparam debug_led_red_obuf_2_.oe_register_mode = "none";
defparam debug_led_red_obuf_2_.oe_sync_reset = "none";
defparam debug_led_red_obuf_2_.operation_mode = "output";
defparam debug_led_red_obuf_2_.output_async_reset = "none";
defparam debug_led_red_obuf_2_.output_power_up = "low";
defparam debug_led_red_obuf_2_.output_register_mode = "none";
defparam debug_led_red_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B21
cycloneii_io debug_led_red_obuf_3_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[3]));
// synopsys translate_off
defparam debug_led_red_obuf_3_.input_async_reset = "none";
defparam debug_led_red_obuf_3_.input_power_up = "low";
defparam debug_led_red_obuf_3_.input_register_mode = "none";
defparam debug_led_red_obuf_3_.input_sync_reset = "none";
defparam debug_led_red_obuf_3_.oe_async_reset = "none";
defparam debug_led_red_obuf_3_.oe_power_up = "low";
defparam debug_led_red_obuf_3_.oe_register_mode = "none";
defparam debug_led_red_obuf_3_.oe_sync_reset = "none";
defparam debug_led_red_obuf_3_.operation_mode = "output";
defparam debug_led_red_obuf_3_.output_async_reset = "none";
defparam debug_led_red_obuf_3_.output_power_up = "low";
defparam debug_led_red_obuf_3_.output_register_mode = "none";
defparam debug_led_red_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B7
cycloneii_io debug_led_red_obuf_4_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[4]));
// synopsys translate_off
defparam debug_led_red_obuf_4_.input_async_reset = "none";
defparam debug_led_red_obuf_4_.input_power_up = "low";
defparam debug_led_red_obuf_4_.input_register_mode = "none";
defparam debug_led_red_obuf_4_.input_sync_reset = "none";
defparam debug_led_red_obuf_4_.oe_async_reset = "none";
defparam debug_led_red_obuf_4_.oe_power_up = "low";
defparam debug_led_red_obuf_4_.oe_register_mode = "none";
defparam debug_led_red_obuf_4_.oe_sync_reset = "none";
defparam debug_led_red_obuf_4_.operation_mode = "output";
defparam debug_led_red_obuf_4_.output_async_reset = "none";
defparam debug_led_red_obuf_4_.output_power_up = "low";
defparam debug_led_red_obuf_4_.output_register_mode = "none";
defparam debug_led_red_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E22
cycloneii_io debug_led_red_obuf_5_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[5]));
// synopsys translate_off
defparam debug_led_red_obuf_5_.input_async_reset = "none";
defparam debug_led_red_obuf_5_.input_power_up = "low";
defparam debug_led_red_obuf_5_.input_register_mode = "none";
defparam debug_led_red_obuf_5_.input_sync_reset = "none";
defparam debug_led_red_obuf_5_.oe_async_reset = "none";
defparam debug_led_red_obuf_5_.oe_power_up = "low";
defparam debug_led_red_obuf_5_.oe_register_mode = "none";
defparam debug_led_red_obuf_5_.oe_sync_reset = "none";
defparam debug_led_red_obuf_5_.operation_mode = "output";
defparam debug_led_red_obuf_5_.output_async_reset = "none";
defparam debug_led_red_obuf_5_.output_power_up = "low";
defparam debug_led_red_obuf_5_.output_register_mode = "none";
defparam debug_led_red_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H12
cycloneii_io debug_led_red_obuf_6_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[6]));
// synopsys translate_off
defparam debug_led_red_obuf_6_.input_async_reset = "none";
defparam debug_led_red_obuf_6_.input_power_up = "low";
defparam debug_led_red_obuf_6_.input_register_mode = "none";
defparam debug_led_red_obuf_6_.input_sync_reset = "none";
defparam debug_led_red_obuf_6_.oe_async_reset = "none";
defparam debug_led_red_obuf_6_.oe_power_up = "low";
defparam debug_led_red_obuf_6_.oe_register_mode = "none";
defparam debug_led_red_obuf_6_.oe_sync_reset = "none";
defparam debug_led_red_obuf_6_.operation_mode = "output";
defparam debug_led_red_obuf_6_.output_async_reset = "none";
defparam debug_led_red_obuf_6_.output_power_up = "low";
defparam debug_led_red_obuf_6_.output_register_mode = "none";
defparam debug_led_red_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C2
cycloneii_io debug_led_red_obuf_7_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[7]));
// synopsys translate_off
defparam debug_led_red_obuf_7_.input_async_reset = "none";
defparam debug_led_red_obuf_7_.input_power_up = "low";
defparam debug_led_red_obuf_7_.input_register_mode = "none";
defparam debug_led_red_obuf_7_.input_sync_reset = "none";
defparam debug_led_red_obuf_7_.oe_async_reset = "none";
defparam debug_led_red_obuf_7_.oe_power_up = "low";
defparam debug_led_red_obuf_7_.oe_register_mode = "none";
defparam debug_led_red_obuf_7_.oe_sync_reset = "none";
defparam debug_led_red_obuf_7_.operation_mode = "output";
defparam debug_led_red_obuf_7_.output_async_reset = "none";
defparam debug_led_red_obuf_7_.output_power_up = "low";
defparam debug_led_red_obuf_7_.output_register_mode = "none";
defparam debug_led_red_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V4
cycloneii_io debug_led_red_obuf_8_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[8]));
// synopsys translate_off
defparam debug_led_red_obuf_8_.input_async_reset = "none";
defparam debug_led_red_obuf_8_.input_power_up = "low";
defparam debug_led_red_obuf_8_.input_register_mode = "none";
defparam debug_led_red_obuf_8_.input_sync_reset = "none";
defparam debug_led_red_obuf_8_.oe_async_reset = "none";
defparam debug_led_red_obuf_8_.oe_power_up = "low";
defparam debug_led_red_obuf_8_.oe_register_mode = "none";
defparam debug_led_red_obuf_8_.oe_sync_reset = "none";
defparam debug_led_red_obuf_8_.operation_mode = "output";
defparam debug_led_red_obuf_8_.output_async_reset = "none";
defparam debug_led_red_obuf_8_.output_power_up = "low";
defparam debug_led_red_obuf_8_.output_register_mode = "none";
defparam debug_led_red_obuf_8_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C16
cycloneii_io debug_led_red_obuf_9_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[9]));
// synopsys translate_off
defparam debug_led_red_obuf_9_.input_async_reset = "none";
defparam debug_led_red_obuf_9_.input_power_up = "low";
defparam debug_led_red_obuf_9_.input_register_mode = "none";
defparam debug_led_red_obuf_9_.input_sync_reset = "none";
defparam debug_led_red_obuf_9_.oe_async_reset = "none";
defparam debug_led_red_obuf_9_.oe_power_up = "low";
defparam debug_led_red_obuf_9_.oe_register_mode = "none";
defparam debug_led_red_obuf_9_.oe_sync_reset = "none";
defparam debug_led_red_obuf_9_.operation_mode = "output";
defparam debug_led_red_obuf_9_.output_async_reset = "none";
defparam debug_led_red_obuf_9_.output_power_up = "low";
defparam debug_led_red_obuf_9_.output_register_mode = "none";
defparam debug_led_red_obuf_9_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE11
cycloneii_io debug_led_red_obuf_10_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[10]));
// synopsys translate_off
defparam debug_led_red_obuf_10_.input_async_reset = "none";
defparam debug_led_red_obuf_10_.input_power_up = "low";
defparam debug_led_red_obuf_10_.input_register_mode = "none";
defparam debug_led_red_obuf_10_.input_sync_reset = "none";
defparam debug_led_red_obuf_10_.oe_async_reset = "none";
defparam debug_led_red_obuf_10_.oe_power_up = "low";
defparam debug_led_red_obuf_10_.oe_register_mode = "none";
defparam debug_led_red_obuf_10_.oe_sync_reset = "none";
defparam debug_led_red_obuf_10_.operation_mode = "output";
defparam debug_led_red_obuf_10_.output_async_reset = "none";
defparam debug_led_red_obuf_10_.output_power_up = "low";
defparam debug_led_red_obuf_10_.output_register_mode = "none";
defparam debug_led_red_obuf_10_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H8
cycloneii_io debug_led_red_obuf_11_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[11]));
// synopsys translate_off
defparam debug_led_red_obuf_11_.input_async_reset = "none";
defparam debug_led_red_obuf_11_.input_power_up = "low";
defparam debug_led_red_obuf_11_.input_register_mode = "none";
defparam debug_led_red_obuf_11_.input_sync_reset = "none";
defparam debug_led_red_obuf_11_.oe_async_reset = "none";
defparam debug_led_red_obuf_11_.oe_power_up = "low";
defparam debug_led_red_obuf_11_.oe_register_mode = "none";
defparam debug_led_red_obuf_11_.oe_sync_reset = "none";
defparam debug_led_red_obuf_11_.operation_mode = "output";
defparam debug_led_red_obuf_11_.output_async_reset = "none";
defparam debug_led_red_obuf_11_.output_power_up = "low";
defparam debug_led_red_obuf_11_.output_register_mode = "none";
defparam debug_led_red_obuf_11_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H2
cycloneii_io debug_led_red_obuf_12_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[12]));
// synopsys translate_off
defparam debug_led_red_obuf_12_.input_async_reset = "none";
defparam debug_led_red_obuf_12_.input_power_up = "low";
defparam debug_led_red_obuf_12_.input_register_mode = "none";
defparam debug_led_red_obuf_12_.input_sync_reset = "none";
defparam debug_led_red_obuf_12_.oe_async_reset = "none";
defparam debug_led_red_obuf_12_.oe_power_up = "low";
defparam debug_led_red_obuf_12_.oe_register_mode = "none";
defparam debug_led_red_obuf_12_.oe_sync_reset = "none";
defparam debug_led_red_obuf_12_.operation_mode = "output";
defparam debug_led_red_obuf_12_.output_async_reset = "none";
defparam debug_led_red_obuf_12_.output_power_up = "low";
defparam debug_led_red_obuf_12_.output_register_mode = "none";
defparam debug_led_red_obuf_12_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D17
cycloneii_io debug_led_red_obuf_13_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[13]));
// synopsys translate_off
defparam debug_led_red_obuf_13_.input_async_reset = "none";
defparam debug_led_red_obuf_13_.input_power_up = "low";
defparam debug_led_red_obuf_13_.input_register_mode = "none";
defparam debug_led_red_obuf_13_.input_sync_reset = "none";
defparam debug_led_red_obuf_13_.oe_async_reset = "none";
defparam debug_led_red_obuf_13_.oe_power_up = "low";
defparam debug_led_red_obuf_13_.oe_register_mode = "none";
defparam debug_led_red_obuf_13_.oe_sync_reset = "none";
defparam debug_led_red_obuf_13_.operation_mode = "output";
defparam debug_led_red_obuf_13_.output_async_reset = "none";
defparam debug_led_red_obuf_13_.output_power_up = "low";
defparam debug_led_red_obuf_13_.output_register_mode = "none";
defparam debug_led_red_obuf_13_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD22
cycloneii_io debug_led_red_obuf_14_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[14]));
// synopsys translate_off
defparam debug_led_red_obuf_14_.input_async_reset = "none";
defparam debug_led_red_obuf_14_.input_power_up = "low";
defparam debug_led_red_obuf_14_.input_register_mode = "none";
defparam debug_led_red_obuf_14_.input_sync_reset = "none";
defparam debug_led_red_obuf_14_.oe_async_reset = "none";
defparam debug_led_red_obuf_14_.oe_power_up = "low";
defparam debug_led_red_obuf_14_.oe_register_mode = "none";
defparam debug_led_red_obuf_14_.oe_sync_reset = "none";
defparam debug_led_red_obuf_14_.operation_mode = "output";
defparam debug_led_red_obuf_14_.output_async_reset = "none";
defparam debug_led_red_obuf_14_.output_power_up = "low";
defparam debug_led_red_obuf_14_.output_register_mode = "none";
defparam debug_led_red_obuf_14_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P17
cycloneii_io debug_led_red_obuf_15_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[15]));
// synopsys translate_off
defparam debug_led_red_obuf_15_.input_async_reset = "none";
defparam debug_led_red_obuf_15_.input_power_up = "low";
defparam debug_led_red_obuf_15_.input_register_mode = "none";
defparam debug_led_red_obuf_15_.input_sync_reset = "none";
defparam debug_led_red_obuf_15_.oe_async_reset = "none";
defparam debug_led_red_obuf_15_.oe_power_up = "low";
defparam debug_led_red_obuf_15_.oe_register_mode = "none";
defparam debug_led_red_obuf_15_.oe_sync_reset = "none";
defparam debug_led_red_obuf_15_.operation_mode = "output";
defparam debug_led_red_obuf_15_.output_async_reset = "none";
defparam debug_led_red_obuf_15_.output_power_up = "low";
defparam debug_led_red_obuf_15_.output_register_mode = "none";
defparam debug_led_red_obuf_15_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K16
cycloneii_io debug_led_red_obuf_16_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[16]));
// synopsys translate_off
defparam debug_led_red_obuf_16_.input_async_reset = "none";
defparam debug_led_red_obuf_16_.input_power_up = "low";
defparam debug_led_red_obuf_16_.input_register_mode = "none";
defparam debug_led_red_obuf_16_.input_sync_reset = "none";
defparam debug_led_red_obuf_16_.oe_async_reset = "none";
defparam debug_led_red_obuf_16_.oe_power_up = "low";
defparam debug_led_red_obuf_16_.oe_register_mode = "none";
defparam debug_led_red_obuf_16_.oe_sync_reset = "none";
defparam debug_led_red_obuf_16_.operation_mode = "output";
defparam debug_led_red_obuf_16_.output_async_reset = "none";
defparam debug_led_red_obuf_16_.output_power_up = "low";
defparam debug_led_red_obuf_16_.output_register_mode = "none";
defparam debug_led_red_obuf_16_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C5
cycloneii_io debug_led_red_obuf_17_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[17]));
// synopsys translate_off
defparam debug_led_red_obuf_17_.input_async_reset = "none";
defparam debug_led_red_obuf_17_.input_power_up = "low";
defparam debug_led_red_obuf_17_.input_register_mode = "none";
defparam debug_led_red_obuf_17_.input_sync_reset = "none";
defparam debug_led_red_obuf_17_.oe_async_reset = "none";
defparam debug_led_red_obuf_17_.oe_power_up = "low";
defparam debug_led_red_obuf_17_.oe_register_mode = "none";
defparam debug_led_red_obuf_17_.oe_sync_reset = "none";
defparam debug_led_red_obuf_17_.operation_mode = "output";
defparam debug_led_red_obuf_17_.output_async_reset = "none";
defparam debug_led_red_obuf_17_.output_power_up = "low";
defparam debug_led_red_obuf_17_.output_register_mode = "none";
defparam debug_led_red_obuf_17_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC17
cycloneii_io debug_led_grn_obuf_0_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[0]));
// synopsys translate_off
defparam debug_led_grn_obuf_0_.input_async_reset = "none";
defparam debug_led_grn_obuf_0_.input_power_up = "low";
defparam debug_led_grn_obuf_0_.input_register_mode = "none";
defparam debug_led_grn_obuf_0_.input_sync_reset = "none";
defparam debug_led_grn_obuf_0_.oe_async_reset = "none";
defparam debug_led_grn_obuf_0_.oe_power_up = "low";
defparam debug_led_grn_obuf_0_.oe_register_mode = "none";
defparam debug_led_grn_obuf_0_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_0_.operation_mode = "output";
defparam debug_led_grn_obuf_0_.output_async_reset = "none";
defparam debug_led_grn_obuf_0_.output_power_up = "low";
defparam debug_led_grn_obuf_0_.output_register_mode = "none";
defparam debug_led_grn_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B22
cycloneii_io debug_led_grn_obuf_1_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[1]));
// synopsys translate_off
defparam debug_led_grn_obuf_1_.input_async_reset = "none";
defparam debug_led_grn_obuf_1_.input_power_up = "low";
defparam debug_led_grn_obuf_1_.input_register_mode = "none";
defparam debug_led_grn_obuf_1_.input_sync_reset = "none";
defparam debug_led_grn_obuf_1_.oe_async_reset = "none";
defparam debug_led_grn_obuf_1_.oe_power_up = "low";
defparam debug_led_grn_obuf_1_.oe_register_mode = "none";
defparam debug_led_grn_obuf_1_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_1_.operation_mode = "output";
defparam debug_led_grn_obuf_1_.output_async_reset = "none";
defparam debug_led_grn_obuf_1_.output_power_up = "low";
defparam debug_led_grn_obuf_1_.output_register_mode = "none";
defparam debug_led_grn_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F7
cycloneii_io debug_led_grn_obuf_2_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[2]));
// synopsys translate_off
defparam debug_led_grn_obuf_2_.input_async_reset = "none";
defparam debug_led_grn_obuf_2_.input_power_up = "low";
defparam debug_led_grn_obuf_2_.input_register_mode = "none";
defparam debug_led_grn_obuf_2_.input_sync_reset = "none";
defparam debug_led_grn_obuf_2_.oe_async_reset = "none";
defparam debug_led_grn_obuf_2_.oe_power_up = "low";
defparam debug_led_grn_obuf_2_.oe_register_mode = "none";
defparam debug_led_grn_obuf_2_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_2_.operation_mode = "output";
defparam debug_led_grn_obuf_2_.output_async_reset = "none";
defparam debug_led_grn_obuf_2_.output_power_up = "low";
defparam debug_led_grn_obuf_2_.output_register_mode = "none";
defparam debug_led_grn_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD8
cycloneii_io debug_led_grn_obuf_3_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[3]));
// synopsys translate_off
defparam debug_led_grn_obuf_3_.input_async_reset = "none";
defparam debug_led_grn_obuf_3_.input_power_up = "low";
defparam debug_led_grn_obuf_3_.input_register_mode = "none";
defparam debug_led_grn_obuf_3_.input_sync_reset = "none";
defparam debug_led_grn_obuf_3_.oe_async_reset = "none";
defparam debug_led_grn_obuf_3_.oe_power_up = "low";
defparam debug_led_grn_obuf_3_.oe_register_mode = "none";
defparam debug_led_grn_obuf_3_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_3_.operation_mode = "output";
defparam debug_led_grn_obuf_3_.output_async_reset = "none";
defparam debug_led_grn_obuf_3_.output_power_up = "low";
defparam debug_led_grn_obuf_3_.output_register_mode = "none";
defparam debug_led_grn_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V25
cycloneii_io debug_led_grn_obuf_4_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[4]));
// synopsys translate_off
defparam debug_led_grn_obuf_4_.input_async_reset = "none";
defparam debug_led_grn_obuf_4_.input_power_up = "low";
defparam debug_led_grn_obuf_4_.input_register_mode = "none";
defparam debug_led_grn_obuf_4_.input_sync_reset = "none";
defparam debug_led_grn_obuf_4_.oe_async_reset = "none";
defparam debug_led_grn_obuf_4_.oe_power_up = "low";
defparam debug_led_grn_obuf_4_.oe_register_mode = "none";
defparam debug_led_grn_obuf_4_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_4_.operation_mode = "output";
defparam debug_led_grn_obuf_4_.output_async_reset = "none";
defparam debug_led_grn_obuf_4_.output_power_up = "low";
defparam debug_led_grn_obuf_4_.output_register_mode = "none";
defparam debug_led_grn_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF4
cycloneii_io debug_led_grn_obuf_5_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[5]));
// synopsys translate_off
defparam debug_led_grn_obuf_5_.input_async_reset = "none";
defparam debug_led_grn_obuf_5_.input_power_up = "low";
defparam debug_led_grn_obuf_5_.input_register_mode = "none";
defparam debug_led_grn_obuf_5_.input_sync_reset = "none";
defparam debug_led_grn_obuf_5_.oe_async_reset = "none";
defparam debug_led_grn_obuf_5_.oe_power_up = "low";
defparam debug_led_grn_obuf_5_.oe_register_mode = "none";
defparam debug_led_grn_obuf_5_.oe_sync_reset = "none";
defparam debug_led_grn_obuf_5_.operation_mode = "output";
defparam debug_led_grn_obuf_5_.output_async_reset = "none";
defparam debug_led_grn_obuf_5_.output_power_up = "low";
defparam debug_led_grn_obuf_5_.output_register_mode = "none";
defparam debug_led_grn_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD15
cycloneii_io debug_num_0_obuf_0_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[0]));
// synopsys translate_off
defparam debug_num_0_obuf_0_.input_async_reset = "none";
defparam debug_num_0_obuf_0_.input_power_up = "low";
defparam debug_num_0_obuf_0_.input_register_mode = "none";
defparam debug_num_0_obuf_0_.input_sync_reset = "none";
defparam debug_num_0_obuf_0_.oe_async_reset = "none";
defparam debug_num_0_obuf_0_.oe_power_up = "low";
defparam debug_num_0_obuf_0_.oe_register_mode = "none";
defparam debug_num_0_obuf_0_.oe_sync_reset = "none";
defparam debug_num_0_obuf_0_.operation_mode = "output";
defparam debug_num_0_obuf_0_.output_async_reset = "none";
defparam debug_num_0_obuf_0_.output_power_up = "low";
defparam debug_num_0_obuf_0_.output_register_mode = "none";
defparam debug_num_0_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E8
cycloneii_io debug_num_0_obuf_1_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[1]));
// synopsys translate_off
defparam debug_num_0_obuf_1_.input_async_reset = "none";
defparam debug_num_0_obuf_1_.input_power_up = "low";
defparam debug_num_0_obuf_1_.input_register_mode = "none";
defparam debug_num_0_obuf_1_.input_sync_reset = "none";
defparam debug_num_0_obuf_1_.oe_async_reset = "none";
defparam debug_num_0_obuf_1_.oe_power_up = "low";
defparam debug_num_0_obuf_1_.oe_register_mode = "none";
defparam debug_num_0_obuf_1_.oe_sync_reset = "none";
defparam debug_num_0_obuf_1_.operation_mode = "output";
defparam debug_num_0_obuf_1_.output_async_reset = "none";
defparam debug_num_0_obuf_1_.output_power_up = "low";
defparam debug_num_0_obuf_1_.output_register_mode = "none";
defparam debug_num_0_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B20
cycloneii_io debug_num_0_obuf_2_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[2]));
// synopsys translate_off
defparam debug_num_0_obuf_2_.input_async_reset = "none";
defparam debug_num_0_obuf_2_.input_power_up = "low";
defparam debug_num_0_obuf_2_.input_register_mode = "none";
defparam debug_num_0_obuf_2_.input_sync_reset = "none";
defparam debug_num_0_obuf_2_.oe_async_reset = "none";
defparam debug_num_0_obuf_2_.oe_power_up = "low";
defparam debug_num_0_obuf_2_.oe_register_mode = "none";
defparam debug_num_0_obuf_2_.oe_sync_reset = "none";
defparam debug_num_0_obuf_2_.operation_mode = "output";
defparam debug_num_0_obuf_2_.output_async_reset = "none";
defparam debug_num_0_obuf_2_.output_power_up = "low";
defparam debug_num_0_obuf_2_.output_register_mode = "none";
defparam debug_num_0_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A17
cycloneii_io debug_num_0_obuf_3_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_0[3]));
// synopsys translate_off
defparam debug_num_0_obuf_3_.input_async_reset = "none";
defparam debug_num_0_obuf_3_.input_power_up = "low";
defparam debug_num_0_obuf_3_.input_register_mode = "none";
defparam debug_num_0_obuf_3_.input_sync_reset = "none";
defparam debug_num_0_obuf_3_.oe_async_reset = "none";
defparam debug_num_0_obuf_3_.oe_power_up = "low";
defparam debug_num_0_obuf_3_.oe_register_mode = "none";
defparam debug_num_0_obuf_3_.oe_sync_reset = "none";
defparam debug_num_0_obuf_3_.operation_mode = "output";
defparam debug_num_0_obuf_3_.output_async_reset = "none";
defparam debug_num_0_obuf_3_.output_power_up = "low";
defparam debug_num_0_obuf_3_.output_register_mode = "none";
defparam debug_num_0_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_L4
cycloneii_io debug_num_1_obuf_0_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[0]));
// synopsys translate_off
defparam debug_num_1_obuf_0_.input_async_reset = "none";
defparam debug_num_1_obuf_0_.input_power_up = "low";
defparam debug_num_1_obuf_0_.input_register_mode = "none";
defparam debug_num_1_obuf_0_.input_sync_reset = "none";
defparam debug_num_1_obuf_0_.oe_async_reset = "none";
defparam debug_num_1_obuf_0_.oe_power_up = "low";
defparam debug_num_1_obuf_0_.oe_register_mode = "none";
defparam debug_num_1_obuf_0_.oe_sync_reset = "none";
defparam debug_num_1_obuf_0_.operation_mode = "output";
defparam debug_num_1_obuf_0_.output_async_reset = "none";
defparam debug_num_1_obuf_0_.output_power_up = "low";
defparam debug_num_1_obuf_0_.output_register_mode = "none";
defparam debug_num_1_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE7
cycloneii_io debug_num_1_obuf_1_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[1]));
// synopsys translate_off
defparam debug_num_1_obuf_1_.input_async_reset = "none";
defparam debug_num_1_obuf_1_.input_power_up = "low";
defparam debug_num_1_obuf_1_.input_register_mode = "none";
defparam debug_num_1_obuf_1_.input_sync_reset = "none";
defparam debug_num_1_obuf_1_.oe_async_reset = "none";
defparam debug_num_1_obuf_1_.oe_power_up = "low";
defparam debug_num_1_obuf_1_.oe_register_mode = "none";
defparam debug_num_1_obuf_1_.oe_sync_reset = "none";
defparam debug_num_1_obuf_1_.operation_mode = "output";
defparam debug_num_1_obuf_1_.output_async_reset = "none";
defparam debug_num_1_obuf_1_.output_power_up = "low";
defparam debug_num_1_obuf_1_.output_register_mode = "none";
defparam debug_num_1_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D2
cycloneii_io debug_num_1_obuf_2_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[2]));
// synopsys translate_off
defparam debug_num_1_obuf_2_.input_async_reset = "none";
defparam debug_num_1_obuf_2_.input_power_up = "low";
defparam debug_num_1_obuf_2_.input_register_mode = "none";
defparam debug_num_1_obuf_2_.input_sync_reset = "none";
defparam debug_num_1_obuf_2_.oe_async_reset = "none";
defparam debug_num_1_obuf_2_.oe_power_up = "low";
defparam debug_num_1_obuf_2_.oe_register_mode = "none";
defparam debug_num_1_obuf_2_.oe_sync_reset = "none";
defparam debug_num_1_obuf_2_.operation_mode = "output";
defparam debug_num_1_obuf_2_.output_async_reset = "none";
defparam debug_num_1_obuf_2_.output_power_up = "low";
defparam debug_num_1_obuf_2_.output_register_mode = "none";
defparam debug_num_1_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C3
cycloneii_io debug_num_1_obuf_3_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_1[3]));
// synopsys translate_off
defparam debug_num_1_obuf_3_.input_async_reset = "none";
defparam debug_num_1_obuf_3_.input_power_up = "low";
defparam debug_num_1_obuf_3_.input_register_mode = "none";
defparam debug_num_1_obuf_3_.input_sync_reset = "none";
defparam debug_num_1_obuf_3_.oe_async_reset = "none";
defparam debug_num_1_obuf_3_.oe_power_up = "low";
defparam debug_num_1_obuf_3_.oe_register_mode = "none";
defparam debug_num_1_obuf_3_.oe_sync_reset = "none";
defparam debug_num_1_obuf_3_.operation_mode = "output";
defparam debug_num_1_obuf_3_.output_async_reset = "none";
defparam debug_num_1_obuf_3_.output_power_up = "low";
defparam debug_num_1_obuf_3_.output_register_mode = "none";
defparam debug_num_1_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF17
cycloneii_io debug_num_2_obuf_0_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[0]));
// synopsys translate_off
defparam debug_num_2_obuf_0_.input_async_reset = "none";
defparam debug_num_2_obuf_0_.input_power_up = "low";
defparam debug_num_2_obuf_0_.input_register_mode = "none";
defparam debug_num_2_obuf_0_.input_sync_reset = "none";
defparam debug_num_2_obuf_0_.oe_async_reset = "none";
defparam debug_num_2_obuf_0_.oe_power_up = "low";
defparam debug_num_2_obuf_0_.oe_register_mode = "none";
defparam debug_num_2_obuf_0_.oe_sync_reset = "none";
defparam debug_num_2_obuf_0_.operation_mode = "output";
defparam debug_num_2_obuf_0_.output_async_reset = "none";
defparam debug_num_2_obuf_0_.output_power_up = "low";
defparam debug_num_2_obuf_0_.output_register_mode = "none";
defparam debug_num_2_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W12
cycloneii_io debug_num_2_obuf_1_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[1]));
// synopsys translate_off
defparam debug_num_2_obuf_1_.input_async_reset = "none";
defparam debug_num_2_obuf_1_.input_power_up = "low";
defparam debug_num_2_obuf_1_.input_register_mode = "none";
defparam debug_num_2_obuf_1_.input_sync_reset = "none";
defparam debug_num_2_obuf_1_.oe_async_reset = "none";
defparam debug_num_2_obuf_1_.oe_power_up = "low";
defparam debug_num_2_obuf_1_.oe_register_mode = "none";
defparam debug_num_2_obuf_1_.oe_sync_reset = "none";
defparam debug_num_2_obuf_1_.operation_mode = "output";
defparam debug_num_2_obuf_1_.output_async_reset = "none";
defparam debug_num_2_obuf_1_.output_power_up = "low";
defparam debug_num_2_obuf_1_.output_register_mode = "none";
defparam debug_num_2_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W23
cycloneii_io debug_num_2_obuf_2_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[2]));
// synopsys translate_off
defparam debug_num_2_obuf_2_.input_async_reset = "none";
defparam debug_num_2_obuf_2_.input_power_up = "low";
defparam debug_num_2_obuf_2_.input_register_mode = "none";
defparam debug_num_2_obuf_2_.input_sync_reset = "none";
defparam debug_num_2_obuf_2_.oe_async_reset = "none";
defparam debug_num_2_obuf_2_.oe_power_up = "low";
defparam debug_num_2_obuf_2_.oe_register_mode = "none";
defparam debug_num_2_obuf_2_.oe_sync_reset = "none";
defparam debug_num_2_obuf_2_.operation_mode = "output";
defparam debug_num_2_obuf_2_.output_async_reset = "none";
defparam debug_num_2_obuf_2_.output_power_up = "low";
defparam debug_num_2_obuf_2_.output_register_mode = "none";
defparam debug_num_2_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_P23
cycloneii_io debug_num_2_obuf_3_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_2[3]));
// synopsys translate_off
defparam debug_num_2_obuf_3_.input_async_reset = "none";
defparam debug_num_2_obuf_3_.input_power_up = "low";
defparam debug_num_2_obuf_3_.input_register_mode = "none";
defparam debug_num_2_obuf_3_.input_sync_reset = "none";
defparam debug_num_2_obuf_3_.oe_async_reset = "none";
defparam debug_num_2_obuf_3_.oe_power_up = "low";
defparam debug_num_2_obuf_3_.oe_register_mode = "none";
defparam debug_num_2_obuf_3_.oe_sync_reset = "none";
defparam debug_num_2_obuf_3_.operation_mode = "output";
defparam debug_num_2_obuf_3_.output_async_reset = "none";
defparam debug_num_2_obuf_3_.output_power_up = "low";
defparam debug_num_2_obuf_3_.output_register_mode = "none";
defparam debug_num_2_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_M19
cycloneii_io debug_num_3_obuf_0_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[0]));
// synopsys translate_off
defparam debug_num_3_obuf_0_.input_async_reset = "none";
defparam debug_num_3_obuf_0_.input_power_up = "low";
defparam debug_num_3_obuf_0_.input_register_mode = "none";
defparam debug_num_3_obuf_0_.input_sync_reset = "none";
defparam debug_num_3_obuf_0_.oe_async_reset = "none";
defparam debug_num_3_obuf_0_.oe_power_up = "low";
defparam debug_num_3_obuf_0_.oe_register_mode = "none";
defparam debug_num_3_obuf_0_.oe_sync_reset = "none";
defparam debug_num_3_obuf_0_.operation_mode = "output";
defparam debug_num_3_obuf_0_.output_async_reset = "none";
defparam debug_num_3_obuf_0_.output_power_up = "low";
defparam debug_num_3_obuf_0_.output_register_mode = "none";
defparam debug_num_3_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D11
cycloneii_io debug_num_3_obuf_1_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[1]));
// synopsys translate_off
defparam debug_num_3_obuf_1_.input_async_reset = "none";
defparam debug_num_3_obuf_1_.input_power_up = "low";
defparam debug_num_3_obuf_1_.input_register_mode = "none";
defparam debug_num_3_obuf_1_.input_sync_reset = "none";
defparam debug_num_3_obuf_1_.oe_async_reset = "none";
defparam debug_num_3_obuf_1_.oe_power_up = "low";
defparam debug_num_3_obuf_1_.oe_register_mode = "none";
defparam debug_num_3_obuf_1_.oe_sync_reset = "none";
defparam debug_num_3_obuf_1_.operation_mode = "output";
defparam debug_num_3_obuf_1_.output_async_reset = "none";
defparam debug_num_3_obuf_1_.output_power_up = "low";
defparam debug_num_3_obuf_1_.output_register_mode = "none";
defparam debug_num_3_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC18
cycloneii_io debug_num_3_obuf_2_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[2]));
// synopsys translate_off
defparam debug_num_3_obuf_2_.input_async_reset = "none";
defparam debug_num_3_obuf_2_.input_power_up = "low";
defparam debug_num_3_obuf_2_.input_register_mode = "none";
defparam debug_num_3_obuf_2_.input_sync_reset = "none";
defparam debug_num_3_obuf_2_.oe_async_reset = "none";
defparam debug_num_3_obuf_2_.oe_power_up = "low";
defparam debug_num_3_obuf_2_.oe_register_mode = "none";
defparam debug_num_3_obuf_2_.oe_sync_reset = "none";
defparam debug_num_3_obuf_2_.operation_mode = "output";
defparam debug_num_3_obuf_2_.output_async_reset = "none";
defparam debug_num_3_obuf_2_.output_power_up = "low";
defparam debug_num_3_obuf_2_.output_register_mode = "none";
defparam debug_num_3_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA12
cycloneii_io debug_num_3_obuf_3_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_3[3]));
// synopsys translate_off
defparam debug_num_3_obuf_3_.input_async_reset = "none";
defparam debug_num_3_obuf_3_.input_power_up = "low";
defparam debug_num_3_obuf_3_.input_register_mode = "none";
defparam debug_num_3_obuf_3_.input_sync_reset = "none";
defparam debug_num_3_obuf_3_.oe_async_reset = "none";
defparam debug_num_3_obuf_3_.oe_power_up = "low";
defparam debug_num_3_obuf_3_.oe_register_mode = "none";
defparam debug_num_3_obuf_3_.oe_sync_reset = "none";
defparam debug_num_3_obuf_3_.operation_mode = "output";
defparam debug_num_3_obuf_3_.output_async_reset = "none";
defparam debug_num_3_obuf_3_.output_power_up = "low";
defparam debug_num_3_obuf_3_.output_register_mode = "none";
defparam debug_num_3_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_W3
cycloneii_io debug_num_4_obuf_0_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[0]));
// synopsys translate_off
defparam debug_num_4_obuf_0_.input_async_reset = "none";
defparam debug_num_4_obuf_0_.input_power_up = "low";
defparam debug_num_4_obuf_0_.input_register_mode = "none";
defparam debug_num_4_obuf_0_.input_sync_reset = "none";
defparam debug_num_4_obuf_0_.oe_async_reset = "none";
defparam debug_num_4_obuf_0_.oe_power_up = "low";
defparam debug_num_4_obuf_0_.oe_register_mode = "none";
defparam debug_num_4_obuf_0_.oe_sync_reset = "none";
defparam debug_num_4_obuf_0_.operation_mode = "output";
defparam debug_num_4_obuf_0_.output_async_reset = "none";
defparam debug_num_4_obuf_0_.output_power_up = "low";
defparam debug_num_4_obuf_0_.output_register_mode = "none";
defparam debug_num_4_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA18
cycloneii_io debug_num_4_obuf_1_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[1]));
// synopsys translate_off
defparam debug_num_4_obuf_1_.input_async_reset = "none";
defparam debug_num_4_obuf_1_.input_power_up = "low";
defparam debug_num_4_obuf_1_.input_register_mode = "none";
defparam debug_num_4_obuf_1_.input_sync_reset = "none";
defparam debug_num_4_obuf_1_.oe_async_reset = "none";
defparam debug_num_4_obuf_1_.oe_power_up = "low";
defparam debug_num_4_obuf_1_.oe_register_mode = "none";
defparam debug_num_4_obuf_1_.oe_sync_reset = "none";
defparam debug_num_4_obuf_1_.operation_mode = "output";
defparam debug_num_4_obuf_1_.output_async_reset = "none";
defparam debug_num_4_obuf_1_.output_power_up = "low";
defparam debug_num_4_obuf_1_.output_register_mode = "none";
defparam debug_num_4_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G10
cycloneii_io debug_num_4_obuf_2_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[2]));
// synopsys translate_off
defparam debug_num_4_obuf_2_.input_async_reset = "none";
defparam debug_num_4_obuf_2_.input_power_up = "low";
defparam debug_num_4_obuf_2_.input_register_mode = "none";
defparam debug_num_4_obuf_2_.input_sync_reset = "none";
defparam debug_num_4_obuf_2_.oe_async_reset = "none";
defparam debug_num_4_obuf_2_.oe_power_up = "low";
defparam debug_num_4_obuf_2_.oe_register_mode = "none";
defparam debug_num_4_obuf_2_.oe_sync_reset = "none";
defparam debug_num_4_obuf_2_.operation_mode = "output";
defparam debug_num_4_obuf_2_.output_async_reset = "none";
defparam debug_num_4_obuf_2_.output_power_up = "low";
defparam debug_num_4_obuf_2_.output_register_mode = "none";
defparam debug_num_4_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y1
cycloneii_io debug_num_4_obuf_3_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_4[3]));
// synopsys translate_off
defparam debug_num_4_obuf_3_.input_async_reset = "none";
defparam debug_num_4_obuf_3_.input_power_up = "low";
defparam debug_num_4_obuf_3_.input_register_mode = "none";
defparam debug_num_4_obuf_3_.input_sync_reset = "none";
defparam debug_num_4_obuf_3_.oe_async_reset = "none";
defparam debug_num_4_obuf_3_.oe_power_up = "low";
defparam debug_num_4_obuf_3_.oe_register_mode = "none";
defparam debug_num_4_obuf_3_.oe_sync_reset = "none";
defparam debug_num_4_obuf_3_.operation_mode = "output";
defparam debug_num_4_obuf_3_.output_async_reset = "none";
defparam debug_num_4_obuf_3_.output_power_up = "low";
defparam debug_num_4_obuf_3_.output_register_mode = "none";
defparam debug_num_4_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G13
cycloneii_io debug_num_5_obuf_0_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[0]));
// synopsys translate_off
defparam debug_num_5_obuf_0_.input_async_reset = "none";
defparam debug_num_5_obuf_0_.input_power_up = "low";
defparam debug_num_5_obuf_0_.input_register_mode = "none";
defparam debug_num_5_obuf_0_.input_sync_reset = "none";
defparam debug_num_5_obuf_0_.oe_async_reset = "none";
defparam debug_num_5_obuf_0_.oe_power_up = "low";
defparam debug_num_5_obuf_0_.oe_register_mode = "none";
defparam debug_num_5_obuf_0_.oe_sync_reset = "none";
defparam debug_num_5_obuf_0_.operation_mode = "output";
defparam debug_num_5_obuf_0_.output_async_reset = "none";
defparam debug_num_5_obuf_0_.output_power_up = "low";
defparam debug_num_5_obuf_0_.output_register_mode = "none";
defparam debug_num_5_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K5
cycloneii_io debug_num_5_obuf_1_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[1]));
// synopsys translate_off
defparam debug_num_5_obuf_1_.input_async_reset = "none";
defparam debug_num_5_obuf_1_.input_power_up = "low";
defparam debug_num_5_obuf_1_.input_register_mode = "none";
defparam debug_num_5_obuf_1_.input_sync_reset = "none";
defparam debug_num_5_obuf_1_.oe_async_reset = "none";
defparam debug_num_5_obuf_1_.oe_power_up = "low";
defparam debug_num_5_obuf_1_.oe_register_mode = "none";
defparam debug_num_5_obuf_1_.oe_sync_reset = "none";
defparam debug_num_5_obuf_1_.operation_mode = "output";
defparam debug_num_5_obuf_1_.output_async_reset = "none";
defparam debug_num_5_obuf_1_.output_power_up = "low";
defparam debug_num_5_obuf_1_.output_register_mode = "none";
defparam debug_num_5_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V3
cycloneii_io debug_num_5_obuf_2_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[2]));
// synopsys translate_off
defparam debug_num_5_obuf_2_.input_async_reset = "none";
defparam debug_num_5_obuf_2_.input_power_up = "low";
defparam debug_num_5_obuf_2_.input_register_mode = "none";
defparam debug_num_5_obuf_2_.input_sync_reset = "none";
defparam debug_num_5_obuf_2_.oe_async_reset = "none";
defparam debug_num_5_obuf_2_.oe_power_up = "low";
defparam debug_num_5_obuf_2_.oe_register_mode = "none";
defparam debug_num_5_obuf_2_.oe_sync_reset = "none";
defparam debug_num_5_obuf_2_.operation_mode = "output";
defparam debug_num_5_obuf_2_.output_async_reset = "none";
defparam debug_num_5_obuf_2_.output_power_up = "low";
defparam debug_num_5_obuf_2_.output_register_mode = "none";
defparam debug_num_5_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AE9
cycloneii_io debug_num_5_obuf_3_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_num_5[3]));
// synopsys translate_off
defparam debug_num_5_obuf_3_.input_async_reset = "none";
defparam debug_num_5_obuf_3_.input_power_up = "low";
defparam debug_num_5_obuf_3_.input_register_mode = "none";
defparam debug_num_5_obuf_3_.input_sync_reset = "none";
defparam debug_num_5_obuf_3_.oe_async_reset = "none";
defparam debug_num_5_obuf_3_.oe_power_up = "low";
defparam debug_num_5_obuf_3_.oe_register_mode = "none";
defparam debug_num_5_obuf_3_.oe_sync_reset = "none";
defparam debug_num_5_obuf_3_.operation_mode = "output";
defparam debug_num_5_obuf_3_.output_async_reset = "none";
defparam debug_num_5_obuf_3_.output_power_up = "low";
defparam debug_num_5_obuf_3_.output_register_mode = "none";
defparam debug_num_5_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K25
cycloneii_io i_pixel_a0_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[0]));
// synopsys translate_off
defparam i_pixel_a0_a_aI.input_async_reset = "none";
defparam i_pixel_a0_a_aI.input_power_up = "low";
defparam i_pixel_a0_a_aI.input_register_mode = "none";
defparam i_pixel_a0_a_aI.input_sync_reset = "none";
defparam i_pixel_a0_a_aI.oe_async_reset = "none";
defparam i_pixel_a0_a_aI.oe_power_up = "low";
defparam i_pixel_a0_a_aI.oe_register_mode = "none";
defparam i_pixel_a0_a_aI.oe_sync_reset = "none";
defparam i_pixel_a0_a_aI.operation_mode = "input";
defparam i_pixel_a0_a_aI.output_async_reset = "none";
defparam i_pixel_a0_a_aI.output_power_up = "low";
defparam i_pixel_a0_a_aI.output_register_mode = "none";
defparam i_pixel_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F14
cycloneii_io i_pixel_a1_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[1]));
// synopsys translate_off
defparam i_pixel_a1_a_aI.input_async_reset = "none";
defparam i_pixel_a1_a_aI.input_power_up = "low";
defparam i_pixel_a1_a_aI.input_register_mode = "none";
defparam i_pixel_a1_a_aI.input_sync_reset = "none";
defparam i_pixel_a1_a_aI.oe_async_reset = "none";
defparam i_pixel_a1_a_aI.oe_power_up = "low";
defparam i_pixel_a1_a_aI.oe_register_mode = "none";
defparam i_pixel_a1_a_aI.oe_sync_reset = "none";
defparam i_pixel_a1_a_aI.operation_mode = "input";
defparam i_pixel_a1_a_aI.output_async_reset = "none";
defparam i_pixel_a1_a_aI.output_power_up = "low";
defparam i_pixel_a1_a_aI.output_register_mode = "none";
defparam i_pixel_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_V5
cycloneii_io i_pixel_a2_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[2]));
// synopsys translate_off
defparam i_pixel_a2_a_aI.input_async_reset = "none";
defparam i_pixel_a2_a_aI.input_power_up = "low";
defparam i_pixel_a2_a_aI.input_register_mode = "none";
defparam i_pixel_a2_a_aI.input_sync_reset = "none";
defparam i_pixel_a2_a_aI.oe_async_reset = "none";
defparam i_pixel_a2_a_aI.oe_power_up = "low";
defparam i_pixel_a2_a_aI.oe_register_mode = "none";
defparam i_pixel_a2_a_aI.oe_sync_reset = "none";
defparam i_pixel_a2_a_aI.operation_mode = "input";
defparam i_pixel_a2_a_aI.output_async_reset = "none";
defparam i_pixel_a2_a_aI.output_power_up = "low";
defparam i_pixel_a2_a_aI.output_register_mode = "none";
defparam i_pixel_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD25
cycloneii_io i_pixel_a3_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[3]));
// synopsys translate_off
defparam i_pixel_a3_a_aI.input_async_reset = "none";
defparam i_pixel_a3_a_aI.input_power_up = "low";
defparam i_pixel_a3_a_aI.input_register_mode = "none";
defparam i_pixel_a3_a_aI.input_sync_reset = "none";
defparam i_pixel_a3_a_aI.oe_async_reset = "none";
defparam i_pixel_a3_a_aI.oe_power_up = "low";
defparam i_pixel_a3_a_aI.oe_register_mode = "none";
defparam i_pixel_a3_a_aI.oe_sync_reset = "none";
defparam i_pixel_a3_a_aI.operation_mode = "input";
defparam i_pixel_a3_a_aI.output_async_reset = "none";
defparam i_pixel_a3_a_aI.output_power_up = "low";
defparam i_pixel_a3_a_aI.output_register_mode = "none";
defparam i_pixel_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A22
cycloneii_io i_pixel_a4_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[4]));
// synopsys translate_off
defparam i_pixel_a4_a_aI.input_async_reset = "none";
defparam i_pixel_a4_a_aI.input_power_up = "low";
defparam i_pixel_a4_a_aI.input_register_mode = "none";
defparam i_pixel_a4_a_aI.input_sync_reset = "none";
defparam i_pixel_a4_a_aI.oe_async_reset = "none";
defparam i_pixel_a4_a_aI.oe_power_up = "low";
defparam i_pixel_a4_a_aI.oe_register_mode = "none";
defparam i_pixel_a4_a_aI.oe_sync_reset = "none";
defparam i_pixel_a4_a_aI.operation_mode = "input";
defparam i_pixel_a4_a_aI.output_async_reset = "none";
defparam i_pixel_a4_a_aI.output_power_up = "low";
defparam i_pixel_a4_a_aI.output_register_mode = "none";
defparam i_pixel_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_U7
cycloneii_io i_pixel_a5_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[5]));
// synopsys translate_off
defparam i_pixel_a5_a_aI.input_async_reset = "none";
defparam i_pixel_a5_a_aI.input_power_up = "low";
defparam i_pixel_a5_a_aI.input_register_mode = "none";
defparam i_pixel_a5_a_aI.input_sync_reset = "none";
defparam i_pixel_a5_a_aI.oe_async_reset = "none";
defparam i_pixel_a5_a_aI.oe_power_up = "low";
defparam i_pixel_a5_a_aI.oe_register_mode = "none";
defparam i_pixel_a5_a_aI.oe_sync_reset = "none";
defparam i_pixel_a5_a_aI.operation_mode = "input";
defparam i_pixel_a5_a_aI.output_async_reset = "none";
defparam i_pixel_a5_a_aI.output_power_up = "low";
defparam i_pixel_a5_a_aI.output_register_mode = "none";
defparam i_pixel_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA7
cycloneii_io i_pixel_a6_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[6]));
// synopsys translate_off
defparam i_pixel_a6_a_aI.input_async_reset = "none";
defparam i_pixel_a6_a_aI.input_power_up = "low";
defparam i_pixel_a6_a_aI.input_register_mode = "none";
defparam i_pixel_a6_a_aI.input_sync_reset = "none";
defparam i_pixel_a6_a_aI.oe_async_reset = "none";
defparam i_pixel_a6_a_aI.oe_power_up = "low";
defparam i_pixel_a6_a_aI.oe_register_mode = "none";
defparam i_pixel_a6_a_aI.oe_sync_reset = "none";
defparam i_pixel_a6_a_aI.operation_mode = "input";
defparam i_pixel_a6_a_aI.output_async_reset = "none";
defparam i_pixel_a6_a_aI.output_power_up = "low";
defparam i_pixel_a6_a_aI.output_register_mode = "none";
defparam i_pixel_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T25
cycloneii_io i_pixel_a7_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[7]));
// synopsys translate_off
defparam i_pixel_a7_a_aI.input_async_reset = "none";
defparam i_pixel_a7_a_aI.input_power_up = "low";
defparam i_pixel_a7_a_aI.input_register_mode = "none";
defparam i_pixel_a7_a_aI.input_sync_reset = "none";
defparam i_pixel_a7_a_aI.oe_async_reset = "none";
defparam i_pixel_a7_a_aI.oe_power_up = "low";
defparam i_pixel_a7_a_aI.oe_register_mode = "none";
defparam i_pixel_a7_a_aI.oe_sync_reset = "none";
defparam i_pixel_a7_a_aI.operation_mode = "input";
defparam i_pixel_a7_a_aI.output_async_reset = "none";
defparam i_pixel_a7_a_aI.output_power_up = "low";
defparam i_pixel_a7_a_aI.output_register_mode = "none";
defparam i_pixel_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E20
cycloneii_io debug_key_a1_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[1]));
// synopsys translate_off
defparam debug_key_a1_a_aI.input_async_reset = "none";
defparam debug_key_a1_a_aI.input_power_up = "low";
defparam debug_key_a1_a_aI.input_register_mode = "none";
defparam debug_key_a1_a_aI.input_sync_reset = "none";
defparam debug_key_a1_a_aI.oe_async_reset = "none";
defparam debug_key_a1_a_aI.oe_power_up = "low";
defparam debug_key_a1_a_aI.oe_register_mode = "none";
defparam debug_key_a1_a_aI.oe_sync_reset = "none";
defparam debug_key_a1_a_aI.operation_mode = "input";
defparam debug_key_a1_a_aI.output_async_reset = "none";
defparam debug_key_a1_a_aI.output_power_up = "low";
defparam debug_key_a1_a_aI.output_register_mode = "none";
defparam debug_key_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_Y4
cycloneii_io debug_key_a2_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[2]));
// synopsys translate_off
defparam debug_key_a2_a_aI.input_async_reset = "none";
defparam debug_key_a2_a_aI.input_power_up = "low";
defparam debug_key_a2_a_aI.input_register_mode = "none";
defparam debug_key_a2_a_aI.input_sync_reset = "none";
defparam debug_key_a2_a_aI.oe_async_reset = "none";
defparam debug_key_a2_a_aI.oe_power_up = "low";
defparam debug_key_a2_a_aI.oe_register_mode = "none";
defparam debug_key_a2_a_aI.oe_sync_reset = "none";
defparam debug_key_a2_a_aI.operation_mode = "input";
defparam debug_key_a2_a_aI.output_async_reset = "none";
defparam debug_key_a2_a_aI.output_power_up = "low";
defparam debug_key_a2_a_aI.output_register_mode = "none";
defparam debug_key_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC5
cycloneii_io debug_key_a3_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[3]));
// synopsys translate_off
defparam debug_key_a3_a_aI.input_async_reset = "none";
defparam debug_key_a3_a_aI.input_power_up = "low";
defparam debug_key_a3_a_aI.input_register_mode = "none";
defparam debug_key_a3_a_aI.input_sync_reset = "none";
defparam debug_key_a3_a_aI.oe_async_reset = "none";
defparam debug_key_a3_a_aI.oe_power_up = "low";
defparam debug_key_a3_a_aI.oe_register_mode = "none";
defparam debug_key_a3_a_aI.oe_sync_reset = "none";
defparam debug_key_a3_a_aI.operation_mode = "input";
defparam debug_key_a3_a_aI.output_async_reset = "none";
defparam debug_key_a3_a_aI.output_power_up = "low";
defparam debug_key_a3_a_aI.output_register_mode = "none";
defparam debug_key_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC9
cycloneii_io debug_switch_a0_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[0]));
// synopsys translate_off
defparam debug_switch_a0_a_aI.input_async_reset = "none";
defparam debug_switch_a0_a_aI.input_power_up = "low";
defparam debug_switch_a0_a_aI.input_register_mode = "none";
defparam debug_switch_a0_a_aI.input_sync_reset = "none";
defparam debug_switch_a0_a_aI.oe_async_reset = "none";
defparam debug_switch_a0_a_aI.oe_power_up = "low";
defparam debug_switch_a0_a_aI.oe_register_mode = "none";
defparam debug_switch_a0_a_aI.oe_sync_reset = "none";
defparam debug_switch_a0_a_aI.operation_mode = "input";
defparam debug_switch_a0_a_aI.output_async_reset = "none";
defparam debug_switch_a0_a_aI.output_power_up = "low";
defparam debug_switch_a0_a_aI.output_register_mode = "none";
defparam debug_switch_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A19
cycloneii_io debug_switch_a1_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[1]));
// synopsys translate_off
defparam debug_switch_a1_a_aI.input_async_reset = "none";
defparam debug_switch_a1_a_aI.input_power_up = "low";
defparam debug_switch_a1_a_aI.input_register_mode = "none";
defparam debug_switch_a1_a_aI.input_sync_reset = "none";
defparam debug_switch_a1_a_aI.oe_async_reset = "none";
defparam debug_switch_a1_a_aI.oe_power_up = "low";
defparam debug_switch_a1_a_aI.oe_register_mode = "none";
defparam debug_switch_a1_a_aI.oe_sync_reset = "none";
defparam debug_switch_a1_a_aI.operation_mode = "input";
defparam debug_switch_a1_a_aI.output_async_reset = "none";
defparam debug_switch_a1_a_aI.output_power_up = "low";
defparam debug_switch_a1_a_aI.output_register_mode = "none";
defparam debug_switch_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K22
cycloneii_io debug_switch_a2_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[2]));
// synopsys translate_off
defparam debug_switch_a2_a_aI.input_async_reset = "none";
defparam debug_switch_a2_a_aI.input_power_up = "low";
defparam debug_switch_a2_a_aI.input_register_mode = "none";
defparam debug_switch_a2_a_aI.input_sync_reset = "none";
defparam debug_switch_a2_a_aI.oe_async_reset = "none";
defparam debug_switch_a2_a_aI.oe_power_up = "low";
defparam debug_switch_a2_a_aI.oe_register_mode = "none";
defparam debug_switch_a2_a_aI.oe_sync_reset = "none";
defparam debug_switch_a2_a_aI.operation_mode = "input";
defparam debug_switch_a2_a_aI.output_async_reset = "none";
defparam debug_switch_a2_a_aI.output_power_up = "low";
defparam debug_switch_a2_a_aI.output_register_mode = "none";
defparam debug_switch_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA26
cycloneii_io debug_switch_a3_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[3]));
// synopsys translate_off
defparam debug_switch_a3_a_aI.input_async_reset = "none";
defparam debug_switch_a3_a_aI.input_power_up = "low";
defparam debug_switch_a3_a_aI.input_register_mode = "none";
defparam debug_switch_a3_a_aI.input_sync_reset = "none";
defparam debug_switch_a3_a_aI.oe_async_reset = "none";
defparam debug_switch_a3_a_aI.oe_power_up = "low";
defparam debug_switch_a3_a_aI.oe_register_mode = "none";
defparam debug_switch_a3_a_aI.oe_sync_reset = "none";
defparam debug_switch_a3_a_aI.operation_mode = "input";
defparam debug_switch_a3_a_aI.output_async_reset = "none";
defparam debug_switch_a3_a_aI.output_power_up = "low";
defparam debug_switch_a3_a_aI.output_register_mode = "none";
defparam debug_switch_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_F16
cycloneii_io debug_switch_a4_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[4]));
// synopsys translate_off
defparam debug_switch_a4_a_aI.input_async_reset = "none";
defparam debug_switch_a4_a_aI.input_power_up = "low";
defparam debug_switch_a4_a_aI.input_register_mode = "none";
defparam debug_switch_a4_a_aI.input_sync_reset = "none";
defparam debug_switch_a4_a_aI.oe_async_reset = "none";
defparam debug_switch_a4_a_aI.oe_power_up = "low";
defparam debug_switch_a4_a_aI.oe_register_mode = "none";
defparam debug_switch_a4_a_aI.oe_sync_reset = "none";
defparam debug_switch_a4_a_aI.operation_mode = "input";
defparam debug_switch_a4_a_aI.output_async_reset = "none";
defparam debug_switch_a4_a_aI.output_power_up = "low";
defparam debug_switch_a4_a_aI.output_register_mode = "none";
defparam debug_switch_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B23
cycloneii_io debug_switch_a5_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[5]));
// synopsys translate_off
defparam debug_switch_a5_a_aI.input_async_reset = "none";
defparam debug_switch_a5_a_aI.input_power_up = "low";
defparam debug_switch_a5_a_aI.input_register_mode = "none";
defparam debug_switch_a5_a_aI.input_sync_reset = "none";
defparam debug_switch_a5_a_aI.oe_async_reset = "none";
defparam debug_switch_a5_a_aI.oe_power_up = "low";
defparam debug_switch_a5_a_aI.oe_register_mode = "none";
defparam debug_switch_a5_a_aI.oe_sync_reset = "none";
defparam debug_switch_a5_a_aI.operation_mode = "input";
defparam debug_switch_a5_a_aI.output_async_reset = "none";
defparam debug_switch_a5_a_aI.output_power_up = "low";
defparam debug_switch_a5_a_aI.output_register_mode = "none";
defparam debug_switch_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D6
cycloneii_io debug_switch_a6_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[6]));
// synopsys translate_off
defparam debug_switch_a6_a_aI.input_async_reset = "none";
defparam debug_switch_a6_a_aI.input_power_up = "low";
defparam debug_switch_a6_a_aI.input_register_mode = "none";
defparam debug_switch_a6_a_aI.input_sync_reset = "none";
defparam debug_switch_a6_a_aI.oe_async_reset = "none";
defparam debug_switch_a6_a_aI.oe_power_up = "low";
defparam debug_switch_a6_a_aI.oe_register_mode = "none";
defparam debug_switch_a6_a_aI.oe_sync_reset = "none";
defparam debug_switch_a6_a_aI.operation_mode = "input";
defparam debug_switch_a6_a_aI.output_async_reset = "none";
defparam debug_switch_a6_a_aI.output_power_up = "low";
defparam debug_switch_a6_a_aI.output_register_mode = "none";
defparam debug_switch_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T19
cycloneii_io debug_switch_a7_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[7]));
// synopsys translate_off
defparam debug_switch_a7_a_aI.input_async_reset = "none";
defparam debug_switch_a7_a_aI.input_power_up = "low";
defparam debug_switch_a7_a_aI.input_register_mode = "none";
defparam debug_switch_a7_a_aI.input_sync_reset = "none";
defparam debug_switch_a7_a_aI.oe_async_reset = "none";
defparam debug_switch_a7_a_aI.oe_power_up = "low";
defparam debug_switch_a7_a_aI.oe_register_mode = "none";
defparam debug_switch_a7_a_aI.oe_sync_reset = "none";
defparam debug_switch_a7_a_aI.operation_mode = "input";
defparam debug_switch_a7_a_aI.output_async_reset = "none";
defparam debug_switch_a7_a_aI.output_power_up = "low";
defparam debug_switch_a7_a_aI.output_register_mode = "none";
defparam debug_switch_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF13
cycloneii_io debug_switch_a8_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[8]));
// synopsys translate_off
defparam debug_switch_a8_a_aI.input_async_reset = "none";
defparam debug_switch_a8_a_aI.input_power_up = "low";
defparam debug_switch_a8_a_aI.input_register_mode = "none";
defparam debug_switch_a8_a_aI.input_sync_reset = "none";
defparam debug_switch_a8_a_aI.oe_async_reset = "none";
defparam debug_switch_a8_a_aI.oe_power_up = "low";
defparam debug_switch_a8_a_aI.oe_register_mode = "none";
defparam debug_switch_a8_a_aI.oe_sync_reset = "none";
defparam debug_switch_a8_a_aI.operation_mode = "input";
defparam debug_switch_a8_a_aI.output_async_reset = "none";
defparam debug_switch_a8_a_aI.output_power_up = "low";
defparam debug_switch_a8_a_aI.output_register_mode = "none";
defparam debug_switch_a8_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_T17
cycloneii_io debug_switch_a9_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[9]));
// synopsys translate_off
defparam debug_switch_a9_a_aI.input_async_reset = "none";
defparam debug_switch_a9_a_aI.input_power_up = "low";
defparam debug_switch_a9_a_aI.input_register_mode = "none";
defparam debug_switch_a9_a_aI.input_sync_reset = "none";
defparam debug_switch_a9_a_aI.oe_async_reset = "none";
defparam debug_switch_a9_a_aI.oe_power_up = "low";
defparam debug_switch_a9_a_aI.oe_register_mode = "none";
defparam debug_switch_a9_a_aI.oe_sync_reset = "none";
defparam debug_switch_a9_a_aI.operation_mode = "input";
defparam debug_switch_a9_a_aI.output_async_reset = "none";
defparam debug_switch_a9_a_aI.output_power_up = "low";
defparam debug_switch_a9_a_aI.output_register_mode = "none";
defparam debug_switch_a9_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA16
cycloneii_io debug_switch_a10_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[10]));
// synopsys translate_off
defparam debug_switch_a10_a_aI.input_async_reset = "none";
defparam debug_switch_a10_a_aI.input_power_up = "low";
defparam debug_switch_a10_a_aI.input_register_mode = "none";
defparam debug_switch_a10_a_aI.input_sync_reset = "none";
defparam debug_switch_a10_a_aI.oe_async_reset = "none";
defparam debug_switch_a10_a_aI.oe_power_up = "low";
defparam debug_switch_a10_a_aI.oe_register_mode = "none";
defparam debug_switch_a10_a_aI.oe_sync_reset = "none";
defparam debug_switch_a10_a_aI.operation_mode = "input";
defparam debug_switch_a10_a_aI.output_async_reset = "none";
defparam debug_switch_a10_a_aI.output_power_up = "low";
defparam debug_switch_a10_a_aI.output_register_mode = "none";
defparam debug_switch_a10_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K6
cycloneii_io debug_switch_a11_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[11]));
// synopsys translate_off
defparam debug_switch_a11_a_aI.input_async_reset = "none";
defparam debug_switch_a11_a_aI.input_power_up = "low";
defparam debug_switch_a11_a_aI.input_register_mode = "none";
defparam debug_switch_a11_a_aI.input_sync_reset = "none";
defparam debug_switch_a11_a_aI.oe_async_reset = "none";
defparam debug_switch_a11_a_aI.oe_power_up = "low";
defparam debug_switch_a11_a_aI.oe_register_mode = "none";
defparam debug_switch_a11_a_aI.oe_sync_reset = "none";
defparam debug_switch_a11_a_aI.operation_mode = "input";
defparam debug_switch_a11_a_aI.output_async_reset = "none";
defparam debug_switch_a11_a_aI.output_power_up = "low";
defparam debug_switch_a11_a_aI.output_register_mode = "none";
defparam debug_switch_a11_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B19
cycloneii_io debug_switch_a12_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[12]));
// synopsys translate_off
defparam debug_switch_a12_a_aI.input_async_reset = "none";
defparam debug_switch_a12_a_aI.input_power_up = "low";
defparam debug_switch_a12_a_aI.input_register_mode = "none";
defparam debug_switch_a12_a_aI.input_sync_reset = "none";
defparam debug_switch_a12_a_aI.oe_async_reset = "none";
defparam debug_switch_a12_a_aI.oe_power_up = "low";
defparam debug_switch_a12_a_aI.oe_register_mode = "none";
defparam debug_switch_a12_a_aI.oe_sync_reset = "none";
defparam debug_switch_a12_a_aI.operation_mode = "input";
defparam debug_switch_a12_a_aI.output_async_reset = "none";
defparam debug_switch_a12_a_aI.output_power_up = "low";
defparam debug_switch_a12_a_aI.output_register_mode = "none";
defparam debug_switch_a12_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC14
cycloneii_io debug_switch_a13_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[13]));
// synopsys translate_off
defparam debug_switch_a13_a_aI.input_async_reset = "none";
defparam debug_switch_a13_a_aI.input_power_up = "low";
defparam debug_switch_a13_a_aI.input_register_mode = "none";
defparam debug_switch_a13_a_aI.input_sync_reset = "none";
defparam debug_switch_a13_a_aI.oe_async_reset = "none";
defparam debug_switch_a13_a_aI.oe_power_up = "low";
defparam debug_switch_a13_a_aI.oe_register_mode = "none";
defparam debug_switch_a13_a_aI.oe_sync_reset = "none";
defparam debug_switch_a13_a_aI.operation_mode = "input";
defparam debug_switch_a13_a_aI.output_async_reset = "none";
defparam debug_switch_a13_a_aI.output_power_up = "low";
defparam debug_switch_a13_a_aI.output_register_mode = "none";
defparam debug_switch_a13_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AA20
cycloneii_io debug_switch_a14_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[14]));
// synopsys translate_off
defparam debug_switch_a14_a_aI.input_async_reset = "none";
defparam debug_switch_a14_a_aI.input_power_up = "low";
defparam debug_switch_a14_a_aI.input_register_mode = "none";
defparam debug_switch_a14_a_aI.input_sync_reset = "none";
defparam debug_switch_a14_a_aI.oe_async_reset = "none";
defparam debug_switch_a14_a_aI.oe_power_up = "low";
defparam debug_switch_a14_a_aI.oe_register_mode = "none";
defparam debug_switch_a14_a_aI.oe_sync_reset = "none";
defparam debug_switch_a14_a_aI.operation_mode = "input";
defparam debug_switch_a14_a_aI.output_async_reset = "none";
defparam debug_switch_a14_a_aI.output_power_up = "low";
defparam debug_switch_a14_a_aI.output_register_mode = "none";
defparam debug_switch_a14_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A18
cycloneii_io debug_switch_a15_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[15]));
// synopsys translate_off
defparam debug_switch_a15_a_aI.input_async_reset = "none";
defparam debug_switch_a15_a_aI.input_power_up = "low";
defparam debug_switch_a15_a_aI.input_register_mode = "none";
defparam debug_switch_a15_a_aI.input_sync_reset = "none";
defparam debug_switch_a15_a_aI.oe_async_reset = "none";
defparam debug_switch_a15_a_aI.oe_power_up = "low";
defparam debug_switch_a15_a_aI.oe_register_mode = "none";
defparam debug_switch_a15_a_aI.oe_sync_reset = "none";
defparam debug_switch_a15_a_aI.operation_mode = "input";
defparam debug_switch_a15_a_aI.output_async_reset = "none";
defparam debug_switch_a15_a_aI.output_power_up = "low";
defparam debug_switch_a15_a_aI.output_register_mode = "none";
defparam debug_switch_a15_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B6
cycloneii_io debug_switch_a16_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[16]));
// synopsys translate_off
defparam debug_switch_a16_a_aI.input_async_reset = "none";
defparam debug_switch_a16_a_aI.input_power_up = "low";
defparam debug_switch_a16_a_aI.input_register_mode = "none";
defparam debug_switch_a16_a_aI.input_sync_reset = "none";
defparam debug_switch_a16_a_aI.oe_async_reset = "none";
defparam debug_switch_a16_a_aI.oe_power_up = "low";
defparam debug_switch_a16_a_aI.oe_register_mode = "none";
defparam debug_switch_a16_a_aI.oe_sync_reset = "none";
defparam debug_switch_a16_a_aI.operation_mode = "input";
defparam debug_switch_a16_a_aI.output_async_reset = "none";
defparam debug_switch_a16_a_aI.output_power_up = "low";
defparam debug_switch_a16_a_aI.output_register_mode = "none";
defparam debug_switch_a16_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_N24
cycloneii_io debug_switch_a17_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[17]));
// synopsys translate_off
defparam debug_switch_a17_a_aI.input_async_reset = "none";
defparam debug_switch_a17_a_aI.input_power_up = "low";
defparam debug_switch_a17_a_aI.input_register_mode = "none";
defparam debug_switch_a17_a_aI.input_sync_reset = "none";
defparam debug_switch_a17_a_aI.oe_async_reset = "none";
defparam debug_switch_a17_a_aI.oe_power_up = "low";
defparam debug_switch_a17_a_aI.oe_register_mode = "none";
defparam debug_switch_a17_a_aI.oe_sync_reset = "none";
defparam debug_switch_a17_a_aI.operation_mode = "input";
defparam debug_switch_a17_a_aI.output_async_reset = "none";
defparam debug_switch_a17_a_aI.output_power_up = "low";
defparam debug_switch_a17_a_aI.output_register_mode = "none";
defparam debug_switch_a17_a_aI.output_sync_reset = "none";
// synopsys translate_on

endmodule
