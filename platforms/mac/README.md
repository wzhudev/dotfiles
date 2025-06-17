# macOS

Install Homebrew:

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

And use it to install dependencies:

```bash
brew install neovim zoxide eza fzf gh lazygit lazydocker mise starship stow uv
brew install zsh-autosuggestions zsh-syntax-highlighting
```

Link more configuration files:

```bash
stow hammerspoon
```
