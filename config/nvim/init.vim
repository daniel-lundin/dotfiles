set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader=" "

" set the runtime path to include Vundle and initialize
call plug#begin()

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'wavded/vim-stylus'
Plug 'flazz/vim-colorschemes'
Plug 'editorconfig/editorconfig-vim'
Plug 'bling/vim-airline'
Plug 'christophermca/meta5'
Plug 'chase/vim-ansible-yaml'
Plug 'digitaltoad/vim-jade'
Plug 'tpope/vim-unimpaired'
Plug 'haya14busa/incsearch.vim'
" Plugin 'neomake/neomake'
Plug 'easymotion/vim-easymotion'
Plug 'mxw/vim-jsx'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-surround'
Plug 'sirtaj/vim-openscad'
Plug 'jelera/vim-javascript-syntax'
Plug 'styled-components/vim-styled-components'
Plug 'derekwyatt/vim-scala'
Plug 'jremmen/vim-ripgrep'
Plug 'arcticicestudio/nord-vim'
" Plugin 'w0rp/ale'
" Plugin 'Galooshi/vim-import-js'
Plug 'c9s/helper.vim'
Plug 'c9s/treemenu.vim'
" Plugin 'c9s/vikube.vim'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" set listchars+=space:\ ,tab:\ \ ,trail:·,nbsp: 

"completion
"
" let g:EclimCompletionMethod = 'omnifunc'
" Use deoplete.
" let g:deoplete#enable_at_startup = 1


" incsearch mappings
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
vnoremap <leader>s y:Ack "<c-r>""<CR>

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
let g:ackprg ='ag --nogroup --nocolor --column --ignore-dir=node_modules'

" vim splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright


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
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

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
" syntax on

" Color scheme
set termguicolors
set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm
set background=dark
" set g:solarized_termcolors = 256
colorscheme nord
hi Visual term=reverse cterm=reverse guibg=Grey

" Diffing
set diffopt+=vertical


" aboxd
vnoremap <leader>a :!npx aboxd -<CR>
" Allow for project specific vimrc
set exrc
set secure
