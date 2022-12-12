let-env SHLVL = if (env | where name == SHLVL | is-empty) {
  1
} else {
  ($env.SHLVL | into int) + 1
}

zoxide init nushell --hook prompt | save ~/.config/zoxide.nu

mkdir ~/.cache/starship
starship init nu | save ~/.cache/starship/init.nu
