:::: Start Copy :::::
@echo off
set dir=%cd%
for /F "tokens=*" %%a in ('type Serverlist.txt') do (   
    echo Copying to server :  %%a   
    del /f "%%a\logs\Log.log"
    echo.
    echo.
    )
:::: End Copy ::::::
pause