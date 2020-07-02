# Aneek's Dotfiles 🧰

This repo holds my dotfiles and other config files for both my primary Windows
machine and my WSL 2 setup (running Ubuntu 20.04).

Right now, this repo isn't automated at all - as of writing, I recently set up
a new machine, so these are all the settings I found myself needing to customize.
The process of setting up the new machine made me realize I needed to start 
intentionally tracking my config - both to simplify fresh setups, and to make sure
when I made config changes to the tracked repo, they were purposeful. Therefore,
this repo will remain mostly manual (copy-pasting in updates, cloning & 
re-cloning, etc) until I feel the need to write or find a scripted alternative.

## Repo Structure

The `windows` directory contains all the files and folders for relevant Windows 10
config. This includes:
- `settings.json` for Windows Terminal
- `vscode` for VS Code
- `.gitconfig` for my global Git config
- `init.cmd`, which is loaded before Command Prompt sessions to give me certain 
    aliases I prefer within Command Prompt.
    > This can be replicated by creating the string value `AutoRun` in registry key
    > `HKEY_CURRENT_USER\Software\Microsoft\Command Processor`, and setting it to 
    > the absolute path to the `init.cmd` file.
- `spotlight.ps1`, which is a PowerShell script I wrote to pull the recent 
    Windows 10 Spotlight (lock screen) images so I can pick out the ones I like
    as wallpapers. 
    > I use this by placing it with my other CLI executables and creating a 
    > shortcut to it on my desktop as:
    > `powershell.exe -command "& 'C:\Program Standalones\spotlight.ps1'`

The `ubuntu` directory contains the same for my WSL 2 config:
- `.bashrc` and `.bash_aliases` for my bash setup
- `.vim` for my Vim config
- `.gitconfig` for my WSL-global Git config
