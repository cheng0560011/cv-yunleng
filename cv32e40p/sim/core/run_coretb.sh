#!/bin/bash

while getopts "hp:cs:?" opt; do
	case $opt in
		h)
			echo "usage of P200 core-tb execute and simulation script:"
			echo "-h help"
			echo "-p user program (dir)"
			echo "-c core/platform name"
			echo "-s simulation tool"
			;;
		p)
			echo "user program dir: $OPTARG"
			USER_PROG_DIR=$OPTARG
			;;
		s)
			echo "use simulation machine as: $OPTARG"
			SIMULATION_TOOL=$OPTARG
			;;
		?)
			echo "usage: run_coretb.sh -h"
			;;
	esac
done

if [ -z $USER_PROG_DIR ]
then
	echo "Error: must input user program dir"
	echo "Usag as ./run_coretb -p <user program dir>"
	exit 0
fi

if [ "$SIMULATION_TOOL" !=  "verilator" ] && [ "$SIMULATION_TOOL" != "vcs" ]
then
	echo "Error: do not support simulation tool as $SIMULATION_TOOL"
	exit 0
fi

echo "==information=="
echo "user program dir: $USER_PROG_DIR"
echo "core/platform: cv32e40p"
echo "simulation tool: $SIMULATION_TOOL"
echo "execute after build: yes"
echo "==information=="

# Variables used in the makefile
export COMMON_MK=$CORE_V_VERIF/mk/Common.mk
export SIM_RESULT_DIR=${USER_PROG_DIR}_sim_result
export VER_OBJ_DIR=${SIM_RESULT_DIR}/cobj_dir

# Build core-tb
mkdir -p $SIM_RESULT_DIR
mkdir -p $VERI_OBJ_DIR

# Build testbench
#case $SIMULATION_TOOL in
#	verilator)
#		make testbench_verilator SIM_RESULTS=$SIM_RESULT_DIR SIM_TEST_RESULTS=$SIM_RESULT_DIR VERI_OBJ_DIR=$VERI_OBJ_DIR 
#	;;
#esac

# Build elf with input file
make $SIM_RESULT_DIR/$USER_PROG_DIR.hex -f $COMMON_MK TEST_TEST_DIR=$USER_PROG_DIR SIM_TEST_PROGRAM_RESULTS=$SIM_RESULT_DIR SIM_BSP_RESULTS=$SIM_RESULT_DIR/bsp

# Simulation
#case $SIMULATION_TOOL in
#	verilator)
#		./$SIM_RESULT_DIR/verilator_executable $VERI_FLAGS "+firmware=$SIM_RESULT_DIR/$USER_PROG_DIR.hex" | tee $SIM_RESULT_DIR/${USER_PROG_DIR}_sim.log
#	;;
#esac
