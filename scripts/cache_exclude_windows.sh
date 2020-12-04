#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

ONEAPI_RELEASE=$1

rm -rf "C:\Program Files (x86)\Intel\oneAPI\compiler\'$ONEAPI_RELEASE'\windows\compiler\lib\ia32_win"
rm -rf "C:\Program Files (x86)\Intel\oneAPI\compiler\'$ONEAPI_RELEASE'\windows\bin\intel64_ia32"
rm -rf "C:\Program Files (x86)\Intel\oneAPI\compiler\'$ONEAPI_RELEASE'\windows\lib\emu"
rm -rf "C:\Program Files (x86)\Intel\oneAPI\compiler\'$ONEAPI_RELEASE'\windows\lib\oclfpga"
rm -rf "C:\Program Files (x86)\Intel\oneAPI\compiler\'$ONEAPI_RELEASE'\windows\lib\ocloc"
rm -rf "C:\Program Files (x86)\Intel\oneAPI\compiler\'$ONEAPI_RELEASE'\windows\lib\x86"
