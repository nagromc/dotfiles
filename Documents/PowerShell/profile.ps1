function Test-ProfileIsRunWithCommand {
  $cmdLine = (Get-CimInstance Win32_Process -Filter "ProcessId = $PID").CommandLine
  return $cmdLine -match '\s-(Command|c)\s+'
}



. "$PSScriptRoot/envvars.ps1"
. "$PSScriptRoot/path.ps1"

if (Test-ProfileIsRunWithCommand) {
  Write-Host "Skipped full PowerShell profile initialization" -ForegroundColor Yellow
  return
}

. "$PSScriptRoot/aliases.ps1"
. "$PSScriptRoot/completions.ps1"
. "$PSScriptRoot/functions.ps1"
. "$PSScriptRoot/tools-integration.ps1"
