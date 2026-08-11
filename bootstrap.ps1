param(
    [string]$BranchName = ""
)

$Env:Path += ";$Env:USERPROFILE\scoop\shims;$Env:USERPROFILE\scoop\apps\vscode\current\bin"  # add Scoop shims path temporarily during bootstrap

$BranchArg = ""
if ($BranchName) {
    $BranchArg = "--branch $BranchName"
}

Invoke-Expression "&{$(Invoke-RestMethod 'https://get.chezmoi.io/ps1')} -BinDir $Env:TEMP -- init --apply --verbose $BranchArg nagromc"
