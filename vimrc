" setup pathogen
execute pathogen#infect()
syntax enable
filetype plugin indent on
filetype plugin on

" Case sensitivity for / search
set ignorecase
set incsearch

" Plugin Shortcuts
nmap <leader>nt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"let g:user_emmet_leader_key='<leader>'
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), "\n"))
autocmd filetype html,css,scss,php imap <leader><leader> <c-y>,

nnoremap <c-b> 0d$:read! echo '<c-r>"' \| babel --blacklist useStrict <cr>{dd}
inoremap <c-b> <esc>0d$:read! echo '<c-r>"' \| babel --blacklist useStrict <cr>{dd}i
vnoremap <c-b> dk:read! echo '<c-r>"' \| babel --blacklist useStrict <cr>


" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_working_path_mode = 'ra'
map <leader>/ :CtrlPLine<CR>
map <leader>r :CtrlPMRU<CR>

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
set sw=4 ts=4 et
au FileType html,css,scss,php setl sw=2 sts=2 et

" Linenumbers
set relativenumber 

" Stop D deleting itself in insert mode
ino <D> <Nop>

" typos
iabbr ture true
iabbr Ture True
iabbr flase false
iabbr Flase False

" shift to jump paragraphs
nnoremap K {
nnoremap J }
nnoremap dK d{
nnoremap dJ d}
nnoremap cK c{
nnoremap cJ c}

"shortcuts for regular but hard to reach keys
imap jj <esc>
nmap <space> :
vmap <space> :

autocmd InsertEnter * :set number 
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 
autocmd InsertLeave * :set nonumber
