echo off
chcp 65001 >nul
title Prank Tool - by Kehlchen

call :banner



:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo 1) Windows Defender
echo 2) System 32
echo 3) Win12
echo 4) Too old

set /p input=.%BS% ^>
if /I %input% EQU 1 powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Warning; $notify.Visible = $true; $notify.ShowBalloonTip(0, 'Windows Defender', '8 Trojans have been found', [System.Windows.Forms.ToolTipIcon]::None)}"
if /I %input% EQU 2 powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Deleting System32', 'Windows', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
if /I %input% EQU 3 powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Upgrading from Windows 11 to Windows 12', 'Windows', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
if /I %input% EQU 4 goto :too_old

cls
goto :menu

:too_old                                                                      
powershell -Command "& {Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::InputBox('Enter your age:', 'Verification')}"
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('The age you entered does not match your provided age. Your device will be permanently locked.', 'Verification', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"

cls
goto :menu


:banner
echo.
echo.
echo 			██████╗ ██████╗  █████╗ ███╗   ██╗██╗  ██╗    ████████╗ ██████╗  ██████╗ ██╗     
echo 			██╔══██╗██╔══██╗██╔══██╗████╗  ██║██║ ██╔╝    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo 			██████╔╝██████╔╝███████║██╔██╗ ██║█████╔╝        ██║   ██║   ██║██║   ██║██║     
echo 			██╔═══╝ ██╔══██╗██╔══██║██║╚██╗██║██╔═██╗        ██║   ██║   ██║██║   ██║██║     
echo 			██║     ██║  ██║██║  ██║██║ ╚████║██║  ██╗       ██║   ╚██████╔╝╚██████╔╝███████
echo 			╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo.          


