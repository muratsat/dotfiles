syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set smartindent
set smarttab
set autoindent
set cindent
set shiftwidth=4
set expandtab
set nu
set relativenumber
set ruler
set guifont=Consolas:h15
set backspace=indent,eol,start
set nocompatible    
set clipboard=unnamed
set clipboard=unnamedplus
set noswapfile

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

nnoremap <C-s> :w<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

noremap ; :
noremap <A-,> :tabprevious<CR>
noremap <A-.> :tabnext<CR>

noremap <C-t> :tabedit<CR>
noremap <A-1> 1gt
noremap <A-2> 2gt
noremap <A-3> 3gt
noremap <A-4> 4gt
noremap <A-5> 5gt
noremap <A-6> 6gt
noremap <A-7> 7gt
noremap <A-8> 8gt
noremap <A-9> :tablast<cr>
noremap <A-0> :tabfirst<cr>