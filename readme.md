# Config files

## Clone repo

```bash
mkdir -p ~/code/config/dotfiles
git cloen git@github.com:muratsat/dotfiles.git ~/code/config/dotfiles
```

## Sync repo with local config

Considering cloned repo in `~/code/config/dotfiles`:

```bash
ln -s ./tmux ~/.config/tmux
ln -s ./ghostty ~/.config/ghostty
ln -s ./nvim ~/.config/nvim
ln -s ./alacritty ~/.config/alacritty
```
