set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader=" "

" set the runtime path to include Vundle and initialize
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'wavded/vim-stylus'
Plugin 'flazz/vim-colorschemes'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" ctrl p excludes
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules'
  \ }

let g:ctrlp_switch_buffer = 0
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>p :CtrlP<CR>

" NERDTree hotkey
nmap <leader>n :NERDTreeToggle<CR>

filetype plugin indent on
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType less setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType scss setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType jade setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
autocmd FileType tex setlocal shiftwidth=4 tabstop=4 softtabstop=2 expandtab
autocmd FileType matlab setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType c setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType openscad setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType php setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType stylus setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType json setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

set number
set ruler
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrap
set cursorline
set hidden
set noswapfile
set scrolloff=10
syntax on


" solarized options 
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized

"Syntastic settings
set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

