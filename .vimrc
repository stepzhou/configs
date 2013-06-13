filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

colorscheme desert

" disable auto comment insertion
autocmd FileType * setlocal formatoptions-=cro

" LOOKS AND FEELS

" line numbers
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

" KEY MAPPINGS

" toggle paste
set pastetoggle=<F3>

" Toggle line num
nmap <C-L><C-L> :set invnumber<CR>

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

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

" Latex settings
let g:tex_flavor = "latex"
set suffixes+=.log,.aux,.bbl,.blg,.idx,.ilg,.ind,.out,.pdf
