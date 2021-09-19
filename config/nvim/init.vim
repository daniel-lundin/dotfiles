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

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }


" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" CoC mappings 
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Telescope
"
"

" require('telescope').load_extension('fzf')

nnoremap <leader>p <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>


" incsearch mappings
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
vnoremap <leader>s y:Ack "<c-r>""<CR>

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
