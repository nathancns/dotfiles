# Configuring various dotfiles

I typlically clone this repository to my Dropbox folder and symplink to appropriate paths.

## Setting up vim

### Install dependencies
```bash
sudo apt-get install build-essential cmake python-dev vim-nox tmux
```

### Symlink .vimrc from Dropbox/dotfiles or wherever you cloned dotfiles

This uses the [Vundle] plugin manager.

```bash
ln -s ~/Dropbox/dotfiles/vimrc ~/.vimrc
vim +PluginInstall +qall
```

### Compile YouCompleteMe
```
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
```

## Setting up bash
```bash
ln -s ~/Dropbox/dotfiles/bashrc ~/.bashrc
ln -s ~/Dropbox/dotfiles/bash_aliases ~/.bash_aliases
. ~/.bashrc
```

### Setting up tmux
```bash
ln -s ~/Dropbox/dotfiles/tmux.conf .tmux.conf
```

[Vundle]:http://github.com/gmarik/Vundle.vim
