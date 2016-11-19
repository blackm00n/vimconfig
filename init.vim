call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'msanders/cocoa.vim'
Plug 'pearofducks/ansible-vim'
Plug 'vim-syntastic/syntastic'
Plug 'keith/swift.vim'
Plug 'tpope/vim-repeat'
Plug 'matze/vim-move'
Plug 'terryma/vim-smooth-scroll'
Plug 'tpope/vim-markdown'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-dispatch'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'wlue/vim-objc-strings-syntax'
call plug#end()

language messages en_US.UTF-8

let g:ycm_semantic_triggers = {
 \ 'objc' : ['re!\@"\.*"\s',
 \ 're!\@\w+\.*\w*\s',
 \ 're!\@\(\w+\.*\w*\)\s',
 \ 're!\@\(\s*',
 \ 're!\@\[.*\]\s',
 \ 're!\@\[\s*',
 \ 're!\@\{.*\}\s',
 \ 're!\@\{\s*',
 \ "re!\@\’.*\’\s",
 \ '#ifdef ',
 \ 're!:\s*',
 \ 're!=\s*',
 \ 're!,\s*', ],
 \ }

set number

set showcmd
set showmatch
set showmode
set ruler
set expandtab
set noerrorbells

let mapleader="\<SPACE>"

if &diff
	set laststatus=2 "show the status line
	set statusline=%-10.3n  "buffer number
	map <silent> <leader>1 :diffg 1<CR> :diffupdate<CR>
	map <silent> <leader>2 :diffg 2<CR> :diffupdate<CR>
	map <silent> <leader>3 :diffg 3<CR> :diffupdate<CR>
end

nnoremap <Leader>o :CtrlP<CR> " Open file menu
nnoremap <Leader>b :CtrlPBuffer<CR> " Open buffer menu
nnoremap <Leader>f :CtrlPMRUFiles<CR> " Open most recently used files

let g:move_key_modifier = 'C'

" git@github.com:terryma/vim-smooth-scroll.git
noremap <silent> <c-e> :call smooth_scroll#up(&scroll, 30, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 30, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 30, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 30, 4)<CR>

let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']

set termguicolors
set background=dark
colorscheme solarized

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_objc_checkers = []

map <Leader>t :NERDTreeToggle<CR>

