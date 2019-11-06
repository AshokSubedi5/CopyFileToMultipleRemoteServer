:::: Start Copy :::::
@echo off
set dir=%cd%
for /F "tokens=*" %%a in ('type Serverlist.txt') do (   
    echo Copying to server :  %%a
    xcopy "%cd%\App_offline.htm" "%%a" /c /f /g /y /r
    xcopy "%cd%\Source\*.*" "%%a" /e /c /f /h /g /y /r
    del /f "%%a\App_offline.htm"
    echo.
    echo.
    )
:::: End Copy ::::::
pause