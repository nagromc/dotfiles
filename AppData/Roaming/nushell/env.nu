let-env SHLVL = if (env | where name == SHLVL | empty?) {
  1
} else {
  ($env.SHLVL | into int) + 1
}

zoxide init nushell --hook prompt | save ~/.config/zoxide.nu
