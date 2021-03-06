set nocompatible " be iMproved
filetype off " required

set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-markdown'
Bundle 'nvie/vim-flake8'
" Bundle 'git://git.wincent.com/command-t.git'
Bundle 'vim-scripts/jslint.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'epmatsw/ag.vim'

" colors
Bundle 'vim-scripts/vividchalk.vim'
Bundle 'sickill/vim-monokai.git'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on
syntax on
 
set background=dark
colors monokai

set number " line numbers
set ts=4 " tab stop
set sw=4 " shift width
set sts=4 " soft tab stop
set expandtab " tabs to spaces
 
set backspace=indent,eol,start
 
set autoindent
set showcmd
set showmatch " highlight matching brackets
