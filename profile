# I use Neovim
export EDITOR="nvim"

# My English is British one so
export LC_ALL="en_GB.UTF-8"
export LC="$LC_ALL"
export LANG="$LC_ALL"

# Update Homebrew packages for each hour
export HOMEBREW_AUTO_UPDATE_SECS=$((60 * 60))

# PATHs
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:$HOME/node_modules/.bin"
# export PATH="$PATH:$(asdf where nodejs)/.npm/bin"

export FZF_DEFAULT_OPTS='--color dark,gutter:-1'
