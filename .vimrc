
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fireplace'
Plugin 'w0ng/vim-hybrid'
Plugin 'guns/vim-clojure-static'
Plugin 'kien/ctrlp.vim'
Plugin 'Align'
Plugin 'gcmt/wildfire.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

autocmd BufWritePre * :%s/\s\+$//e
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set laststatus=2
set cursorline
set t_Co=256
syntax enable
set background=dark
set guifont=Monaco:h15

autocmd vimEnter * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
nnoremap <C-e> :NERDTreeToggle<CR>

colorscheme hybrid

:au FocusLost * :set number
:au FocusGained * :set relativenumber

let g:indent_guides_start_level = 2
let g:indentLine_color_term = 239
let g:indentLine_char = '|'

let mapleader = ","

set colorcolumn=80
let NERDTreeShowHidden=1

autocmd! bufwritepost vimrc source ~/.vim/vimrc

