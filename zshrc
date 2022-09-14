# Env
source ~/.profile

# Load direnv
eval "$(direnv hook zsh)"

# prompt
eval "$(starship init zsh)"

## Borrwoed from https://asdf-vm.com/guide/getting-started.html#_3-install-asdf
## Migrate to oh-my-zsh in the future
# Load ASDF
. /usr/local/opt/asdf/libexec/asdf.sh
