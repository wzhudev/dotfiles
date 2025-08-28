# env
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export PATH="/home/wzhudev/.local/bin:$PATH"
export NODE_OPTIONS="--max-old-space-size=8192"

# aliases
alias ls="eza -lh --group-directories-first --icons"
alias lsa="ls -a"
alias lt="eza --tree --level=2 --long --git --icons"
alias lta="lt -a"
alias lg="lazygit"
alias ld="lazydocker"
alias cd="z"
alias resource="source ~/.zshrc"
alias activate="source .venv/bin/activate"
alias gfa="git fetch --all"
alias grc="git rebase --continue"
alias gsu="git submodule update"
alias gsui="git submodule update --init --recursive"
alias gsur="git submodule sync"

# proxy
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

# activate
command -v fzf >/dev/null 2>&1 && eval "$(fzf --zsh)"
command -v zoxide >/dev/null 2>&1 && eval "$(zoxide init zsh)"
command -v mise >/dev/null 2>&1 && eval "$(mise activate zsh)"
command -v starship >/dev/null 2>&1 && eval "$(starship init zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
