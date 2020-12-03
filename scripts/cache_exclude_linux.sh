#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

ONEAPI_RELEASE=$1

sudo rm -rf /opt/intel/oneapi/compiler/$ONEAPI_RELEASE/linux/compiler/lib/ia32_lin
sudo rm -rf /opt/intel/oneapi/compiler/$ONEAPI_RELEASE/linux/bin/ia32
sudo rm -rf /opt/intel/oneapi/compiler/$ONEAPI_RELEASE/linux/lib/emu
sudo rm -rf /opt/intel/oneapi/compiler/$ONEAPI_RELEASE/linux/lib/oclfpga
