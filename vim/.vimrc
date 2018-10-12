" Vundle Begin
set nocompatible 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'itchyny/lightline.vim'
Plugin 'Vimball'
" Lightline Begin
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
" Lightline Endm'
" Lightline Begin
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
" Lightline End
call vundle#end()          
filetype plugin indent on    
" Vundle End

" Lightline Begin
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
" Lightline End

set nocompatible
set history=500

filetype plugin on
filetype indent on

set encoding=utf-8

set number
set relativenumber
set autoread
set noswapfile
let mapleader = ","
set ruler
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set laststatus=2
set noshowmode

syntax on

