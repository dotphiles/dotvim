"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup VimOrganizer
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

" VimOrganizer
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org call org#SetOrgFileType()

