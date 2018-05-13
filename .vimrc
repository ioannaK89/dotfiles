set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'lifepillar/vim-solarized8'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'


call vundle#end()
filetype plugin indent on

set autoindent
set background=dark
set backspace=indent,eol,start
set cursorline
set expandtab
set laststatus=2
set number
set shiftwidth=2
set t_Co=256
set tabstop=2

syntax enable
colorscheme solarized8

nnoremap <C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

autocmd! bufwritepost vimrc source ~/.vim/vimrc
