# DotFiles

## Installation on a new machine

### Prerequisites

1. Vim
    ```
    sudo apt-get install vim
    ```

1. I use Vundle for vim plugin management
    ```
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ```

### Dotfile installation

```
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare https://github.com/martinwilkerson-scisys/dotfiles.git $HOME/.dotfiles
config checkout # optionally use -f to overwrite existing config
config config --local status.showUntrackedFiles no
```
