# at the end of the pipeline is an invisible cmdlet called Out-Default 
# Out-Default passes the objects to Out-Host -> to show the output on the screen
# 4 or fewer properteis -> table, 5 or more properties -> list


# Formatting tables
# ----------------------------------------------------------------------------------------------------
Get-WmiObject Win32_BIOS | Format-Table -autoSize

Get-Process | ft -property *
Get-Process | Format-Table -property ID,Name,Responding -autoSize
Get-Process | Format-Table * -autoSize

Get-Service | Sort-Object Status | Format-Table -groupBy Status

Get-Service | Format-Table Name,Status,DisplayName -autoSize -wrap

# Formatting lists
# ----------------------------------------------------------------------------------------------------
# you can use Format-List as an alternative way to discover the properties of an object
get-service | Format-List *
get-service | fl *


# Formatting wide lists
# ----------------------------------------------------------------------------------------------------
# Displays only the values of a single property
# per default it looks for the name property
Get-Process | Format-Wide name
# You can use a collumn parameter to specify more columns
Get-Process | Format-Wide name -col 4


# Note: Always Format Right (The formating should be the last thing except of the OUT commands. They can be used after formatting)
