#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

SAMPLES_TAG=$1

git clone --depth 1 --branch "$SAMPLES_TAG" https://github.com/oneapi-src/oneAPI-samples.git

source /intel/oneapi/intelpython/bin/activate tensorflow
cd oneAPI-samples/AI-and-Analytics/Getting-Started-Samples/IntelTensorFlow_GettingStarted
python TensorFlow_HelloWorld.py
