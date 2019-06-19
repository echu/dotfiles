if empty(glob('~/.vim/autoload/plug.vim'))                                                                                                                                 
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs                         
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim        
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC                          
endif                                                                              
                                                                                   
call plug#begin('~/.vim/plugged')                                                  
Plug 'vim-airline/vim-airline'                                                     
Plug 'dracula/vim', { 'as': 'dracula' }                                            
Plug 'posva/vim-vue'                                                               
Plug 'Lokaltog/vim-easymotion' " Easily navigate to symbols by prefix              
Plug 'airblade/vim-gitgutter' " Show git diff in the gutter                        
Plug 'octol/vim-cpp-enhanced-highlight' " Better C++ syntax highlighting           
Plug 'qpkorr/vim-bufkill' " Close buffers without closing windows or splits.       
Plug 'rhysd/vim-clang-format' " Auto-format C++ files                              
Plug 'tpope/vim-commentary' " Easy (un)commenting of code blocks                   
Plug 'tpope/vim-fugitive' " Integrated git commands                                
Plug 'tpope/vim-repeat' " Better command classification for `.`                    
Plug 'tpope/vim-surround' " Easily manipulate surrounding symbols                  
Plug 'vim-syntastic/syntastic' " Syntax checking for several common languages   
Plug 'vim-utils/vim-all' " Full-buffer text objects                                
Plug 'vim-utils/vim-space' " Text objects with <Space> as the delimiter            
Plug 'vim-utils/vim-troll-stopper' " Convert elusive unicode characters to ASCII
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " FZF for file matching
Plug 'junegunn/fzf.vim'
call plug#end()                                                                    
                                                                                   
color dracula                                                                      
                                                                                   
syntax on                                                                          
set background=dark                                                                
"set t_Co=256                                                                      
"only need the above if we are using xterm instead of xterm-256color               
set tabstop=2                   " TABs expand to N spaces.                         
set softtabstop=2               " Using a TAB inserts N spaces.                    
set shiftwidth=2                " Auto-indent N spaces each indent level.          
set shellslash                  " Use forward slashes regardless of OS.            
set expandtab                                                                      
set number                                                                         
set textwidth=80                " Hard wrap at N characters.                       
set wrap                                                                           
set ai                                                                             
set cursorline                  " Highlight current line.                          
set colorcolumn=80              " Highlight the 80th column.                       
set ttyfast                     " Smoother redrawing.                              
set showcmd                     " Show partial commands in the status line.        
set showmatch                   " Show matching () {} etc..                        
set showmode                    " Show current editor mode (insert, visual, replace, etc).
set lazyredraw                  " Make scrolling smoother with slow plugins        
set tags=tags;                  " Use root-level ctags file     

"automatically remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

"set git commit message
autocmd Filetype gitcommit setlocal spell textwidth=72

"set js tab spaces
autocmd Filetype javascript setlocal nowrap ts=2 sts=2 sw=2
autocmd Filetype json setlocal nowrap ts=2 sts=2 sw=2

"set html tab spaces
autocmd Filetype html setlocal nowrap ts=2 sts=2 sw=2

"set yaml tab spaces
autocmd Filetype yaml setlocal nowrap ts=2 sts=2 sw=2

" map fzf to Ctrl-f                                                                                                                                                        
nmap <C-f> :FZF<CR>                                                             
let g:fzf_history_dir = '~/.local/share/fzf-history'    

let g:airline_powerline_fonts = 1
