# `~morgan`

This is my new dotfiles repo managed with [chezmoi](https://www.chezmoi.io/).

The old version of my dotfiles repo can be found [here](https://github.com/nagromc/dotfiles-dotbot).

## First time installation

On Windows:

```powershell
Invoke-RestMethod -Uri https://dotfiles.ploki.fr/raw/main/bootstrap.ps1 | Invoke-Expression
```

## Applying configuration to target environment

Run `chezmoi apply`, or hit <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>B</kbd> in VS Code.
