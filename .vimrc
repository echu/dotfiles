set nocompatible
filetype off

set rtp +=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'amdt/vim-niji'
Plugin 'guns/vim-clojure-highlight'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-leiningen'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tomasr/molokai'
Plugin 'hdima/python-syntax'
Plugin 'derekwyatt/vim-scala'
Plugin 'JuliaLang/julia-vim'

call vundle#end()

colorscheme molokai
filetype plugin indent on

syntax on
set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab
set number
set textwidth=79
set wrap
set ai
set sts=4

"automatically remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

"open NERDTree on the right
let g:NERDTreeWinPos = "right"

"map NERDTree to ,,
map ,, :NERDTreeToggle<CR>

"close NERDTree if it's the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
