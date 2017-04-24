set nocompatible
filetype off

set rtp +=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/vim-niji'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-leiningen'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-airline/vim-airline'

"color schemes
Plugin 'tomasr/molokai'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'jdkanani/vim-material-theme'

"languages
Plugin 'derekwyatt/vim-scala'
Plugin 'JuliaLang/julia-vim'
Plugin 'hdima/python-syntax'
Plugin 'guns/vim-clojure-highlight'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-sexp'

call vundle#end()

colorscheme material-theme
filetype plugin indent on

syntax on
set background=dark
set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab
set number
set textwidth=72
set wrap
set ai
set sts=4

"automatically remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

"set git commit message
autocmd Filetype gitcommit setlocal spell textwidth=72

"set js tab spaces
autocmd Filetype javascript setlocal nowrap ts=2 sts=2 sw=2
autocmd Filetype json setlocal nowrap ts=2 sts=2 sw=2

"set html tab spaces
autocmd Filetype html setlocal nowrap ts=2 sts=2 sw=2

let g:airline_powerline_fonts = 1
