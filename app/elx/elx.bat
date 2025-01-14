@echo off

if "%1" == "install" (
    PowerShell -NoProfile -ExecutionPolicy Bypass -File "C:\Windows\System32\ELW\install.ps1"
) else if "%1" == "i" (
    PowerShell -NoProfile -ExecutionPolicy Bypass -File "C:\Windows\System32\ELW\install.ps1"
) else if "%1" == "-v" (
    PowerShell -NoProfile -ExecutionPolicy Bypass -File "C:\Windows\System32\ELW\version.ps1"
) else if "%1" == "--version" (
    PowerShell -NoProfile -ExecutionPolicy Bypass -File "C:\Windows\System32\ELW\version.ps1"
) else if "%1" == "--help" (
    PowerShell -NoProfile -ExecutionPolicy Bypass -File "C:\Windows\System32\ELW\help.ps1"
) else if "%1" == "setup" (
    PowerShell -NoProfile -ExecutionPolicy Bypass -File "C:\Windows\System32\ELW\setup.ps1"
) else if "%1" == "--delete" (
    PowerShell -NoProfile -ExecutionPolicy Bypass -File "C:\Windows\System32\ELW\delete.ps1"
) else (
    PowerShell -NoProfile -ExecutionPolicy Bypass -File "C:\Windows\System32\ELW\error.ps1"
)
