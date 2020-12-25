#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

LANGUAGE=$1

git clone --depth 1 https://github.com/oneapi-src/oneAPI-samples.git

#shellcheck disable=SC2010
LATEST_VERSION=$(ls -1 /opt/intel/oneapi/compiler/ | grep -v latest | sort | tail -1)
# shellcheck source=/dev/null
source /opt/intel/oneapi/compiler/"$LATEST_VERSION"/env/vars.sh

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
#shellcheck disable=SC2010
  LATEST_VERSION=$(ls -1 /opt/intel/oneapi/tbb/ | grep -v latest | sort | tail -1)
# shellcheck source=/dev/null
  source /opt/intel/oneapi/tbb/"$LATEST_VERSION"/env/vars.sh
  cd oneAPI-samples/DirectProgramming/DPC++/DenseLinearAlgebra/vector-add
  make all && make run
  ;;
esac
