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
set laststatus=3 "usa una unica barra de estado

call plug#begin('~/.vim/plugged')

" Tema
"Plug 'morhetz/gruvbox'
Plug 'kepano/flexoki-neovim'
Plug 'EdenEast/nightfox.nvim'

Plug 'vim-airline/vim-airline' " Status line
Plug 'vim-airline/vim-airline-themes' " Status line themes

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
"Plug 'Valloric/YouCompleteMe' "Autocompletado
"Plug 'rust-lang/rust.vim' "Autocompletado de rust
Plug 'lambdalisue/battery.vim' "Visro de bateria

call plug#end()

" configuracion tema
"colorscheme gruvbox
colorscheme carbonfox
colorscheme sobrepuesto
"let g:gruvbox_contrast_dark = 'hard'

" configuracion nerdtree
let NERDTreeQuitOnOpen=1 " se cierra nerdtree despues de abrir un archivo
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla'
let g:Hexokinase_highlighters = ['foregroundfull']

" Configuracion de AirLine
let g:airline_powerline_fonts = 1 "Usar Nerd fonts
"let g:airline_theme = "lighthaus" "Establecer tema
"let g:airline_theme = "zenburn" "Establecer tema
let g:airline_theme = "statusbar" "Establecer tema
"let g:airline#extensions#tabline#enabled = 1 "Visualiza el buffer de ventanas (historial)
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Configuracion de battery
let g:battery#component_format = '%s %v%%'
let g:battery#symbol_charging = '󰂎'
let g:battery#symbol_discharging = '󰂎'


" atajos
let mapleader = " "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>q :q<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>w :w<CR>
nmap <Leader>e :wq<CR>
nmap <Leader>l :bn<CR>
nmap <Leader>h :bp<CR>
"nmap <Leader>qw :qw

source ~/.config/nvim/StatusBar.vim
