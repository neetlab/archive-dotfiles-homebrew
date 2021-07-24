function ghq_search_fzf
  set -l ghq_root (ghq root)
  set -l bat_opts "--color=always --theme=ansi --plain $ghq_root/{}/README.md"
  set -l active_project (ghq list | fzf --ansi --preview "bat $bat_opts")

  if [ $active_project ]
    cd $ghq_root/$active_project
  end

  commandline -f repaint
end

bind \cg ghq_search_fzf
