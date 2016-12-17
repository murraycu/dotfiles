set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" See https://github.com/VundleVim/Vundle.vim/issues/430#issuecomment-40479213
" call vundle#config#require(g:bundles)

" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-fugitive'

Plugin 'Valloric/YouCompleteMe'

Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"To use Pathogen:
"execute pathogen#infect()

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Always show the airline statusbar:
set laststatus=2

" Show symbols in the airline statusbar:
let g:airline_powerline_fonts = 1

set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 11

" Use a global YCM config file:
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py' 

" Show git branch in the airline statusbar:
" let g:airline#extensions#branch#enabled = 1

syntax on                                                                 │

set autoindent
set smartindent
set showmatch

set expandtab
set shiftwidth=2
set softtabstop=2

set cursorline " highlight the current line
hi CursorLine   cterm=NONE ctermbg=lightgrey

set relativenumber 
set number

" Show trailing whitespace
match ErrorMsg '\s\+$'

" clang-format integration.
" See http://clang.llvm.org/docs/ClangFormat.html
map <C-K> :py3f /home/murrayc/checkout/github/llvm/tools/clang/tools/clang-format/clang-format.py<cr>
imap <C-K> <c-o>:py3f /home/murrayc/checkout/github/llvm/tools/clang/tools/clang-format/clang-format.py<cr>
