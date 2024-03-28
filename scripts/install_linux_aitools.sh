#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

URL=$1

curl --output webimage.sh --url "$URL" --retry 5 --retry-delay 5
chmod +x webimage.sh
sudo ./webimage.sh -b -p /intel/oneapi/intelpython
installer_exit_code=$?
exit $installer_exit_code
