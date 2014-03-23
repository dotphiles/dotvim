"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup ctrlp
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:25'

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_use_caching = 0

" Directories to ignore
set wildignore+=*/smarty_c/**
set wildignore+=*/vendor/**
set wildignore+=*/bower_components/**

