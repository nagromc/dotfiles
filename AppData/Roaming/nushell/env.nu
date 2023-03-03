let-env SHLVL = if (env | where name == SHLVL | is-empty) {
  1
} else {
  ($env.SHLVL | into int) + 1
}

zoxide init nushell | save --force ~/.config/zoxide.nu

mkdir ~/.cache/starship
starship init nu | save --force ~/.cache/starship/init.nu

let-env EDITOR = 'micro'
let-env VISUAL = 'micro'
