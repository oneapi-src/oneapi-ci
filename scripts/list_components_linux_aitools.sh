#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

URL=$1

curl --output webimage.sh --url "$URL" --retry 5 --retry-delay 5
chmod +x webimage.sh
./webimage.sh -b -p webimage_extracted
installer_exit_code=$?
rm -rf webimage.sh
WEBIMAGE_NAME=$(ls -1 webimage_extracted/)
echo "$WEBIMAGE_NAME"
rm -rf webimage_extracted
exit $installer_exit_code
