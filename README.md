## About
Author: Brandon Olin [[devblackops.io](https://devblackops.io)]

## Overview
An example of using the Release Pipeline Model with PowerShell-based tools. This repository hosts the ```ServerInfo.ps1``` 
script which will return system information about a given computer. This repository also includes associated tests and build
tasks for day to day operations and deployment of the script.

## Usage
A ```psake``` script has been created to manage the various operations related to testing and deployment of ```ServerInfo.ps1```

### Build Operations

* Test the script via Pester and Script Analyzer  
```powershell
.\build.ps1
```
    
* Test the script with Pester only  
```powershell
.\build.ps1 -Task Test
```
    
* Test the script with Script Analyzer only  
```powershell
.\build.ps1 -Task Analyze
```
    
* Deploy the script via PSDeploy  
```powershell
.\build.ps1 -Task Deploy
```
