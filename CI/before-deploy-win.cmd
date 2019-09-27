REM robocopy .\build32\rundir\RelWithDebInfo .\build\ /E /XF .gitignore
REM robocopy .\build64\rundir\RelWithDebInfo .\build\ /E /XC /XN /XO /XF .gitignore
REM 7z a build.zip .\build\*

robocopy .\build64 .\build\ *.msi *.zip

REM do not fail on succesful robocopy return codes 1, 2, 4
set /A errlev="%ERRORLEVEL% & 24"
exit /B %errlev%