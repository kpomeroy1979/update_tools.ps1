# update_tools.ps1
# A simple tool to iterate through c:\tools and update any software downloaded from github
# and install python dependencies at the same time (useful if you just reimaged your computer) 
# requires git and python for windows installed and python.exe, pip3.exe and git.exe added to your execution path.

# define the directory where your tools are located. 
$toolsDirectory = "C:\tools\"

# Get list of directories in C:\tools\
$directories = Get-ChildItem -Path $toolsDirectory -Directory

# Next, Iterate through each directory via a simple for loop
foreach ($directory in $directories) {
    # Change directory into each directory
    Set-Location -Path $directory.FullName

# Run the command "pip3 install -r requirements.txt" and then run "git pull origin master" to 
# install dependencies and update the software to the latest version from github
    pip3 install -r requirements.txt; git pull origin master
}
