# `~morgan`

This is my new dotfiles repo managed with [chezmoi](https://www.chezmoi.io/).

The old version of my dotfiles repo can be found [here](https://github.com/nagromc/dotfiles-dotbot).

## First time installation

On Windows:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser ; '$params = "-BinDir $Env:TEMP"', (irm -useb https://get.chezmoi.io/ps1) | powershell -c - ; $env:PATH += "$env:USERPROFILE/scoop/shims" ; powershell -c "& '$Env:TEMP/chezmoi.exe' init --apply nagromc"
```

## Applying configuration to target environment

Run `chezmoi apply`, or hit <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>B</kbd> in VS Code.
