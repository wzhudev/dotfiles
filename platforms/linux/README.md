# Fedora

Install dependencies:

```bash
sudo dnf copr enable alterateved/eza atim/lazydocker atim/starship atim/lazygit
sudo dnf install -y zoxide eza fzf gh lazygit lazydocker mise starship stow uv
```

Change default shell to Zsh:

```bash
chsh -s $(which zsh)
```

Login to GitHub and download dotfiles:

```bash
gh auth login
gh repo clone wzhudev/dotfiles .dotfiles
```

Copy and link configuration files:

```bash
cp ~/.dotfiles/git/.gitconfig ~/.gitconfig

stow mise tmux btop k9s
```

Add custom `.zshrc` configuration by sourcing it:

```bash
echo "source ~/.dotfiles/zsh/.zshrc" >> ~/.zshrc

resource
```

## Miscellaneous

If a proxy is required, use the following command to set it up:

```bash
export ALL_PROXY="http://127.0.0.1:7890"
export HTTPS_PROXY="http://127.0.0.1:7890"
export HTTP_PROXY="http://127.0.0.1:7890"
```
