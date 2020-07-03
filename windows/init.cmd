@echo off

:: ssh shortcuts
:: example of syntax of using ssh profiles: doskey afs=ssh AFS

:: Python venv aliases
doskey venv=python -m venv $*
doskey vact=.\$1\Scripts\activate

:: Useful commands
doskey home=cd %USERPROFILE%
doskey clear=cls
doskey gl=git log --all --decorate --oneline --graph $*
doskey file=explorer $1
doskey ls=ls --color $*

:: Get latest Spotlight images
doskey spotlight=powershell.exe -command "& 'C:\Program Standalones\spotlight.ps1'"

:: Editing these aliases
doskey alias=notepad %USERPROFILE%\init.cmd &
