# Windows-Scripts
Windows Scripts is my all in one solution to setting up and maintaining a Windows installation. 

This script can 
- Update most existing programs on a computer
- Install and display winfetch 
- Install GPU drivers
- Activate Windows using the massgrave script https://github.com/massgravel/Microsoft-Activation-Scripts
- Tweak Windows for privacy and performance using a modified version of the Chris Titus Tech Windows Toolbox 
    - Modified version https://github.com/Jacob-Joestar/winutilJT
    - Original version https://github.com/ChrisTitusTech/winutil
- Install various applications using winget
- Install WSL (Windows Subsystem For Linux)

This script currently just installs the applications that I want. If you want different applications feel free to fork it and add the applications you want.
# Versions
There are several different versions of this script that each have there own purpose
- WinFull
    - installs and does everything
- WinGaming
    - installs and sets up an environment purely for gaming
- WinDev
    - installs and sets up an environment purely for dev work
- WinRefresh
    - simply refresh an already setup Windows machine 
    - Use this version if you have already ran one of scripts and your Windows has updated as Windows updates tend to change setting without notifying the user.
# Installation
These scripts can be ran with a PowerShell command:

WinFull: 
```
irm https://raw.githubusercontent.com/Jacob-Joestar/Windows-Scripts/main/WinFull.ps1 | iex
```
Or you can download and run the Individual script file that you want.

