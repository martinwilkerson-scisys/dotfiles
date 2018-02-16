set nocompatible	" required
filetype off		" required

" configure Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" add all plugins here
Plugin 'vim-scripts/indentpython.vim'

" no more plugins after this
call vundle#end()
filetype plugin indent on

" Set UTF8
set encoding=utf-8

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix

highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

autocmd BufWritePre *.py %s/\s\+$//e
