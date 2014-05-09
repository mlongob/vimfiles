" .vimrc
" vim:sw=2
"
" Mario Longobardi
"
" Thanks to Eric N. Vander Weele and Shawn Biddle for the inspiration :)

"call pathogen#infect("bundle/{}")
if has("unix")
  let s:uname = system("uname")
  if s:uname == "AIX\n"
"    call pathogen#infect("bundle_aix/{}")
  endif
  if s:uname == "SunOS\n"
"    call pathogen#infect("bundle_sunos/{}")
  endif
  if s:uname == "Linux\n"
"    call pathogen#infect("bundle_linux/{}")
  endif
endif

"call pathogen#helptags()
source ~/.vim/startup/plugins.vim

" Nerdtree stuff
"let NERDTreeMinimalUI=1
let NERDTreeDirArrows=0
let NERDTreeShowBookmarks=1

"Load custom settings from separate files
source ~/.vim/startup/color.vim
source ~/.vim/startup/commands.vim
source ~/.vim/startup/functions.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim

" CTAGS includes
"source /bbsrc/princeton/skunk/vim/cursor.vim
