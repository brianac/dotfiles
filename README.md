# SETUP

### Set zsh as default shell

```bash
  chsh -s $(which zsh)
```

### Link zsh files

in root:
```bash
ln -s Code/personal/dotfiles/.zshrc .zshrc
ln -s Code/personal/dotfiles/symlink/zshrc.custom .zshrc.custom
ln -s Code/personal/dotfiles/symlink/zshrc.work .zshrc.work
ln -s Code/personal/dotfiles/symlink/vimrc.local .vimrc.local
ln -s Code/personal/dotfiles/symlink/gitignore .gitignore
ln -s Code/personal/dotfiles/symlink/gitconfig .gitconfig
```
