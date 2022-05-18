# errors will happen - there will always be something that breaks your code

# error: 
# An error in PowerShell is a message that's displayed on screen when something goes wrong. 
get-content -Path "C:\nonexisstingfile.txt"

# Exception
# ----------------------------------------------------------------------------------------------------
# An exception is an error or unexpected result that PowerShell needs you to handle.
# Its a flow-disrupting event. 
# And its a specific kind of object that results from an error

# example which generate an exception:
$result = 5 / 0

# our own exception:
function hi
{
 throw "hi all"
}
hi 

# types of errors: Terminating error / non-terminating error
# ----------------------------------------------------------------------------------------------------
# non-terminating error: output a useful error message and proceed with the rest of the script
# non-terminating errors are by default generated by Write-Error and do not throw an expection. - Do not trigger the catch!

# example non terminating error:
Get-Service w32time,lala,spooler

# this will generate a non terminating error as well: 
$folderPath = "K:\Nonexistingfolder"
$files = Get-ChildItem -Path $folderPath 
Write-Host "If this runs - the last cmlet had success or a non terminating error"


# terminating error: An exception is generally a terminating error. A terminating error stops the script from further execution

# ErrorAction - Turning a non-terminating error into a terminating PowerShell error:
# ----------------------------------------------------------------------------------------------------
# With the ErrorAction Stop it will generate a terminating error
$folderPath = "K:\Nonexistingfolder"
$files = Get-ChildItem -Path $folderPath -ErrorAction Stop
Write-Host "This shouldn't run."

# Error action supported settings:
# Continue – Logs error to $Error, displays error to console, continues processing.
# -> default (used even if ErrorAction isn’t specified)
# Stop – Logs error to $Error, displays error to console, terminates.
# SilentlyContinue – Logs error to $Error, does not display error, continues processing.
# Ignore – Does not log error to $Error, does not display error, continues processing.


# handling terminating errors
# ----------------------------------------------------------------------------------------------------
# to prevent terminating errors from stopping your script, you need to catch them

try
{
    $folderPath = "K:\Nonexistingfolder"
    $files = Get-ChildItem -Path $folderPath -ErrorAction Stop
    Write-Host "This shouldn't run."
}
catch
{
    Write-Output "Something threw an exception"
    Write-Output $_

}

# without the erroraction stop it won't catch it:
try
{
    $folderPath = "K:\Nonexistingfolder"
    $files = Get-ChildItem -Path $folderPath 
    Write-Host "This shouldn't run."
}
catch
{
    Write-Output "Something threw an exception"
    Write-Output $_

}

# example with a foreach loop:
$processNames = @(
    'nonexistingprocess',
    'code'
)
foreach ($p in $processNames) {
    try {
        Get-Process -Nam $p -ErrorAction Stop
    }
    catch {
        Write-Host "now you are in the catch"
        Write-Error $_
    }
}

# Write-Error simply prints the error for the user
try {
    1/0;Write-Host 'Hello, will I run after an error?'
}
catch {
    Write-Error $_
}

# try / finally
# ----------------------------------------------------------------------------------------------------
try {
    1/0;Write-Host 'Hello, will I run after an error?'
}
catch {
    Write-Error $_
}
finally{
    # log result or do something else
}

# other example
# $command = [System.Data.SqlClient.SqlCommand]::New(queryString, connection)
# try
# {
#     $command.Connection.Open()
#     $command.ExecuteNonQuery()
# }
# finally
# {
#     $command.Connection.Close()
# }


# Exploring the error object
# ----------------------------------------------------------------------------------------------------
try
{
    $folderPath = "K:\Nonexistingfolder"
    $files = Get-ChildItem -Path $folderPath -ErrorAction Stop
    Write-Host "This shouldn't run."
}
catch
{
    $theError = $_
    Write-Output "Something threw an exception"
    Write-Error $_
    $theError.Exception
}

# Exploring the $Error Automatic Variable
# ----------------------------------------------------------------------------------------------------
# All errors are stored in the PowerShel automatic variable called $Error
get-item -Path "K\nonexistingitem.txt"

# show error array (all errors from the current session should be visible)
$Error

# show the most recent error:
$Error[0]