# import shutil

#--------------------------------------------------------------

my_chdir("./uw_tmp")

# my_rm( ["LOG"] )
# 
# my_mv( "../LOG",  "LOG" )

xsys("quartus_sh -t uw-chip-synth-quartus.tcl kirsch")

xsys("quartus_sh -t /home/ece327/lib/pins-NULL.tcl kirsch")

# not using mif files (memory initialization)
# my_cp_nofail( "../*.mif", "." )

my_print("map... ")
xsys( "quartus_map kirsch --source kirsch_logic.edf --family=CycloneII")

my_print("fit... ")
xsys( "quartus_fit kirsch --effort=fast --part=EP2C35F672C7")

my_print("tan... ")
# xsys( "quartus_tan kirsch" )
xsys( "quartus_sta -t /home/ece327/skel/timing-quartus.tcl kirsch" )

my_print( "asm... ")
xsys( "quartus_asm kirsch" )

my_println( "eda..." )
xsys( "quartus_eda kirsch --simulation --tool=modelsim --format=vhdl")
xsys( "quartus_eda kirsch --simulation --tool=modelsim --format=verilog")

# my_mv( "LOG", "../LOG" )
my_chdir( ".." )

my_mv( "uw_tmp/simulation/modelsim/kirsch.vo"       , "uw_tmp/kirsch_chip.v" )
my_mv( "uw_tmp/simulation/modelsim/kirsch.vho"       , "uw_tmp/kirsch_chip.vhd" )
my_mv( "uw_tmp/simulation/modelsim/kirsch_vhd.sdo" , "uw_tmp/kirsch_chip.sdf" )
my_mv( "uw_tmp/kirsch.sof" , "kirsch.sof" )

my_cp( "uw_tmp/kirsch.map.rpt", "RPT/area_chip.rpt", error_level=1 )
my_cp( "uw_tmp/kirsch.timing.rpt", "RPT/timing_chip.rpt", error_level=1 )

#------------------------------------------------------------------------
# generate no_generics architecture

#--------------------------------------------------------------
# copy modelsim.ini to local directory

# xsys( "vmap -modelsimini /watform/pkg/modelsim/modeltech/modelsim.ini -c" )
xsys( "vmap -c" )

#--------------------------------------------------------------
# libraries

xsys( "vlib work-msim")

# currently used only by altera
xsys( "vlib altera_mf")
xsys( "vmap altera_mf /home/ece327/altera/vhdl_libs/altera_mf")

xsys( "vlib cycloneii")
xsys( "vmap cycloneii /home/ece327/altera/vhdl_libs/cycloneii")

#--------------------------------------------------------------
#

# get synthesized entity (std_logic vector and no generics)
xsys( "vlog -novopt -work work-msim uw_tmp/kirsch_logic.v")

# fix up _chip.vhd file
vgencomp_to_arch( "kirsch", "chip", [ "mem.vhd", "kirsch_synth_pkg.vhd", "kirsch.vhd" ] )
