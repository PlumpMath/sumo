@echo off
setlocal ENABLEDELAYEDEXPANSION
for /F %%I in ('dir /s /b .binpath') do (
    for /F %%J in (%%I) do robocopy %%J %%~dpI /MIR /XF .binpath /XF .gitignore
    if errorlevel 8 echo ERROR & exit /b -1
)
echo SUCCESS