# Linux / WSL

Change default shell to Zsh:

```bash
chsh -s $(which zsh)
```

Use Homebrew(Linuxbrew) to install dependencies:

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

And then install the required packages:

```bash
brew install zoxide fzf gh starship stow eza tmux zsh-autosuggestions zsh-syntax-highlighting lazygit lazydocker
brew install nvm uv go
```

Login to GitHub and download dotfiles:

```bash
gh auth login
gh repo clone wzhudev/dotfiles .dotfiles
```

Copy and link configuration files:

```bash
cp ~/.dotfiles/git/.gitconfig ~/.gitconfig
```

Add custom `.zshrc` configuration by sourcing it:

```bash
echo "source ~/.dotfiles/zsh/.zshrc" >> ~/.zshrc

source ~/.zshrc
```

Use starship plain text symbols preset:

```bash
starship preset plain-text-symbols -o ~/.config/starship.toml
```

## Miscellaneous

If a proxy is required, use the following command to set it up:

```bash
export ALL_PROXY="http://127.0.0.1:7890"
export HTTPS_PROXY="http://127.0.0.1:7890"
export HTTP_PROXY="http://127.0.0.1:7890"
```
