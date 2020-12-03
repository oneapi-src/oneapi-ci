#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

LANGUAGE=$1
RELEASE=$2

git clone --depth 1 https://github.com/oneapi-src/oneAPI-samples.git

# shellcheck source=/dev/null
source /opt/intel/oneapi/compiler/"$RELEASE"/env/vars.sh

case $LANGUAGE in
c++)
  cd oneAPI-samples/DirectProgramming/C++/CompilerInfrastructure/Intrinsics
  make && make run
  ;;
fortran)
  cd oneAPI-samples/DirectProgramming/Fortran/CombinationalLogic/openmp-primes
  make && make run
  ;;
dpc++)
# shellcheck source=/dev/null
  source /opt/intel/oneapi/tbb/"$RELEASE"/env/vars.sh
  cd oneAPI-samples/DirectProgramming/DPC++/DenseLinearAlgebra/vector-add
  make all && make run
  ;;
esac
