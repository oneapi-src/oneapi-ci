#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

URL=$1

curl --output webimage.sh --url "$URL" --retry 5 --retry-delay 5
chmod +x webimage.sh
./webimage.sh -x -f webimage_extracted --log extract.log
WEBIMAGE_NAME=$(ls -1 webimage_extracted/)
webimage_extracted/"$WEBIMAGE_NAME"/bootstrapper --list-components
rm -rf webimage.sh
