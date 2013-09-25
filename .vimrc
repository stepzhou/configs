"" REQUIRED
set nocompatible
filetype off

""" BUNDLE MANAGEMENT
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle itself
Bundle 'gmarik/vundle'

" plugins
Bundle 'scrooloose/nerdtree'
" Bundle 'bling/vim-airline'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'majutsushi/tagbar'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'bufexplorer.zip'
Bundle 'Screen-vim---gnu-screentmux'
Bundle 'Vim-R-plugin'

" colorschemes
Bundle 'tomasr/molokai'
Bundle 'Pychimp/vim-luna'

" indent plugins load by filetypes
filetype plugin indent on

" force 256-colors in gnome
" turned off bc I find airline colors distracting
" if $COLORTERM == 'gnome-terminal'
"     set t_Co=256
" endif

""" PLUGINS

" vim-airline

" set laststatus=2
" set ttimeoutlen=50
" let g:airline_enable_tagbar=1
" let g:airline_theme='molokai'

" latex
let g:tex_flavor = "latex"
set suffixes+=.log,.aux,.bbl,.blg,.idx,.ilg,.ind,.out,.pdf

" rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""" GENERAL SETTINGS
" Some are overwritten in ftplugin

" disable auto comment insertion
autocmd FileType * setlocal formatoptions-=cro

syntax on

colorscheme desert

" line numbers
set number

" show partial command on bot of screen
set showcmd

" opening new buffer hides instead of close
set hidden

" tab completion
set wildmenu
set wildmode=list:longest,full

" spaces not tabs
set expandtab

" makes spaces seem like real tabs
set softtabstop=4

" > and < size to indent/unindent
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
nmap <C-t> :tabnew<CR>

