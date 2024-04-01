#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

URL=$1

curl --output webimage.sh --url "$URL" --retry 5 --retry-delay 5
sudo rm -rf /usr/share/dotnet
sudo rm -rf /opt/ghc
sudo rm -rf "/usr/local/share/boost"
sudo rm -rf "$AGENT_TOOLSDIRECTORY"
chmod +x webimage.sh
sudo ./webimage.sh -b -p /intel/oneapi/intelpython
installer_exit_code=$?
exit $installer_exit_code
