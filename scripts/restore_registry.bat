REM SPDX-FileCopyrightText: 2022 Intel Corporation
REM
REM SPDX-License-Identifier: MIT

set COMPILER_VERSION=%1

reg add HKLM\Software\Khronos\OpenCL\Vendors /v "C:\Program Files (x86)\Intel\oneAPI\compiler\%COMPILER_VERSION%\windows\lib\x64\intelocl64.dll" /t REG_DWORD /d 0 /f
type "C:\Program Files (x86)\Intel\oneAPI\compiler\%COMPILER_VERSION%\windows\lib\x64\cl.cfg"
type "C:\Program Files (x86)\Intel\oneAPI\compiler\%COMPILER_VERSION%\windows\lib\x64\cl.fpga_emu.cfg"