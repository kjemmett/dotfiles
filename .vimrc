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
