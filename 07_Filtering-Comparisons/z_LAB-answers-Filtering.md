- Display all EXE files under C:\Windows\System32 that are larger than 10 MB. 
  - `Get-ChildItem -Path C:\Windows\System32 | where Length -ge 10MB`
- Display the five largest files in your Downloads folder
  - `Get-ChildItem -Path $env:Userprofile\downloads | where length | sort length | select -last 5 `
- Display the name and the VirtualMemorySize(VM) of 10 most virtual memory hungry processes 
  - `Get-Process | sort VM | select name, vm | select -last 10`