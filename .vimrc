""" REQUIRED
set nocompatible
filetype off

""" BUNDLE MANAGEMENT
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'majutsushi/tagbar'

" indent plugins load by filetypes
filetype plugin indent on

""" GENERAL SETTINGS

" disable auto comment insertion
autocmd FileType * setlocal formatoptions-=cro

syntax on

colorscheme desert

set number

" show command
set showcmd

set hidden

" tab completion
set wildmenu
set wildmode=list:longest,full

" smartly indent yo stuff
set smartindent

" spaces not tabs
set smarttab
set expandtab

" default tab lengths
set softtabstop=4
set shiftwidth=4

""" KEY MAPPINGS

" toggle paste
set pastetoggle=<F2>

" toggle NERDTree
map <F8> :NERDTreeToggle<CR>

" toggle tagbar
map <F9> :TagbarToggle<CR>

" Toggle line num
nmap <C-L><C-L> :set invnumber<CR>

" Faster scrolling
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

" Next, previous buffer
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Next, previous, new tab
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-t> :tabnew<CR>

""" PLUGINS

" latex
let g:tex_flavor = "latex"
set suffixes+=.log,.aux,.bbl,.blg,.idx,.ilg,.ind,.out,.pdf
