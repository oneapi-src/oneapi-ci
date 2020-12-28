#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

FILENAME=$1

sudo dnf -y --disablerepo="*" --enablerepo="oneAPI" list available | sudo tee "$FILENAME"
sed -i -e 1,3d "$FILENAME"
