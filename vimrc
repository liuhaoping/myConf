set nocompatible

" Pathogen
call pathogen#infect()
call pathogen#helptags()
 
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(%{strftime('%I:%M\ %p')}\ line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
filetype plugin indent on
 
" set ui
set background=dark
set nu
set ai
set expandtab
set tabstop=4
set shiftwidth=4
set cursorline
set ruler  " show current line on status bar
filetype indent on " 自動縮排

"" scheme
syntax enable
colorscheme monokai

" key maping
:inoremap ( ()<Esc>i
:inoremap [ []<Esc>i
:inoremap {<CR> {<CR>}<Esc>ko
:inoremap {{ {}<ESC>i

" set pig syntax
augroup filetypedetect
	  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
	  au BufNewFile,BufRead *.scala set filetype=scala syntax=scala
augroup END 

" Nerdtree
"autocmd VimEnter * NERDTree
autocmd VimEnter * if argc() == 0 | NERDTree | endif
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
