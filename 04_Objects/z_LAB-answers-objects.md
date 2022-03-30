- Find a cmdlet which displays the current date and time (we already used it in a example)
  - to find it: `help date`
  - we can find: `get-date`
- What type of object does the cmdlet of the first task produce? 
  - to find the type use get-member: `get-date | get-member`
  - You can find the TypeName at the top: `System.DateTime`
- Try to display only the DayOfYear with the cmdlet from the first task
  - first take a look at all the properties of the object: `get-date | Get-Member -MemberType Property `
  - You should find the property **DayOfYear** to show that property: `get-date | select DayOfYear`

- Find a cmldet which shows installed hotfixes
  - to find: `help hotfix`
  - result: `get-hotfix`
- Try to Display Only the HotFixID, Description and InstalledOn Date
  - `get-hotfix | select HotFixID, Description, InstalledOn`
- Sort the output from above based on the InstalledOn Date
  - `get-hotfix | select HotFixID, Description, InstalledOn | sort InstalledOn`

