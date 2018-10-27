set encoding=UTF-8
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
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Colorscheme
Plug 'drewtempelmeyer/palenight.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

" Colour shceme configurations
let g:palenight_terminal_italics = 1
set background=dark
colorscheme palenight

" Keep NERDTree when nothing specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTreeToggle | endif

" Open NERDTree when specified dir
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Decorate directory of NERDTree with Devicons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" Declare macOS explicitly
let g:WebDevIconsOS = 'Darwin'

" Status line (lightline) configuration
set laststatus=2
let g:lightline = { 'colorscheme': 'palenight' }

" Default indent configs
set tabstop=2
set shiftwidth=2
set number
set showmatch
set expandtab
