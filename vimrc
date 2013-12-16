set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'klen/python-mode'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'mattn/zencoding-vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'scrooloose/nerdtree'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'wookiehangover/jshint.vim'

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" NERDTree hotkey
nmap <leader>n :NERDTreeToggle<CR>

" fuzzyfunder hotkey
nmap <leader>f :FufFile<CR>
nmap <leader>b :FufBuffer<CR>

filetype plugin indent on
autocmd FileType html setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType css setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType jade setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType tex setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType matlab setlocal shiftwidth=2 tabstop=2 expandtab

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

set t_Co=256
set background=dark
" solarized options 
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

