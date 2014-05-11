" Plugins and plugin configuration

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Snippets
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Trigger configuration. Do not use <tab>.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" Smarter '.'
Plugin 'tpope/vim-repeat'

" <p>Surrond</p>
Plugin 'tpope/vim-surround'

" Fugitive Git Wrapper
Plugin 'tpope/vim-fugitive'

" Diff signs in gutter for Git index/working diffs
Plugin 'airblade/vim-gitgutter'

" Git Exploration plugin
Plugin 'gregsexton/gitv'

" NERDTree for silesystem exploation
Plugin 'scrooloose/nerdtree'
if g:platform == "AIX"
    let NERDTreeDirArrows=0
endif
let NERDTreeShowBookmarks=1

" ctrlP Plugin
Plugin 'kien/ctrlp.vim'

" NERDCommenter for easy commenting
Plugin 'scrooloose/nerdcommenter'

" Airline for pretty status/tab lines
Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
if g:platform == "Linux" || g:platform == "SunOS"
    " Use Patched fonts on Linux and Sun
    let g:airline_powerline_fonts = 1
endif

" Colorschemes
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'endel/vim-github-colorscheme'
Plugin 'flazz/vim-colorschemes'

" Makes GVim colorscheme available in the terminal
"Plugin 'godlygeek/csapprox'

" Syntax checking
Plugin 'scrooloose/syntastic'
let g:syntastic_error_symbol = '✗✗'
let g:syntastic_style_error_symbol = '✠✠'
let g:syntastic_warning_symbol = '∆∆'
let g:syntastic_style_warning_symbol = '≈≈'

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
    let g:ycm_autoclose_preview_window_after_insertion = 1
    let g:ycm_always_populate_location_list = 1

    " Show Location list output in airline
    Plugin 'asenac/vim-airline-loclist'
    let g:airline#extensions#loclist#enabled = 1

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
