" Plugins and plugin configuration

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Fugitive Git Wrapper
Plugin 'tpope/vim-fugitive'

" NERDTree for silesystem exploation
Plugin 'scrooloose/nerdtree'
let NERDTreeDirArrows=0
let NERDTreeShowBookmarks=1

" NERDCommenter for easy commenting
Plugin 'scrooloose/nerdcommenter'

" Airline for pretty status/tab lines
Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
if g:platform == "Linux" || g:platform == "SunOS"
    " Use Patched fonts on Linux and Sun
    let g:airline_powerline_fonts = 1
endif

" Diff signs in gutter
Plugin 'airblade/vim-gitgutter'

" Colorschemes
Plugin 'flazz/vim-colorschemes'

" Syntax checking
Plugin 'scrooloose/syntastic'

" ListToggle for display of quickfix/location list
Plugin 'Valloric/ListToggle'

" Alternate for C/C++ Header/Source navigation
Plugin 'a.vim'

" Easymotion for superquick motions
Plugin 'Lokaltog/vim-easymotion'

" Linux-Only plug-ins
if g:platform == "Linux"
    " Autocompletion and semantic completion
    Plugin 'Valloric/YouCompleteMe'
    "let g:ycm_server_log_level = 'debug'
    let g:ycm_confirm_extra_conf = 0
    let g:ycm_path_to_python_interpreter = '/opt/swt/bin/python'

    " Nice airline-like bash prompt
    Plugin 'edkolev/promptline.vim'
endif

call vundle#end()
filetype plugin indent on
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
