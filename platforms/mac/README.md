# macOS

Refer to the [Linux README](../linux/README.md) for shared instructions.

Link more configuration files:

```bash
stow hammerspoon
```

Install applications:

```bash
brew install --cask hammerspoon hiddenbar monitorcontrol cursor raycast ghostty obsidian
```

Enable continuous key repeat (disable press-and-hold for accented characters):

```bash
defaults write -g ApplePressAndHoldEnabled -bool false
```
