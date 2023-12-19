" ==============================
" Definições
" ==============================
set nocompatible
set encoding=utf-8

filetype plugin indent on
syntax on

set title
set confirm

set number
set ruler
set showcmd

set ignorecase
set infercase
set smartcase

set incsearch
set hlsearch

set shiftwidth=4
set softtabstop=4

set autoindent
set smartindent
set expandtab

set list

set wrap

set wildmenu

set splitright
set splitbelow

set shada="!,'128,<256,s64,h"
set shortmess="filmnx"

" ==============================
" Keymaps
" ==============================
let g:mapleader=" "

nnoremap ]b :bn<cr>
nnoremap [b :bp<cr>

nnoremap ]t :tabn<cr>
nnoremap [t :tabp<cr>

nnoremap ]T :tabm +1<cr>
nnoremap [T :tabm -1<cr>

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

nnoremap <F2> :Lexplore<cr>

nnoremap <C-p>f :Files<cr>
nnoremap <C-p>s :Rg<cr>

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>

" ==============================
" Plugins
" ==============================
let data_dir = stdpath('data') . '/site'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo ' . data_dir . '/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

Plug 'RRethy/nvim-treesitter-endwise'

call plug#end()

" ==============================
" Definições do NetRw
" ==============================
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=25

" ==============================
" Temas e Cores
" ==============================
colorscheme evening
highlight Normal guibg=none ctermbg=none
highlight NormalFloat guibg=none ctermbg=none
highlight EndOfBuffer guibg=none ctermbg=none

" ==============================
" Autocomandos
" ==============================
au BufWinLeave *.* mkview
au BufWinEnter *.* silent! loadview
