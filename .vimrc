set nocompatible

" Tabs
set expandtab
set shiftwidth=4
set softtabstop=4

" Indention
set autoindent
set smartindent

" Line numbering
set number
set relativenumber

" Syntax highlighting
syntax on

" Spell Checking
"set spell

" Save Cursor Position
augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" Bash-like tab completion
set wildmode=longest,list,full
set wildmenu

" Map for switching buffer panes
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>

" Fixes problem of always typing :Q by mistake
command Q q
