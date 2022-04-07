# original syntax:
# one object at a time will be placed into $_ placeholder and then compared
Get-Service | Where-Object -filter { $_.Status -eq 'Running' }

# new simplified syntax:
Get-Service | Where Status -eq 'Running'

# for more complex comparisons you need the original syntax:
get-service | where-object {$_.status -eq 'Stopped' -AND $_.StartType -eq 'Automatic'}

