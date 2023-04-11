export ZSH="$HOME/.oh-my-zsh"

plugins=(
  1password
  asdf
  brew
  direnv
  docker
  docker-compose
  docker-machine
  fzf
  gcloud
  git
  macos
  npm
  pip
  poetry
  pyenv
  pylint
  python
  rust
  vscode
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# History per directory
setopt no_share_history

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

function ghq_search_fzf() {
  local ghq_root=$(ghq root)
  local glow_opts="$ghq_root/{}/README.md"
  local active_project=$(ghq list | fzf --ansi --preview "glow -p -s dark $glow_opts")

  if [ -n "$active_project" ]; then
    cd "${ghq_root}/${active_project}"
    zle accept-line
  fi

  zle reset-prompt
}

zle -N ghq_search_fzf
bindkey "^g" ghq_search_fzf
