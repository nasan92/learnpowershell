https://docs.microsoft.com/en-us/powershell/scripting/learn/ps101/02-help-system?view=powershell-7.2

## discover commands

Compiled commands in PowerShell are called cmdlets. 
Cmdlets names have the form of singular "Verb-Noun" commands to make them easily discoverable.

### The Three Core Cmdlets in PowerShell:  
**Get-Command**  
**Get-Help ->  helps you learn how to use commands once you find them.**  
**Get-Member**  

```mermaid
graph TD

A[Command]
B[cmdlet]
C[functions]
D[workflows]
E[and more]

A --> B
A --> C
A --> D
A --> E

class A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z internal-link;
```

