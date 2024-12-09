function SetRemoteSignedExecutionPolicy {
  Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
}

function InstallTmpChezmoi {
  '$params = "-BinDir $Env:TEMP"', (Invoke-RestMethod -Uri https://get.chezmoi.io/ps1) | Invoke-Expression
}

function AddScoopToPath {
  $env:PATH += "$env:USERPROFILE/scoop/shims"
}

function BootstrapChezmoi {
  powershell -c "& '$Env:TEMP/chezmoi.exe' init --apply nagromc"
}

SetRemoteSignedExecutionPolicy
InstallTmpChezmoi
AddScoopToPath
BootstrapChezmoi
