#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

COMPONENTS=$(echo "$1" | sed "s/,/ /g")

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y build-essential pkg-config cmake ca-certificates gnupg git
apt-get install -y "$COMPONENTS"
