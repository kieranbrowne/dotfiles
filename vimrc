let mapleader=';'
" The secret sauce
nmap <space> :
vmap <space> :

" Package Manager
execute pathogen#infect()

syntax enable
filetype plugin indent on
filetype plugin on
set nocompatible
set visualbell
set breakindent 
set backspace=2 "make backspace work like other text editors

"set python style regex for search
nnoremap / /\v
vnoremap / /\v

" Case sensitivity for / search
set hlsearch
set ignorecase
set incsearch
set smartcase

au FocusLost * :wa

" Plugin Shortcuts
nmap <leader>nt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), "\n"))
autocmd filetype html,css,scss,php nmap <leader><leader> <c-y>,
autocmd filetype html,css,scss,php imap <leader><leader> <c-y>,
autocmd filetype html,php vmap <leader><leader> <c-y>,

autocmd BufNewFile,BufRead *.js inoremap <c-b> <esc>0d$:read! echo '<c-r>"' \| babel --blacklist useStrict <cr>{dd}i
autocmd BufNewFile,BufRead *.js vnoremap <c-b> dk:read! echo '<c-r>"' \| babel --blacklist useStrict <cr>
autocmd BufNewFile,BufRead *.js nnoremap <c-b> dk:read! echo '<c-r>"' \| babel --blacklist useStrict <cr>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_scss_exec = 'scss-lint'

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_working_path_mode = 'ra'
nnoremap <c-p> <nop>
nmap <leader>p :CtrlP<CR>
nmap <leader>/ :CtrlPLine<CR>
nmap <leader>r :CtrlPMRU<CR>

" Leader Shortcuts
nmap <leader>w <ESC>:w<CR>
nmap <leader>q <ESC>:q<CR>

" Unmap the arrow keys
no <left> <<
no <right> >>
no <up> ddkP
no <down> ddp
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

" Set tabkey to insert 4 spaces
set sw=4 ts=4 et
au FileType html,css,scss,php setl sw=2 sts=2 et

" Stop D deleting itself in insert mode
ino <D> <Nop>

" shift to jump paragraphs
nnoremap K (
nnoremap J )
vnoremap K (
vnoremap J )

imapclear
"shortcuts for regular but hard to reach keys
imap jj <esc>
cmap jj <esc>


set relativenumber 
autocmd InsertEnter * :set number 
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 
autocmd InsertLeave * :set nonumber

"colours
set t_Co=256
"set background=light
colorscheme PaperColor

autocmd BufNewFile,BufRead *.liquid set filetype=html
autocmd BufNewFile,BufRead *scss.liquid set filetype=scss
"select css section
nmap gg ^Vf{%$

:nnoremap <leader>c 0v$:<c-u>call RunOn(visualmode(),"cowsay")<cr>
