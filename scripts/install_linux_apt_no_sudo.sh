#!/bin/bash

COMPONENTS=$(echo $1 | sed "s/,/ /g")

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y wget build-essential pkg-config cmake ca-certificates gnupg
wget https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2023.PUB
apt-key add GPG-PUB-KEY-INTEL-SW-PRODUCTS-2023.PUB
echo "deb https://apt.repos.intel.com/oneapi all main" | sudo tee /etc/apt/sources.list.d/oneAPI.list
apt-get update
apt-get install -y $COMPONENTS
