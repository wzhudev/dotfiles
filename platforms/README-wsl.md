# Fedora (WSL)

Install dependencies:

```bash
sudo dnf copr enable alterateved/eza atim/lazydocker atim/starship atim/lazygit
sudo dnf install -y zoxide eza fzf gh lazygit lazydocker mise starship stow uv
```

Install oh-my-zsh and make zsh as the default shell:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Login to GitHub and download dotfiles:

```shell
gh auth login
gh repo clone wzhudev/dotfiles .dotfiles
```

Copy and link configuration files:

```shell
cp ~/.dotfiles/git/.gitconfig ~/.gitconfig
gh auth setup-git

stow tmux

echo "source ~/.dotfiles/zsh/.zshrc" >> ~/.zshrc

resource

starship preset plain-text-symbols -o ~/.config/starship.toml
```

## Miscellaneous

If a proxy is required, use the following command to set it up:

```shell
export ALL_PROXY="http://127.0.0.1:7890"
export HTTPS_PROXY="http://127.0.0.1:7890"
export HTTP_PROXY="http://127.0.0.1:7890"
```
