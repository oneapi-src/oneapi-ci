set URL=%1
set COMPONENTS=%2
set TIMEOUT=%3
if "%TIMEOUT%"=="" set TIMEOUT=300

curl.exe --output webimage.exe --url %URL%
start /wait webimage.exe -s -x -f webimage_extracted --log extract.log
type extract.log
start /b webimage_extracted\bootstrapper.exe -s --action install --components=%COMPONENTS% --eula=accept --continue-with-optional-error=yes -p=NEED_VS2017_INTEGRATION=0 -p=NEED_VS2019_INTEGRATION=0 --log-dir=.
timeout /t %TIMEOUT%
for /f usebackq %%F in (`dir /b bootstrapper*`) do type %%F
for /f usebackq %%F in (`dir /b installer*`) do type %%F
exit /b 1
