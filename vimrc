" Generic

set relativenumber 
set nocompatible
set visualbell
silent! set breakindent 
set backspace=2 "make backspace work like other text editors
filetype plugin indent on
filetype plugin on
nnoremap Y y$ 
set autoread
set hidden
set pastetoggle=<F2>
au FocusLost * :wa

" Key mappings

let mapleader=';'
nmap <space> :
vmap <space> :
imap jj <esc>
cmap jj <esc>
no <left> <<
no <right> >>
no <up> ddkP
no <down> ddp
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <left> <
vno <right> >
ino <D> <Nop>
nnoremap K <nop>
nnoremap U u 

" SPACEMACS

nmap <space>ff <c-P>
nmap <space>bs :tabnew
nmap <space>fs :w

" Load plugins

silent! call pathogen#infect()

" Colours

syntax enable
set cursorline
set t_Co=256
colorscheme PaperColor

" Indentation

set sw=4 ts=4 et
au FileType html,css,scss,less,php setl sw=2 sts=2 et

" Search

nnoremap / /\v
vnoremap / /\v
set hlsearch
set ignorecase
set incsearch
set smartcase

" Plugin Shortcuts

nmap <leader>nt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

autocmd filetype html,css,scss,less,php nmap <leader><leader> <c-y>,
autocmd filetype html,css,scss,less,php imap <leader><leader> <c-y>,
autocmd filetype html,php vmap <leader><leader> <c-y>,

autocmd BufNewFile,BufRead *.js inoremap <c-b> <esc>0d$:read! echo '<c-r>"' \| babel --blacklist useStrict <cr>{dd}i
autocmd BufNewFile,BufRead *.js vnoremap <c-b> dk:read! echo '<c-r>"' \| babel --blacklist useStrict <cr>
autocmd BufNewFile,BufRead *.js nnoremap <c-b> dk:read! echo '<c-r>"' \| babel --blacklist useStrict <cr>

"CtrlP

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_working_path_mode = 'ra'
nnoremap <c-p> <nop>
nmap <leader>p :CtrlP<CR>
nmap <leader>/ :CtrlPLine<CR>
nmap <leader>r :CtrlPMRU<CR>

" continue good trajectory

imap ;; <c-x><c-n>
