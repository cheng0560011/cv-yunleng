###############################################################################
# Variables used for core-tb execute
# The following variable are passed down by ExternalRepos.mk of repo core-v-verif
###############################################################################

###############################################################################
# (From ExternalRepos.mk)
# Variables to determine the the command to clone external repositories.
# For each repo there are a set of variables:
#      *_REPO:   URL to the repository in GitHub.
#      *_BRANCH: Name of the branch you wish to clone;
#                Set to 'master' to pull the master branch.
#      *_HASH:   Value of the specific hash you wish to clone;
#                Set to 'head' to pull the head of the branch you want.
# THe CV32E40P repo also has a variable to clone a specific tag:
#      *_TAG:    Value of the specific tag you wish to clone;
#                Will override the HASH unless set to "none".

export CV_CORE_REPO=https://github.com/openhwgroup/cv32e40p
export CV_CORE_BRANCH=master
export CV_CORE_HASH=fcd5968
export CV_CORE_TAG=none

export RISCVDV_REPO=https://github.com/google/riscv-dv
export RISCVDV_BRANCH=master
export RISCVDV_HASH=0b625258549e733082c12e5dc749f05aefb07d5a

export EMBENCH_REPO=https://github.com/embench/embench-iot.git
export EMBENCH_BRANCH=master
export EMBENCH_HASH=6934ddd1ff445245ee032d4258fdeb9828b72af4

export COMPLIANCE_REPO=https://github.com/riscv/riscv-compliance
export COMPLIANCE_BRANCH=master
export COMPLIANCE_HASH=c21a2e86afa3f7d4292a2dd26b759f3f29cde497

export SVLIB_REPO=https://bitbucket.org/verilab/svlib/src/master/svlib
export SVLIB_BRANCH=master
export SVLIB_HASH=c25509a7e54a880fe8f58f3daa2f891d6ecf6428

###############################################################################

###############################################################################
# Variables for RISC-V toolchain
export CV_SW_MARCH=rv32imc
export CV_SW_CC=gcc
export CV_SW_FLAGS="" #not sure
export DPI_DASM_SPIKE_REPO="" #not sure
