A VERY simple tool to iterate through c:\tools and update any software downloaded from github and install python packages and dependencies at the same time. It requires python.exe, pip3.exe and git.exe installed and added to your execution path.

Usage: PS C:\> .\update_tools.ps1

The error "fatal: not a git repository (or any of the parent directories): .git" means the software was not downloaded from git and its not a git repo that can be updated. This is normal and expected so just ignore it
