#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

URL=$1
COMPONENTS=$2

curl --output webimage.sh --url "$URL" --retry 5 --retry-delay 5
chmod +x webimage.sh
./webimage.sh -x -f webimage_extracted --log extract.log
WEBIMAGE_NAME=$(ls -1 webimage_extracted/)
if [ -z "$COMPONENTS" ]; then
  webimage_extracted/"$WEBIMAGE_NAME"/bootstrapper -s --action install --eula=accept --continue-with-optional-error=yes --log-dir=.
else
  webimage_extracted/"$WEBIMAGE_NAME"/bootstrapper -s --action install --components="$COMPONENTS" --eula=accept --continue-with-optional-error=yes --log-dir=.
fi
rm -rf webimage.sh
