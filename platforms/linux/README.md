# Fedora

## Install zsh and oh-my-zsh

## Install Devtools

```bash
sudo dnf copr enable alterateved/eza atim/lazydocker atim/starship atim/lazygit

sudo dnf install -y zoxide eza fzf gh lazygit lazydocker mise starship stow uv
```

## Configuration

### Clone Dotfiles and Link

Clone this repository:

```bash
git clone https://github.com/wzhudev/dotfiles.git .dotfiles
```

Copy and link configuration files:

```bash  
cp ~/.dotfiles/config/git.gitconfig ~/.gitconfig

stow mise starship nvim tmux ghostty-mac btop bat
```  

### Update `.zshrc`

Add your custom `.zshrc` configuration by sourcing it:

```bash
echo "source ~/.dotfiles/zsh/.zshrc" >> ~/.zshrc
```

## Miscellaneous

If a proxy is required, use the following command to set it up:

```bash
export ALL_PROXY="http://127.0.0.1:7890"
export HTTPS_PROXY="http://127.0.0.1:7890"
export HTTP_PROXY="http://127.0.0.1:7890"


