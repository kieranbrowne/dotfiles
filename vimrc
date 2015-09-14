" setup pathogen
execute pathogen#infect()
syntax enable
filetype plugin indent on
filetype plugin on

" Custom coloring
map <leader>d <ESC>:!bash ~/gnome-terminal-colors-solarized/set_dark.sh<CR><CR>
map <leader>l <ESC>:!bash ~/gnome-terminal-colors-solarized/set_light.sh<CR><CR>

" Case sensitivity for / search
set ignorecase
set incsearch

" Plugin Shortcuts
nmap <leader>nt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"let g:user_emmet_leader_key='<leader>'
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), "\n"))

" Leader Shortcuts
" Save file
map <leader>s <ESC>:w<CR>
imap <leader>s <ESC>:w<CR>
nmap <c-s> :w<CR>
imap <c-s> :w<CR>a
" Quit Vim
map <leader>q <ESC>:q<CR>
imap <leader>q <ESC>:q<CR>

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

au FileType html setl sw=2 ts=2 et
au FileType php setl sw=2 ts=2 et
au FileType scss setl sw=2 ts=2 et

" Linenumbers
set number 

" Stop D deleting itself in insert mode
ino <D> <Nop>

" typos
iabbr ture true
iabbr Ture True
iabbr flase false
iabbr Flase False

autocmd filetype tex :277 

autocmd filetype html imap <leader><leader> <c-y>,
autocmd filetype css imap <leader><leader> <c-y>,
autocmd filetype scss imap <leader><leader> <c-y>,
autocmd filetype php imap <leader><leader> <c-y>,

filetype plugin on
set omnifunc=syntaxcomplete#Complete
