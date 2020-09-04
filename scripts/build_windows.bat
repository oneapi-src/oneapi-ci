set LANGUAGE=%1
set VS_VER=%2

cd src
cd %LANGUAGE%

IF "%VS_VER%"=="2017_build_tools" (
"C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
)

IF "%VS_VER%"=="2019_build_tools" (
"C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvars64.bat"
)

"C:\Program Files (x86)\Intel\oneAPI\setvars.bat"
nmake /f Makefile.nmake"
