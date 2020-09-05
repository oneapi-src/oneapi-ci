set LANGUAGE=%1
set VS_VER=%2

IF "%VS_VER%"=="2017_build_tools" (
@call "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
)

IF "%VS_VER%"=="2019_build_tools" (
@call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
)

@call "C:\Program Files (x86)\Intel\oneAPI\setvars.bat"

git clone https://github.com/oneapi-src/oneAPI-samples.git

if "%LANGUAGE%" == "c++" goto cpp
if "%LANGUAGE%" == "fortran" goto fortran
if "%LANGUAGE%" == "dpc++" goto dpcpp
goto exit

:cpp
cd oneAPI-samples\DirectProgramming\C++\CompilerInfrastructure\Intrinsics
icl -O2 -c -o intrin_dot_sample.o  src\intrin_dot_sample.cpp
icl -O2 intrin_dot_sample.o -o intrin_dot_sample.exe
icl -O2 -c -o intrin_double_sample.o  src\intrin_double_sample.cpp
icl -O2 intrin_double_sample.o -o intrin_double_sample.exe
icl -O2 -c -o intrin_ftz_sample.o  src\intrin_ftz_sample.cpp
icl -O2 intrin_ftz_sample.o -o intrin_ftz_sample.exe
intrin_dot_sample.exe
intrin_double_sample.exe
intrin_ftz_sample.exe
goto exit

:fortran
cd oneAPI-samples\DirectProgramming\Fortran\CombinationalLogic\openmp-primes
ifort -O2 -c -fpp -qopenmp -o openmp_sample.o  src/openmp_sample.f90
ifort -O2 -fpp -qopenmp openmp_sample.o -o openmp_sample.exe
openmp_sample.exe
goto exit

:dpcpp
cd oneAPI-samples\DirectProgramming\DPC++\DenseLinearAlgebra\vector-add
nmake -f Makefile.win
nmake -f Makefile.win run
goto exit

:exit
