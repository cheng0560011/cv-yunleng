#!/bin/bash

echo "Welcome to P200 core-tb run flow"
echo "user program as $1"

if [ -z $1 ]
then
	echo "Error: empty input prog"
	echo "Usag as ./run_coretb <prog folder>"
	exit 0
fi

# Variables used in the makefile
export USER_PROG_DIR=$1
export COMMON_MK=$CORE_V_VERIF/mk/Common.mk
export SIM_RESULT_DIR=$1_sim_result

# Build elf with input file
mkdir -p $SIM_RESULT_DIR
make $SIM_RESULT_DIR/$1.hex -f $COMMON_MK TEST_TEST_DIR=$USER_PROG_DIR SIM_TEST_PROGRAM_RESULTS=$SIM_RESULT_DIR SIM_BSP_RESULTS=$SIM_RESULT_DIR/bsp
