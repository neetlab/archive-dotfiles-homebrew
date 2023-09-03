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

function pnpm_search_fzf() {
  # ファイルを探す
  workspace_file=$(find . -maxdepth 1 -name "pnpm-workspace.yaml" -o -name "pnpm-workspace.yml" | head -n 1)

  if [[ -z "${workspace_file}" ]]; then
    echo "Error: pnpm-workspace.yaml or pnpm-workspace.yml not found in the current directory"
    exit 1
  fi

  # packagesのキーの値を取得
  packages=$(yq e '.packages[]' "${workspace_file}")
  glob_patterns=("${(ps:\n:)packages}")

  # fzfを使って選択肢を表示し、選択されたディレクトリに移動する
  selected_dir=$(
    for pattern in "${glob_patterns[@]}"; do
    find * -maxdepth 2 -type d -path "${pattern}"
    done | fzf
  )

  if [[ -n "${selected_dir}" ]]; then
    cd "${selected_dir}"
  else
    echo "No directory selected."
  fi
}

zle -N ghq_search_fzf
bindkey "^g" ghq_search_fzf

# History per window
setopt noincappendhistory
setopt nosharehistory