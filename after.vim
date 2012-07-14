"
" dotvim : https://github.com/dotphiles/dotvim
"
" Authors:
"   Ben O'Hara
"

if filereadable(expand("~/.vim/bindings.vim"))
  source ~/.vim/bindings.vim
endif

if filereadable(expand("~/.vim/after-plugins.vim"))
  source ~/.vim/after-plugins.vim
endif

if filereadable(expand("~/.vim.local/vimrc"))
  source ~/.vim.local/vimrc
endif

