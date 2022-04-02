# you learned already about different cmdlets and should be able to find a comdlets to get a service and start a service
# normally you would do it like in this example:
$serviceName = 'wuauserv'
Get-Service -Name $serviceName
Start-Service -Name $serviceName

# for just one service, that's okay to do it like above
# But if you have to do it for maybe hundreds of services it would just be annyoing

# One way to simplify that is to use the PIpeline: 
# The PowerShell pipeline allows you to send the output of one command directly into another command as input: 


# Using the PowerShell Pipeline 
# ----------------------------------------------------------------------------------------------------

# How it works:
Command-1 | Command-2 | Command-3


# Piping objects between commands
# ----------------------------------------------------------------------------------------------------
# real example:
# first start process notepad
start-process 'notepad'
# get the process notepad and then forward to output to the next command Stop-Process
# Note: I don't need to specify any parameters on stop process becaucse the output is forwarded
Get-Process 'notepad' | Stop-Process



# Piping Arrays between commands
# ----------------------------------------------------------------------------------------------------
# First create a text file processes.txt and store two process names in it, for example: code, chrome
# get content is reading the text file
Get-Content -Path .\06_Pipeline\services.txt 
# to verify whate type of data structure you get you can store it into a variable and verify the type
$content = Get-Content -Path .\06_Pipeline\services.txt 
$content.GetType()
Get-Content -Path .\06_Pipeline\services.txt | Get-Service


# More examples
# ----------------------------------------------------------------------------------------------------
# Export to CSV
get-process | Export-Csv .\06_Pipeline\process.csv
start excel .\06_Pipeline\process.csv
Import-Csv .\06_Pipeline\process.csv

# Not related to the pipeline but nice to know:
# Note: Diff is an alias for compare-object
Diff -reference (Import-Csv .\06_Pipeline\process.csv) -difference (Get-process) -Property Name
# if you run this all process will be listed because values as PM, VM etc. have all changed..
Diff -reference (Import-Csv .\06_Pipeline\process.csv) -difference (Get-process)

# Pipe to a text file
# Note: dir is an alias for get-childitem
dir | Out-File .\06_Pipeline\List.txt



#Important: Most PowerShell commands accept only certain types of pipeline input! So it won't work everywhere

# Parameter Binding
# ----------------------------------------------------------------------------------------------------
# Commands needs to explicitly support the pipeline - Whoever writes commands - needs to build in pipeline support
# Example which isn't supported:
'code' | get-process
# the get service does support just one string:
'wuauserv' | get-service

# to look up if pipeline is supported
# Look at the Parameter section - each parameter has a file 'Accept pipeline input?'
Get-Help -Name Get-Process -ShowWindow
Get-Help -Name get-service -ShowWindow

# Accept pipeline input options: 
# false             = not supported  
# ByValue           = PS will look at type of object and interpret it accordingly
# ByPropertyName    = PS will look at the object passed in, verify if it has a property with appropiate name, takes the value of that property and accepts it as parameter

$process = [PSCustomObject]@{
    ProcessName = 'Code'
}
$process | get-process
