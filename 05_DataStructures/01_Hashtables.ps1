# Sometimes you want a way to correlate two pieces of data
# example: you have a list of IP addresses that you wantch to match to computer names 
# you give PowerShell an input - key (computername) and it returns value (ip adress for example)

# Creating Hashtables
# ----------------------------------------------------------------------------------------------------
# create an empty Hashtable
$computerList = @{}
$computerList.gettype()

# You can add keys and values to a hash table when you create it
# example of a inline hashtable:
$hash = @{ Number = 1; Shape = "Square"; Color = "Blue"}
$hash

# you can create a hashtables and add keys and values also on multiple lines:
$ageList = @{
    Kevin = 36
    Alex  = 9
}

# other example on multiple lines:
$environments = @{
    Prod = 'SrvProd05'
    QA   = 'SrvQA02'
    Dev  = 'SrvDev12'
}

$server = $environments[$env]



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


# Modifying Hashtables
# ----------------------------------------------------------------------------------------------------
# good idea first to check that the key-value pair exists.
# to check if key exists - use ContainsKey()
$computerList.ContainsKey('NB-NASA')
# if the key is in tha hashtable you can modify its value:
$computerList['NB-NASA'] = '10.180.0.53'
$computerList


# Removing Items from a Hashtable
# ----------------------------------------------------------------------------------------------------
$computerList.Remove('NB-NASA')
$computerList
