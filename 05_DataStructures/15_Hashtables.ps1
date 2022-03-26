# Sometimes you want a way to correlate two pieces of data
# example: you have a list of IP addresses that you wantch to match to computer names 
# you give PowerShell an input - key (computername) and it returns value (ip adress for example)

# Creating Hashtables
# ----------------------------------------------------------------------------------------------------
# create an empty Hashtable
$computerList = @{}
$computerList.gettype()

# You can add keys and values to a hash table when you create it
$hash = @{ Number = 1; Shape = "Square"; Color = "Blue"}
$hash

# Adding keys and values to Hashtables
# ----------------------------------------------------------------------------------------------------
# add keys and values to a hash table
$key = 'NB-NASA'
$value = '10.180.0.25'

$computerList.add($key,$value)
$computerList 

$computerList.add('NB-SPACEX','10.180.0.32')
$computerList 


# Reading Elements from Hashtables
# ----------------------------------------------------------------------------------------------------
# use the key to access a specific value in a hashtable
$computerList['NB-NASA']
$computerList.'NB-NASA'

# to show all keys or values:
$computerList.Keys
$computerList.Values

# to show all properties of a hashtable or any object
Select-Object -InputObject $computerList -Property *
$computerList | select *

