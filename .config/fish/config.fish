# Loading environment variable
source ~/.profile

# Setting language
set -x LC_ALL ja_JP.UTF-8

# Appending PATH
set -x PATH ~/.local/bin $PATH

# Setting ANSI colors to fishshell force
set -x fish_color_autosuggestion lightBlack
set -x fish_color_command        cyan
set -x fish_color_comment        lightBlack
set -x fish_color_end            green
set -x fish_color_error          red
set -x fish_color_param          cyan
set -x fish_color_quote          green
set -x fish_color_redirection    blue

# Setting default editor
set -x EDITOR nvim
