set number
set mouse
set numberwidth=1
set clipboard=unnamedplus
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set nocompatible
set termguicolors "usa guicolors en hex

call plug#begin('~/.vim/plugged')

" Tema
"Plug 'morhetz/gruvbox'

" Calidad de vida
Plug 'easymotion/vim-easymotion' " buscador
Plug 'scrooloose/nerdtree' " navegador de archivos
Plug 'christoomey/vim-tmux-navigator' "Navegar entre instancias o diviciones
Plug 'sheerun/vim-polyglot' "Resaltado de sintaxis
Plug 'jiangmiao/auto-pairs' "Autocompleta corchetes, llaves, etc
"Plug 'terryma/vim-multiple-cursors' "Crear multiples cursores, buscar los atajos de teclado
Plug 'mhinz/vim-signify' "Visualisa las ediciones desde el ultimo commit
Plug 'yggdroot/indentline' "Visualisa cuando el codigo esta identado por ejemplo en una funcion
Plug 'scrooloose/nerdcommenter' "Atajo para comentar lineas
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' } "Muestra los clores en el codigo

call plug#end()

" configuracion tema
"colorscheme gruvbox
colorscheme green
"let g:gruvbox_contrast_dark = 'hard'
" configuracion nerdtree
let NERDTreeQuitOnOpen=1 " se cierra nerdtree despues de abrir un archivo
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla'
let g:Hexokinase_highlighters = ['foregroundfull']

" atajos
let mapleader = " "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
