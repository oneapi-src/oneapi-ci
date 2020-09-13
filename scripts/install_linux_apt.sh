#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

COMPONENTS=$(echo $1 | sed "s/,/ /g")

export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get install -y wget build-essential pkg-config cmake ca-certificates gnupg git
wget https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2023.PUB
sudo apt-key add GPG-PUB-KEY-INTEL-SW-PRODUCTS-2023.PUB
echo "deb https://apt.repos.intel.com/oneapi all main" | sudo tee /etc/apt/sources.list.d/oneAPI.list
sudo apt-get update
sudo apt-get install -y $COMPONENTS
