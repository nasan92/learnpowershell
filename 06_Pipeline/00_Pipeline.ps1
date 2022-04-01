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

# example:
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