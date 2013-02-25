"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup hg commit syntax filetype
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

if has("autocmd")
  au BufRead,BufNewFile hg-editor-*.txt setf hgcommit
endif

