:::: Start Copy :::::
@echo off
set dir=%cd%
for /F "tokens=*" %%a in ('type ServerlistIP.txt') do (   
    echo Copying to server :  %%a
    start chrome "http://%%a:<port>"
    echo.
    echo.
    )
:::: End Copy ::::::
pause