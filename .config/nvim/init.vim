packloadall

syntax on
set noswapfile
set number relativenumber
set scrolloff=8
set expandtab tabstop=2 softtabstop=2 shiftwidth=2 shiftround
set hlsearch incsearch
set showcmd
set equalalways
set bg=dark
set noeb vb t_vb=

"coc
set encoding=utf-8
set hidden
set nobackup nowritebackup
set updatetime=300
set shortmess+=c
set signcolumn=yes



hi QuickFixLine term=reverse ctermbg=52 guibg=Cyan

call plug#begin('~/.vim/plugged')
  Plug 'morhetz/gruvbox',
  Plug 'tpope/vim-fugitive',
  Plug 'tpope/vim-surround',
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  "Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


call plug#end()

colorscheme gruvbox


let mapleader = " "
nnoremap <leader>pv :Vex<CR> " project view
nnoremap <leader><CR> :so ~/.vim/vimrc<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <leader><leader> <C-^> " alternate file

xnoremap . :normal .<CR> "visual dot command

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" coc
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.

" disabling for now as causing issues with tab
"inoremap <silent><expr> <TAB>
"            \ pumvisible() ? "\<C-n>" :
"            \ <SID>check_back_space() ? "\<TAB>" :
"            \ coc#refresh()
"      inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
