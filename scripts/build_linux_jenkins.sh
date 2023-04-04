#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

LANGUAGE=$1
find .
case $LANGUAGE in
c++)
  cd oneAPI-samples
  find .
  cd oneAPI-samples
  cd DirectProgramming
  cd C++
  cd CompilerInfrastructure
  cd Intrinsics
  #cd oneAPI-samples/DirectProgramming/C++/CompilerInfrastructure/Intrinsics
  make && make run && make clean && make CC='icx -msse3' && make run
  ;;
fortran)
  cd oneAPI-samples/DirectProgramming/Fortran/CombinationalLogic/openmp-primes
  make && make run && make clean && make FC=ifx && make run
  ;;
dpc++)
  cd oneAPI-samples/DirectProgramming/C++SYCL/DenseLinearAlgebra/vector-add
  make all && make run
  ;;
esac
