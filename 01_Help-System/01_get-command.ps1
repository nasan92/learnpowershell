# Get Command is designed to help you locate commands
Get-Command -Noun Process
Get-Command -Name *print*

get-command -noun *event*
get-command -Verb *start*

# Learn a powershell command a day:
Get-Command | Get-Random | Get-Help -Full