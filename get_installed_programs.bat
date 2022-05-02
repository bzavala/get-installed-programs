@ECHO OFF
set start_path="C:\ProgramData\Microsoft\Windows\Start Menu\Programs\*"

FOR %%y IN (%start_path%) DO ECHO "%%~nxy", "%USERNAME%", "%COMPUTERNAME%" >> "data\chs-installed-applications.csv"

FOR /D %%s in (%start_path%) do echo "%%~nxs", "%USERNAME%", "%COMPUTERNAME%" >> "data\chs-installed-applications.csv"

echo. && echo. && echo Please wait about 30 seconds, I'm gathering a list of software installed on your computer... && echo. && echo. 

ping 127.0.0.1 -n 20 >nul

ECHO All done! 
ECHO Press any key to close this window.

pause >nul