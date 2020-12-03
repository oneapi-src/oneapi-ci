#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

ONEAPI_RELEASE=$1

rm -rf /opt/intel/oneapi/compiler/$ONEAPI_RELEASE/linux/compiler/lib/ia32_lin
rm -rf /opt/intel/oneapi/compiler/$ONEAPI_RELEASE/linux/bin/ia32
rm -rf /opt/intel/oneapi/compiler/$ONEAPI_RELEASE/linux/lib/emu
rm -rf /opt/intel/oneapi/compiler/$ONEAPI_RELEASE/linux/lib/oclfpga
