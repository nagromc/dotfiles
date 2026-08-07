# `~morgan`

This is my new dotfiles repo managed with [chezmoi](https://www.chezmoi.io/).

The old version of my dotfiles repo can be found [here](https://github.com/nagromc/dotfiles-dotbot).

## First time installation

On Windows:

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-Expression "&{$(Invoke-RestMethod 'https://get.chezmoi.io/ps1')} -BinDir $Env:TEMP -- init --apply --verbose nagromc"
```

## Applying configuration to target environment

Run `chezmoi apply`, or hit <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>B</kbd> in VS Code.
