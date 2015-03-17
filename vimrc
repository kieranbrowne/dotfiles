" setup pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on

" Custom coloring
colorscheme jellybeans
highlight Normal ctermfg=grey
highlight Comment ctermfg=red
highlight LineNr ctermfg=grey

" Plugin Shortcuts
nmap <leader>nt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Leader Shortcuts
" Save file
map <leader>s <ESC>:w<CR>
imap <leader>s <ESC>:w<CR>
nmap <c-s> :w<CR>
imap <c-s> :w<CR>a
" Quit Vim
map <leader>q <ESC>:q<CR>
imap <leader>q <ESC>:q<CR>
" Run file if executable
map <leader>r <ESC>:!./%<CR>
imap <leader>r <ESC>:!./%<CR>
" Run main.py
map <leader>m <ESC>:!./main.py<CR>
imap <leader>m <ESC>:!./main.py<CR>

" Emacs-like beginning and end of line.
imap <c-e> <c-o>$
imap <c-a> <c-o>^

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
set tabstop=4
set shiftwidth=4
set expandtab

" Linenumbers
set number 

" Stop D deleting itself in insert mode
ino <D> <Nop>

" Auto typo fixer
iabbr ture true
iabbr Ture True
iabbr flase false
iabbr Flase False

