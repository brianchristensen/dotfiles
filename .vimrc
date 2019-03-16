"""""""""""""""""""""""""""""""""""""
" Brian Christensen Vim configuration
"""""""""""""""""""""""""""""""""""""
set nocompatible

filetype off

" ----- Vundle Plugin Manager ----- -----------------------------------
"  Install vundle with this command: git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
"  Install plugins with this command: vim +PluginInstall +qall or by typing :PluginInstall inside Vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" ----- Themes/Color Pallete ------------------------------------------
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ----- IDE Features -------------------- -----------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'christoomey/vim-tmux-navigator'

" ----- Working with Git ----------------------------------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ----- Other text editing features -----------------------------------
" Automatic closing of brackets, etc.
Plugin 'Raimondi/delimitMate'
" Highlight and strip trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'
" Easily surround chunks of text
Plugin 'tpope/vim-surround'
" Align CSV files at commas, align Markdown tables, and more
Plugin 'godlygeek/tabular'
" Automaticall insert the closing HTML tag
Plugin 'HTML-AutoCloseTag'

" ----- Language support plugins --------------------------------------
"  -- Elixir --
Plugin 'elixir-editors/vim-elixir'
Plugin 'mhinz/vim-mix-format'
Plugin 'slashmili/alchemist.vim'

call vundle#end()

" --- General settings ------------------------------------------------
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set formatoptions-=t

syntax on

set mouse=a

" We need this for plugins like Syntastic and vim-gitgutter which put symbols
" in the sign column.
hi clear SignColumn

" ----- Tabbing and Shift-Tabbing -------------------------------------
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
" shift-tab for command mode
nnoremap <S-Tab> <<
" shift-tab for insert mode
inoremap <S-Tab> <C-d>

" ----- Plugin-Specific Settings --------------------------------------
" ----- altercation/vim-colors-solarized settings -----
" Toggle this to "light" for light colorscheme
set background=dark

" Set the colorscheme
colorscheme molokai

" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'
let g:rehash256 = 1

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic

  au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" ----- airblade/vim-gitgutter settings -----
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ----- mhinz/vim-mix-format settings -----
let g:mix_format_on_save = 1
let g:mix_format_silent_errors = 0

" ----- Language specific ctag settings -------------------------------
let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records',
        \ 't:tests'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm'
    \ }
\ }


