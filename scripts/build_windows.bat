REM SPDX-FileCopyrightText: 2020 Intel Corporation
REM
REM SPDX-License-Identifier: MIT

set LANGUAGE=%1
set VS_VER=%2

IF "%VS_VER%"=="2017_build_tools" (
@call "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
)

IF "%VS_VER%"=="2019_build_tools" (
@call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
)

@call "C:\Program Files (x86)\Intel\oneAPI\compiler\2021.1-beta10\env\vars.bat"

git clone --depth 1 https://github.com/oneapi-src/oneAPI-samples.git
dir "C:\Program Files (x86)\Intel\oneAPI\compiler\2021.1-beta10\windows\lib"

if "%LANGUAGE%" == "c++" goto cpp
if "%LANGUAGE%" == "fortran" goto fortran
if "%LANGUAGE%" == "dpc++" goto dpcpp
goto exit

:cpp
cd oneAPI-samples\DirectProgramming\C++\CompilerInfrastructure\Intrinsics
icl -O2 src\intrin_dot_sample.cpp
icl -O2 src\intrin_double_sample.cpp
icl -O2 src\intrin_ftz_sample.cpp
intrin_dot_sample.exe
intrin_double_sample.exe
intrin_ftz_sample.exe
set RESULT=%ERRORLEVEL%
goto exit

:fortran
cd oneAPI-samples\DirectProgramming\Fortran\CombinationalLogic\openmp-primes
ifort -O2 -fpp -qopenmp src\openmp_sample.f90
openmp_sample.exe
set RESULT=%ERRORLEVEL%
goto exit

:dpcpp
@call "C:\Program Files (x86)\Intel\oneAPI\tbb\2021.1-beta10\env\vars.bat"
cd oneAPI-samples\DirectProgramming\DPC++\DenseLinearAlgebra\vector-add
nmake -f Makefile.win
nmake -f Makefile.win run
set RESULT=%ERRORLEVEL%
goto exit

:exit
exit /b %RESULT%
