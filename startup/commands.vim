" Commands and autocommands

" jump to the last cursor position in file if possible
autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif

" in HTML, don't have a textwidth because it auto-wraps and is annoying
autocmd FileType html set textwidth=0 matchpairs+=<:> softtabstop=2 shiftwidth=2
autocmd FileType htmldjango set textwidth=0

" in Makefiles, don't expand tabs to spaces and reset the standard tab
" length because Makefiles require the indentation of tabs for targets
autocmd FileType make setlocal noexpandtab shiftwidth=8

" xsd files
autocmd FileType xsd,xml set textwidth=0

