"
" dotvim : https://github.com/dotvim/dotvim
"
" Load required config files
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if filereadable(expand("~/.vim/global.vim"))
  source ~/.vim/global.vim
endif
if has("user_commands")
  if filereadable(expand("~/.vim/plugins.vim"))
    source ~/.vim/plugins.vim
  endif
  if filereadable(expand("~/.vim/macros.vim"))
    source ~/.vim/macros.vim
  endif
endif
call pathogen#infect('~/.vim.local/bundle')

" after.vim is loaded from ./after/plugin/after.vim
" bindings.vim and local.vim is loaded from after.vim
"
