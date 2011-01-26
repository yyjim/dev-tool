scriptencoding utf-8

set encoding=utf-8
set fileencoding=utf-8
set fenc=utf-8
set termencoding=utf-8

set noautoindent               " this is annoying when pasting from clipboard
set nocompatible               " don't simulate vi
"set paste                      " try paste mode

set backspace=indent,eol,start " more powerful backspacing
set bs=2                       " backspace
set softtabstop=2              " soft tab
set scrolloff=3                " keep 3 lines between scroll
set history=1000               " undo history
set cmdheight=2
set shiftwidth=2               " tab width?
set cmdheight=2

syntax on
filetype on
filetype plugin on
filetype indent on

set wildmenu                   " i need friendly menu
set wildmode=list:longest

set ruler                      " show line, col info
set hidden                     " what's this?
set ignorecase                 " ignore case when searching
set smartcase                  " ignore case when searching lower cases
set spell                      " spell checker for non-native English speaker

set backupdir=~/tmp,/tmp
set directory=~/tmp,/tmp
"set nobackup
"set nowritebackup
"set noswapfile

if has('gui_running')
  set guifont=DejaVu\ Sans\ Mono:h18
  set linespace=3

  set number        " display line number
  set showtabline=2 " always display tab bar
  set laststatus=2  " always display status bar

  set statusline=%<%f\ %h%m%r%=%k%y[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V,%B%)\ %P
  colorscheme twilight
endif
