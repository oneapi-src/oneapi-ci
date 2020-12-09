#!/bin/bash

# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

sudo dnf -y --disablerepo="*" --enablerepo="oneAPI" list available
