# macOS Setup

## Install zsh and oh-my-zsh

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install Homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

And add Homebrew to the .zshrc file.

## Install Devtools

Use Homebrew to install the required terminal applications:

```bash
brew install zoxide eza fzf gh lazygit lazydocker mise starship stow uv
brew install zsh-syntax-highlighting zsh-autosuggestions
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

## GUI Applications

Use Homebrew to install the necessary applications:

```sh
brew install vim
brew install --cask visual-studio-code raycast hammerspoon docker google-chrome
```

### Link Configuration Files

Link the configuration files for Hammerspoon:

```bash
stow hammerspoon
```

## Miscellaneous

If a proxy is required, use the following command to set it up:

```bash
export ALL_PROXY="http://127.0.0.1:7890"
export HTTPS_PROXY="http://127.0.0.1:7890"
export HTTP_PROXY="http://127.0.0.1:7890"


