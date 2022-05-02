
# Filtering Left
# ----------------------------------------------------------------------------------------------------
# In the pipeline you should always try to filter the results down to what you're looking for as early as possible. 
# Use parameters on the first command - filtering left

# early filtering: use parameters to specify what you want to reterieve:
# good example:
Get-Service -Name w32time

# bad example (has a huge performance impact if there are many objects to retrieve):
Get-Service | Where-Object Name -eq w32time

# to show all stopped services - early filtering is not possible because there is no parameter for the Status
# but you can select the Property Status where it equals 'Stopped':
get-service | where Status -eq 'Stopped' 

# doesn't return any result because property CanPauseAndContinue wasn't selected
Get-Service |
Select-Object -Property DisplayName, Status |
Where-Object CanPauseAndContinue

# reversing the order and you'll get the result you want:
Get-Service |
Where-Object CanPauseAndContinue |
Select-Object -Property DisplayName, Status

