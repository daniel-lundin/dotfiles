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
Plugin 'bling/vim-airline'
Plugin 'christophermca/meta5'
Plugin 'digitaltoad/vim-jade'
Plugin 'tpope/vim-unimpaired'
Plugin 'haya14busa/incsearch.vim'
" Plugin 'neomake/neomake'
Plugin 'easymotion/vim-easymotion'
Plugin 'mxw/vim-jsx'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-surround'
Plugin 'sirtaj/vim-openscad'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'derekwyatt/vim-scala'
Plugin 'jremmen/vim-ripgrep'
Plugin 'arcticicestudio/nord-vim'
Plugin 'w0rp/ale'
" Plugin 'Galooshi/vim-import-js'
Plugin 'c9s/helper.vim'
Plugin 'c9s/treemenu.vim'
Plugin 'c9s/vikube.vim'
Plugin 'w0rp/ale'

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

set listchars+=space:\ ,tab:\ \ ,trail:·,nbsp:␣

"completion
"
" let g:EclimCompletionMethod = 'omnifunc'
" Use deoplete.
" let g:deoplete#enable_at_startup = 1

" incsearch mappings
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" ctrl p excludes
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules'
  \ }

if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_switch_buffer = 0
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>p :CtrlP<CR>

" NERDTree hotkey
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>F :NERDTreeFind<CR>

"Ack hotkey
nmap <leader>a :Ack 

filetype plugin indent on

au BufNewFile,BufRead *.mjs set filetype=javascript
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
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

set omnifunc=syntaxcomplete#Complete
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
set autoread
syntax on

" Color scheme
set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm
set background=dark
colorscheme xoria256
let g:solarized_termcolors = 256
colorscheme molokai
hi Visual term=reverse cterm=reverse guibg=Grey

" Diffing
set diffopt+=vertical

" Neomake
" autocmd CursorHold *.js :%!eslint_d --stdin<CR>
" call neomake#configure#automake('nw', 750)
" autocmd! BufWritePost,BufEnter * Neomake
" let g:neomake_javascript_enabled_makers = ['eslint_d']

let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier'],
\}


let g:ale_linters = {
\   'javascript': ['eslint'],
\}

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1

let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_javascript_prettier_use_global = 1
let g:ale_javascript_prettier_executable = 'prettier_d'

" eslint
nnoremap <leader>e mF:%!eslint_d --stdin --fix-to-stdout<CR>`F
" prettier
nnoremap <leader>r :Prettier<CR>mF:%!eslint_d --stdin --fix-to-stdout<CR>`F

" aboxd
vnoremap <leader>a :!npx aboxd -<CR>
" Allow for project specific vimrc
set exrc
set secure
||||||| merged common ancestors
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
