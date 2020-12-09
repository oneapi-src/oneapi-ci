#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

LANGUAGE=$1
ONEAPI_RELEASE=$2

# shellcheck source=/dev/null
source /opt/intel/oneapi/compiler/"$ONEAPI_RELEASE"/env/vars.sh

case $LANGUAGE in
c++)
  icx src/c++/hello.cpp -lstdc++
  ./a.out
  ;;
fortran)
  ifort src/fortran/hello.f90
  ./a.out
  ;;
dpc++)
# shellcheck source=/dev/null
  source /opt/intel/oneapi/tbb/"$ONEAPI_RELEASE"/env/vars.sh
  cd oneAPI-samples/DirectProgramming/DPC++/DenseLinearAlgebra/vector-add
  make all && make run
  ;;
esac
