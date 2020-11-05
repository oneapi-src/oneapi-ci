REM SPDX-FileCopyrightText: 2020 Intel Corporation
REM
REM SPDX-License-Identifier: MIT

curl.exe --output screenshot-cmd.exe --url https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/screenshot-cmd/screenshot-cmd.exe --retry 5 --retry-delay 5
screenshot-cmd.exe
