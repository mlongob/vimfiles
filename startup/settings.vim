"General Settings

""" 1 important
let g:platform = GetPlatform()
set pastetoggle=<F2>

"" 2 moving around, searching and patterns
set whichwrap+=<,>,[,]
set nostartofline
if exists("+autochdir")
  set autochdir
endif
set wrapscan
set incsearch
set smartcase

"" 4 displaying text
set scrolloff=1
set nowrap
set lazyredraw
set list
set listchars=tab:>-,trail:-
set number

"" 6 multiple windows
set equalalways
set winheight=3
set winminheight=0
set splitbelow
set splitright

"" 7 multiple tab pages
set showtabline=1

"" 8 terminal
if g:platform != "AIX" && g:platform != "Windows"
  set term=$TERM
endif

"" 9 using the mouse
set mouse=a

""11 messages and info
set shortmess=aoOstTI
set showcmd
set showmode
set ruler
set cursorline
set report=0
set noerrorbells
set novisualbell t_vb=".

""13 editing text
fixdel
"set textwidth=79
set backspace=indent,eol,start
set showmatch

""14 tabs and indenting
set tabstop=8
set shiftwidth=4
set smarttab
set softtabstop=4
set shiftround
set expandtab
set autoindent
set smartindent
set cinoptions=:0.5s,=0.5s,l1,g0.5s,h0.5s,t0,i0,(0
"              |     |     |  |     |     |  |  +-- indent from unclosed parens
"              |     |     |  |     |     |  +-- C++ base class decls and initializations
"              |     |     |  |     |     +-- indent function return type at margin
"              |     |     |  |     +-- places statements after C++ scope decls
"              |     |     |  +--  place C++ scope declarations
"              |     |     +-- align with case label instead of statement
"              |     +-- place statements after case label
"              +-- placement of case after switch statement

""15 folding
set nofoldenable
set foldmarker={,}
set foldmethod=syntax
set foldlevel=0
set foldopen+=jump

""18 reading and writing files
set modeline
set fileformats=unix,mac,dos
set backup
set backupdir=~/.vim/backup
set autowrite
set autoread

""19 the swap file
set directory=.,~/.vim/tmp

""20 command line editing
set history=100
set wildmode=list:longest,full
set wildmenu
set wildignore=*.o,*.gch,*.pyc,*.jpg,*.gif,*.png
if has("persistent_undo")
  set undofile
  set undodir=~/.vim/undo
endif

""25 various
set noexrc
set secure
set gdefault

"Powerline settings
set enc=utf-8
set fillchars+=stl:\ ,stlnc:\
set laststatus=2

" YouCompleteMe
"let g:ycm_global_ycm_extra_conf = "~/.vim/config/.ycm_extra_conf.py"
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:syntastic_always_populate_loc_list = 1

"let g:UltiSnipsExpandTrigger = "<c-j>"
