@echo off
:: Launch MSYS2 UCRT64 environment with Fish shell

:: Check common MSYS2 installation paths
set "MSYS2_PATH=E:/msys64"
if not exist "%MSYS2_PATH%/msys2_shell.cmd" (
    set "MSYS2_PATH=C:/msys64"
)

if not exist "%MSYS2_PATH%/msys2_shell.cmd" (
    echo Error: MSYS2 not found in common locations
    echo Please install MSYS2 from https://www.msys2.org/
    echo Expected locations:
    echo - E:/msys64
    echo - C:/msys64
    pause
    exit /b 1
)

"%MSYS2_PATH%/msys2_shell.cmd" -defterm -here -no-start -ucrt64 -shell fish
