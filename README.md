# Config
Repo to store my dotfiles

## Install Vim, Tmux, Ctags, Cmake
brew install vim
brew install tmux
brew install ctags
brew install cmake

## Clone this repo, and replace local files
After cloning this repo, copy and paste all the dotfiles into your home directory

## Install Vundle
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vi

## Install Vim plugins
vim +PluginInstall +qal

## Install YouCompleteMe (other than vundle plugin portion, which is already done)
https://github.com/Valloric/YouCompleteMe#installation

## Useful Vim chords
Other than the usual vi commands, one can:
1. Open the nerdtree sidebar with `\t`
2. Open the ctags sidebar with `\b`
3. Connect to a database with the `:DB {connection url}` command
4. Clear out search highlights with double-escape
5. Easily change the color theme by editing the .vimrc color theme section
6. Switch between panes with `ctrl-h (or j, k, l)` which is just ctrl + the normal keys used to navigate vim 

## Useful Tmux chords
1. `ctrl-b shift-"` split pane horizontally
2. `ctrl-b shift-%` split pane vertically
3. `tmux attach -t {session#}` attach to an existing session
4. `ctrl-b :resize-pane -D (or -U, -L, -R) {#value}` resize panes from command keyboard, though I am a cheater so mouse support is enabled as well.
5. Switch between panes with the same keys used to switch between panes in vim

## iTerm2
I also made sure that I updated my iTerm colors to match the vim theme colors.  Most of the popular themes have a terminal colors file that can be imported into iTerm, even if they exist in a separate repo, for instance gruvbox iTerm colors can be found https://github.com/herrbischoff/iterm2-gruvbox.  In addition to updating the terminal colors, I also downloaded the font FiraCode and set this as my iTerm font, and enabled ligatures.  Lastly, I updated my .bash_profile so that my PS1 colors matched the gruvbox colors.
