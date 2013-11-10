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
