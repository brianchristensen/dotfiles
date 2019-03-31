# Dotfiles
Repo to store my dotfiles.

The following instructions are Mac-centric.

## Install Vim, Tmux, Ctags, Cmake, Ack, The Silver Searcher
1. `brew install vim`
2. `brew install tmux`
3. `brew install ctags`
4. `brew install cmake`
5. `brew install ack`
6. `brew install the_silver_searcher`

## Clone this repo, and replace local files
After cloning this repo, copy and paste all the dotfiles into your home directory, though probably avoid the .bash_profile and edit your own manually.

## Install Vundle
`git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim`

## Install Vim plugins
`vim +PluginInstall +qal`

## Install YouCompleteMe (other than vundle plugin portion, which is already done)
Finish the YouCompleteMe vim autocomplete installation by following the instructions under the following link:
https://github.com/Valloric/YouCompleteMe#installation

Specifically you need to:
1. `cp /Applications/MacVim.app/Contents/bin/mvim /usr/local/bin/mvim`
2. `ln -s /usr/local/bin/mvim vim`
3. `cd ~/.vim/bundle/YouCompleteMe`
4. `./install.py --clang-completer --tern-completer`

Language support can be added from various other repos by including these under .vimrc plugins - Elixir and Javascript are already present.

## Useful Vim chords/commands
Other than the usual vim commands, one can:
1. Open the nerdtree sidebar with `\t`
2. Open the ctags sidebar with `\b`
3. Connect to a database with the `:DB {connection url}` command
4. Clear out search highlights with double-escape
5. Easily change the color theme by editing the .vimrc color theme section
6. Reload the .vimrc in an existing vim buffer with `:so ~/.vimrc`
7. Install plugins in a running vim session with `:PluginInstall`
8. Switch between panes with `ctrl-h (or j, k, l)` which is just ctrl + the normal keys used to navigate vim

## Useful Tmux chords/commands
1. `ctrl-b "` split pane horizontally
2. `ctrl-b %` split pane vertically
3. `tmux attach -t {session# or session name}` attach to an existing session
4. `ctrl-b :resize-pane -D (or -U, -L, -R) {#size}` resize panes using keyboard commands, though I am a cheater so mouse support is enabled by default
5. Switch between panes with the same keys used to switch between panes in vim

## Zsh and iTerm2
I use Z shell instead of bash in both iTerm and in VSC Integrated Terminal.  I manage it with Oh-My-Zsh:

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

I use Powerlevel10k Prompt https://github.com/romkatv/powerlevel10k
With custom prompt config modified from https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config

Install the following ZSH plugins:

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

I also made sure that I updated my iTerm colors to match the vim theme colors.  Most of the popular themes have a terminal colors file that can be imported into iTerm, even if they exist in a separate repo, for instance gruvbox iTerm colors can be found https://github.com/herrbischoff/iterm2-gruvbox.  In addition to updating the terminal colors, I also downloaded the font FiraCode from https://nerdfonts.com/ and set this as my iTerm font and enabled ligatures, as well as manually setting the vertical/horizontal spacings of this font because the defaults drove me crazy.
