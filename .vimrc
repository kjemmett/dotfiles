set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-markdown'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'

Plugin 'flazz/vim-colorschemes'
Plugin 'tomasr/molokai'

call vundle#end()
filetype plugin indent on

set nu
set ruler
set backspace=indent,eol,start
set showcmd
set showmode
set history=1000
set autoread

" disable swap files
set noswapfile
set nobackup
set nowb

" search settings
set incsearch
set hlsearch
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab
set nosmartindent
set autoindent
set showmatch

" cases
set ignorecase
set smartcase

" colors
set background=dark

" fileformats
set fileformat=unix

" mouse support
if has('mouse')
    set mouse=a
endif

" support buffer resizing in tmux
if exists('$TMUX')
    set ttymouse=xterm2
endif

" syntax highlighting
if &t_Co > 2 || has('gui_running')
    syntax on
    set hlsearch
endif
 
" tabcompletion in menu
set wildmenu
set wildmode=longest,full
