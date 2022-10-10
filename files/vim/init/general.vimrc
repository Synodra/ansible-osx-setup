" $HOME/.vim/init/general.vimrc

syntax enable           " highlight syntax

set nocompatible        " Disable compatibility with vi wich can cause unexpected issues.
set noswapfile          " disable swapfile
set expandtab           " Use space characters instead of tabs
set tabstop=4           " Set tabs to 4 spaces
set showcmd             " Show partial command you type in the last line of the screen
set showmode            " Show the mode you are on the last line
set number              " Show line numbers

filetype on             " Enable type file detection
filetype plugin on      " Enable plugin on
filetype indent on      " Load an indent file for the detected file type

" Remapping
inoremap kj <ESC>       " remap escape to jk

" searching
set hlsearch            " highlight all results
set ignorecase          " ignore case in search
set incsearch           " show search results as you type
set wildmenu            " visual autocomplete for command menu

" colors
set background=dark
colorscheme solarized
