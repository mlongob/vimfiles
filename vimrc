" .vimrc
" vim:sw=2
"
" Mario Longobardi
"
" Thanks to Eric N. Vander Weele and Shawn Biddle for the inspiration :)
"

"Load custom settings from separate files
source ~/.vim/startup/functions.vim " User defined functions
source ~/.vim/startup/commands.vim  " User defined commands
source ~/.vim/startup/settings.vim  " Vim settings
source ~/.vim/startup/color.vim     " Syntax coloring
source ~/.vim/startup/plugins.vim   " Plugins and plugins settings
source ~/.vim/startup/mappings.vim  " Mappings and shortcuts

" CTAGS includes
"source /bbsrc/princeton/skunk/vim/cursor.vim
