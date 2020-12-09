#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

LANGUAGE=$1
ONEAPI_RELEASE=$2

git clone --depth 1 https://github.com/oneapi-src/oneAPI-samples.git

# shellcheck source=/dev/null
source /opt/intel/oneapi/compiler/"$ONEAPI_RELEASE"/env/vars.sh

case $LANGUAGE in
c++)
  icx src/c++/hello.cpp
  cd oneAPI-samples/DirectProgramming/C++/CompilerInfrastructure/Intrinsics
  make && make run
  ;;
fortran)
  ifx src/fortran/hello.f90
  cd oneAPI-samples/DirectProgramming/Fortran/CombinationalLogic/openmp-primes
  make && make run
  ;;
dpc++)
# shellcheck source=/dev/null
  source /opt/intel/oneapi/tbb/"$ONEAPI_RELEASE"/env/vars.sh
  cd oneAPI-samples/DirectProgramming/DPC++/DenseLinearAlgebra/vector-add
  make all && make run
  ;;
esac
