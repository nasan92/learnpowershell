# A hashtable is a data structure, much like an array, except you store each value (object) using a key. It's a basic key/value store.
# Sometimes you want a way to correlate two pieces of data
# example: you have a list of computer names  that you wantch to match to  IP addresses
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
    Hans  = 73
    John  = 33
}

# other example on multiple lines (lookup table):
$environments = @{
    Prod = 'SrvProd05'
    QA   = 'SrvQA02'
    Dev  = 'SrvDev12'
}

$env = 'Prod'
$server = $environments[$env]
$server


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

# multiselection example
$environments['QA','DEV']

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



# Splatting hashtables at cmdlets
# ----------------------------------------------------------------------------------------------------
# instead of including all parameters on one line:
Copy-Item -Path "test.txt" -Destination "test2.txt" -WhatIf

# you can use hash table splatting (put parameters into an hashtable)
$HashArguments = @{
    Path = "test.txt"
    Destination = "test2.txt"
    WhatIf = $true
  }
# Note the @ sign replaces the $ sign 
Copy-Item @HashArguments


# other splatting examples:
$log = @{Path = '.\logfile.log'}
Add-Content "logging this command" @log

# multiple splats in one: 
$Common = @{
    SubnetMask  = '255.255.255.0'
    LeaseDuration = (New-TimeSpan -Days 8)
    Type = "Both"
}

$DHCPScope = @{
    Name        = 'TestNetwork'
    StartRange  = '10.0.0.2'
    EndRange    = '10.0.0.254'
    Description = 'Network for testlab A'
}

Add-DhcpServerv4Scope @DHCPScope @Common

# Nested hashtables
# ----------------------------------------------------------------------------------------------------
# basic hashtable with two keys:
$computer = @{
    name    = 'NB-NASA'
    ip      = '10.180.0.34'
}
$computer

# creation of a new empty hashtable:
$computer.os = @{}
# adding new items to the os hashtable
$computer.os.name       = 'Windows 11 Enterprise'
$computer.os.version    = '10.0.22000 N/A Build 22000'


# the same example inline:
$computer2 = @{
    name    = 'NB-NASA'
    ip      = '10.180.0.34'
    os      = @{
        name    = 'Windows 11 Enterprise'
        version = '10.0.22000 N/A Build 22000'
    } 
}
$computer2
# accessing properties:
$computer2.os.version 
$computer2.os['version']

# to show all values you can use the converto-json
$computer2 | ConvertTo-Json
