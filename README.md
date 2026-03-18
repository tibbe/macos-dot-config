`~/.zshenv` needs to exist and contain:

```sh
export ZDOTDIR="$HOME/.config/zsh"
```

Install the following Homebrew packages:

```sh
brew install neovim tmux fzf zoxide eza ripgrep fd lazygit lazydocker starship bat
```

Install Ghostty:

```sh
brew install --cask ghostty
```

Link configs in `~` to `~/.config`:

```sh
ln -s ~/.config/tmux/tmux.conf ~/.tmux.conf
```

