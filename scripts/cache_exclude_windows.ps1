# SPDX-FileCopyrightText: 2020 Intel Corporation
#
# SPDX-License-Identifier: MIT

Remove-Item "C:\Program Files (x86)\Intel\oneAPI\compiler\2021.1-beta10\windows\compiler\lib\ia32_win" -Force  -Recurse -ErrorAction SilentlyContinue
Remove-Item "C:\Program Files (x86)\Intel\oneAPI\compiler\2021.1-beta10\windows\bin\intel64_ia32" -Force  -Recurse -ErrorAction SilentlyContinue
Remove-Item "C:\Program Files (x86)\Intel\oneAPI\compiler\2021.1-beta10\windows\lib\emu" -Force  -Recurse -ErrorAction SilentlyContinue
Remove-Item "C:\Program Files (x86)\Intel\oneAPI\compiler\2021.1-beta10\windows\lib\oclfpga" -Force  -Recurse -ErrorAction SilentlyContinue
Remove-Item "C:\Program Files (x86)\Intel\oneAPI\compiler\2021.1-beta10\windows\lib\ocloc" -Force  -Recurse -ErrorAction SilentlyContinue
Remove-Item "C:\Program Files (x86)\Intel\oneAPI\compiler\2021.1-beta10\windows\lib\x86" -Force  -Recurse -ErrorAction SilentlyContinue

exit 0
