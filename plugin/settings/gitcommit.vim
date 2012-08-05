"
" dotvim : https://github.com/dotphiles/dotvim
"
" Fix git commit filetype
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if has("autocmd")
  " seems broken, not sure if config or vim!
  autocmd BufNewFile,BufRead *.git/modules/*/COMMIT_EDITMSG setf gitcommit
endif

