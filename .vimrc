packloadall

syntax on
set number
set relativenumber
set scrolloff=8
set expandtab
set tabstop=2 softtabstop=2
set shiftwidth=2
set shiftround
set hlsearch
set incsearch
set showcmd


call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive',
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1

call plug#end()

set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

let mapleader = " "
nnoremap <leader>pv :Vex<CR>    " project view
nnoremap <leader><CR> :so ~/.vimrc<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <leader><leader> <C-^> " alternate file
