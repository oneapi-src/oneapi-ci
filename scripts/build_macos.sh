#!/bin/bash

LANGUAGE=$1

cd src/$LANGUAGE
source /opt/intel/oneapi/setvars.sh
make -f Makefile.macos
