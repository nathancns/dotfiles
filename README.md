# Configuring various dotfiles

I typlically clone this repository to my Dropbox folder and symplink to appropriate paths.

## Setting up vim

### Install dependencies
```bash
sudo apt-get install build-essential cmake python-dev vim-nox
```

### Symlink .vimrc from Dropbox/dotfiles or wherever you cloned dotfiles
```bash
ln -s Dropbox/dotfiles/vimrc ~/.vimrc
vim +PluginInstall +qall
```

### Compile YouCompleteMe
```
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
```
