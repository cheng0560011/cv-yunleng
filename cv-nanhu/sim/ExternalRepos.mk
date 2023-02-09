###############################################################################
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
#

export SHELL = /bin/bash

CV_CORE_REPO   ?= https://github.com/cheng0560011/cv-nanhu
CV_CORE_BRANCH ?= nanhu
CV_CORE_HASH   ?= 6358fde
CV_CORE_TAG    ?= none
# nanhu is a test platform forked from cv32e40p (hash 4cb4ddd)

RISCVDV_REPO    ?= https://github.com/google/riscv-dv
RISCVDV_BRANCH  ?= master
RISCVDV_HASH    ?= 0b625258549e733082c12e5dc749f05aefb07d5a

EMBENCH_REPO    ?= https://github.com/embench/embench-iot.git
EMBENCH_BRANCH  ?= master
EMBENCH_HASH    ?= 6934ddd1ff445245ee032d4258fdeb9828b72af4

COMPLIANCE_REPO   ?= https://github.com/riscv/riscv-compliance
COMPLIANCE_BRANCH ?= master
# 2020-08-19
COMPLIANCE_HASH   ?= c21a2e86afa3f7d4292a2dd26b759f3f29cde497

# SVLIB
SVLIB_REPO       ?= https://bitbucket.org/verilab/svlib/src/master/svlib
SVLIB_BRANCH     ?= master
SVLIB_HASH       ?= c25509a7e54a880fe8f58f3daa2f891d6ecf6428
