set termguicolors

" Loading packages via vim-plug
call plug#begin('~/.vim/plugged')

" Syntax highlighting
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" Utils
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'

" Colorscheme
Plug 'drewtempelmeyer/palenight.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

" Colour shceme configurations
let g:palenight_terminal_italics = 1
set background=dark
colorscheme palenight

" Status line (lightline) configuration
set laststatus=2
let g:lightline = { 'colorscheme': 'palenight' }

" Default indent configs
set tabstop=2
set shiftwidth=2
set expandtab
