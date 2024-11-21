@echo off
:: Launch MSYS2 with user-selected environment and shell
setlocal EnableDelayedExpansion

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

:choose_env
cls
echo Choose MSYS2 Environment:
echo [1] UCRT64 (Default)
echo [2] CLANG64
choice /c 12 /n /m "Select environment (1-2): "
set ENV_CHOICE=%errorlevel%
if %ENV_CHOICE%==1 (
    set "ENV_TYPE=ucrt64"
) else (
    set "ENV_TYPE=clang64"
)

:choose_shell
cls
echo.
echo Current Environment: %ENV_TYPE%
echo.
echo Choose Shell:
echo [1] Bash (Default)
echo [2] Fish
echo [3] Zsh
echo [4] Change Environment
echo [5] Exit
choice /c 12345 /n /m "Select shell (1-5): "
set SHELL_CHOICE=%errorlevel%

if %SHELL_CHOICE%==1 (
    set "SHELL_TYPE=bash"
) else if %SHELL_CHOICE%==2 (
    set "SHELL_TYPE=fish"
) else if %SHELL_CHOICE%==3 (
    set "SHELL_TYPE=zsh"
) else if %SHELL_CHOICE%==4 (
    goto choose_env
) else (
    exit /b 0
)

:: Check if selected shell exists
if not exist "%MSYS2_PATH%/usr/bin/%SHELL_TYPE%.exe" (
    echo.
    echo Warning: %SHELL_TYPE% is not installed!
    echo To install, run these commands in MSYS2:
    echo    pacman -Syu
    if "%SHELL_TYPE%"=="fish" echo    pacman -S fish
    if "%SHELL_TYPE%"=="zsh" echo    pacman -S zsh
    echo.
    pause
    goto choose_shell
)

:: Launch MSYS2 with selected options
"%MSYS2_PATH%/msys2_shell.cmd" -defterm -here -no-start -%ENV_TYPE% -shell %SHELL_TYPE%
