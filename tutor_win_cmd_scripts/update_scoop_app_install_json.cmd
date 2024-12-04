@echo off
setlocal enabledelayedexpansion

rem Set the path to your Scoop apps directory
set "scoop_apps_dir=E:\Scoop\apps"

rem Loop through each app directory
for /d %%D in ("%scoop_apps_dir%\*") do (
    set "install_json=%%D\current\install.json"
    if exist "!install_json!" (
	rem Check if the bucket value is present
	findstr /c:"\"bucket\": \"" "!install_json!" >nul
	if !errorlevel! == 0 (
	    echo Updating bucket for %%~nD
	    rem Replace the bucket value with "spc"
	    powershell -Command "(Get-Content '!install_json!') -replace '\"bucket\": \"[^\"]*\"', '\"bucket\": \"spc\"' | Set-Content '!install_json!'"
	)
    )
)

echo Done.
endlocal

