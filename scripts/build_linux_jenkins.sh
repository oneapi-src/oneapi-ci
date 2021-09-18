#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

LANGUAGE=$1

case $LANGUAGE in
c++)
  cd ../oneAPI-samples/DirectProgramming/C++/CompilerInfrastructure/Intrinsics
  make && make run && make clean && make CC='icx -msse3' && make run
  ;;
fortran)
  cd oneAPI-samples/DirectProgramming/Fortran/CombinationalLogic/openmp-primes
  make && make run && make clean && make FC=ifx && make run
  ;;
dpc++)
  cd oneAPI-samples/DirectProgramming/DPC++/DenseLinearAlgebra/vector-add
  make all && make run
  ;;
esac
