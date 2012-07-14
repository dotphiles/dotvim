"
" dotvim : https://github.com/dotphiles/dotvim
"
" Authors:
"   Ben O'Hara
"

if filereadable(expand("~/.vim.local/vimrc"))
  source ~/.vim.local/vimrc
endif

if has("mac")
  let g:browser = "open "
endif

