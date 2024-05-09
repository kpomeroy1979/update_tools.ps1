# update_tools.ps1
# A simple tool to iterate through c:\tools and update any software downloaded from github
# requires git for windows installed and added to your execution path.

# define the directory where your tools are located. 
$toolsDirectory = "C:\tools\"

# Get list of directories in C:\tools\
$directories = Get-ChildItem -Path $toolsDirectory -Directory

# Next, Iterate through each directory via a simple for loop
foreach ($directory in $directories) {
    # Change directory into each directory
    Set-Location -Path $directory.FullName

    # Run the command "git pull origin master" to update the software to the latest version
    git pull origin master
}
