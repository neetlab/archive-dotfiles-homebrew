# Env
bass source ~/.profile

# Prompt
starship init fish | source

# Hide welcome message
set fish_greeting

# Alias
alias vim "nvim"
alias ghci "stack ghci"
alias project "ghq list | peco; cd $1"

# Setting ANSI colors to fishshell force
set -x fish_color_autosuggestion lightBlack
set -x fish_color_command        cyan
set -x fish_color_comment        lightBlack
set -x fish_color_end            green
set -x fish_color_error          red
set -x fish_color_param          cyan
set -x fish_color_quote          green
set -x fish_color_redirection    blue