alias lsa="ls -a"
alias lt="eza --tree --level=2 --long --git"
alias lta="lt -a"
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias fd="fdfind"
alias lg="lazygit"
alias ld="lazydocker"
alias c="code"
alias cd="z"
alias resource="source ~/.zshrc"
alias activate="source .venv/bin/activate"

# git shortcuts
alias gfa="git fetch --all"
alias grc="git rebase --continue"

function proxy() {
  export ALL_PROXY="http://127.0.0.1:7890"
  export HTTPS_PROXY="http://127.0.0.1:7890"
  export HTTP_PROXY="http://127.0.0.1:7890"

  export all_proxy="http://127.0.0.1:7890"
  export https_proxy="http://127.0.0.1:7890"
  export http_proxy="http://127.0.0.1:7890"
}

function unproxy() {
  unset ALL_PROXY
  unset HTTPS_PROXY
  unset HTTP_PROXY

  unset all_proxy
  unset https_proxy
  unset http_proxy
}

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(mise activate zsh)"
eval "$(starship init zsh)"

export PATH="/home/wzhudev/.local/bin:$PATH"
