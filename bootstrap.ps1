function SetRemoteSignedExecutionPolicy {
  Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
}

function InstallScoop {
  '$params = "-BinDir $Env:TEMP"', (irm -useb https://get.chezmoi.io/ps1) | powershell -c -
}

function AddScoopToPath {
  $env:PATH += "$env:USERPROFILE/scoop/shims"
}

function BootstrapChezmoi {
  powershell -c "& '$Env:TEMP/chezmoi.exe' init --apply nagromc"
}

SetRemoteSignedExecutionPolicy
InstallScoop
AddScoopToPath
BootstrapChezmoi
