# Get Help
Get-Help -Name Get-Help

# short form help (function) - shows all help on one site
help Get-Help -Parameter Name

# Get Help in another window
help get-eventlog -ShowWindow 
help Get-Command -Full | Out-GridView 

# get help online
get-help -Name ForEach-Object -online

# get help examples
get-help -Name ForEach-Object -examples

# Find help with asterisk and a name -> asteriks are not necessary but work always consitently
help *process*
help process

# If what you're attempting to look for are commands that end with -process, you only need to add the * wildcard character to the beginning of the value.
help *-process

#search not command specific but search for help in any related topic
Get-Help processes


