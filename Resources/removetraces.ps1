#Clear Windows run history
Clear-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" -Name "*"

#Clear Powershell history
$powershellHistory = "$env:APPDATA\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt"
if (Test-Path $powershellHistory){
    Clear-Content $powershellHistory
}

# Clear the Recent Files for explorer
$recentFiles = "$env:APPDATA\Microsoft\Windows\Recent"
if (Test-Path $recentFiles) {
    Remove-Item $recentFiles\* -Force -Recurse
}