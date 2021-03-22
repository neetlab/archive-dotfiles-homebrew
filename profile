# I use Neovim
export EDITOR="nvim"

# My English is British one so
export LC_ALL="en_GB.UTF-8"

# Update Homebrew packages for each hour
export HOMEBREW_AUTO_UPDATE_SECS=$((60 * 60))

# PATHs
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:$HOME/node_modules/.bin"
export PATH="$PATH:$(yarn global bin)"
