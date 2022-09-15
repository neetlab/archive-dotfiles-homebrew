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
)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"
