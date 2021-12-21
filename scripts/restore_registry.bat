REM SPDX-FileCopyrightText: 2021 Intel Corporation
REM
REM SPDX-License-Identifier: MIT

reg add HKLM\Software\Khronos\OpenCL\Vendors /v "C:\Program Files (x86)\Intel\oneAPI\compiler\2022.0.0\windows\lib\x64\intelocl64.dll" /t REG_DWORD /d 0 /f
