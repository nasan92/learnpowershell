# A provider in PowerShell is an interface that allows file system like access to a datastore. There are a number of built-in providers in PowerShell.
# in other words: it's designed to take some kind of data storage and make it look like a disk drive

# Show Providers and Drives
# ----------------------------------------------------------------------------------------------------
Get-PSProvider

# actual drives that these providers expose can be determined with:
Get-PSDrive

# third party modules add their own providers
Import-Module -Name ActiveDirectory
# see the difference: 
Get-PSProvider
Get-PSDrive

# Find Commands
# ----------------------------------------------------------------------------------------------------
# find commands for working within a filesystem provider
# most commands you use for psprovider are in the word "item"
# Note: Files and folders are both "items"
get-command -Noun "item" 
get-command -Noun "*item*" 
get-command -Noun "*Item*" -Module "Microsoft.PowerShell.Management"


# Accessing Items
# ----------------------------------------------------------------------------------------------------
# Access like with a traditional file system:
# item refers to individual objects such as files and folders
get-item .\README.md
get-item -Path Cert:\LocalMachine\CA

# Childitem refers to the "sub -files and folders"
Get-ChildItem -Path Cert:\LocalMachine\CA

Get-ChildItem -Path HKCU:
Get-ChildItem -Path HKCU:\Software
Get-ChildItem HKLM:\SOFTWARE\

Get-ChildItem -Path Env:
Get-ChildItem -Path Env:APPDATA 

# Wildcards are also permitted with -path:
get-childitem -Path C:\Windows\System32\*.exe

# -literalpath doesn't allow wildards - it won't find anything:
get-childitem -LiteralPath C:\Windows\System32\*.exe


# Navigating drives
# ----------------------------------------------------------------------------------------------------
# to open a specific drive
set-location HKLM:
Get-ChildItem

# cd instead of set-location also works:
cd HKCU:
dir
cd .\Printers\

# The same way you can change to the Environment Variables drive
Set-Location Env:
dir

# Getting help
# ----------------------------------------------------------------------------------------------------
# getting help
help "about_<providername>_provider"
# examples for registry and filesystem
help about_registry_provider -showwindow
help about_FileSystem_provider -showwindow

# Create items
# ----------------------------------------------------------------------------------------------------
# Create a new directory (new item is generic so it doesn't know you want to create a directory):
new-item Test -ItemType Directory
new-item -Path C:\temp -Name Test -ItemType Directory
# you can also use mkdir (which is in powershell a function that also does new-item but with the type predefined)
mkdir Test2

# create a new file
new-item Testfile -ItemType File

# example to create a registry entry and value
New-Item -Path "HKLM:\Software\NASACompany" -WhatIf
New-Item -Path "HKLM:\Software\NASACompany" 
Get-Item "HKLM:\Software\NASACompany" 


# Create / Set item properties
# ----------------------------------------------------------------------------------------------------
Set-ItemProperty -Path "HKLM:\Software\NASACompany" -Name "NoOfEmployees" -Value 823

Get-ItemProperty -Path "HKLM:\Software\NASACompany"
Get-ChildItem HKLM:\SOFTWARE\
Get-Item "HKLM:\Software\NASACompany" 

$path = "HKLM:\SOFTWARE\NASACompany"
New-ItemProperty -Path $path -Name Test -Type DWORD -Value 1

# Removing items
# ----------------------------------------------------------------------------------------------------
Remove-Item -Path "HKLM:\Software\NASACompany" 