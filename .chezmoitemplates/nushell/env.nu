let vendor_autoload_dir = $nu.data-dir | path join "vendor" "autoload"
mkdir $vendor_autoload_dir

zoxide init nushell | save --force ($vendor_autoload_dir | path join "zoxide.nu")

starship init nu | save --force ($vendor_autoload_dir | path join "starship.nu")

carapace _carapace nushell | save --force ($vendor_autoload_dir | path join "carapace.nu")

broot --print-shell-function nushell | save --force ($vendor_autoload_dir | path join "broot.nu")

tv init nu | save --force ($vendor_autoload_dir | path join "tv.nu")

mise activate nu | save --force ($vendor_autoload_dir | path join "mise.nu")

$env.MOOR = {{ .envvars.moor | quote }}
$env.PAGER = {{ .envvars.pager | quote }}
$env.PATH = $env.PATH | prepend ($nu.home-path | path join ".local" "bin")
$env.RIPGREP_CONFIG_PATH = $nu.home-path + "/.config/ripgrep/ripgreprc"
$env.VISUAL = 'vim'
