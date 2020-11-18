#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

LANGUAGE=$1

git clone --depth 1 https://github.com/oneapi-src/oneAPI-samples.git

source /opt/intel/oneapi/setvars.sh

case $LANGUAGE in
c++)
  cd oneAPI-samples/DirectProgramming/C++/CompilerInfrastructure/Intrinsics
  make && make run
  ;;
fortran)
  cd oneAPI-samples/DirectProgramming/Fortran/CombinationalLogic/openmp-primes
  make && make run
  ;;
esac
