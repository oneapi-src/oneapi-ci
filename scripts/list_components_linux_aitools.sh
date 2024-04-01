#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

URL=$1
FILENAME=$2

curl --output webimage.sh --url "$URL" --retry 5 --retry-delay 5
chmod +x webimage.sh
./webimage.sh -b -p webimage_extracted
rm -rf webimage.sh
source "$HOME"/work/oneapi-ci/oneapi-ci/webimage_extracted/bin/activate base
installer_exit_code=$?
conda env list > "$FILENAME"
cat "$FILENAME"
sudo rm -rf webimage_extracted
exit $installer_exit_code
