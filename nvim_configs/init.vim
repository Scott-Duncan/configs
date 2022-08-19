set exrc
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nohlsearch
set hidden
set noerrorbells
set guicursor=
set relativenumber
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=10
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set updatetime=50

call plug#begin('~/.vim/plugged')
Plug 'nvim-telescope/telescope.nvim'
Plug 'tomasr/molokai'
call plug#end()

colorscheme molokai
highlight Normal guibg=black

let mapleader = " "
