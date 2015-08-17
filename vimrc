set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Bundle 'klen/python-mode'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'mattn/zencoding-vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'groenewege/vim-less'
Bundle 'torrancew/vim-openscad'
Bundle 'kien/ctrlp.vim'
Bundle 'wavded/vim-stylus'
Bundle 'davidhalter/jedi-vim'
Bundle 'isRuslan/vim-es6'
Bundle 'scrooloose/syntastic'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" Bundle 'wookiehangover/jshint.vim'
Bundle 'Rip-Rip/clang_complete'

let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/'
" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" ctrl p excludes
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules'
  \ }

let g:ctrlp_switch_buffer = 0
" NERDTree hotkey
nmap <leader>n :NERDTreeToggle<CR>

" fuzzyfunder hotkey
nmap <leader>f :FufFile<CR>
nmap <leader>b :FufBuffer<CR>

filetype plugin indent on
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType scss setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType less setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
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

let g:pep8_ignore="E501,W601"
