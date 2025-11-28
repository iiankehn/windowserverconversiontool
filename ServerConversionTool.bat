@echo ServerConvertTool 1.1 (20251128)
@echo This tool is used to convert an Evaluation Copy of Windows Server. More information about the command and its process can be found on Microsoft's website: https://learn.microsoft.com/en-us/windows-server/get-started/upgrade-conversion-options
pause
clear
@echo off
CHOICE /C YN /M "Did you edit the file to include a product key  (Y/N)?"
IF %ERRORLEVEL% EQU 1 (
    echo === Converting Windows Eval to Retail ===
    DISM /Online /Set-Edition:ServerStandard /ProductKey:XXXXX-XXXXX-XXXXX-XXXXX-XXXXX /AcceptEula
) ELSE (
    echo Exiting program. Please modify this file to include a product key and then restart.
    pause
    exit
)
@echo on
@echo That's it! Just reboot and you're all set!
pause
exit
