# Array of Objects - arrays can also contain objects 
# ----------------------------------------------------------------------------------------------------

# example:
$processList = Get-Process
$processList.GetType()

# accessing properties 
# index can bi used to access an individual item
$processList[0] 
$processList[0].ProcessName

# you can as well request specific properties from the whole array
$processList.ProcessName
