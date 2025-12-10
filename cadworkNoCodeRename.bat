if exist "C:\ProgramData\cadwork\CODE_SRV.TXT" goto NO_CODE
if exist "C:\ProgramData\cadwork\NO_CODE_SRV.TXT" goto CODE

:NO_CODE
rename "C:\ProgramData\cadwork\CODE_SRV.TXT" "NO_CODE_SRV.TXT" 
goto END

:CODE
rename "C:\ProgramData\cadwork\NO_CODE_SRV.TXT" "CODE_SRV.TXT"

:END

pause